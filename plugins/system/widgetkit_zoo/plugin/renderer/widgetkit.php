<?php

class WidgetkitRenderer extends ItemRenderer
{
    public function setItem($item)
    {
        $this->_item = $item;
        return $this;
    }

    public function setLayout($layout)
    {
        $this->_layout = $layout;
        return $this;
    }

    public function getPositionElements($position)
    {
        $elements = array();
        foreach ($this->_getConfigPosition($position) as $index => $data) {
            if ($element = $this->_item->getElement($data['element'])) {
                $elements[] = $element;
            }
        }

        return $elements;
    }
}
