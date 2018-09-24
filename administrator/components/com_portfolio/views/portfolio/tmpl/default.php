<?php
defined('_JEXEC') or die;
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

$item_id = '';
if($this->item) {
	$item_id = $this->item->id;
}
$linkpost = 'index.php?option='._JOOM_OPTION.'&controller=portfolio&task=edit&id='.$item_id;
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'portfolio.cancel' || document.formvalidator.isValid(document.id('item-form'))) {
			<?php // echo $this->form->getField('description')->save();?>
			Joomla.submitform(task, document.getElementById('item-form'));
		} else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED'));?>');
		}
	}
</script>
<form id="item-form" class="form-validate" name="adminForm" method="post" action="<?php echo $linkpost ?>" autocomplete = "on" enctype="multipart/form-data">
	<?php echo $this->loadTemplate('main') ?>
	<div>
	<input type="hidden" value="" name="task"/>
	<?php echo JHtml::_('form.token'); ?>	
	</div>
</form>


