<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>
class PortfolioViewCategories extends JViewLegacy {
    //function defaut of joomla



    function display($tpl=null)
    {
        
      //=====
      $document = JFactory::getDocument();

      $items = $this->get('Categories');
      
      //$this->assignRef('items',$items);
      $this->items = $items;

        //echo '<pre>'; print_r($this->items); echo '</pre>'; die('a');

      
      $ordering = array();
        
      $this->ordering = $ordering;
      
      $this->pagination = $this->get('Pagination');
      
      $this->state = $this->get('State');

     $this->filterForm = $this->get('FilterForm');
     //$this->activeFilters = $this->get('ActiveFilters')

      
      
      JToolBarHelper::title(JText::_('Categories'),'briefcase');
      $this->addToolbar();

       parent::display($tpl); 
       
       
    }
    
    
    protected function addToolbar(){

        JToolBarHelper::addNew('category.new');

        //JToolBarHelper::editList('category.edit');
        JToolBarHelper::divider();

        JToolBarHelper::publishList('category.publish');
        JToolBarHelper::unpublishList('category.unpublish');
        JToolBarHelper::deleteList('Do you want remove items?','category.remove');

        JToolBarHelper::divider();

        require_once JPATH_COMPONENT_ADMINISTRATOR. '/helpers/sidebar.php';
        PortfolioHelper::addSubmenu('categories');
        $this->sidebar = JHtmlSidebar::render();

    }

}
?>