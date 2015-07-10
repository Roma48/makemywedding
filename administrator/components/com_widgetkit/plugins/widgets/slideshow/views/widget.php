<?php

// JS Options
$options = array();
$options[] = ($settings['animation'] != 'fade') ? 'animation: \'' . $settings['animation'] . '\'' : '';
$options[] = ($settings['duration'] != '500') ? 'duration: ' . $settings['duration']: '';
$options[] = ($settings['slices'] != '15') ? 'slices: ' . $settings['slices']: '';
$options[] = ($settings['autoplay']) ? 'autoplay: true ' : '';
$options[] = ($settings['interval'] != '3000') ? 'autoplayInterval: ' . $settings['interval'] : '';
$options[] = ($settings['kenburns']) ? 'kenburns: true' : '';

$options = '{'.implode(',', array_filter($options)).'}';

// Nav
$class = '';
$center = '';
$grid_justify = '';
$grid_js = '';

switch ($settings['nav']) {
    case 'dotnav':
        $nav = 'uk-dotnav';
        if ($settings['dotnav_inside']) {
            $nav .= ' uk-dotnav-contrast uk-position-bottom';
            $class .= 'uk-position-relative ';
        }
        break;
    case 'thumbnails':
        $nav = ($settings['nav_align'] == 'justify') ? 'uk-grid uk-margin-top' : 'uk-grid uk-display-inline-block';
        $nav .= ($settings['thumbnail_gutter'] == 'default') ? ' uk-grid-preserve' : ' uk-grid-small';
        $grid_js = ' data-uk-grid-margin';
        $grid_justify = ($settings['nav_align'] == 'justify') ? ' class="uk-width-1-' . count($items) . '"' : ' class="uk-float-left"';
        break;
    default:
        $nav = '';
        break;
}

// Alignment
if ($settings['nav'] == 'thumbnails') {
    $center = ($settings['nav_align'] != 'justify') ? ' uk-text-' . $settings['nav_align'] . ' uk-margin-top' : '';
} else {
    $nav .= ($settings['nav_align'] != 'justify') ? ' uk-text-' . $settings['nav_align'] : '';
}

// Caption
$caption = 'uk-caption';
$caption .= $settings['caption_position'] == 'center' ? ' uk-flex uk-flex-center uk-flex-middle uk-text-center' : ' uk-caption-' . $settings['caption_position'];
$caption .= $settings['caption_panel'] ? ' uk-caption-panel' : '';

if ($settings['caption_animation'] == 'slide' && $settings['caption_position'] != 'center') {
    $caption .= ' uk-animation-slide-' . $settings['caption_position'];
} else {
    $caption .= ' uk-animation-fade';
}

// Title Size
switch ($settings['title_size']) {
    case 'large':
        $title_size = 'uk-heading-large';
        break;
    default:
        $title_size = 'uk-' . $settings['title_size'];
        break;
}

// Link Style
switch ($settings['link_style']) {
    case 'button':
        $link = 'uk-button';
        break;
    case 'primary':
        $link = 'uk-button uk-button-primary';
        break;
    case 'button-large':
        $link = 'uk-button uk-button-large';
        break;
    case 'primary-large':
        $link = 'uk-button uk-button-large uk-button-primary';
        break;
    default:
        $link = '';
        break;
}

// Custom Class
$class .= $settings['class'];

$class = ($class) ? ' class="' . $class . '"' : '';

?>

