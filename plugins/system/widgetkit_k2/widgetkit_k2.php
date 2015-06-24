<?php

defined('_JEXEC') or die;

class plgSystemWidgetkit_k2 extends JPlugin
{
    protected $app;

    public function onAfterInitialise()
    {
        if (!($this->app = $app = (@include JPATH_ADMINISTRATOR.'/components/com_widgetkit/widgetkit-app.php')
            and file_exists($path = JPATH_ADMINISTRATOR.'/components/com_k2/k2.xml')
            and JComponentHelper::getComponent('com_k2', true)->enabled
            and ($data = JApplicationHelper::parseXMLInstallFile(JPATH_ADMINISTRATOR . '/components/com_k2/k2.xml'))
            and version_compare($data['version'], '2.1', '>='))
        ) {
            return;
        }

        $app['joomla.k2'] = $this;
        $app['plugins']->addPath(__DIR__.'/plugin/plugin.php');
        $app['locator']->addPath('plugins/content/k2', __DIR__.'/plugin');
    }

    public function getItems(array $params)
    {
        require_once(JPATH_ROOT.'/modules/mod_k2_content/helper.php');

        if (K2_JVERSION != '15') {
            $language = JFactory::getLanguage();
            $language->load('mod_k2.j16', JPATH_ADMINISTRATOR, null, true);
        }

        return modK2ContentHelper::getItems(new JRegistry($params)) ?: array();
    }

    public function getCategoriesOptions()
    {
        $children = array();
        $categories = $this->app['db']->fetchAllObjects('SELECT * FROM @k2_categories WHERE trash = 0 ORDER BY parent, ordering');

        foreach ($categories as $category) {

            $category->title = $category->name;
            $category->parent_id = $pt = $category->parent;

            $children[$pt] = $children[$pt] ? $children[$pt] : array();
            $children[$pt][] = $category;
        }

        $items = array();
        $list = JHTML::_('menu.treerecurse', 0, '', array(), $children, 9999, 0, 0);

        foreach ($list as $item) {
            $item->treename = JString::str_ireplace('&#160;&#160;', '.&nbsp;&nbsp;&nbsp;', $item->treename);
            $items[] = JHTML::_('select.option', $item->id, $item->treename);
        }

        return $items;
    }
}
