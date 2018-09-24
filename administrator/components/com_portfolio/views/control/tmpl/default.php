<?php
defined('_JEXEC') or die;
JHtml::_('jquery.framework');

$array_control = array(
    array(
           'text'=>'Categories',
           'link'=>JRoute::_('index.php?option=com_portfolio&view=categories'),
           'class_icon'=>'icon-folder'
         ),

    array(
        'text'=>'Portfolio',
        'link'=>JRoute::_('index.php?option=com_portfolios&view=portfolios'),
        'class_icon'=>'icon-stack'
    ),

);
 ?>



<div class="row-fluid">
  <div class="span3">
   <div class="cpanel-links">
    <div class="sidebar-nav quick-icons">
     <div class="j-links-groups"><h2 class="nav-header">Portfolio Manager</h2>
      <ul class="j-links-group nav nav-list">
          <?php foreach ($array_control as $item): ?>
              <li>
                  <a href="<?php echo $item['link'] ?>">
                      <span class="<?php echo $item['class_icon'] ?>" aria-hidden="true"></span> <span class="j-links-link"></span>
                      <span class="j-links-link"><?php echo $item['text'] ?> </span>
                  </a>
              </li>
          <?php endforeach;  ?>
      </ul>
     </div>
    </div>
   </div>
  </div>
 <div class="span9"></div>
</div>

<script>
    jQuery(document).ready(function ($){
      //  $(".subhead").remove();
    });


</script>