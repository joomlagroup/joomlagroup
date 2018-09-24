<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>
class PortfolioViewPortfolios extends JViewLegacy {
    //function defaut of joomla



    function display($tpl=null)
    {
        $items = $this->get('Portfolios');
        $this->items = $items;

        //echo '<pre>'; print_r($this->items); echo '</pre>'; die('a');

        $ordering = array();

        $this->ordering = $ordering;

        $this->pagination = $this->get('Pagination');

        $this->state = $this->get('State');

        $this->filterForm = $this->get('FilterForm');
        $this->activeFilters = $this->get('ActiveFilters');

        if ($this->getLayout() !== 'modal') {
            $this->addToolBar();
        }

        parent::display($tpl);

    }

    
    protected function addToolbar(){

        JToolBarHelper::title(JText::_('Portfolio'),'cube');
        JToolBarHelper::addNew('portfolio.new');

        //JToolBarHelper::editList('category.edit');
        JToolBarHelper::divider();

        JToolBarHelper::publishList('portfolio.publish');
        JToolBarHelper::unpublishList('portfolio.unpublish');
        JToolBarHelper::deleteList('Do you want remove items?','portfolio.remove');

        JToolBarHelper::divider();

        require_once JPATH_COMPONENT_ADMINISTRATOR. '/helpers/sidebar.php';
        PortfolioHelper::addSubmenu('portfolios');
        $this->sidebar = JHtmlSidebar::render();

	}

}
?>