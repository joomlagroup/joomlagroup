
<?php
defined('_JEXEC') or die;

class PortfolioHelper extends JHelperContent
{
    public static function addSubmenu($vName)
    {


        JHtmlSidebar::addEntry(
            JText::_('Categories'),
            'index.php?option='._JOOM_OPTION.'&view=categories',
            $vName == 'categories'
        );


        JHtmlSidebar::addEntry(
            JText::_('Portfolio'),
            'index.php?option='._JOOM_OPTION.'&view=portfolios',
            $vName == 'portfolios'
        );
    }
}

?>