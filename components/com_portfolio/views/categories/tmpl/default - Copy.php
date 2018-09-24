<?php
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);

$doc = JFactory::getDocument();
$doc->addStyleSheet( JURI::root().'components/'._JOOM_OPTION.'/assets/css/categories.css' );
$doc->addStyleSheet( JURI::root().'components/'._JOOM_OPTION.'/assets/css/bxslider_jquery.bxslider.css' );

$cat_active = 1;
$catids = array(1,2);

?>




<div class="newPortDesign homePortfolio portfolioPage col-sm-12 col-xs-12">
    <!-- Nav tabs -->
    <ul id="tabMainMenu" class="nav nav-tabs" role="tablist">
        <li role="presentation" class="logodesign active">
            <a class="tabing" href="#home" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true">Logo</a>
        </li>
        <li role="presentation" class="graphicsDesign">
            <a class="tabing" href="#profile" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false">Graphics</a>
        </li>

    </ul>
    <!-- Tab panes -->

    <!-- Default First Slide Start -->

    <div role="tabpanel" class="tab-pane active" id="home">
        <div class="bx-wrapper" style="max-width: 100%;">
            <div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 730px;">
                <ul id="slideshowFirst" class="tabContent" style="display: block; width: auto; position: relative;">
                    <!-- 01 -->

                    <li class="contentBox sliderContent counter1 active"
                        style="float: none;  z-index: 0;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/lg18.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Big Franks BBQ</h4>
                                <h5>Logo Design</h5>
                                <p>A vibrant shaded logo! Highlighting BigFranksBBQ with food imagery which deals in
                                    cooking traditional BBQ food.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none;  position: absolute; display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr03.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none;  position: absolute;  display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr04.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none;  position: absolute; display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr05.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>


                </ul>
            </div>
        </div>
    </div>

    <!-- New Demo Tabbing -->

    <div role="tabpanel" class="tab-pane" id="profile" style="display: none;">
        <div class="bx-wrapper" style="max-width: 100%;">
            <div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 730px;">
                <ul id="slideshowSecond" class="tabContent" style="display: block; width: auto; position: relative;">
                    <!-- 01 -->

                    <li class="contentBox sliderContent counter1 active"
                        style="float: none; position: absolute;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/lg18.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Big Franks BBQ 2</h4>
                                <h5>Logo Design</h5>
                                <p>A vibrant shaded logo! Highlighting BigFranksBBQ with food imagery which deals in
                                    cooking traditional BBQ food.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none; position: absolute; display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr03.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none; position: absolute; display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr04.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>

                    <li class="contentBox sliderContent counter1"
                        style="float: none; position: absolute; display: none;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <li><img src="http://www.webworldexperts.com/images/gr05.jpg" alt=""></li>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4>Pal Cura LLC</h4>
                                <h5>Logo Design</h5>
                                <p>We have tried to combine the 3 – Major components of our clients company’s slogan
                                    along with a novel &amp; lively logo.</p>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </div>

    <!-- End New Demo Tabbing -->

</div>

<script type="text/javascript" src="<?php echo JURI::root().'/components/'._JOOM_OPTION.'/assets/js/bxslider_jquery.bxslider.js'; ?>"></script>

<script type="text/javascript" src="<?php echo JURI::root().'/components/'._JOOM_OPTION.'/assets/js/categories.js'; ?>"></script>

