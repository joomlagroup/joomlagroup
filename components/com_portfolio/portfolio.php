<?php
/**
 * Created by PhpStorm.
 * User: congnguyen
 * Date: 4/11/18
 * Time: 9:33 PM
 */

define("DS","/");


$define =  JPATH_COMPONENT_ADMINISTRATOR .DS.'includes'.DS.'define.php';
if(file_exists($define))
require_once($define);
$task = JFactory::getApplication()->input->get('task');


//load 1 class from any file

JLoader::register('PortfolioHelper', JPATH_SITE . '/components/'._JOOM_OPTION.'/helpers/portfolio.php');

$controller = JControllerLegacy::getInstance('Portfolio');

// Perform the Request task
$controller->execute(JFactory::getApplication()->input->get('task'));

// Redirect if set by the controller
$controller->redirect();