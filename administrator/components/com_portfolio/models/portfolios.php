<?php
defined('_JEXEC') or die;
jimport('joomla.filesystem.file');
use Joomla\Utilities\ArrayHelper;

//ComponentName>Model<fileName>

class PortfolioModelPortfolios extends JModelList
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
                'catid','a.catid',
			);
		}

		parent::__construct($config);
	}
	public function getTable($type = 'Portfolio', $prefix = 'PortfolioTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}


     function _bulidQuery()
     { 
        $db       = $this->getDbo();

        $query = $db->getQuery(true);
         $query->select('a.*')
                             ->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO.' AS a');
		 // Join over the categories.
		 $query->select('c.title AS category_title')
			 ->join('LEFT', _JOOM_TABLE_PORTFOLIO_CATEGORY.' AS c ON c.id = a.catid');

		 $categoryId = $this->getState('filter.catid', array());
		 if (!is_array($categoryId))
		 {
			 $categoryId = $categoryId ? array($categoryId) : array();
		 }

		 if (count($categoryId)) {
			 $categoryId = ArrayHelper::toInteger($categoryId);
             $arrID = $this->getCatIds($categoryId);
			 $query->where('a.catid IN (' . implode(',', $arrID) . ')');
		 }

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

    protected function getCatIds($cid = array()){

        return $cid;

    }


	function changeStatus(){

		$db = $this->getDbo();
		$cid = JRequest::getVar('cid',array(),'POST','array');

		if(count($cid)>0){
			$controllerName = 'portfolio';
			$task = JRequest::getVar('task',$controllerName.'unpublish','POST','WORD');

			$status = ($task == $controllerName.'unpublish')?0:1;

			$queryObj = $db->getQuery(true);
			$query = $queryObj->update(_JOOM_TABLE_PORTFOLIO_PORTFOLIO)
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

            //remove intro image
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('image_intro')
                ->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO)
                ->where('id IN (' . implode(',', $cid) . ')');
            $db->setQuery($query);
            $image_name = $db-> loadColumn();

            if($image_name){
                foreach ($image_name as $image)
                {
                    $file_name = _PATH_IMAGE_PORTFOLIO.'/'.$image;
                    JFile::delete($file_name);
                    $file_name = _PATH_IMAGE_PORTFOLIO_FULL.'/'.$image;
                    JFile::delete($file_name);
                }
            }

			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->delete($db->quoteName(_JOOM_TABLE_PORTFOLIO_PORTFOLIO))
				->where('id IN (' . implode(',', $cid) . ')');
			$db->setQuery($query);
			$db->execute();


		}
	}
     //end delete

     function getPortfolios()
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
     
     protected function populateState($ordering = 'a.ordering',$direction = 'desc'){
		
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

    function removeImage($id) {
        if(!$id)
            return;

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('image_intro')
            ->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO)
            ->where('id = '.$id);
        $db->setQuery($query);
        $image_name = $db-> loadResult();
        if($image_name){
            $file_name = _PATH_IMAGE_PORTFOLIO.'/'.$image_name;
            JFile::delete($file_name);

            $file_name = _PATH_IMAGE_PORTFOLIO_FULL.'/'.$image_name;
            JFile::delete($file_name);
        }

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $fields = array(
            $db->quoteName('image_intro') . ' = ""'
        );
        $conditions = array(
            $db->quoteName('id') . ' = '.$id
        );

        $query->update($db->quoteName(_JOOM_TABLE_PORTFOLIO_PORTFOLIO))->set($fields)->where($conditions);
        $db->setQuery($query);
        $result = $db->execute();
    }




}
?>