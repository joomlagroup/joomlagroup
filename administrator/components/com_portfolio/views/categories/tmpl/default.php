<?php

defined('_JEXEC') or die;

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$linkpost  = 'index.php?option='._JOOM_OPTION.'&view=categories';
$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));

$originalOrders    = array();
$saveOrder         = $listOrder == 'a.ordering';
$lblTitle		   = JHtml::_('grid.sort','JGLOBAL_TITLE','a.title',$listDirn,$listOrder);
$lblStatus 	       = JHtml::_('grid.sort','JSTATUS','a.published',$listDirn,$listOrder);
$lblOrdering 	   = JHtml::_('grid.sort','JGRID_HEADING_ORDERING','a.ordering',$listDirn,$listOrder);
$lblID 		       = JHtml::_('grid.sort','JGRID_HEADING_ID','a.id',$listDirn,$listOrder);

if ($saveOrder)
{
    $saveOrderingUrl = 'index.php?option=com_portfolio&task=categorysort.saveOrderAjax&tmpl=component';
    JHtml::_('sortablelist.sortable', 'CategoriesList', 'adminForm', strtolower($listDirn), $saveOrderingUrl, false, true);
}
?>

<div id="j-sidebar-container" class="span2">
    <?php echo $this->sidebar; ?>
</div>
<div id="j-main-container" class="span10">
    <form id="adminForm" name="adminForm" method="post" action="<?php echo $linkpost ?>">
        <?php  echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>
        <div class="clearfix"></div>
        <?php if (empty($this->items)) : ?>
            <div class="alert alert-no-items">
                <?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
            </div>
        <?php else : ?>
            <table class="table table-striped" id="CategoriesList">
                <thead>
                <tr>
                    <th width="1%" class="nowrap center hidden-phone">
                        <?php echo JHtml::_('searchtools.sort', '', 'a.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING', 'icon-menu-2'); ?>
                    </th>
                    <th width="1%">
                        <input type="checkbox" onclick="Joomla.checkAll(this)" title="Check All" value="" name="checkall-toggle">
                    </th>
                    <th width="1%"><?php echo $lblStatus ?></th>
                    <th><?php echo $lblTitle ?></th>
                    <th width="1%" class="nowrap"><?php echo $lblID ?></th>
                </tr>
                </thead>
                <tbody>
                <?php
                if(!empty($this->items))
                    foreach($this->items as $i=>$item)
                    {
                        $link_edit = 'index.php?option='._JOOM_OPTION.'&task=category.edit&id='.$item->id;
                        $checkbox = JHtml::_('grid.id',$i,$item->id);
                        $rows     = 'row'.$i%2;
                        $title    = '<a href="'.$link_edit.'">'.$item->title.'</a>';
                        $status   = JHtml::_('jgrid.published',$item->published,$i,'category.');
                        $id       = $item->id;
                        ?>
                        <tr class="row<?php echo $i % 2; ?>" item-id="<?php echo $item->id ?>" >
                            <td class="order nowrap center hidden-phone">
                                <?php
                                $iconClass = '';
                                if (!$saveOrder) {
                                    $iconClass = ' inactive tip-top hasTooltip" title="' . JHtml::_('tooltipText', 'JORDERINGDISABLED');
                                }
                                ?>
                                <span class="sortable-handler<?php echo $iconClass ?>">
									<span class="icon-menu"></span>
								</span>
                                <?php if ($saveOrder) : ?>
                                    <input type="text" style="display:none" name="order[]" size="5" value="<?php echo $item->ordering; ?>" />
                                <?php endif; ?>
                            </td>
                            <td class="center"><?php echo $checkbox ?></td>
                            <td class="center"><?php echo $status ?></td>
                            <td><a href=""><?php echo $title ?></a></td>
                            <td class="center"><span title="<?php echo $id ?>"><?php echo $id ?></span></td>
                        </tr>
                        <?php
                    }
                ?>
                <tfoot>
                <tr>
                    <td colspan="15">
                        <?php echo $this->pagination->getListFooter();?>
                    </td>
                </tr>
                </tfoot>
            </table>
        <?php endif; ?>
        <div>
            <input type="hidden" name="extension" value="<?php echo _JOOM_OPTION?>">
            <input type="hidden" name="task" value="">
            <input type="hidden" name="boxchecked" value="0">
            <?php echo JHTML::_('form.token');?>
        </div>
    </form>
</div>




