<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>

class PortfolioViewCategory extends JViewLegacy
{
    //function defaut of joomla
    function display($tpl=null)
    {

      $document = JFactory::getDocument();


     
      $id = JRequest::getVar('id',0);
      if($id > 0)
      {
      JToolBarHelper::title(JText::_('Edit Category'),'briefcase');
      }
      else{
        JToolBarHelper::title(JText::_('Add New Category'),'briefcase');
      }
      $this->addToolbar();
       
       
    
       $form = $this->get('Form');
       $this->form = $form;
      
       $data = $this->get('Data');

        
       $item = $this->get('Item');
       $this->item = $item;


       if(!empty($item))
       {
         $form->bind($item);
       }
       else
          {
             if($form and !empty($data))
                 {
                     $form->bind($data);
                 }
          }

      parent::display($tpl);  
    }
    
    
    	protected function addToolbar(){
	
		JToolBarHelper::apply('category.apply');
 	    JToolBarHelper::save('category.save');
     	JToolBarHelper::save2new('category.save2new');
     	JToolBarHelper::cancel('category.cancel');
	    
		
		JToolBarHelper::divider();

		
	}

}
?>