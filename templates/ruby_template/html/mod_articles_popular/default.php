<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_popular
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<ul class="mostread<?php echo $moduleclass_sfx; ?>">
<?php foreach ($list as $item) : ?>

	<li itemscope itemtype="https://schema.org/Article">
        <?php
        //Get images
        $images = "";
        if (isset($item->images)) {
            $images = json_decode($item->images);
        }
        $imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));

        if ($imgexists) {
            $images->image_intro = $images->image_intro?$images->image_intro:$images->image_fulltext;
            ?>

            <div class="item-image">
                <img src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo $item->title; ?>" />
                <span class="mask"></span>
            </div>
        <?php } ?>

		<a href="<?php echo $item->link; ?>" itemprop="url">
			<span itemprop="name">
				<?php echo $item->title; ?>
			</span>
		</a>
	</li>
<?php endforeach; ?>
</ul>
