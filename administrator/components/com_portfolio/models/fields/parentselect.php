<?php
defined('JPATH_BASE') or die();

JFormHelper::loadFieldClass('list');

class JFormFieldParentSelect extends JFormFieldList
{
    protected $type = 'ParentSelect';
    
    protected function getOptions()
    {

        $db = JFactory::getDbo();
        $view = JRequest::getVar('view');

        $id = JRequest::getInt('id',0,'GET');
        if($id > 0 and $view!='portfolio')
        {

        /*


        $queryObj = $db->getQuery(true);
        $query = $queryObj->select(array('id'))
                      ->from(_JOOM_TABLE_PRODUCTS_CATEGORY)
                      ->where('id ='.$id);
                     ;



        $db->setQuery($query);

        $result = $db->loadColumn();
        $ids = implode(',',$result);
        */


        }



        $queryObj = $db->getQuery(true);
        $query = $queryObj->select(array('id','title'))
                      ->from(_JOOM_TABLE_PORTFOLIO_CATEGORY)
                      ->where('published = 1')
                      ->order('ordering ASC');

        if($id > 0 and $view!='portfolio')
        {
       // $query->where('id NOT IN ('.$ids.')');
        }

      //echo $query; die('a');

        $db->setQuery($query);


        $options = array();

        $result = $db->loadObjectList();

        if($view=='portfolio') {
            $tmp     = array();
            $tmp['value'] = '';
            $tmp['text']  = '- Select -';
            $options[]= (object)$tmp;
        }

        if($result > 0)
        foreach($result as $key => $val)
        {
        $tmp     = array();

       $tmp['text']  = $val->title;
       $tmp['value'] = $val->id;


        $options[]= (object)$tmp;
        }

        return $options;
    }
} 

?>