
<?php
defined('_JEXEC') or die();
?>


<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'basic')); ?>

<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'basic', empty($this->item->id) ? JText::_('Add New Portfolio') : JText::sprintf('Edit Portfolio', $this->item->id)); ?>

<div class="row-fluid form-horizontal-desktop">
    <div class="span6">
        <?php echo $this->form->renderField('title'); ?>
        <?php echo $this->form->renderField('alias'); ?>
        <?php echo $this->form->renderField('catid'); ?>
        <?php echo $this->form->renderField('published'); ?>
        <?php echo $this->form->renderField('id'); ?>
    </div>
    <div class="span6">

    </div>
</div>

<?php echo JHtml::_('bootstrap.endTab'); ?>

<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'description', JText::_('Description')); ?>
<?php echo $this->form->renderField('description'); ?>
<?php echo JHtml::_('bootstrap.endTab'); ?>

<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'image', JText::_('Images')); ?>

<?php if(isset($this->item->image_intro) and $this->item->image_intro): ?>
    <img src="<?php echo _PATH_URL_IMAGE_PORTFOLIO.'/'.$this->item->image_intro ?>" alt="">
    <br><br>
    <a href="<?php echo JRoute::_('index.php?option=com_portfolio&task=portfolio.removeImage&id='.$this->item->id) ?>">Remove Intro Image</a>
    <br><br>
<?php else: ?>
    Select Image to upload
    <br><br>
<?php endif; ?>
<input type="file" name="jform[image_intro]"   accept="image/*" />

<?php echo JHtml::_('bootstrap.endTab'); ?>

<?php echo JHtml::_('bootstrap.endTabSet'); ?>

