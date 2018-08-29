<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_search
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include the search functions only once
//JLoader::register('ModJK8SearchProductsHelper', __DIR__ . '/helper.php');

require JModuleHelper::getLayoutPath('mod_homepage_method', $params->get('layout', 'default'));
