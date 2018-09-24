<?php
defined('_JEXEC') or die;

jimport('joomla.filesystem.file');
//ComponentName>Model<fileName>
use Joomla\Utilities\ArrayHelper;

class PortfolioModelCategories extends JModelList
{

	public function __construct($config = array())
	{


		parent::__construct($config);
	}

    public function getCatIds(){

    }

}
?>