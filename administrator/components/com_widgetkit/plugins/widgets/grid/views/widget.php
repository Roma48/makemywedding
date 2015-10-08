<?php

// Grid
if ($settings['gutter'] == 'none') {
    $grid = 'uk-clearfix uk-flex';
} else {
    $grid = 'uk-grid';
    $grid .= ($settings['gutter'] == 'small') ? ' uk-grid-small' : '' ;
}

$grid .= ' uk-grid-width-1-'.$settings['columns'];
$grid .= $settings['columns_small'] ? ' uk-grid-width-small-1-'.$settings['columns_small'] : '';
$grid .= $settings['columns_medium'] ? ' uk-grid-width-medium-1-'.$settings['columns_medium'] : '';
$grid .= $settings['columns_large'] ? ' uk-grid-width-large-1-'.$settings['columns_large'] : '';
$grid .= $settings['columns_xlarge'] ? ' uk-grid-width-xlarge-1-'.$settings['columns_xlarge'] : '';

// Panel
$panel = 'uk-panel';
switch ($settings['panel']) {
    case 'box' :
        $panel .= ' uk-panel-box';
        break;
    case 'primary' :
        $panel .= ' uk-panel-box uk-panel-box-primary';
        break;
    case 'secondary' :
        $panel .= ' uk-panel-box uk-panel-box-secondary';
        break;
    case 'hover' :
        $panel .= ' uk-panel-hover';
        break;
    case 'header' :
        $panel .= ' uk-panel-header';
        break;
    case 'space' :
        $panel .= ' uk-panel-space';
        break;
}

// Media Width
$media_width = 'uk-width-' . $settings['media_breakpoint'] . '-' . $settings['media_width'];

switch ($settings['media_width']) {
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
    default:
        $content_width = '1-2';
        break;
}

$content_width = 'uk-width-medium-' . $content_width;

// Content Align
$content_align  = $settings['content_align'] ? 'uk-flex-middle' : '';

// Title Size
switch ($settings['title_size']) {
    case 'panel':
        $title_size = 'uk-panel-title';
        break;
    case 'large':
        $title_size = 'uk-heading-large uk-margin-top-remove';
        break;
    default:
        $title_size = 'uk-' . $settings['title_size'] . ' uk-margin-top-remove';
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

$panel_as_link = ($settings['link_style'] == 'panel') ? 1 : 0 ;

if ($settings['media_overlay'] == 'social-buttons') {
    $panel_as_link  = '';
}

// Media Border
$border = ($settings['media_border'] != 'none') ? 'uk-border-' . $settings['media_border'] : '';

?>

<div class="<?php echo $grid; ?> uk-grid-match uk-text-<?php echo $settings['text_align']; ?> <?php echo $settings['class']; ?>" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin>

<?php foreach ($items as $i => $item) :

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

        // Links and Overlays
        $tag_start = 'div';
        $tag_end = 'div';
        $overlay_toggle = '';

        if ($socials) {
            $panel_as_link  = '';
        }

        if ($item['link']) {
            if ($panel_as_link) {
                $tag_start = 'a href="' . $item['link'] . '"';
                $tag_end = 'a';
                if ($settings['media_overlay'] == 'link') {
                    $media = '<div class="uk-overlay" href="' . $item['link'] . '" >' . $media . '<div class="uk-overlay-area ' . $border . '"></div></div>';
                    $overlay_toggle = ' uk-overlay-toggle';
                }
            } else {
                if ($settings['media_overlay'] == 'link') {
                    $media = '<a class="uk-overlay" href="' . $item['link'] . '" >' . $media . '<div class="uk-overlay-area ' . $border . '"></div></a>';
                } else {
                    $media = '<a href="' . $item['link'] . '" >' . $media . '</a>';
                }
            }
        }

        if ($socials && ($settings['media_overlay'] == 'social-buttons')) {
            $media = '<div class="uk-overlay">' . $media . '<div class="uk-overlay-area ' . $border . '"><div class="uk-overlay-area-content">' . $socials . '</div></div></div>';
        }

        // Animation
        $delay = $i * 300;
        $animation = ($settings['animation'] != 'none') ? ' data-uk-scrollspy="{cls:\'uk-animation-' . $settings['animation'] . '\', delay:' . $delay . '}"' : '';

    ?>

    <div<?php if ($settings['gutter'] == 'none') echo ' class="uk-float-left uk-flex-item-none"'; ?>>
        <<?php echo $tag_start; ?> class="<?php echo $panel; ?><?php echo $overlay_toggle; ?>"<?php echo $animation; ?>>

            <?php if ($item['media'] && in_array($settings['media_align'], array('teaser', 'top'))) : ?>
            <div class="uk-margin uk-text-center<?php if ($settings['media_align'] == 'teaser') echo ' uk-panel-teaser'; ?>"><?php echo $media; ?></div>
            <?php endif; ?>

            <?php if ($item['media'] && in_array($settings['media_align'], array('left', 'right'))) : ?>
            <div class="uk-grid <?php echo $content_align; ?>" data-uk-grid-margin>
                <div class="<?php echo $media_width ?><?php if ($settings['media_align'] == 'right') echo ' uk-float-right uk-flex-order-last-' . $settings['media_breakpoint'] ?>">
                    <?php echo $media; ?>
                </div>
                <div class="<?php echo $content_width ?>">
                    <div class="uk-panel">
            <?php endif; ?>

            <?php if ($item['title']) : ?>
            <h3 class="<?php echo $title_size; ?>"><?php echo $item['title']; ?></h3>
            <?php endif; ?>

            <?php if ($item['media'] && $settings['media_align'] == 'bottom') : ?>
            <div class="uk-margin uk-text-center"><?php echo $media; ?></div>
            <?php endif; ?>

            <?php if ($item['content']) : ?>
            <div class="uk-margin"><?php echo $item['content']; ?></div>
            <?php endif; ?>

            <?php if ($socials && ($settings['media_overlay'] != 'social-buttons')) : ?>
            <div class="uk-margin"><?php echo $socials; ?></div>
            <?php endif; ?>

            <?php if ($item['link'] && ($settings['link_style'] != 'none' && $settings['link_style'] != 'panel')) : ?>
            <p class="uk-margin"><a<?php if($link) echo ' class="' . $link . '"' ?> href="<?php echo $item['link']; ?>"><?php echo $settings['link_text']; ?></a></p>
            <?php endif; ?>

            <?php if ($item['media'] && in_array($settings['media_align'], array('left', 'right'))) : ?>
                    </div>
                </div>
            </div>
            <?php endif; ?>

        </<?php echo $tag_end; ?>>
    </div>

<?php endforeach; ?>

</div>