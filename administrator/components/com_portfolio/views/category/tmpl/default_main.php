
<?php
defined('_JEXEC') or die();
?>


<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'basic')); ?>

<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'basic', empty($this->item->id) ? JText::_('Add New Category') : JText::sprintf('Edit Category', $this->item->id)); ?>

<?php echo $this->form->renderField('title'); ?>
<?php echo $this->form->renderField('alias'); ?>
<?php echo $this->form->renderField('published'); ?>
<?php echo $this->form->renderField('id'); ?>

<?php echo JHtml::_('bootstrap.endTab'); ?>

<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'description', JText::_('Description')); ?>
<?php echo $this->form->renderField('description'); ?>
<?php echo JHtml::_('bootstrap.endTab'); ?>

<?php echo JHtml::_('bootstrap.endTabSet'); ?>



