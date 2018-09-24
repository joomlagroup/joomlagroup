<?php
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);

$doc = JFactory::getDocument();
$doc->addStyleSheet( JURI::root().'components/'._JOOM_OPTION.'/assets/css/categories.css' );
$doc->addStyleSheet( JURI::root().'components/'._JOOM_OPTION.'/assets/css/bxslider_jquery.bxslider.css' );

$catids = PortfolioHelper::getCatIds();

$cat_active = 'cat_'.$catids[0]->id;

?>




<div class="newPortDesign homePortfolio portfolioPage col-sm-12 col-xs-12">
    <!-- Nav tabs -->
    <ul id="tabMainMenu" class="nav nav-tabs" role="tablist">

        <?php if($catids): ?>
        <?php foreach ($catids as $cat_item):
               $catid = 'cat_'.$cat_item->id;
        ?>
                <li role="presentation" class="logodesign <?php echo ($catid==$cat_active) ? 'active':''; ?>">
                    <a class="tabing" href="#<?php echo $catid ?>" aria-controls="<?php echo $catid ?>" role="tab" data-toggle="tab" aria-expanded="true"><?php echo $cat_item->title ?></a>
                </li>
        <?php endforeach; ?>
        <?php endif; ?>

    </ul>
    <!-- Tab panes -->

    <?php foreach ($catids as $cat_item):
    $catid = 'cat_'.$cat_item->id;
    $portfolios = PortfolioHelper::getPortfolioByCat($cat_item->id);
    ?>
    <!-- Default First Slide Start -->
    <div role="tabpanel" class="tab-pane <?php echo ($catid==$cat_active) ? 'active': ''; ?>" id="<?php echo $catid; ?>" <?php echo ($catid!=$cat_active) ? ' style="display: none;': ''; ?>">
        <div class="bx-wrapper" style="max-width: 100%;">
            <div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative;">

                <ul id="slideshow_<?php echo $catid ?>" class="tabContent" style="display: block; width: auto; position: relative;">
                    <?php foreach ($portfolios as $portfolio_item): ?>
                    <li class="contentBox sliderContent"
                        style="float: none;  z-index: 0;"
                        aria-hidden="true">
                        <ul class="contentRightPart">
                            <?php if($portfolio_item->image_intro): ?>
                            <li><img src="<?php echo _PATH_URL_IMAGE_PORTFOLIO_FULL.'/'.$portfolio_item->image_intro ?>" alt=""></li>
                            <?php endif; ?>
                        </ul>

                        <div class="contentLeftPart">
                            <div class="innerLeftPart">
                                <h4><?php echo $portfolio_item->title ?></h4>
                                <h5><?php echo $cat_item->title ?></h5>
                                <?php echo $portfolio_item->description ?>
                            </div>
                        </div>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
    <?php endforeach; ?>

</div>

<script type="text/javascript" src="<?php echo JURI::root().'/components/'._JOOM_OPTION.'/assets/js/bxslider_jquery.bxslider.js'; ?>"></script>

<script type="text/javascript" src="<?php echo JURI::root().'/components/'._JOOM_OPTION.'/assets/js/categories.js'; ?>"></script>

<script type="text/javascript">
    jQuery(document).ready(function($){
        $('#slideshow_<?php echo $cat_active ?>').bxSlider({
            mode: 'fade',
            captions: true,
            auto: true,
            autoControls: true,
            autoControlsCombine: true,
            pause: 3000,
        });
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            var tabId = $(this).attr("aria-controls");
            $(".tab-pane").hide();
            $("#"+tabId).show();

            $(".tabContent").hide();

            $("#slideshow_"+tabId).show();
            $("body").find('#slideshow_'+tabId).bxSlider({
                mode: 'fade',
                captions: true,
                auto: true,
                autoControls: true,
                autoControlsCombine: true,
                pause: 3000,
            });

        });
    });
</script>