<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://xaignavong.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="robots" content="index, follow" />
<meta name="copyright" content="<?php echo $this->site_title;?>" />
<meta http-equiv="content-language" content="vi" />
<link rel="alternate" href="<? echo base_url();?>" hreflang="vi-vn" />
<meta name="Author" content="<?php echo $this->site_title;?>" />
<meta name="og:title" content="<?php echo $this->site_title;?>"/>
<meta name="og:description" content="<?php echo $this->meta_desc;?>"/>
<meta name="og:url" content="<? echo base_url();?>">
 
<meta name="DC.Title" content="<?php echo $this->site_title;?>" />
<meta name="DC.Creator" content="<?php echo $this->site_title;?>" />
<meta name="DC.Date" content="2013-31-3" />
<meta name="DC.Format" scheme="DCMIType" content="Text" />
<meta name="DC.Identifier" content="<? echo base_url();?>" />
<meta name="DC.Type" content="text/html" />
<meta name="DC.Description" content="<?php echo $this->meta_desc;?>" />
<link href="<?php echo base_url(uri_string()); ?>"  rel="canonical" />
<link rel="publisher" href="https://plus.google.com/u/0/+ThangPV/posts"/>
<link rel="shortcut icon" href="<? echo base_url();?>favicon.ico" />
<link href="tham-tu.com/rss" rel="alternate" type="application/rss+xml" title="RSS 2.0" />
<title><?php echo $this->site_title;?></title>
<meta name="keywords" content="<?php echo $this->meta_key;?>" />
<meta name="description" content="<?php echo $this->meta_desc;?>" />
<link type="text/css" rel="stylesheet" href="<? echo base_url();?>css/general.css">
<link type="text/css" rel="stylesheet" href="<? echo base_url();?>css/layout.css">
<!-- Scripts -->
<link rel="stylesheet" type="text/css" href="<? echo base_url();?>css/presentationCycle.css" />
 <?php 
$sql="select * from setting ";	
$setting= $this->db->query($sql);
$kqsetting=$setting->row();
 ?>
   
    <script type='text/javascript' src='<? echo base_url();?>js/jquery.js'></script>
    <script type='text/javascript' src='<? echo base_url();?>js/jquery.cycle.all.min.js'></script>
    <script type='text/javascript' src='<? echo base_url();?>js/presentationCycle.js'></script>
    <script type='text/javascript' src='<? echo base_url();?>js/jlib.js'></script>
    <script type="text/javascript">
                      $(function () {
                          $("#br_list").jCarouselLite({
                              btnNext: "#tab_b1 .next",
                              btnPrev: "#tab_b1 .prev",
                              visible: 5,
                              scroll: 1,
                              auto: 3000,
                              speed: 800
                          })
                      });
    </script>
<body>

<!--begin container-->
<div id="container">
    <!--begin menu_top-->
	<div id="menu_top">
		<h1 style = "display:inline;float: left; font-weight: bold;margin-top: 7px;font-size: 14px"><?php echo $this->site_title;?></h1>
		<div>
			<ul>
			</ul>
			<p>
			
				<a href="mailto:<? echo $kqsetting->google_analytics; ?>" id="email_topmenu">Email</a>
			</p>
		</div>
	</div>
    <!--end menu_top-->
    <!--begin header-->
	<div id="header">
		<?php echo $header;?>
	</div>
	<!--end header-->
    <!--begin box_menu-->
    <div id="box_menu">
        <?php echo $menu;?>
    </div>	<div style="clear:both"></div>
	<!--end box_menu-->
    <?php echo $banner;?>    
	
	<div id="content_page">
	
      <!--begin left_page-->
		<div id="left_page">
			<?php echo $left;?>
		</div>
		<!--end left_page-->
		
		
		<!--begin right_page-->
		<div id="right_page">
			<? echo $content; ?>
		</div>
		<!--end right_page-->
		
	</div>
    <!--end content_page-->   
	<div style="clear:both"></div>	
	<?php echo $footer;?>
  
  </body>
  </html>