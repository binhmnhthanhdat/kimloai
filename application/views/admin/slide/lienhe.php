
<div id="content">

    <div class="warning" style="display:none;"><?php if ($this->session->flashdata('warning')) echo $this->session->flashdata('warning'); ?></div>
    <div class="box">
        <div class="heading">
            <h1><img src="<?= base_url(); ?>admin_template/image/category.png" />Ảnh liên hệ</h1>
<div class="buttons">
                	<a href="javascript:void(0);" onclick="$('#frm_add').submit();" class="button">Save</a>
                    <a href="javascript:void(0);" onclick="location.href='<?=base_url();?>admin/slide';" class="button">Cancel</a>
                </div>
        </div><!--End heading-->
        <div class="content">
            <div id="tabs" class="htabs">
                <a href="#tab_1" class="selected">Thông tin Ảnh liên hệ</a>
                <!--<a href="#tab_2">Tab 2</a>
                <a href="#tab_3">Tab 3</a>-->
            </div><!--End tabs-->

            <form action="<?= $action; ?>" method="post" enctype="multipart/form-data" id="frm_add">
                <div id="tab_1" style="display:block;">
                    <table width="100%" class="form">
                        <tbody>
                            

                            <tr>
                                <td width="169" align="left"><label>Hình ảnh:</label></td>
                                <td width="922">
                                    <?php    echo form_upload('userfile'); ?> <br>
                                    <?php if (@$article->img != '') : ?>
                                        <img src="<?= base_url(); ?><?= @@$article->img; ?>" width="200" height="200">
                                    <?php endif; ?>   
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <!--<div id="tab_2" style="display:none;">Noi dung tabs 2</div>
                <div id="tab_3" style="display:none;">Noi dung tabs 3</div>-->
                <input type="hidden" id="id" name="id" value="1">
                <input type="hidden" name="oldImage" value="<?= @$article->img; ?>">
            </form>

        </div><!--End content-->
    </div><!--End box-->

</div><!--End content-->