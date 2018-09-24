<?php
// No direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.form.formfield');

/**
* Book form field class
*/
class JFormFieldModal_Product extends JFormField
{
/**
* field type
* @var string
*/
    protected $type = 'Modal_Product';

    protected function getInput()
    {
        // Load modal behavior
        JHtml::_('behavior.modal', 'a.modal');

        // Build the script
        $script = array();
        $script[] = '    function jSelectProduct_'.$this->id.'(id, title, object) {';
        $script[] = '        document.id("'.$this->id.'_id").value = id;';
        $script[] = '        document.id("'.$this->id.'_name").value = title;';
        $script[] = '        SqueezeBox.close();';
        $script[] = '    }';

        // Add to document head
        JFactory::getDocument()->addScriptDeclaration(implode("\n", $script));

        // Setup variables for display
        $html = array();
        $link = 'index.php?option=com_jk8_products&amp;view=products&amp;layout=modal'.
            '&amp;tmpl=component&amp;function=jSelectProduct_'.$this->id;

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('title');
        $query->from('#__products_products');
        $query->where('id='.(int)$this->value);
        $db->setQuery($query);
        if (!$title = $db->loadResult()) {
            JError::raiseWarning(500, $db->getErrorMsg());
        }
        if (empty($title)) {
            $title = JText::_('COM_JK8_PRODUCT_FIELD_SELECT_PRODUCT');
        }
        $title = htmlspecialchars($title, ENT_QUOTES, 'UTF-8');

        // The current book input field
        $html[] = '<span class="input-append">';
        $html[] = '  <input type="text" id="'.$this->id.'_name" value="'.$title.'" class="input-medium" disabled="disabled" size="35" />';


        // The book select button


        $html[] = '    <a class="modal btn" title="'.JText::_('COM_JK8_PRODUCT_SELECT_PRODUCT_TITLE').'" href="'.$link.
            '" rel="{handler: \'iframe\', size: {x:800, y:450}}"><span class="icon-file" aria-hidden="true"></span>'.
            JText::_('COM_JK8_PRODUCT_BUTTON_SELECT_PRODUCT').'</a>';

        $html[] = '</span>';

        // The active book id field
        if (0 == (int)$this->value) {
            $value = '';
        } else {
            $value = (int)$this->value;
        }

        // class='required' for client side validation
        $class = '';
        if ($this->required) {
            $class = ' class="required modal-value"';
        }

        $html[] = '<input type="hidden" id="'.$this->id.'_id"'.$class.' name="'.$this->name.'" value="'.$value.'" />';

        return implode("\n", $html);
    }

}