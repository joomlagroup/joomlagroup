<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>



class PortfolioControllerCategory extends JControllerLegacy{

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



    function cancel()
    {
        $url = JRoute::_('index.php?option='._JOOM_OPTION.'&view=categories',false);
        $this->setRedirect($url);
    }

    //function save

    function add()
    {
        JRequest::setVar('view','category');
        parent::display();
    }


    function save()
    {

        $model = $this->getModel('Category');
        $result = $model->validateData();

        if($result == false)
        {
            $url = JRoute::_('index.php?option='._JOOM_OPTION.'&controller=category&task=edit',false);
            $this->setRedirect($url);
        }
        else
        {
            $id = $model->store();

            $task = $this->getTask();

            switch($task)
            {
                case 'apply': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=category.edit&id='.$id,false);
                    break;
                case 'save': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&view=categories',false);
                    break;
                case 'save2new': $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=category.add',false);
                    break;
            }


            $this->setRedirect($url,JText::_('The Category has been saved successfully!'));


        }

    }

    //function change status
    function status(){
        
        $cid = JRequest::getVar('cid',array(),'POST',array());
        if(count($cid)>0){
            $model = $this->getModel('Categories','PortfolioModel');
            $model->changeStatus();
            $url = JRoute::_('index.php?option=' . _JOOM_OPTION .'&view=categories',false);
            $msg = JText::_('The Category has been change status successfully!');
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

            $model = $this->getModel('Categories','PortfolioModel');
            $model->remove();
            $url = JRoute::_('index.php?option=' . _JOOM_OPTION .'&view=categories',false);
            $msg = JText::_('The Category has been removed successfully!');
            $type = null; //error
        }

        $this->setRedirect($url,$msg,$type);
    }





}
?>