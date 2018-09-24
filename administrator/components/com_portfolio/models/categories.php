<?php
defined('_JEXEC') or die;
jimport('joomla.filesystem.file');
//ComponentName>Model<fileName>

class PortfolioModelCategories extends JModelList
{

    var $_data;
    
    var $_total;
    
    //default function of joomla
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
                'id', 'a.id',
                'title', 'a.title',
				'ordering', 'a.ordering',
                'published', 'a.published',
			);
		}

		parent::__construct($config);
	}
	public function getTable($type = 'Category', $prefix = 'PortfolioTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}


     function _bulidQuery()
     { 
        $db       = $this->getDbo();

        $query = $db->getQuery(true);
         $query->select('a.*')
                             ->from(_JOOM_TABLE_PORTFOLIO_CATEGORY.' AS a');

         // Filter by search in title
         $search = $this->getState('filter.search');
         if (!empty($search))
         {
             if (stripos($search, 'id:') === 0)
             {
                 $query->where('a.id = ' . (int) substr($search, 3));
             }
             else
             {
                 $search = $db->quote('%' . str_replace(' ', '%', $db->escape(trim($search), true) . '%'));
                 $query->where('(a.title LIKE ' . $search . ')');
             }
         }

         $listOrdering = $this->getState('list.ordering', 'a.id');
         $listDirn = $db->escape($this->getState('list.direction', 'DESC'));

         $query->order($db->escape($listOrdering) . ' ' . $listDirn);

        return $query;                      
     }

	function changeStatus(){

		$db = $this->getDbo();
		$cid = JRequest::getVar('cid',array(),'POST','array');

		if(count($cid)>0){
			$controllerName = 'manufacturer';
			$task = JRequest::getVar('task',$controllerName.'unpublish','POST','WORD');

			$status = ($task == $controllerName.'unpublish')?0:1;

			$queryObj = $db->getQuery(true);
			$query = $queryObj->update(_JOOM_TABLE_PORTFOLIO_CATEGORY)
							  ->set('published = ' . $status)
							  ->where('id IN (' . implode(',', $cid) . ')');
			$db->setQuery($query);

			$db->query();	
		}
	}
     //end change status
     
     //start delete
     function remove(){

		$cid = JRequest::getVar('cid',array(),'POST','array');

		if(count($cid)>0){

			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->delete($db->quoteName(_JOOM_TABLE_PORTFOLIO_CATEGORY))
				->where('id IN (' . implode(',', $cid) . ')');
			$db->setQuery($query);
			$db->execute();
		}
	}
     //end delete

     function getCategories()
     {
        if(empty($this->_data))
        {
         $db       = $this->getDbo(); 
         $query    = $this->_bulidQuery();// die();
         
         $db->setQuery($query,$this->getStart(),$this->getState('list.limit',20));
         
         $this->_data = $db->loadObjectList(); 

         return $this->_data;
        }
     }
     
     protected function populateState($ordering = 'a.id',$direction = 'desc'){
		
		$app = JFactory::getApplication();

		 $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
		 $this->setState('filter.search', $search);

         parent::populateState($ordering, $direction);
	}

	 function getStart(){
			$start = $this->getState('list.start');
			$limit = $this->getState('list.limit'); //6
			$total = $this->getTotal(); // 20
			if($start > $total - $limit){
				
				$start = (ceil($total/$limit)-1)*$limit;
			}
			
			return $start;
	}
	
 	 function getTotal(){
		if(empty($this->_total)){
			$query = $this->_bulidQuery();
			$this->_total = $this->_getListCount($query);
		}
		
		return $this->_total;
	}
	
  	 function getPagination(){
		jimport('joomla.html.pagination');
		$pagination = new JPagination($this->getTotal(), $this->getStart(), $this->getState('list.limit'));
		return $pagination;
	}

}
?>