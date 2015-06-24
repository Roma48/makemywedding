<?php

// Nav
$center = '';
$grid_justify = '';
$grid_js = '';

if ($settings['nav'] == 'tabs') {

    // Positon
    $nav = ($settings['position'] != 'top') ? 'uk-tab uk-tab-'. $settings['position'] : 'uk-tab';

    // Alignment
    if ($settings['position'] == 'top' || $settings['position'] == 'bottom') {

        // Right
        $nav .= ($settings['alignment'] == 'right') ? ' uk-tab-flip' : '';

        // Justify
        $nav .= ($settings['alignment'] == 'justify') ? ' uk-tab-grid' : '';
        $grid_justify = ($settings['alignment'] == 'justify') ? ' class="uk-width-1-' . count($items) . '"' : '';

        // Center
        if ($settings['alignment'] == 'center') {
            $center = 'uk-tab-center';
            if ($settings['position'] == 'bottom') {
                $center .= ' uk-tab-center-bottom';
            }
        }

    }

    $javascript = 'tab';

} else {

    if ($settings['position'] == 'top' || $settings['position'] == 'bottom') {

        switch ($settings['nav']) {
            case 'text':
                $nav = 'uk-subnav';
                break;
            case 'thumbnails':
                $nav = ($settings['alignment'] == 'justify') ? 'uk-grid' : 'uk-grid uk-display-inline-block';
                $nav .= ($settings['thumbnail_gutter'] == 'default') ? ' uk-grid-preserve' : ' uk-grid-small';
                $grid_js = ' data-uk-grid-margin';
                $grid_justify = ($settings['alignment'] == 'justify') ? ' class="uk-width-1-' . count($items) . '"' : ' class="uk-float-left"';
                break;
            case 'lines':
                $nav = 'uk-subnav uk-subnav-line';
                break;
            case 'nav':
                $nav = 'uk-subnav uk-subnav-pill';
                break;
        }

        // Alignment
        if ($settings['nav'] == 'thumbnails') {
            $center = ($settings['alignment'] != 'justify') ? ' uk-text-' . $settings['alignment'] : '';
        } else {
            $nav .= ($settings['alignment'] != 'justify') ? ' uk-text-' . $settings['alignment'] : '';
        }

    } else {

        switch ($settings['nav']) {
            case 'text':
            case 'thumbnails':
                $nav = 'uk-list uk-list-space';
                break;
            case 'lines':
                $nav = 'uk-list uk-list-line';
                break;
            case 'nav':
                $nav = 'uk-nav uk-nav-side';
                break;
        }

    }

    $javascript = 'switcher';

}

// Animation
$animation = ($settings['animation'] != 'none') ? ',animation:\'' . $settings['animation'] . '\'' : '';

?>

<?php if ($center) : ?>
<div class="<?php echo $center; ?>">
<?php endif ?>

<ul class="<?php echo $nav; ?>" data-uk-<?php echo $javascript; ?>="{connect:'#wk-<?php echo $settings['connect_id']; ?>'<?php echo $animation; ?>}"<?php echo $grid_js; ?>>
<?php foreach ($items as $item) : ?>
    <?php

        // Thumbnails
        $thumbnail = '';
        if ($settings['nav'] == 'thumbnails' &&  ($item->type('media') == 'image' || $item['media.poster'])) {
            $thumbnail_class = '';
            if ($settings['thumbnail_style'] == 'thumbnail') {
                $thumbnail_class = 'uk-thumbnail';
            } elseif ($settings['thumbnail_style'] != 'none') {
                $thumbnail_class = 'uk-border-' . $settings['thumbnail_style'];
            }
            $thumbnail = $item->thumbnail($item->type('media') == 'image' ? 'media':'media.poster', $settings['thumbnail_width'], $settings['thumbnail_height'], array('alt' => $item['title'], 'class' => $thumbnail_class));
        }

    ?>
    <li<?php echo $grid_justify; ?>><a href=""><?php echo ($thumbnail) ? $thumbnail : $item['title']; ?></a></li>
<?php endforeach; ?>
</ul>

<?php if ($center) : ?>
</div>
<?php endif ?>
