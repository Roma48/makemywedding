<?php

namespace YOOtheme\Framework\Joomla;

use ContentHelperRoute, JFactory, JModelLegacy, JRoute, JText;

class ArticleHelper
{
    public function render($item, $params)
    {
        $result = $item->introtext;

        if ($params['readmore'] && $item->readmore) {
            $result .= sprintf('<a class="readmore" href="%s">%s</a>', $this->getUrl($item), JText::_('COM_CONTENT_READ_MORE_TITLE'));
        }

        return $result;
    }

    public function get($params)
    {
        // Ordering
        $direction = null;
        switch ($params['order']) {
            case 'random':
                $ordering = 'RAND()';
                break;
            case 'date':
                $ordering = 'created';
                break;
            case 'rdate':
                $ordering = 'created';
                $direction = 'DESC';
                break;
            case 'alpha':
                $ordering = 'title';
                break;
            case 'ralpha':
                $ordering = 'title';
                $direction = 'DESC';
                break;
            case 'hits':
                $ordering = 'hits';
                break;
            case 'rhits':
                $ordering = 'hits';
                $direction = 'DESC';
                break;
            case 'ordering':
            default:
                $ordering = 'a.ordering';
                break;
        }

        jimport('legacy.model.legacy');

        JModelLegacy::addIncludePath(JPATH_SITE.'/components/com_content/models', 'ContentModel');
        $model = JModelLegacy::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
        $model->setState('params', JFactory::getApplication()->getParams());
        if ($catid = (int) $params['catid']) {
            $model->setState('filter.category_id', $catid);
        }
        $model->setState('filter.published', 1);
        $model->setState('filter.access', true);
        $model->setState('list.ordering', $ordering);
        $model->setState('list.direction', $direction);
        $model->setState('list.start', 0);
        $model->setState('list.limit', (int) $params['items']);
        $model->setState('filter.subcategories', $params['subcategories']);
        $model->setState('filter.max_category_levels', 999);

        // featured, accepted values ('hide' || 'only')
        if (!empty($params['featured'])) {
            $model->setState('filter.featured', $params['featured']);    
        }

        return $model->getItems();
    }

    public function getUrl($item)
    {
        if (!class_exists('ContentHelperRoute')) {
            require_once(JPATH_SITE . '/components/com_content/helpers/route.php');
        }

        return JRoute::_(ContentHelperRoute::getArticleRoute($item->id, $item->catid));
    }
} 