<?php

return array(

    'main' => 'YOOtheme\\Widgetkit\\Widget\\Widget',

    'config' => function($app) {

        return array(

            'name'  => 'map',
            'label' => 'Map',
            'icon'  => $app['url']->to('plugins/widgets/map/widget.svg'),
            'view'  => 'plugins/widgets/map/views/widget.php',
            'item'  => array('title', 'content', 'media'),
            'settings' => array(
                'width'                   => 'auto',
                'height'                  => 400,
                'maptypeid'               => 'ROADMAP',
                'maptypecontrol'          => false,
                'mapctrl'                 => true,
                'zoom'                    => 9,
                'marker'                  => 2,
                'popup_max_width'         => 300,
                'zoomwheel'               => true,
                'draggable'               => true,
                'directions'              => false,
                'disabledefaultui'        => false,
                'styler_invert_lightness' => false,
                'styler_hue'              => '',
                'styler_saturation'       => 0,
                'styler_lightness'        => 0,
                'styler_gamma'            => 0,
                'text_align'              => 'left',
                'title_size'              => 'h3',
                'media_align'             => 'top',
                'media_width'             => '1-2',
                'media_breakpoint'        => 'medium',
                'media_border'            => 'none',
                'media_overlay'           => 'link',
                'link_style'              => 'button',
                'title'                   => true,
                'media'                   => true,
                'content'                 => true,
                'link'                    => true,
                'social_buttons'          => true,
                'link_text'               => 'Read more',
                'class'                   => ''
            )

        );
    },

    'events' => array(

        'init.site' => function($event, $app) {
            $app['scripts']->add('widgetkit-maps', 'plugins/widgets/map/assets/maps.js', array('uikit'));
        },

        'init.admin' => function($event, $app) {
            $app['angular']->addTemplate('map.edit', 'plugins/widgets/map/views/edit.php', true);
        }

    )

);
