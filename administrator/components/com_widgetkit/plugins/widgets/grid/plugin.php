<?php

return array(

    'main' => 'YOOtheme\\Widgetkit\\Widget\\Widget',

    'config' => function($app) {

        return array(

            'name'  => 'grid',
            'label' => 'Grid',
            'icon'  => $app['url']->to('plugins/widgets/grid/widget.svg'),
            'view'  => 'plugins/widgets/grid/views/widget.php',
            'item'  => array('title', 'content', 'media'),
            'settings' => array(
                'columns'          => '1',
                'columns_small'    => 0,
                'columns_medium'   => 0,
                'columns_large'    => 0,
                'columns_xlarge'   => 0,
                'gutter'           => 'default',
                'panel'            => 'blank',
                'animation'        => 'none',
                'text_align'       => 'left',
                'title_size'       => 'panel',
                'media_align'      => 'teaser',
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
            $app['angular']->addTemplate('grid.edit', 'plugins/widgets/grid/views/edit.php', true);
        }

    )

);