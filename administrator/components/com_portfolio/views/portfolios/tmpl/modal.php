<?php
// No direct access
defined('_JEXEC') or die('Restricted access');

// Load tooltip behavior
JHtml::_('behavior.tooltip');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$function = JFactory::getApplication()->input->getCmd('function', 'jSelectProduct');
?>

<div class="container-popup">

<form action="" method="post" name="adminForm" id="adminForm">
    <?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>
    <div class="clearfix"></div>
    <?php if (empty($this->items)) : ?>
        <div class="alert alert-no-items">
            <?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
        </div>
    <?php else : ?>
        <table class="table table-striped table-condensed">
            <thead>
            <tr>
                <th width="1%" class="center nowrap">
                    <?php echo JHtml::_('grid.sort','JSTATUS','a.published',$listDirn,$listOrder); ?>
                </th>
                <th>
                    <?php echo JHtml::_('grid.sort', 'JGLOBAL_TITLE', 'a.title', $listDirn, $listOrder); ?>
                </th>
                <th width="5">
                    <?php echo JHtml::_('grid.sort','JGRID_HEADING_ID','a.id',$listDirn,$listOrder); ?>
                </th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <td colspan="6"><?php echo $this->pagination->getListFooter(); ?></td>
            </tr>
            </tfoot>
            <tbody>
            <?php
            $iconStates = array(
                0  => 'icon-unpublish',
                1  => 'icon-publish',
            );
            ?>
            <?php foreach ($this->items as $i => $item) : ?>
                <?php
                // Get the parents of item for sorting
                $status   = JHtml::_('jgrid.published',$item->published,$i,'category.');

                ?>
                <tr class="row<?php echo $i % 2; ?>">
                    <td class="center">
                        <span class="<?php echo $iconStates[$this->escape($item->published)]; ?>" aria-hidden="true"></span>
                    </td>
                    <td>
                        <a style="cursor: pointer" onclick="if (window.parent) window.parent.<?php echo $this->escape($function);?>('<?php echo $item->id; ?>', '<?php echo $this->escape(addslashes($item->title)); ?>');"><?php echo $this->escape($item->title); ?></a>
                        <div class="small">
                            <?php echo JText::_('JK8_PRODUCT_CATEGORY_TITLE') . ': ' . $this->escape($item->category_title); ?>
                        </div>
                    </td>
                    <td><?php echo $item->id; ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
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