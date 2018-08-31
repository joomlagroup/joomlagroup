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

<section class="blog">
    <div class="container">
        <div class="blog__title"><h2>Our Blog</h2> <a href="#" class="btn">read our blog</a>
        </div>
        <div class="blog__wrap">

            <?php foreach ($list as $key=>$item):
                $images = "";
                if (isset($item->images)) {
                    $images = json_decode($item->images);
                }
                $imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));

            ?>
            <?php if($imgexists): ?>
            <a href="<?php echo $item->link; ?>" class="post post--small">
                <div class="post__img"
                     style="background-image: url('<?php echo htmlspecialchars($images->image_intro); ?>');">
                    <div class="post__read-btn btn">read post</div>
                </div>
                <div class="post__content">
                    <div class="post__title"><?php echo $item->title; ?></div>
                    <div class="post__read-more">Read more</div>
                    <div class="post__author"></div>
                </div>
            </a>
            <?php endif; ?>
            <?php endforeach; ?>
        </div>
    </div>
</section>