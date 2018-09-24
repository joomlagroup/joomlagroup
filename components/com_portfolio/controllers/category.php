<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>



class Jk8_ProductsControllerCategory extends JControllerLegacy{

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



    function removeImage(){
        $id = JRequest::getInt('id');
        if($id){
            $model = $this->getModel('Categories','Jk8_ProductsModel');
            $model->removeImage($id);
            $url = JRoute::_('index.php?option='._JOOM_OPTION.'&task=category.edit&id='.$id,false);
            $this->setRedirect($url,'Intro Image has been removed successully');
        }

    }

    //function default of joomla
    function display($cachable = false, $urlparams = array()){

        //add Submenu
        //LocationHelper::addSubmenu(JRequest::getCmd('controller','categories'));
        parent::display($cachable = false, $urlparams);
    }


function insertData(){
    die('off');
    $count = 40000;
    for ($i=35001;$i<$count;$i++){
        $db = JFactory::getDbo();
        $a=array(150000,400000,1000000,1500000,200000,500000);
        $random_keys=array_rand($a,3);
        $price = $a[$random_keys[0]];

        $product = new stdClass();
        $product->title='Add:'.$i.' Giày Da New Balance Nam Procts1 Classic Thể Thao ';
        $product->alias='giay-da-new-balance-nam-procts1-classic-the-thao-'.$i;
        $product->sku='121019x'.$i;
        $product->catid= 59;
        $product->published= 1;
        $product->price= $price;
        $product->saleoff= '150000';
        $product->manufacturer_id= '19';
        $result = JFactory::getDbo()->insertObject('#__products_products', $product);
        $id = $db->insertid();

        //image
        $image = new stdClass();
        $image->file_name = '1528100645_725f4161.jpg';
        $image->product_id = $id;
        JFactory::getDbo()->insertObject('#__products_products_images', $image);

        //attr
        $att = new stdClass();
        $att->attribute_id = 20;
        $att->attributes_groups_id = 12;
        $att->product_id = $id;
        JFactory::getDbo()->insertObject('#__products_attributes_details', $att);

        $att = new stdClass();
        $att->attribute_id = 19;
        $att->attributes_groups_id = 12;
        $att->product_id = $id;
        JFactory::getDbo()->insertObject('#__products_attributes_details', $att);

    }

    die('insert ok');

}



}
?>