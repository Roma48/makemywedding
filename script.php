<?php

class pkg_widgetkitInstallerScript
{
    public function install($parent)
    {
    	JFactory::getDBO()->setQuery("UPDATE `#__extensions` SET `enabled` = 1 WHERE `element` = 'widgetkit' AND `folder` IN ('content', 'editors-xtd')")->execute();
    }

    public function uninstall($parent) {}

    public function update($parent) {}

    public function preflight($type, $parent)
    {
        jimport('joomla.filesystem.file');

        if (JFile::exists($file = JPATH_ADMINISTRATOR . '/components/com_widgetkit/widgetkit.xml')) {

            $xml = simplexml_load_file($file);

            if ($version = (string) $xml->version and version_compare($version, '2.0.0', '<')) {
                JError::raiseWarning(null, 'Cannot install Widgetkit 2.0, please read the <a href="http://yootheme.com/widgetkit/documentation/troubleshooting/how-to-migrate" target="_blank">Widgetkit migration guide</a>');
                return false;
            }
        }
    }

    public function postflight($type, $parent) {

        // updateservers url update workaround
        if ('update' == $type) {

            JFactory::getDBO()->setQuery(
                "DELETE a, b, c FROM `#__update_sites_extensions` a" .
                " LEFT JOIN `#__update_sites` b ON b.update_site_id = a.update_site_id" .
                " LEFT JOIN `#__updates` c ON c.update_site_id = a.update_site_id" .
                " WHERE a.extension_id = (SELECT `extension_id` FROM `#__extensions` WHERE `type` = 'package' AND `element` = 'pkg_widgetkit')"
            )->execute();
        }
    }
}
