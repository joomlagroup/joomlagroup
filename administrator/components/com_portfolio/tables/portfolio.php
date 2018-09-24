<?php
defined('_JEXEC') or die;

//Table<filename>
class PortfolioTablePortfolio extends JTable
{
    
    var $_data;
    // var colum = null;
    var $id         = null;
    var $title      = null;
    var $publish    = null;

    

    public function __construct(&$db)
    {
        parent::__construct(_JOOM_TABLE_PORTFOLIO_PORTFOLIO, 'id', $db);
    }

}


?>