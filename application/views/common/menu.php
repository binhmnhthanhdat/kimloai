<div id="bottom-main-menu" class="v-full-width"></div>
<span class="clear"></span>
<div id="main-menu" class="v-full-width MainMenu main-menu v-xs-none v-tx-none fixed-on-scroll">
    <div class="v-wrap-full MainMenu-inner">
        <div id="MainMenu">
            <div class="   block_area_3 block_area  area_main-menu sortable clearfix">
                <div id="block-3" class="block-menu core-block">
                    <div class="block-content">
                        <?php if(!empty($cats)) : ?>
                        <ul class="clearfix">
                            <?php foreach($cats as $cat) : ?>
                            <li class="menu-item-<?= $cat['id']; ?>" par="<?= $cat['id']; ?>">
                                <a href="<?php 
                                if($cat['type']==0){
                                echo site_url('danh-muc-tin-tuc/' . $cat['id'] . '-' . $cat['alias']);
                                }
                                else if($cat['type']==1){
                                echo base_url().'san-pham';//sanpham
                                }else if($cat['type']==2){
                                echo site_url('gioi-thieu/' . $cat['id'] . '-' . $cat['alias']);
                                }else if($cat['type']==3){
                                echo base_url().'dich-vu'; //dichvu
                                }else if($cat['type']==4){
                                echo base_url().'lien-he';
                                }
                   ?>"><?= $cat['name']; ?></a>
                                <?php
                                if(count($cat['cat_sub'])>0)
                                {
                                ?>
                                <span class="menu-arrow menu-arrow-1" par="1"></span>
                                <ul class="sub-menu sub-menu-1" par="1">
                                    <?php foreach($cat['cat_sub'] as $cat_sub) : ?>
                                    <li class="menu-item-<?php echo $cat_sub->id;?>" par="<?php echo $cat_sub->id;?>">
                                        <a href="<?php 
                                                if($cat_sub->type == 0){
                                           echo site_url('danh-muc-tin-tuc/' . $cat_sub->id . '-' . $cat_sub->alias);
                                           }
                                           else if($cat_sub->type == 1){echo base_url();
                                           }else if($cat_sub->type == 2){
                                           echo site_url('gioi-thieu/' . $cat_sub->id . '-' . $cat_sub->alias);
                                           }else if($cat_sub->type == 3){
                                           echo base_url('contact');
                                           }else if($cat_sub->type == 4){
                                           echo base_url('san-pham');
                                   }
                                   ?>"><?php echo $cat_sub->name;?> </a>
                                    </li>
                                   <?php endforeach; ?>
                                </ul>
                                <?php
                                 }
                                ?>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 