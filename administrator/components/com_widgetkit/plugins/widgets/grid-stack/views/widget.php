<?php

// Width
$media_width = 'uk-width-medium-' . $settings['width'];

switch ($settings['width']) {
    case '1-5':
        $content_width = '4-5';
        break;
    case '1-4':
        $content_width = '3-4';
        break;
    case '3-10':
        $content_width = '7-10';
        break;
    case '1-3':
        $content_width = '2-3';
        break;
    case '2-5':
        $content_width = '3-5';
        break;
    case '1-2':
        $content_width = '1-2';
        break;
    case '3-5':
        $content_width = '2-5';
        break;
    case '2-3':
        $content_width = '1-3';
        break;
    case '7-10':
        $content_width = '3-10';
        break;
    case '3-4':
        $content_width = '1-4';
        break;
    case '4-5':
        $content_width = '1-5';
        break;
    case '1-1':
    default:
        $content_width = '1-1';
        break;
}

$content_width = 'uk-width-medium-' . $content_width;

// Grid Gutter
if ($settings['gutter']) {
    $grid = 'uk-grid';
    $grid_cell = '';
} else {
    $grid = 'uk-clearfix uk-flex';
    $grid_cell = 'uk-float-left uk-flex-item-none';
}

switch ($settings['gutter_vertical']) {
    case 'none':
        $gutter = ' uk-margin-top-remove';
        break;
    case 'large':
        $gutter = ' uk-margin-large';
        break;
    default:
        $gutter = '';
        break;
}

$grid .= $gutter;

// Grid Divider
if ($gutter == ' uk-margin-top-remove') {
    $gutter = ' uk-margin-remove';
}
$divider = $settings['divider'] ? '<hr class="uk-grid-divider ' . $gutter . '">' : '';

// Panel
$panel = $settings['panel'] ? 'uk-panel uk-panel-space' : 'uk-panel';

// Content Align
$content_align  = $settings['content_align'] ? 'uk-flex-middle' : '';

// Text Align
$text_align = $settings['text_align'];

// Title Size
switch ($settings['title_size']) {
    case 'panel':
        $title_size = 'uk-panel-title';
        break;
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

// Media Border
$border = ($settings['media_border'] != 'none') ? 'uk-border-' . $settings['media_border'] : '';

// Custom Class
$class = $settings['class'] ? ' class="' . $settings['class'] . '"' : '';

?>

<div<?php echo $class; ?>>

<?php foreach ($items as $i => $item) :  ?>

    <?php

        // Enable/Disable Settings
        if (!$settings['title']) $item['title'] = '';
        if (!$settings['media']) $item['media'] = '';
        if (!$settings['content']) $item['content'] = '';
        if (!$settings['link']) $item['link'] = '';

        // Social Buttons
        $socials = '';
        if ($settings['social_buttons']) {
            $socials .= $item['twitter'] ? '<a class="uk-icon-button uk-icon-twitter" href="'. $item['twitter'] .'"></a> ': '';
            $socials .= $item['facebook'] ? '<a class="uk-icon-button uk-icon-facebook" href="'. $item['facebook'] .'"></a> ': '';
            $socials .= $item['google-plus'] ? '<a class="uk-icon-button uk-icon-google-plus" href="'. $item['google-plus'] .'"></a> ': '';
            $socials .= $item['email'] ? '<a class="uk-icon-button uk-icon-envelope-o" href="mailto:'. $item['email'] .'"></a> ': '';
        }

        // Media Type
        $attrs = array();
        
        if ($item->type('media') == 'image') {
            $attrs['alt'] = $item['title'];

            if ($border) {
                $attrs['class'] = $border;
            }
        }

        if ($item->type('media') == 'video') {
            $attrs['class']    = 'uk-responsive-width';
            $attrs['controls'] = '';
        }

        if ($item['width']) {
            $attrs['width'] = $item['width'];
        }

        if ($item['height']) {
            $attrs['height'] = $item['height'];
        }

        $media = $item->media('media', $attrs);

        if ($item['link']) {
            if ($settings['media_overlay'] == 'link') {
                $media = '<a class="uk-overlay" href="' . $item['link'] . '" >' . $media . '<div class="uk-overlay-area ' . $border . '"></div></a>';
            } else {
                $media = '<a href="' . $item['link'] . '" >' . $media . '</a>';
            }
        }

        if ($socials && ($settings['media_overlay'] == 'social-buttons')) {
            $media = '<div class="uk-overlay">' . $media . '<div class="uk-overlay-area ' . $border . '"><div class="uk-overlay-area-content">' . $socials . '</div></div></div>';
        }

        // Align
        if ($settings['alternate']) {
            $align_flip = $i % 2 == ($settings['align'] == 'left');
        } else {
            $align_flip = ($settings['align'] == 'right');
        }

        // Text Align
        if ($settings['text_align'] == 'media') {
            $text_align = $align_flip ? 'right' : 'left';
        }

        $text_align .= ($text_align == 'right') ? ' uk-text-left-small' : '';

        // Width
        if (!$item['media']) {
            $content_width = 'uk-width-1-1';
        }

        if (!$item['title'] && !$item['content']) {
            $media_width = 'uk-width-1-1';
        }

        // Animation Media
        if ($settings['animation_media'] == 'slide') {
            $settings['animation_media'] = $align_flip ? 'slide-right' : 'slide-left';
        }
        $animation_media = ($settings['animation_media'] != 'none') ? ' data-uk-scrollspy="{cls:\'uk-animation-' . $settings['animation_media'] . '\'}"' : '';

        // Animation Content
        if ($settings['animation_content'] == 'slide') {
            $settings['animation_content'] = $align_flip ? 'slide-left' : 'slide-right';
        }
        $animation_content = ($settings['animation_content'] != 'none') ? ' data-uk-scrollspy="{cls:\'uk-animation-' . $settings['animation_content'] . '\'}"' : '';

    ?>

    <div class="<?php echo $grid; ?> uk-text-<?php echo $text_align; ?> <?php echo $content_align; ?>" data-uk-grid-match data-uk-margin="{cls:'uk-margin-top'}">

        <?php if ($item['media']) : ?>
        <div class="<?php echo $media_width; ?> <?php echo $grid_cell; ?> <?php if ($align_flip) echo 'uk-float-right uk-flex-order-last-medium' ?> uk-text-center"<?php echo $animation_media; ?>>
            <?php echo $media; ?>
        </div>
        <?php endif; ?>

        <?php if ($item['title'] || $item['content']) : ?>
        <div class="<?php echo $content_width; ?> <?php echo $grid_cell; ?>"<?php echo $animation_content; ?>>
            <div class="<?php echo $panel; ?> uk-width-1-1">

                <?php if ($item['title']) : ?>
                <h3 class="<?php echo $title_size; ?>"><?php echo $item['title']; ?></h3>
                <?php endif; ?>

                <?php if ($item['content']) : ?>
                <div class="uk-margin"><?php echo $item['content']; ?></div>
                <?php endif; ?>

                <?php if ($socials && ($settings['media_overlay'] != 'social-buttons')) : ?>
                <div class="uk-margin"><?php echo $socials; ?></div>
                <?php endif; ?>
                
                <?php if ($item['link'] && $settings['link_style'] != 'none') : ?>
                <p class="uk-margin"><a<?php if($link) echo ' class="' . $link . '"' ?> href="<?php echo $item['link']; ?>"><?php echo $settings['link_text']; ?></a></p>
                <?php endif; ?>

            </div>
        </div>
        <?php endif; ?>

    </div>

    <?php if ($i+1 != count($items)) echo $divider; ?>

<?php endforeach; ?>

</div>
