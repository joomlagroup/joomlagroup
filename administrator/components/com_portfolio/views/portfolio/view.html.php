<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>

class PortfolioViewPortfolio extends JViewLegacy
{
    //function defaut of joomla
    function display($tpl=null)
    {

      $document = JFactory::getDocument();


     
      $id = JRequest::getVar('id',0);
      if($id > 0)
      {
      JToolBarHelper::title(JText::_('Edit Portfolio'),'cube');
      }
      else{
        JToolBarHelper::title(JText::_('Add New Portfolio'),'cube');
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
	
		JToolBarHelper::apply('portfolio.apply');
 	    JToolBarHelper::save('portfolio.save');
     	JToolBarHelper::save2new('portfolio.save2new');
     	JToolBarHelper::cancel('portfolio.cancel');
            
		JToolBarHelper::divider();
	}

}
?>