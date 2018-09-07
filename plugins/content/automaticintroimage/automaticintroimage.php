<?php

/*
https://api.joomla.org/cms-3/classes/Joomla.Image.Image.html
https://github.com/joomla-framework/image
http://localhost/joomlagroup/index.php/news/joomla
*/

/**
 * @copyright  Copyright (c) 2016- Mattia Verga. All rights reserved.
 * @license    GNU General Public License version 3, or later
 */
// no direct access
defined( '_JEXEC' ) or die;

use Joomla\Image\Image;

class plgContentAutomaticIntroImage extends JPlugin
{
    /**
     * Load the language file on instantiation. Note this is only available in Joomla 3.1 and higher.
     * If you want to support 3.0 series you must override the constructor
     *
     * @var    boolean
     * @since  3.1
     */
    protected $autoloadLanguage = true;

    /**
     * Automatic creation of resized intro image from article full image
     *
     * @param   string   $context  The context of the content being passed to the
    plugin.
     * @param   mixed    $article  A reference to the JTableContent object that is
    being saved which holds the article data.
     * @param   boolean  $isNew    A boolean which is set to true if the content
    is about to be created.
     *
     * @return  boolean	True on success.
     */
    public function onContentBeforeSave($context, $article, $isNew)
    {
        // Check if we're saving an article
        $allowed_contexts = array('com_content.article');

        if (!in_array($context, $allowed_contexts))
        {
            return true;
        }

        $images = json_decode($article->images);


        if (!isset($images->image_fulltext) or empty($images->image_fulltext))
        {
            return true;
        }

        // Return if intro image is already set
        if (isset($images->image_intro) and !empty($images->image_intro))
        {
            JFactory::getApplication()->enqueueMessage(JText::_('Automatic Resize Image: Full Image was already set.'), 'notice');
            return true;
        }


        $width_thumb = (int)$this->params->get('width_thumb');
        $height_thumb = (int)$this->params->get('height_thumb');
        $width_full = (int)$this->params->get('width_full');
        $height_full = (int)$this->params->get('height_full');


        $sizes_thumb = $width_thumb.'x'.$height_thumb;

        $sizes_full = $width_full.'x'.$height_full;

        // Create our object
        $image = new Image(JPATH_ROOT . '/' . $images->image_fulltext);



        $path_parts = pathinfo(JPATH_ROOT . '/' . $images->image_fulltext);
        $name = $path_parts['filename'];
        $extend = $path_parts['extension'];

        // Create the thumbnails

        $images->image_intro = 'images/news/thumbs/'.$name.'_'.$sizes_thumb.'.'.$extend;
        $images->image_fulltext = 'images/news/thumbs/'.$name.'_'.$sizes_full.'.'.$extend;


        // Write resized image if it doesn't exist
        // and set Joomla object values
        if (!file_exists(JPATH_ROOT . '/' . $images->image_intro))
        {
            $image->createThumbs($sizes_thumb, Image::CROP_RESIZE);
            //JFactory::getApplication()->enqueueMessage(JText::sprintf('PLG_CONTENT_AUTOMATICINTROIMAGE_MESSAGE_CREATED', $images->image_intro), 'message');
        }
        if (!file_exists(JPATH_ROOT . '/' . $images->image_fulltext))
        {
            $image->createThumbs($sizes_full, Image::CROP_RESIZE);
            //JFactory::getApplication()->enqueueMessage(JText::sprintf('PLG_CONTENT_AUTOMATICINTROIMAGE_MESSAGE_CREATED', $images->image_intro), 'message');
        }

        $article->images = json_encode($images);


        return true;
    }

}
?>
