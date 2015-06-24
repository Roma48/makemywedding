<?php

$config = array(

    'name' => 'content/joomla',

    'main' => 'YOOtheme\\Widgetkit\\Content\\Type',

    'config' => function($app) {

        return array(

            'name'  => 'joomla',
            'label' => 'Joomla',
            'icon'  => $app['url']->to('plugins/content/joomla/content.svg'),
            'item'  => array('title', 'content', 'link', 'media'),
            'data'  => array(
                'number'        => 5,
                'category'      => '0',
                'subcategories' => '0',
                'featured'      => '',
                'content'       => 'intro',
                'image'         => 'intro',
                'order_by'      => 'ordering'
            )

        );
    },

    'items' => function ($items, $content, $app) {

        $args = array(
            'items'         => $content['number'] ?: 5,
            'catid'         => $content['category'] ?: 0,
            'subcategories' => $content['subcategories'] ?: 0,
            'featured'      => $content['featured'] ? 'only' : '',
            'order'         => $content['order_by'] ?: 'ordering'
        );

        foreach ($app['joomla.article']->get($args) as $item) {

            $data = array();
            $data['title'] = $item->title;
            $data['content'] = \JHtmlContent::prepare($content['content'] == 'intro' ? $item->introtext : $item->introtext . $item->fulltext);
            $data['link'] = $app['joomla.article']->getUrl($item);

            // media
            $data['media'] = ($images = json_decode($item->images)) ? ($content['image'] == 'intro' ? $images->image_intro : $images->image_fulltext) : '';

            $items->add($data);
        }

    },

    'events' => array(

        'init.admin' => function ($event, $app) {
            $app['angular']->addTemplate('joomla.edit', 'plugins/content/joomla/views/edit.php');
        }

    )

);

return defined('_JEXEC') ? $config : false;
