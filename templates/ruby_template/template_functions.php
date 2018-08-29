<?php
/**
 * @copyright	Copyright (C) 2011.  joomla-outsource.com All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * @Template by	Du Nguyen
 * @E-mail		webmaster@joomla-outsource.com
 * @Date		May, 2011
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
class fw_template_17s{
	
	var $_tpl=null;
	var $template='';
	function fw_template_17s($template){
		$this->_tpl=$template;
		$this->template=$template->template;
	}
	
	function isIE6 () {
		$msie='/msie\s(5\.[5-9]|[6]\.[0-9]*).*(win)/i';
		return isset($_SERVER['HTTP_USER_AGENT']) &&
			preg_match($msie,$_SERVER['HTTP_USER_AGENT']) &&
			!preg_match('/opera/i',$_SERVER['HTTP_USER_AGENT']);
	}

	function isOP () {
		return isset($_SERVER['HTTP_USER_AGENT']) &&
			preg_match('/opera/i',$_SERVER['HTTP_USER_AGENT']);
	}

    function noBG4IE6() {
		if ($this->isIE6())
		echo ' style="background: none;"';
	}

	function baseurl(){
		return JURI::base();
	}

	function templateurl(){
		return JURI::base()."templates/".$this->template;
	}

	

	function isFrontPage(){
		return (JRequest::getCmd( 'option' )=='com_content' && JRequest::getCmd( 'view' ) == 'frontpage') ;
	}

	function sitename() {
		$config = new JConfig();
		return $config->sitename;
	}
	
	function getMenuItems($menutype){		
		
		global $Itemid;
		$menu = @JMenu :: getInstance();
		if(strtolower(@get_class($menu)) == 'jexception') {
			$menu = @JMenu :: getInstance('site');
		}
		$user =& JFactory::getUser();
		// Get Menu Items
		$items = &JSite::getMenu();
		$rows= $items->getItems('menutype', $menutype);
		
		$mainmenu='<ul class="sf-menu">';
		foreach($rows as $key=>$val){
			if($val->access <= $user->get('gid')) {
				if($val->parent=='0'){
					$Itemclass= $Itemid==$val->id ? "active-menu" : "menuitem".$val->id;
					
					if($val->home){
						$mainmenu.='<li class="'.$Itemclass.' home-menu-item"><a href="'.JURI::root().'"><span>'.$val->name.'</span></a>';
					}else{
						$mainmenu.='<li class="'.$Itemclass.'"><a href="'.$val->link.'&Itemid='.$val->id.'"><span>'.$val->name.'</span></a>';
					}
					unset($rows[$key]);
					if($this->haveSubmenu($val->id,$rows)){
						$this->getSubmenu($rows,$val->id,$mainmenu);
					}
					$mainmenu.='</li>';					
				}
			}
		}
		$mainmenu.='</ul>';				
		return $mainmenu;
		
	}
	

	
	function getSubmenu($rows,$parent,&$mainmenu){		
		$mainmenu.='<ul>';
		$user=&JFactory::getUser();
		$i=0;
		$sublevel=0;
		foreach($rows as $key=>$val){
			if($val->access <= $user->get('gid')) {
				if($val->parent==$parent){
					$sublevel++;			
					$mainmenu.='<li><a href="'.$val->link.'&Itemid='.$val->id.'"><span>'.$val->name.'</span></a>';
					unset($rows[$key]);
					$i++;
					if($this->haveSubmenu($val->id,$rows)){
						$this->getSubmenu($rows,$val->id,$mainmenu,$sublevel);
					}
					$mainmenu.='</li>';
					
				}
			}
		}
		$mainmenu.='</ul>';
	}

	function haveSubmenu($parent,$rows){
		foreach($rows as $key=>$val){
			if($val->parent==$parent){
				return true;
			}
		}
		return false;
	}
	
	
}


