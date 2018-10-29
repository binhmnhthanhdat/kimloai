<div id="sidebar" class="fr v-col-lg-3 v-col-md-4 v-col-sm-4 v-col-xs-12 v-col-tx-12">
    <div class="inner v-lg-ml-20 v-md-ml-20 v-sm-ml-20">
        <div class="core-block clearfix">
            <div class="sidebar-hotline clearfix">
                <div class="sidebar-hotline-image fl">
                    <img alt="hotline title" src="<?php echo base_url(); ?>/asset/dong_nam_duoc_bang_thai_tu_van.jpg">
                </div>
                <div class="sidebar-hotline-text fr">
                    <div class="sidebar-hotline-title">
                        Hotline
                    </div>
                    <div class="sidebar-hotline-number">
                        <a href="tel:0936.422.689">
                            0936.422.689
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="   block_area_4 block_area  area_sidebar sortable clearfix">
            <div id="block-34" class="block-Form core-block">
                <div class="block-title">
                    <span class="block-title-inner">Nhận báo giá</span>
                </div>
                <div class="block-content">
                    <div class="wrap-v-form">
                        <div class="v-form-title">Nhận thông tin dự án</div>
                        <div class="v-form-description"></div>
                        <div class="v-form-content clearfix">
                            <form class="v-form" method="POST" par="1">
                                <input type="hidden" name="form_id" value="1">  
                                <input type="hidden" name="type" value="order"> 
                                <input type="hidden" name="url" value="#/">  
                                <div class="v-form-item v-form-item-name v-form-item-text">
                                    <div class="v-form-item-title">Họ và tên <span class="v-form-require"> * </span></div>
                                    <div class="v-form-item-content">
                                        <input type="text" required="" class="v-form-field-type-text form-text" placeholder="Họ và tên" value="" name="name">
                                    </div>
                                </div>
                                <div class="v-form-item v-form-item-phone v-form-item-text">
                                    <div class="v-form-item-title">Số điện thoại <span class="v-form-require"> * </span></div>
                                    <div class="v-form-item-content">
                                        <input type="text" required="" class="v-form-field-type-text form-text" placeholder="Số điện thoại" value="" name="phone">
                                    </div>
                                </div>
                                <div class="v-form-item v-form-item-email v-form-item-text">
                                    <div class="v-form-item-title">Email <span class="v-form-require"> * </span></div>
                                    <div class="v-form-item-content">
                                        <input type="text" required="" class="v-form-field-type-text form-text" placeholder="Email" value="" name="email">
                                    </div>
                                </div>
                                <div class="v-form-item v-form-item-submit">
                                    <div class="v-form-item-title"></div>
                                    <div class="v-form-item-content">
                                        <input name="v-submit" class="form-submit" type="submit" value="Gửi">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <script></script>
                </div>
                <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/asset/css/display.css" media="all">
            </div>

            <?php if(!empty($cats)) : ?>
            <?php foreach($cats as $cat) : ?>
            <div id="block-39" class="block-SidebarNews core-block">
                <div class="col-md-12 col-sm-6 col-xs-12">
                    <div class="block-title">
                        <a title="<?php echo $cat->name;?>" href="<?php echo site_url('danh-muc-tin-tuc/' . $cat->id . '-' . $cat->alias); ?>">
                            <span class="block-title-inner"><?php echo $cat->name;?></span>
                        </a>
                    </div>
                    <?php
                    if(count($cat->news)>0)
                    {
                    ?>
                    <div class="sidebar-box-content block-content">
                        <ul>
                            <?php foreach($cat->news as $new) : ?>
                            <li class="SidebarNews-item clearfix">
                                <div class="SidebarNews-item-image fl v-col-lg-4 v-col-md-4 v-col-sm-4 v-col-xs-4 v-col-tx-4">
                                    <a href="<?=site_url('xem-tin/' . $new->id .'-'. $this->util->alias($new->title));?>" title="<?php echo $new->title;?>">
                                        <img src="<?=base_url();?><?=$new->image;?>" alt="<?php echo $new->title;?>" title="<?php echo $new->title;?>">
                                    </a>
                                </div>
                                <div class="SidebarNews-item-text fl v-col-lg-8 v-col-md-8 v-col-sm-8 v-col-xs-8 v-col-tx-8">
                                    <a class="SidebarNews-item-text-a" href="<?=site_url('xem-tin/' . $new->id .'-'. $this->util->alias($new->title));?>" title="<?php echo $new->title;?>">
                                       <?php echo $new->title;?>                </a>
                                    <div class="SidebarNews-item-text-des none">
                                        <?=word_limiter($new->intro, 100);?>...
                                    </div>
                                </div>
                                <span class="clear"></span>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <?php } ?>
                    <span class="clear"></span>
                </div>
                <span class="clear"></span>
            </div>
            <?php endforeach; ?>
            <?php endif; ?>
            <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/asset/css/display(1).css" media="all">

        </div>
    </div>
</div>