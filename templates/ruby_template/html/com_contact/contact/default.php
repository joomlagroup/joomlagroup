<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_contact
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

jimport('joomla.html.html.bootstrap');


$cparams = JComponentHelper::getParams('com_media');
$tparams = $this->item->params;
JHtml::_('jquery.framework');
?>

<div id="contactUs">
    <div class="text-center fullWidth">
        <h2>Enough about us, <span class="green">let's talk about you now!</span></h2>
        <div class="lightGray Strip"><img src="<?php echo JUri::root() ?>images/custom/lightgrayline.png" alt=""></div>
        <div class="descriptonBox Text">Got a question or ready to get started? We would love to work with you and are waiting for you to drop us a line! Please fill out the form below to get in touch with us or <a class="green" href="#" title="Request for a quote here.">request for a quote here.</a> We’ll be sure to get back to you as soon as we can.</div>
    </div>

    <div class="row">
        <div class="shadowBox">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 fullWidth left_contact">
                <div class="leftWhitebox">
                    <form id="form-contact" class="contactPageform" method="post">
                        <div class="contactForm defineFloat">
                            <div class="lableTitle col-lg-4 col-md-4 col-sm-4 col-xs-12"><label>Name</label></div>
                            <div class="inputfield col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <input title="Name"  value="" name="jform[contact_name]" type="text">
                            </div>
                        </div>
                        <div class="contactForm defineFloat">
                            <div class="lableTitle col-lg-4 col-md-4 col-sm-4 col-xs-12"><label>Email</label></div>
                            <div class="inputfield col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <input name="jform[contact_email]" title="Email" name="txtEmail" value=""  type="text">
                            </div>
                        </div>
                        <div class="contactForm defineFloat">
                            <div class="lableTitle col-lg-4 col-md-4 col-sm-4 col-xs-12"><label>Message</label></div>
                            <div class="inputfield col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <textarea title="Message" name="jform[contact_message]"></textarea>
                            </div>
                        </div>
                        <div class="contactForm defineFloat">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 empty"></div>
                            <div class="buttonfield col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <button class="btn btn-default greyButton" type="submit" value="SEND MESSAGE">SEND MESSAGE</button>
                            </div>
                        </div>

                        <input style="display: none" name="jform[contact_subject]" id="jform_contact_emailmsg" value="new email contact" class="required invalid" size="60" required="required" aria-required="true" aria-invalid="true" type="text">
                        <input name="option" value="com_contact" type="hidden">
                        <input name="task" value="contact.submit" type="hidden">
                        <input name="return" value="" type="hidden">
                        <input name="id" value="1" type="hidden">
                        <?php echo JHtml::_( 'form.token' ); ?>
                    </form>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 fullWidth right_contact">
                <div class="rightgreenbox">
                    <div class="detailTitle">If you prefer a more tangible <br>form of communication we're here:</div>
                    <div class="lightGray"><img src="images/con-gray-strip.png" alt=""></div>
                    <div class="addressRor">
                        <div class="addressTilte green">Chandigarh Office:</div>
                        <div class="addressDetail">J-7, Level-2, Rajiv Gandhi Information Technology (IT) Park, Chandigarh </div>
                    </div>
                    <div class="addressRor">
                        <div class="addressTilte green">Mohali Office:</div>
                        <div class="addressDetail">A-603, Bestech Business Tower<br>Level 6, Sector-66, Mohali</div>
                    </div>
                    <div class="addressRor">
                        <div class="addressTilte green">Contact Us:</div>
                        <ul class="addressListing first">
                            <li>+1(646)-808-0229 <div class="getflag flag1"></div> </li>
                            <li>+44(203)-239-0229  <div class="getflag flag2"></div> </li>
                            <li>+61(280)-033-110 <div class="getflag flag3"></div> </li>
                            <li>+91(893)-099-9945 <div class="getflag flag4"></div></li>
                            <li><span class="infoEmail"><a href="mailto:info@webworldexperts.com">info@webworldexperts.com</a></span> <img src="images/mess_pic.png" alt=""></li>
                            <li><span class="salesEmail"><a href="mailto:sales@webworldexperts.com"><i class="fa fa-envelope" aria-hidden="true"></i>sales@webworldexperts.com</a></span> <img src="images/mess_pic_1.png" alt=""></li>
                        </ul>
                    </div>
                    <div class="addressRor">
                        <div class="addressTilte green">For HR and other enquiries:</div>
                        <ul class="addressListing second">
                            <li>+91(172) 4001105 <div class="getflag flag4"></div> </li>
                            <li>+91(172) 4014132 <div class="getflag flag4"></div> </li>
                            <li><span class="hrEmail"><a href="mailto:hr@webworldexpertsindia.com">hr@webworldexpertsindia.com</a></span> <img src="images/mess_pic.png" alt=""></li>
                        </ul>
                    </div>
                    <div class="addressRor last">
                        <div class="addressTilte green">More options to reach us:</div>
                        <div class="addressDetail"><a href="#" title="Get in Touch">Get in Touch <span class="statsExrArrow formArrow"></span></a></div>
                        <div class="addressDetail"><a href="#" title="Request a Proposal">Request a Proposal <span class="statsExrArrow formArrow"></span></a></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

