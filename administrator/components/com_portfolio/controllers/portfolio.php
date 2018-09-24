<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>


class PortfolioControllerPortfolio extends JControllerLegacy{

    //function default of joomla
    function __construct(){
        parent::__construct();
        //JRequest::setVar('view','categories');

        //set task
        $this->registerTask('publish', 'status');
        $this->registerTask('unpublish', 'status');
        $this->registerTask('new', 'add');
        $this->registerTask('edit', 'add');
        $this->registerTask('save', 'save');
        $this->registerTask('apply', 'save');
        $this->registerTask('save2new', 'save');
    }

    //function default of joomla
    function display($cachable = false, $urlparams = array()){

        //add Submenu
        //LocationHelper::addSubmenu(JRequest::getCmd('controller','categories'));
        parent::display($cachable = false, $urlparams);
    }

    function removeImage(){
        $id = JRequest::getInt('id');
        if($id){
            $model = $this->getModel('Portfolios','PortfolioModel');
            $model->removeImage($id);
            $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=portfolio.edit&id='.$id,false);
            $this->setRedirect($url,'Intro Image has been removed successully');
        }

    }


    function cancel()
    {
        $url = JRoute::_('index.php?option='._JOOM_OPTION.'&view=portfolios',false);
        $this->setRedirect($url);
    }

    //function save

    function add()
    {
        JRequest::setVar('view','portfolio');
        parent::display();
    }


    function save()
    {

        $model = $this->getModel('portfolio');
        $result = $model->validateData();

        if($result == false)
        {
            $id = JRequest::getInt('id');
            if($id){
                $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=portfolio.edit&id='.$id,false);
            }else {
                $url = JRoute::_('index.php?option='._JOOM_OPTION.'&view=portfolio',false);
            }

            $this->setRedirect($url);
        }
        else
        {
            $id = $model->store();

            $task = $this->getTask();

            switch($task)
            {
                case 'apply': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=portfolio.edit&id='.$id,false);
                    break;
                case 'save': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&view=portfolios',false);
                    break;
                case 'save2new': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=portfolio.add',false);
                    break;
            }


            $this->setRedirect($url,JText::_('The Portfolio has been saved successfully!'));


        }

    }

    //function change status
    function status(){
        
        $cid = JRequest::getVar('cid',array(),'POST',array());
        if(count($cid)>0){
            $model = $this->getModel('Portfolios','PortfolioModel');
            $model->changeStatus();
            $url = JRoute::_('index.php?option=' . _JOOM_OPTION .'&view=portfolios',false);
            $msg = JText::_('The Portfolio has been changed status successfully!');
            $type = null; //error
        }

        $this->setRedirect($url,$msg,$type);

        //parent::display();
    }

    //end change status
    

    //function delete

    function remove(){

        $cid = JRequest::getVar('cid',array(),'POST',array());
        if(count($cid)>0){

            $model = $this->getModel('Portfolios','PortfolioModel');
            $model->remove();
            $url = JRoute::_('index.php?option=' . _JOOM_OPTION .'&view=portfolios',false);
            $msg = JText::_('The Portfolio has been removed successfully!');
            $type = null; //error
        }

        $this->setRedirect($url,$msg,$type);
    }
    

}
?>