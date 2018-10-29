<div class="fl v-col-lg-9 v-col-md-8 v-col-sm-8 v-col-xs-12 v-col-tx-12" id="col2">
    <div class="col2-content" style="">
        <div class="bread-crumbs ">
            <div class="hcv-bread-crumb">
                <?php foreach ($render_path as $key => $val) : ?>
                <a class="bread-crumb-item " href="<?= $val; ?>" title="<?= $key; ?>"><?= $key; ?></a>
                <span class="arrow">›</span>
                <?php endforeach; ?>
            </div>
        </div>
        <span class="clear"></span>
        <div id="wrap-post-content" class="block-html">
            <h1 id="" class="block-title">
                <span class="block-title-inner"><?= $news->title; ?></span>
            </h1>
            <div id="post-content">
               <?= $news->intro; ?> 
               <?= $news->content; ?>
            </div>
        </div>
    </div>
</div>