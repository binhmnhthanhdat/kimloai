<script type="text/javascript">
    function loadUrl(url, id)
    {
        //alert("Fdfdf");
        $('.' + id).load(url);
    }

</script>
<div class="fl v-col-lg-9 v-col-md-8 v-col-sm-8 v-col-xs-12 v-col-tx-12" id="col2">
    <div class="col2-content" style="">
        <div class="bread-crumbs">
            <div class="hcv-bread-crumb">
                <?php foreach ($render_path as $key => $val) : ?>
                    <a class="bread-crumb-item " href="<?= $val; ?>" title="<?= $key; ?>"><?= $key; ?></a>
                    <span class="arrow">›</span>    		
                <?php endforeach; ?>
            </div>
        </div>
        <h1 id="" class="block-title">
            <span class="block-title-inner">
                Tin tức
            </span>
        </h1>
        <!-- Box tin -->
        <?php if (!empty($news)) : ?> 
            <?php foreach ($news as $new) : ?>
                <article class="box box6 ">
                    <div class="fl box6-item img v-col-lg-4 v-col-md-4 v-col-sm-4 v-col-xs-5 v-col-tx-12">
                        <div class="box6-item-inner">
                            <a href="<?= site_url($url_view . $new->id . '-' . $this->util->alias($new->title)); ?>" class="" title="<?= $new->title; ?>">
                                <img src="<?= base_url(); ?><?= $new->image; ?>" title="<?= $new->title; ?>" alt="<?= $new->title; ?>">
                            </a>
                        </div>
                    </div>
                    <div class="fr box6-item text v-col-lg-8 v-col-md-8 v-col-sm-8 v-col-xs-7 v-col-tx-12">
                        <div class="box6-item-inner">
                            <h3 class="title"><a href="<?= site_url($url_view . $new->id . '-' . $this->util->alias($new->title)); ?>" class="news-product-title" title="<?= $new->title; ?>"><?= $new->title; ?></a></h3>
                            <span class="clear"></span>
                            <div class="des">
                                <?= $new->intro; ?>...
                            </div>
                            <div class="meta"> 10:29:15 AM - 25/05/2017</div>
                            <span class="clear"></span>
                            <div class="box-readmore box6-readmore none">
                                <a href="<?= site_url($url_view . $new->id . '-' . $this->util->alias($new->title)); ?>">Xem thêm</a>
                            </div>
                        </div>
                        <span class="clear"></span>
                    </div>
                    <span class="clear"></span>
                </article>
                <span class="clear"></span>
            <?php endforeach; ?> 
        <?php endif; ?>
    </div>
</div>
