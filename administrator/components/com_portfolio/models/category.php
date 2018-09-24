<?php
defined('_JEXEC') or die;
jimport('joomla.filesystem.file');
//ComponentName>Model<fileName>

class PortfolioModelCategory extends JModelAdmin
{
    
    protected $_data;
    
     function __construct($config=array())
     {
        parent::__construct($config);
     }

    public function getTable($type = 'Category', $prefix = 'PortfolioTable', $config = array())
    {
        return JTable::getInstance($type, $prefix, $config);
    }

    function getForm($data = array(), $loadData = true)
    {
        $options = array('control' => 'jform','load_data' => true);
        $data    =  $this->loadForm(_JOOM_OPTION.'category','category',$options);
        return $data;
    }
    
    function validateData()
    {
        $data = JRequest::getVar('jform',array(),'POST','ARRAY');
        //echo '<pre>'; print_r($data); echo '</pre>'; die('a');
        $this->_data = $data;
        $form = $this->getForm();
        $result = $this->validate($form,$data);
        
        if($result == false)
        {
            $app = JFactory::getApplication();
            $app->setUserState(_JOOM_OPTION.'category',$data);
            
            $error = $this->getErrors();

        //   echo '<pre>';    print_r($error);    echo '</pre>'; die();
            foreach($error as $key=>$val)
            {
                $app->enqueueMessage($val->getMessage(),'warning');
            }
        }
      return $result;
    }

    function getData()
    {
        $app = JFactory::getApplication();
        $tmp = $app->getUserState(_JOOM_OPTION.'category',array());
        $data = $tmp;
       $app->setUserState(_JOOM_OPTION.'category', array());
 
        return $data;
    }

    function store()
    {
        $id = JRequest::getVar('id',0,'GET','int');
        $saveData = $this->_data;
        $user =Jfactory::getUser();

        if(trim($saveData['alias']) == ''){
            require_once JPATH_COMPONENT . '/helpers/alias.php';
            $saveData['alias'] = AliasHelper::filter($saveData['title']);
        }


      parent::save($saveData);

      $id = $this->getState($this->getName() . '.id');
      return $id;
    }

    public function getItem($pk = null)
    {
        $item = parent::getItem($pk);

        return $item;
    }

}
?>