<div<?php echo $class; ?> data-uk-slideshow="<?php echo $options; ?>">

    <div class="uk-slidenav-position">

        <ul class="uk-slideshow<?php if ($settings['fullscreen']) echo ' uk-slideshow-fullscreen' ?>">
        <?php foreach ($items as $item) : ?>

            <?php

                // Enable/Disable Settings
                if (!$settings['title']) $item['title'] = '';
                if (!$settings['media']) $item['media'] = '';
                if (!$settings['content']) $item['content'] = '';
                if (!$settings['link']) $item['link'] = '';

                // Media Type
                $attrs = array();

                if ($item->type('media') == 'image') {
                    $attrs['alt'] = $item['title'];
                }

                if ($item->type('media') == 'video') {
                    $attrs['autoplay'] = '';
                    $attrs['loop']     = '';
                    $attrs['muted']    = '';
                    $attrs['class']    = 'uk-cover-object uk-position-absolute';

                    if ($item['media.poster']) {
                        $attrs['class'] .= ' uk-hidden-touch ';
                    }
                }

                if ($item['media.width']) {
                    $attrs['width'] = $item['media.width'];
                }

                if ($item['media.height']) {
                    $attrs['height'] = $item['media.height'];
                }

                $media = $item->media('media', $attrs);

            ?>

            <li style="min-height: <?php echo $settings['min_height']; ?>px;">

                <?php if ($item['media']) : ?>

                    <?php echo $media; ?>

                    <?php if ($item['media.poster']) : ?>
                    <div class="uk-cover-background uk-position-cover uk-hidden-notouch" style="background-image: url(<?php echo $item['media.poster'] ?>);"></div>
                    <?php endif ?>

                <?php endif; ?>

                <?php if ($settings['caption'] && ($item['title'] || $item['content'])) : ?>
                <div class="<?php echo $caption ?>">

                    <?php if ($settings['caption_position'] == 'center') : ?>
                    <div <?php if ($settings['caption_animation'] == 'slide') echo 'class="uk-animation-slide-top"'; ?>>
                    <?php endif; ?>

                    <?php if ($item['title']) : ?>
                    <h3 class="<?php echo $title_size; ?>"><?php echo $item['title']; ?></h3>
                    <?php endif; ?>

                    <?php if ($item['content']) : ?>
                    <div class="uk-margin"><?php echo $item['content']; ?></div>
                    <?php endif; ?>

                    <?php if ($item['link']) : ?>
                    <p><a<?php if($link) echo ' class="' . $link . '"' ?> href="<?php echo $item['link']; ?>"><?php echo $settings['link_text']; ?></a></p>
                    <?php endif; ?>

                    <?php if ($settings['caption_position'] == 'center') : ?>
                    </div>
                    <?php endif; ?>

                </div>
                <?php endif; ?>

            </li>

        <?php endforeach; ?>
        </ul>

        <?php if ($settings['slidenav']) : ?>
        <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous uk-hidden-touch" data-uk-slideshow-item="previous"></a>
        <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next uk-hidden-touch" data-uk-slideshow-item="next"></a>
        <?php endif; ?>

    </div>

    <?php if ($center) : ?>
    <div class="<?php echo $center; ?>">
    <?php endif ?>

    <?php if ($settings['nav'] != 'none') : ?>
    <ul class="<?php echo $nav; ?>"<?php echo $grid_js; ?>>
        <?php foreach ($items as $i => $item) :

            // Thumbnails
            $thumbnail = '';
            if ($settings['nav'] == 'thumbnails' && ($item->type('media') == 'image' || $item['media.poster'])) {
                $thumbnail_class = '';
                if ($settings['thumbnail_style'] == 'thumbnail') {
                    $thumbnail_class = 'uk-thumbnail';
                } elseif ($settings['thumbnail_style'] != 'none') {
                    $thumbnail_class = 'uk-border-' . $settings['thumbnail_style'];
                }
                $thumbnail = $item->thumbnail($item->type('media') == 'image' ? 'media':'media.poster', $settings['thumbnail_width'], $settings['thumbnail_height'], array('alt' => $item['title'], 'class' => $thumbnail_class));
            }

        ?>
        <li<?php echo $grid_justify; ?> data-uk-slideshow-item="<?php echo $i; ?>"><a href="#"><?php echo ($thumbnail) ? $thumbnail : $item['title']; ?></a></li>
        <?php endforeach; ?>
    </ul>
    <?php endif; ?>

    <?php if ($center) : ?>
    </div>
    <?php endif ?>

</div>
