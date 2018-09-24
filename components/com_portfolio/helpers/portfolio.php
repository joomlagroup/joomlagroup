<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_categories
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Categories helper.
 *
 * @since  1.6
 */
class PortfolioHelper
{

	public function getPortfolioByCat($catid){
        if(!$catid)
            return;

		$db    =  JFactory::getDbo();
		$query = $db->getQuery(true)
			->select('*')
			->from(_JOOM_TABLE_PORTFOLIO_PORTFOLIO)
			->where('catid ='.$catid)
            ->order('ordering');
        $query->where('published=1');
		$result = $db->setQuery($query)->loadObjectList();
		return $result;
	}

	public function getCatIds(){
        $db    =  JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('a.id,a.title')
            ->from(_JOOM_TABLE_PORTFOLIO_CATEGORY.' AS a')
            ->join('INNER',_JOOM_TABLE_PORTFOLIO_PORTFOLIO.' AS p ON p.catid = a.id')
            ->group('a.id')
            ->order('a.ordering');
        $query->where('a.published = 1');
        $result = $db->setQuery($query)->loadObjectList();
        return $result;
    }

}
