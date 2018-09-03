<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_search
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<section class="map__wrap">
    <div id="home-map" class="map" style="position: relative; overflow: hidden; width: 100%; height: 800px;">
        <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.380187572839!2d106.61090231416135!3d10.85866069226578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752a3d9208f133%3A0x15e26edd6d4ea0c8!2zTkMgQnVsZGluZywgODAgSMOgIMSQ4bq3YywgVHJ1bmcgTeG7uSBUw6J5LCBRdeG6rW4gMTIsIEjhu5MgQ2jDrSBNaW5oIDc2MDAwMCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1535516285748" width="100%" height="800" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>

    <div id="contact-form" class="contact-form">
        <div class="container">
            <div class="contact-form__wrap">
                <div id="request-close" class="contact-form__close"><i class="icon-cross"></i></div>
                <div class="contact-form__left"><h2>Let's Talk!</h2>
                    <div class="contact-form__section"><h3>Visit us</h3>
                        <p>770 N Halsted Street, Suite 106
                            Chicago, IL 60642</p></div>
                    <div class="contact-form__section"><h3>Hours of operation</h3>
                        <p>MON-FR: 9AM — 5PM</p></div>
                    <div class="contact-form__section"><h3>Say hello by phone</h3>
                        <p><a class="google-phone-replace" href="tel:(312) 265-0580">(312) 265-0580</a></p></div>
                    <div class="contact-form__section"><h3>Or by email</h3>
                        <p><a href="mailto:info@comradeweb.com">info@comradeweb.com</a></p></div>
                </div>
                <div class="contact-form__right">
                    <div>
                        <div class="screen-reader-response"></div>
                        <form action="" method="post" id="form-contact">

                            <p>
                                <span class=""><input name="jform[contact_name]" value="" size="40" class="" required placeholder="Your Name" type="text"></span>
                                <input style="display: none" name="jform[contact_subject]" id="jform_contact_emailmsg" value="new email contact" class="required invalid" size="60" required="required" aria-required="true" aria-invalid="true" type="text">
                                <span class=""><input name="jform[contact_email]" value="" size="40" class=""  placeholder="Email" type="email"></span>
                                <span class=""><textarea name="jform[contact_message]" cols="40" rows="10" class=""  placeholder="Message"></textarea></span>
                                <br><br>
                                <input class="btn" value="Submit" id="thesubmit" type="submit">
                            </p>

                            <input name="option" value="com_contact" type="hidden">
                            <input name="task" value="contact.submit" type="hidden">
                            <input name="return" value="" type="hidden">
                            <input name="id" value="1" type="hidden">
                            <?php echo JHtml::_( 'form.token' ); ?>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>