<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>
class PortfolioViewControl extends JViewLegacy
{
    //function defaut of joomla
    function display($tpl=null)
    {
        JToolBarHelper::title(JText::_('Portfolio Manager'),'basket');
        parent::display($tpl);
    }

}
?>