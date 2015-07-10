<?php

return array(

    'main' => 'YOOtheme\\Widgetkit\\Widget\\Widget',

    'config' => function($app) {

        return array(

            'name'  => 'slideshow',
            'label' => 'Slideshow',
            'icon'  => $app['url']->to('plugins/widgets/slideshow/widget.svg'),
            'view'  => 'plugins/widgets/slideshow/views/widget.php',
            'item'  => array('title', 'content', 'media'),
            'settings' => array(
                'nav'               => 'dotnav',
                'nav_align'         => 'center',
                'dotnav_inside'     => true,
                'thumbnail_gutter'  => 'default',
                'thumbnail_style'   => 'none',
                'thumbnail_width'   => '70',
                'thumbnail_height'  => '70',
                'slidenav'          => true,
                'animation'         => 'fade',
                'slices'            => '15',
                'duration'          => '500',
                'autoplay'          => false,
                'interval'          => '3000',
                'kenburns'          => false,
                'fullscreen'        => false,
                'min_height'        => '300',
                'caption'           => false,
                'caption_position'  => 'bottom',
                'caption_animation' => 'fade',
                'caption_panel'     => true,
                'title_size'        => 'h3',
                'link_style'        => 'button',
                'title'             => true,
                'media'             => true,
                'content'           => true,
                'link'              => true,
                'link_text'         => 'Read more',
                'class'             => ''
            )

        );
    },

    'events' => array(

        'init.site' => function($event, $app) {
            $app['scripts']->add('uikit-cover', 'vendor/assets/uikit/js/components/cover.min.js', array('uikit'));
            $app['scripts']->add('uikit-slideshow', 'vendor/assets/uikit/js/components/slideshow.min.js', array('uikit'));
            $app['scripts']->add('uikit-slideshow-fx', 'vendor/assets/uikit/js/components/slideshow-fx.min.js', array('uikit'));
        },

        'init.admin' => function($event, $app) {
            $app['angular']->addTemplate('slideshow.edit', 'plugins/widgets/slideshow/views/edit.php', true);
        }

    )

);
