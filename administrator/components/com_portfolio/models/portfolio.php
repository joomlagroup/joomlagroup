<?php
defined('_JEXEC') or die;
jimport('joomla.filesystem.file');
//ComponentName>Model<fileName>

class PortfolioModelPortfolio extends JModelAdmin
{
    
    protected $_data;
    
     function __construct($config=array())
     {
        parent::__construct($config);
     }

    public function getTable($type = 'Portfolio', $prefix = 'PortfolioTable', $config = array())
    {
        return JTable::getInstance($type, $prefix, $config);
    }

    function getForm($data = array(), $loadData = true)
    {
        $options = array('control' => 'jform','load_data' => true);
        $data    =  $this->loadForm(_JOOM_OPTION.'portfolio','portfolio',$options);
        return $data;
    }
    
    function validateData()
    {
        $data = JRequest::getVar('jform',array(),'POST','ARRAY');
        //echo '<pre>';    print_r($data);    echo '</pre>'; die('a');
        $this->_data = $data;
        $form = $this->getForm();
        $result = $this->validate($form,$data);
        $setErr = array();
        if ($data['alias']) {
            $table =  JTable::getInstance('Portfolio', 'PortfolioTable', $config = array());
            if ($table->load(array('alias' => $data['alias'], 'catid' => $data['catid'])) and $table->id!=$data['id'])
            {
                $setErr[] = JText::_('please check alias');
                $result = false;
            }
        }


        if($result == false)
        {
            $app = JFactory::getApplication();
            $app->setUserState(_JOOM_OPTION.'portfolio',$data);
            $error = $this->getErrors();
            if(count($setErr)>0){
                foreach ($setErr as $e) {
                    $error[] = $e;
                }
            }
            foreach($error as $key=>$val)
            {
                $app->enqueueMessage($val->getMessage(),'error');
            }
        }
      return $result;
    }

    function getData()
    {
        $app = JFactory::getApplication();
        $tmp = $app->getUserState(_JOOM_OPTION.'portfolio',array());
        $data = $tmp;
        $app->setUserState(_JOOM_OPTION.'portfolio', array());
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
            $saveData['alias'] = JFilterOutput::stringURLSafe($saveData['alias']);
        }

        $imageIntro =  $this->uploadImageIntro();
        if($imageIntro){
            $saveData['image_intro'] = $imageIntro;
        }

        if(!$id) {
            $db = $this->getDbo();
            $query = $db->getQuery(true)
                ->select('MAX(ordering)')
                ->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO);

            $db->setQuery($query);
            $max = $db->loadResult();
            $saveData['ordering'] = $max + 1;

        }else {

        }
        /* test alias */
        $input  = JFactory::getApplication()->input;
        $origTable = clone $this->getTable();
        if ($origTable->load(array('alias' => $saveData['alias'], 'catid' => $saveData['catid'])) and $origTable->id!=$saveData['id'])
        {
            list($title, $alias) = $this->generateNewTitle($saveData['catid'], $saveData['alias'], $saveData['title']);
           // $saveData['title'] = $title;
            $saveData['alias'] = $alias;
        }
        /* end alias */


      parent::save($saveData);


      return $id;
    }

    public function getItem($pk = null)
    {
        $item = parent::getItem($pk);

        return $item;
    }

    function uploadImageIntro(){

        $app = JFactory::getApplication();
        $jinput = JFactory::getApplication()->input;
        $files = $jinput->files->get('jform');
        $file = $files['image_intro'];
        if($file['name']){
            $filename = JFile::makeSafe($file['name']);
            $src = $file['tmp_name'];
            $dest = _PATH_IMAGE_PORTFOLIO_UPLOAD . DS . $filename;

            $allowExtend = array("jpg", "png", "gif");
            $extend = strtolower(JFile::getExt($filename));
            if(in_array($extend, $allowExtend))
            {
                if (JFile::upload($src, $dest))
                {
                    // Redirect to a page of your choice
                    require_once (JPATH_COMPONENT_ADMINISTRATOR.'/helpers/resize.php');
                    $resize = new ResizeImage($dest);

                    $resize->resizeTo(_SIZE_IMAGE_PORTFOLIO_WITH, _SIZE_IMAGE_PORTFOLIO_HEIGHT,'exact');
                    $new_filename = time().'_'. substr(uniqid(),-8).'.'.$extend;
                    $savePath = _PATH_IMAGE_PORTFOLIO . DS . $new_filename;
                    $resize->saveImage($savePath);

                    $resize->resizeTo(_SIZE_IMAGE_PORTFOLIO_WITH_FULL, _SIZE_IMAGE_PORTFOLIO_HEIGHT_FULL,'exact');
                    $savePath = _PATH_IMAGE_PORTFOLIO_FULL . DS . $new_filename;
                    $resize->saveImage($savePath);

                    JFile::delete($dest);

                    $id = JRequest::getInt('id');
                    if($id) {
                        $db = JFactory::getDbo();
                        $query = $db->getQuery(true);
                        $query->select('image_intro')
                            ->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO)
                            ->where('id = '.$id);
                        $db->setQuery($query);
                        $old_image_name = $db-> loadResult();
                        if($old_image_name){
                            $old_file_name = _PATH_IMAGE_PORTFOLIO.'/'.$old_image_name;
                            JFile::delete($old_file_name);
                        }
                    }
                    return $new_filename;
                }
                else
                {
                    $app->enqueueMessage('Image can not upload!','warning');
                }

            }else {

                $app->enqueueMessage('Image type is not allow!','warning');
            }
        }
        //end upload image
    }


    protected function getReorderConditions($table)
    {
        return array(
            'catid = ' . (int) $table->catid,
            'published >= 0'
        );
    }


}
?>