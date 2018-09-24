<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>

class PortfolioControllerControl extends JController{
    
      //function default of joomla
    function __construct(){
        parent::__construct();
        JRequest::setVar('view','control');
        

        		
 	   	
        	
    }
    
    //function default of joomla
    function display(){
        
        //add Submenu   
        //LocationHelper::addSubmenu(JRequest::getCmd('controller','location'));
        parent::display();
    }
    

    
}
?>