<?php

defined('_JEXEC') or die;

class plgSystemWidgetkit_zoo extends JPlugin
{
    protected $app;
    protected $zoo;

    protected $mapping = array(
        'location' => array('googlemaps'),
        'image'    => array('image'),
        'media'    => array('media')
    );

    public function onAfterInitialise()
    {
        if (!($this->app = $app = (@include JPATH_ADMINISTRATOR.'/components/com_widgetkit/widgetkit-app.php')
            and file_exists($path = JPATH_ADMINISTRATOR.'/components/com_zoo/config.php')
            and JComponentHelper::getComponent('com_zoo', true)->enabled
            and (include_once $path)
            and class_exists('App')
            and $this->zoo = $zoo = App::getInstance('zoo')
            and version_compare($zoo->zoo->version(), '2.5', '>='))
        ) {
            return;
        }

        $zoo->event->dispatcher->connect('layout:init', function($event) use($app) {

            $event->setReturnValue(array_merge($event->getReturnValue(), array(array(
                'name' => 'Widgetkit 2',
                'path' => $app['locator']->find('plugins/content/zoo'),
                'type' => 'plugin'
            ))));

        });

        $zoo->path->register(__DIR__, 'wk2zoo');

        $app['joomla.zoo'] = $this;
        $app['plugins']->addPath(__DIR__.'/plugin/plugin.php');
        $app['locator']->addPath('plugins/content/zoo', __DIR__.'/plugin');
    }

    public function getItems(array $params)
    {
        // set order array as ZOO expects
        $params['order'] = array_filter(array_values($params['order']));

        return $this->zoo->module->getItems($this->zoo->data->create($params)) ?: array();
    }

    public function renderItems($items, $layout = 'mapping')
    {
        $this->app->trigger('joomla.zoo.items', array($this->app));

        JLoader::register('WidgetkitRenderer', $this->app['locator']->find('plugins/content/zoo/renderer/widgetkit.php'));

        // geocode cache
        $cache = $this->zoo->cache->create($this->zoo->path->path('cache:') . '/geocode_cache');

        // set renderer
        $renderer = $this->zoo->renderer->create('widgetkit')
            ->addPath(array($this->zoo->path->path('component.site:'), $this->app['locator']->find('plugins/content/zoo')))
            ->setLayout($layout);

        foreach ($items as $i => $item) {

            $renderer->setItem($item);

            $data = array(
                'title'   => strip_tags($renderer->renderPosition('title')),
                'content' => $renderer->renderPosition('content'),
                'link'    => strip_tags($renderer->renderPosition('link'))
            );

            // media
            foreach ($renderer->getPositionElements('media') as $element) {
                if (!$element->hasValue()) {
                    continue;
                }

                if ($this->isType($element, 'image')) {

                    if (is_subclass_of($element, 'ElementRepeatable')) {
                        $element->seek(0);
                    }

                    if (!$element->get('file')) {
                        continue;
                    }

                    $data['media'] = $element->get('file');
                    break;

                } else if ($this->isType($element, 'media')) {

                    if (is_subclass_of($element, 'ElementRepeatable')) {
                        $element->seek(0);
                    }

                    if (!$element->get('url')) {
                        continue;
                    }

                    $data['media'] = $element->get('url');
                    break;

                } else {
                    $renderer->renderPosition('media');
                }
            }

            // location
            foreach ($renderer->getPositionElements('location') as $element) {

                if (!$this->isType($element, 'location') || !$element->hasValue()) {
                    continue;
                }
                
                try {

                    $coordinates = $this->zoo->googlemaps->locate($element->get('location'), $cache);

                } catch (GooglemapsHelperException $e) {
                    $this->zoo->system->application->enqueueMessage($e, 'notice');
                    continue;
                }

                $data['location'] = $coordinates;
                break;
            };

            $items[$i] = $data;
        }

        // save geocode cache
        if ($cache) $cache->save();

        return $items;
    }

    public function getMapping()
    {
        return $this->mapping;
    }

    public function setMapping($mapping)
    {
        $this->mapping = $mapping;
    }

    public function isType($element, $type)
    {
        return isset($this->mapping[$type]) && in_array($element->getElementType(), $this->mapping[$type]);
    }

    public function getFormData()
    {
        $result = array();

        foreach ($this->zoo->application->getApplications() as $app) {

            $data = array(
                'id'         => $app->id,
                'name'       => $app->name,
                'types'      => array(),
                'categories' => array(
                    array('id' => '0', 'name' => html_entity_decode('&#8226; Frontpage', ENT_QUOTES, 'UTF-8'))
                )
            );

            // process types
            foreach ($app->getTypes() as $type) {

                $data['types'][$type->id] = array(
                    'id'            => $type->id,
                    'name'          => $type->getName(),
                    'elements'      => array(),
                    'core_elements' => array()
                );

                // get orderable elements
                $orderable = array(
                    'elements' => array_filter($type->getElements(), function ($el) {
                        return $el->getMetaData('orderable') == 'true';
                    }),
                    'core_elements' => array_filter($type->getCoreElements(), function ($el) {
                        return $el->getMetaData('orderable') == 'true';
                    })
                );

                foreach ($orderable as $key => $elements) {
                    foreach ($elements as $element) {
                        $data['types'][$type->id][$key][] = array(
                            'id'   => $element->identifier,
                            'name' => $element->config->name ? $element->config->name : $element->getMetaData('name')
                        );
                    }
                }
            }

            // process categories
            foreach ($this->zoo->tree->buildList(0, $app->getCategoryTree(), array(), '-&nbsp;', '.&nbsp;&nbsp;&nbsp;', '&nbsp;&nbsp;') as $category) {
                $data['categories'][] = array(
                    'id'   => $category->id,
                    'name' => html_entity_decode($category->treename, ENT_QUOTES, 'UTF-8')
                );
            }

            $result[$app->id] = $data;
        }

        return $result;
    }
}