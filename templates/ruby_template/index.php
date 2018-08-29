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
</head>
<body>

<header class="defineFloat">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navigation"><span class="icon-bar"></span> <span class="icon-bar"></span>
                            <span class="icon-bar"></span> <span class="sr-only">Toggle navigation</span></button>
                        <div class="mobileLinks">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="headerPhone"><a href="#"><i class="fa fa-phone"
                                                                                               aria-hidden="true"></i>8498917500</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="salesEmail"></div>
                                </li>
                            </ul>
                        </div>
                        <a href="<?php echo JUri::root() ?>" class="navbar-brand">
                            <img src="<?php echo $gk_tools->templateurl(); ?>/images/logo.png" alt=""
                                 class="img-responsive hidden-xs visible-sm visible-md visible-lg"/>
                            <img src="<?php echo $gk_tools->templateurl(); ?>/images/mobilelogo.png" alt=""
                                 class="img-responsive visible-xs hidden-sm"/>
                        </a>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="collapse navbar-collapse" id="navigation">
                        <jdoc:include type="modules" name="menu" style="xhtml"/>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="header_info">
                        <div class="headerPhone"><a href="tel:+1(646)-808-0229"> <i class="fa fa-phone" aria-hidden="true"></i>8498917500</a></div>
                        <div class="salesEmail"><a href="mailto:webmaster@joomlagroup.com"><i class="fa fa-envelope" aria-hidden="true"></i>webmaster@joomlagroup.com</a>
                        </div>
                    </div>

                </div>
            </div>


        </div>
    </nav>
    <div class="bigBnaaer reGetStarted getStarted hidden-xs visible-lg">
        <a class="getstartBtn-header" href="get-started.php"><span class="shake moveAnimate">GET STARTED <span
                        class="listingExrArrow getStartedArrow"></span></span></a>
    </div>
</header>

<section class="section-top">
    <img src="<?php echo $gk_tools->templateurl(); ?>/images/comradeimage.jpg" class="img-responsive" alt="">
    <div class="col-sm-12 col-xs-12 text-center tempSliderText">
        <h2>Joomla Design and Development for <br>
            Extensibility, Usability &amp; Reliability</h2>
        <p>Build powerful web sites &amp; apps using one of the most preferred CMS Platform - Joomla!</p>
    </div>
</section>

<?php if($this->countModules('homepage')): ?>
<jdoc:include type="modules" name="homepage" style="none" />
<?php endif; ?>

<footer class="footer">
    <div class="footer__top">
        <div class="container">
            <ul id="menu-footer-navigation" class="">
                <li id="menu-item-25031"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25031"><a
                            href="#">About</a></li>
                <li id="menu-item-25032"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25032"><a
                            href="#">Blog</a></li>
                <li id="menu-item-25246"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25246"><a
                            href="#">Marketing</a></li>
                <li id="menu-item-25034"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25034"><a
                            href="#">UX &amp; Design</a></li>
                <li id="menu-item-25242"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25242"><a
                            href="#">Request a Quote</a></li>
                <li id="menu-item-25036"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25036"><a
                            href="#">Portfolio</a></li>
                <li id="menu-item-25037"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25037"><a
                            href="#">Careers</a></li>
                <li id="menu-item-25038"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-25038"><a
                            href="#">Contact Us</a></li>
                <li id="menu-item-28497"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-28497"><a
                            href="#">Privacy Policy</a></li>
                <li id="menu-item-28500"
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-28500"><a
                            href="#">Terms of Use</a></li>
            </ul>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="container">
            <div class="footer__bottom-wrap">
                <div class="footer__logo"><a><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/logo-text.svg"
                                alt=""></a></div>
                <div class="footer__social">
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a>
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a>
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a>
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a>
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a>
                    <a href="" target="_blank"><img
                                src="https://comradeweb.com/wp-content/themes/Comradeweb/build/img/Instagram_logo_2016.svg"
                                alt=""></a></div>
                <div class="footer__copy"> © 2018 Comrade Web Agency</div>
            </div>
        </div>
    </div>
</footer>



</body>
</html>