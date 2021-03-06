<?php
/**
 * @copyright    Copyright (C) 2011.  joomla-outsource.com All rights reserved.
 * @license        GNU/GPL, see LICENSE.php
 * @Template by    Du Nguyen
 * @E-mail        webmaster@joomla-outsource.com
 * @Date        May, 2011
 */
// no direct access
defined('_JEXEC') or die('Restricted access');
$temp_dir = JPATH_SITE . '/templates/' . $this->template . '/';
require_once($temp_dir . 'template_functions.php');
$gk_tools = new fw_template_17s($this);
$document = JFactory::getDocument();
$user = JFactory::getUser();


$app = JFactory::getApplication();
$menu = $app->getMenu();
$is_homepage = 0;
if ($menu->getActive() == $menu->getDefault()) {
    $is_homepage = 1;
}

$option = JRequest::getVar('option','');

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" class="bootstrap3 ">
<head>
    <jdoc:include type="head"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link rel="shortcut icon" href="<?php echo $gk_tools->templateurl(); ?>/dbklink-icon.ico"/>
    <link rel="stylesheet" href="<?php echo $gk_tools->baseurl(); ?>templates/system/css/system.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $gk_tools->baseurl(); ?>templates/system/css/general.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $gk_tools->templateurl(); ?>/css/bootstrap-3.3.7/css/bootstrap.min.css"
          type="text/css"/>
    <link rel="stylesheet" href="<?php echo $gk_tools->templateurl(); ?>/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $gk_tools->templateurl(); ?>/css/template.css" type="text/css"/>


    <?php
    if ($this->params->get('loadjquery')) {

        //$document->addScript($gk_tools->templateurl().'/scripts/jquery.js');
    }
    ?>
    <script type="text/javascript" src="<?php echo $gk_tools->templateurl(); ?>/scripts/owl.carousel.js"></script>
    <script type="text/javascript" src="<?php echo $gk_tools->templateurl(); ?>/scripts/js.js"></script>
    <script type="text/javascript" src="<?php echo $gk_tools->templateurl(); ?>/scripts/bootstrap.js"></script>
    <script type="text/javascript" src="<?php echo $gk_tools->templateurl(); ?>/scripts/jquery.validate.min.js"></script>

</head>
<body>

<header class="defineFloat">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="rows">
                <div class="pull-left">
                    <div class="navbar-header">

                        <a href="<?php echo JUri::root() ?>" class="navbar-brand">
                            <img id="logo_desktop" src="<?php echo $gk_tools->templateurl(); ?>/images/logo.png" alt="" class="img-responsive hidden-xs visible-sm visible-md visible-lg"/>
                            <img id="logo_mobile" src="<?php echo $gk_tools->templateurl(); ?>/images/mobilelogo.png" alt="" class="img-responsive visible-xs hidden-sm"/>
                        </a>
                    </div>
                </div>
                <div class="pull-right">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navigation"><span class="icon-bar"></span> <span class="icon-bar"></span>
                        <span class="icon-bar"></span> <span class="sr-only">Toggle navigation</span>
                    </button>
                </div>
                <div class="pull-right">
                    <div  id="col_header_info"  class="pull-right">
                        <div class="header_info">
                            <div class="headerPhone"><a href="tel:+1(646)-808-0229"> <i class="fa fa-phone" aria-hidden="true"></i>8498917500</a></div>
                            <div class="salesEmail"><a href="mailto:webmaster@joomlagroup.com"><i class="fa fa-envelope" aria-hidden="true"></i>webmaster@joomlagroup.com</a>
                            </div>
                        </div>
                    </div>
                    <div id="wrap_menu" class="pull-right">
                        <div class="collapse navbar-collapse" id="navigation">
                            <jdoc:include type="modules" name="menu" style="xhtml"/>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </nav>
    <?php if($is_homepage): ?>
    <div class="bigBnaaer reGetStarted getStarted hidden-xs visible-lg">
        <a class="getstartBtn-header" href="#"><span class="shake moveAnimate">GET STARTED <span class="listingExrArrow getStartedArrow"></span></span></a>
    </div>
    <?php endif; ?>
    <div class="clearfix"></div>
</header>

<?php if($is_homepage): ?>
    <?php if($this->countModules('homepage')): ?>
        <jdoc:include type="modules" name="homepage" style="none" />
    <?php endif; ?>
<?php else: ?>
    <div class="container conponent_site">
        <?php  if($option=='com_content' or $option=='com_tags'): ?>
        <div class="row row-fluid main_blogs">
            <div class="col-md-8">
                <jdoc:include type="message" />
                <jdoc:include type="modules" name="breadcrumb" style="xhtml" />
                <jdoc:include type="component" />
            </div>
            <div class="col-md-4">
                <?php if($this->countModules('right_sidebar')): ?>
                    <jdoc:include type="modules" name="right_sidebar" style="xhtml" />
                <?php endif; ?>
            </div>
        </div>
        <?php else: ?>
            <jdoc:include type="message" />
            <jdoc:include type="component" />
        <?php endif; ?>
    </div>
<?php endif; ?>





<footer class="footer">
    <div class="footer__top">
        <div class="container">
            <?php if($this->countModules('menu_footer')): ?>
                <jdoc:include type="modules" name="menu_footer" style="none" />
            <?php endif; ?>
        </div>
    </div>

    <?php if($this->countModules('footer_bottom')): ?>
        <jdoc:include type="modules" name="footer_bottom" style="none" />
    <?php endif; ?>

</footer>



</body>
</html>