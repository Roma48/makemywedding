<?php

return array(

    'main' => 'YOOtheme\\Widgetkit\\Widget\\Widget',

    'config' => function($app) {

        return array(

            'name'  => 'grid-stack',
            'label' => 'Grid Stack',
            'icon'  => $app['url']->to('plugins/widgets/grid-stack/widget.svg'),
            'view'  => 'plugins/widgets/grid-stack/views/widget.php',
            'item'  => array('title', 'content', 'media'),
            'settings' => array(
                'width'             => '1-2',
                'align'             => 'left',
                'alternate'         => true,
                'gutter'            => true,
                'gutter_vertical'   => 'default',
                'divider'           => false,
                'panel'             => true,
                'content_align'     => true,
                'text_align'        => 'left',
                'title_size'        => 'panel',
                'media_border'      => 'none',
                'media_overlay'     => 'link',
                'link_style'        => 'button',
                'animation_media'   => 'none',
                'animation_content' => 'none',
                'title'             => true,
                'media'             => true,
                'content'           => true,
                'link'              => true,
                'social_buttons'    => true,
                'link_text'         => 'Read more',
                'class'             => ''
            )

        );
    },

    'events' => array(

        'init.site' => function($event, $app) {
        },

        'init.admin' => function($event, $app) {
            $app['angular']->addTemplate('grid-stack.edit', 'plugins/widgets/grid-stack/views/edit.php', true);
        }

    )

);