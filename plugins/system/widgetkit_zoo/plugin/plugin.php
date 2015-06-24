<?php

$config = array(

    'name' => 'content/zoo',

    'main' => 'YOOtheme\\Widgetkit\\Content\\Type',

    'config' => function($app) {

        return array(
            'name'  => 'zoo',
            'label' => 'ZOO',
            'icon'  => $app['url']->to('plugins/content/zoo/content.svg'),
            'item'  => array('title', 'content', 'media', 'location'),
            'data'  => array(
                'application'   => 0,
                'mode'          => 'categories',
                'type'          => '',
                'category'      => '',
                'subcategories' => 0,
                'order'         => array(
                    '_reversed'     => false,
                    '_random'       => false,
                    '_alphanumeric' => false
                ),
                'count'         => 4
            )
        );
    },

    'items' => function ($items, $content, $app) {

        $_items = $app['joomla.zoo']->getItems($content->getData());
        foreach ($app['joomla.zoo']->renderItems($_items) as $item) {
            $items->add($item);
        }

        return $items;
    },

    'events' => array(

        'init.admin' => function($event, $app) {
            $app['scripts']->add('widgetkit-zoo-controller', 'plugins/content/zoo/assets/controller.js');
            $app['angular']->addTemplate('zoo.edit', 'plugins/content/zoo/views/edit.php');
        }

    )

);

return defined('_JEXEC') ? $config : false;