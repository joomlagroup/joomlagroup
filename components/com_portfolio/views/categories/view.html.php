<?php
defined('_JEXEC') or die;
//<Componetname>View<foldername>
class PortfolioViewCategories extends JViewLegacy {
    //function defaut of joomla



    function display($tpl=null)
    {
        $model = $this->getModel();
        //$this->category =  $model->getItem();



       parent::display($tpl); 
       
       
    }


}
?>