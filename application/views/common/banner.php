<div id="slide" class="  v-full-width ">
    <div id="slide-inner" class="v-full-width">
        <div class="   block_area_7 block_area  area_slide sortable clearfix">
            <div id="block-25" class="block-Slide core-block">
                <div class="slider" id="flex-slider-25">
                    <div class="flexslider">
                        <div class="flex-viewport" style="overflow: hidden; position: relative; height: 607px; display:none;">
                            <?php if(!empty($cats)) :?>
                            <ul class="slides" style="width: 1000%; transition-duration: 0s; transform: translate3d(-1903px, 0px, 0px);">
                                <?php foreach($cats as $cat) :?>
                                <li class="v-slide-item v-slide-item-3 clone" aria-hidden="true" style="width: 1903px; margin-right: 0px; float: left; display: block;">
                                    <img src="<?php echo base_url();?><?=$cat->img;?>" alt="<?=$cat->name;?>" draggable="false"> 
                                </li>
                                
                                <?php endforeach;?>
                            </ul>
                            <?php endif;?>
                        </div>

                        <ul class="flex-direction-nav">
                            <li class="flex-nav-prev"><a class="flex-prev" href="#/#">Previous</a></li>
                            <li class="flex-nav-next"><a class="flex-next" href="#/#">Next</a></li>
                        </ul>
                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $('#flex-slider-25 .flexslider').flexslider({
                            animation: "slide",
                            start: function (slider) {
                                $('body').removeClass('loading');
                            },
                            pauseOnHover: true,
                            direction: "horizontal",
                            controlNav: true,
                            slideshowSpeed: 4000,
                            animationSpeed: 300,
                            easing: "swing",
                            animateHeight: true,
                            smoothHeight: true
                        });
                    })

                </script>
            </div>
        </div>
    </div>
</div>
<span class="clear"></span>
<span class="clear"></span>
