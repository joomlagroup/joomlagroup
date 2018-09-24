<?php
defined('_JEXEC') or die;

define('_JOOM_OPTION','com_portfolio');
define('_JOOM_TABLE_PORTFOLIO_CATEGORY','#__portfolio_category');

define('_JOOM_TABLE_PORTFOLIO_PORTFOLIO','#__portfolio_portfolio');


define('_SIZE_IMAGE_PORTFOLIO_WITH','200'); //px
define('_SIZE_IMAGE_PORTFOLIO_HEIGHT','200'); //px
define('_SIZE_IMAGE_PORTFOLIO_WITH_FULL','641'); //px
define('_SIZE_IMAGE_PORTFOLIO_HEIGHT_FULL','725'); //px

define('_PATH_IMAGE_PORTFOLIO_UPLOAD',JPATH_SITE . DS . 'media/com_portfolio/portfolio');
define('_PATH_IMAGE_PORTFOLIO', JPATH_SITE . DS . 'media/com_portfolio/portfolio/thumbs');
define('_PATH_URL_IMAGE_PORTFOLIO', JURI::Root().'/media/com_portfolio/portfolio/thumbs');
define('_PATH_IMAGE_PORTFOLIO_FULL', JPATH_SITE . DS . 'media/com_portfolio/portfolio/full');
define('_PATH_URL_IMAGE_PORTFOLIO_FULL', JURI::Root().'/media/com_portfolio/portfolio/full');

define('_PATH_URL_PORTFOLIO', JURI::Root().'/media/com_portfolio');


?>