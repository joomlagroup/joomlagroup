<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>



class PortfolioControllerPortfoliosort extends JControllerAdmin{

      //function default of joomla
    function __construct(){
        parent::__construct();
        //JRequest::setVar('view','categories');


    }

    public function getModel($name = 'Portfolio', $prefix = 'PortfolioModel', $config = array('ignore_request' => true))
    {
        return parent::getModel($name, $prefix, $config);
    }
    

}
?>