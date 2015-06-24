<?php

$config = array(

    'name' => 'content/k2',

    'main' => 'YOOtheme\\Widgetkit\\Content\\Type',

    'config' => function($app) {

        return array(

            'name'  => 'k2',
            'label' => 'K2',
            'icon'  => $app['url']->to('plugins/content/k2/content.svg'),
            'item'  => array('title', 'content', 'media', 'location'),
            'data'  => array(
                'content'       => 'intro',
                'category'      => array(),
                'subcategories' => 0,
                'number'        => 5,
                'ordering'      => ''
            )

        );
    },

    'items' => function ($items, $content, $app) {

        $params = array(
            'itemCount' => $content['number'],
            'category_id' => $content['category'],
            'getChildren' => $content['subcategories'],
            'catfilter' => !empty($content['category']) && $content['category'][0] != 0,
            'itemIntroText' => true,
            'itemsOrdering' => $content['ordering']
        );

        foreach ($app['joomla.k2']->getItems($params) as $item) {

            $data = array();
            $data['title'] = $item->title;
            $data['content'] = $content['content'] == 'intro' ? $item->introtext : $item->introtext.$item->fulltext;
            $data['link'] = $item->link;
            $data['media'] = isset($item->image) ? $item->image : '';

            $items->add($data);
        }

        return $items;
    },

    'events' => array(

        'init.admin' => function($event, $app) {
            $app['angular']->addTemplate('k2.edit', 'plugins/content/k2/views/edit.php');
        }

    )

);

return defined('_JEXEC') ? $config : false;