<?php

return array(

    'main' => 'YOOtheme\\Widgetkit\\Widget\\Widget',

    'config' => function($app) {

        return array(

            'name'  => 'switcher',
            'label' => 'Switcher',
            'icon'  => $app['url']->to('plugins/widgets/switcher/widget.svg'),
            'view'  => 'plugins/widgets/switcher/views/widget.php',
            'item'  => array('title', 'content', 'media'),
            'settings' => array(
                'nav'              => 'nav',
                'thumbnail_gutter' => 'default',
                'thumbnail_style'  => 'none',
                'thumbnail_width'  => '70',
                'thumbnail_height' => '70',
                'position'         => 'top',
                'alignment'        => 'left',
                'width'            => '1-4',
                'panel'            => false,
                'animation'        => 'none',
                'text_align'       => 'left',
                'title_size'       => 'panel',
                'media_align'      => 'top',
                'media_width'      => '1-2',
                'media_breakpoint' => 'medium',
                'content_align'    => true,
                'media_border'     => 'none',
                'media_overlay'    => 'link',
                'link_style'       => 'button',
                'title'            => true,
                'media'            => true,
                'content'          => true,
                'link'             => true,
                'social_buttons'   => true,
                'link_text'        => 'Read more',
                'class'            => ''
            )

        );
    },

    'events' => array(

        'init.site' => function($event, $app) {
        },

        'init.admin' => function($event, $app) {
            $app['angular']->addTemplate('switcher.edit', 'plugins/widgets/switcher/views/edit.php', true);
        }

    )

);
