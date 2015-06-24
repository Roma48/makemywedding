<?php

class com_widgetkitInstallerScript
{
    public function install($parent)
    {
        $this->init()->install();
    }

    public function uninstall($parent)
    {
        $this->init()->uninstall();
    }

    public function update($parent)
    {
        $this->init()->install();
    }

    public function preflight($type, $parent) {}

    public function postflight($type, $parent) {}

    protected function init()
    {
        return require(JPATH_ADMINISTRATOR . '/components/com_widgetkit/widgetkit.php');
    }
}
