<script>
    $(function() {
        
      $("#add_app").validate({
        rules: {
          "data[InfoApp][itunes_link]": {
            required: true,
            url: true
          }
        }
      });  
      $( "#datepicker" ).datetimepicker({ dateFormat: 'yy-mm-dd' });
    });
    
    function check_add(){
        $( "#dialog-confirm" ).dialog({
        resizable: true,
        height:140,
        modal: true,
        buttons: {
          "Delete all items": function() {
            return true;  
            $( this ).dialog( "close" );
          },
          Cancel: function() {
            return false;  
            $( this ).dialog( "close" );
          }
        }
      });
    }
</script>
<style>
    /* css for timepicker */
.ui-timepicker-div .ui-widget-header { margin-bottom: 8px; }
.ui-timepicker-div dl { text-align: left; }
.ui-timepicker-div dl dt { height: 25px; margin-bottom: -25px; }
.ui-timepicker-div dl dd { margin: 0 10px 10px 65px; }
.ui-timepicker-div td { font-size: 90%; }
.ui-tpicker-grid-label { background: none; border: none; margin: 0; padding: 0; }

.ui-timepicker-rtl{ direction: rtl; }
.ui-timepicker-rtl dl { text-align: right; }
.ui-timepicker-rtl dl dd { margin: 0 65px 10px 10px; }
</style>

<div id="dialog-confirm" title="you want to submit the ?">
    <p style="display: none;"><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0; display: none;"></span>These items will be permanently deleted and cannot be recovered. Are you sure?</p>
</div>

<div class="umtop">
	<?php echo $this->Session->flash(); ?>
	<?php echo $this->element('dashboard'); ?>
	<div class="um_box_up"></div>
	<div class="um_box_mid">
		<div class="um_box_mid_content">
			<div class="um_box_mid_content_top">
				<span class="umstyle1"><?php echo __('Upload A New Song'); ?></span>
				<span class="umstyle2" style="float:right"><?php echo $this->Html->link(__("Home",true),"/") ?></span>
				<div style="clear:both"></div>
			</div>
			<div class="umhr"></div>
			<div class="um_box_mid_content_mid" id="register">
				<div class="um_box_mid_content_mid_left">
					<?php echo $this->Form->create('StoreMusic', array('id'=>'add_music', 'onsubmit'=>'', 'type'=>'file')); ?>
					<?php echo $this->Form->input("id_user" ,array('type' => 'hidden', 'label' => false,'div' => false))?>
                                        <div>
						<div class="umstyle3"><?php echo __('Title');?><font color='red'>*</font></div>
						<div class="umstyle4 flo_left" ><?php echo $this->Form->input("title" ,array('label' => false,'div' => false,'class'=>"umstyle5 required" ))?></div>
						<div style="clear:both"></div>
					</div>
                                        <div>
						<div class="umstyle3"><?php echo __('Choose a File');?><font color='red'>*</font></div>
						<div class="umstyle4 flo_left" ><?php echo $this->Form->input("file_name" ,array('type'=>'file','label' => false,'div' => false,'class'=>"umstyle5 required" ))?></div>
						<div style="clear:both"></div>
					</div>
					<div>
						<div class="umstyle3"></div>
						<div class="umstyle4"><?php echo $this->Form->Submit(__('Add'));?></div>
						<div style="clear:both"></div>
					</div>
					<?php echo $this->Form->end(); ?>
				</div>
				<div class="um_box_mid_content_mid_right" align="right"></div>
				<div style="clear:both"></div>
			</div>
		</div>
	</div>
	<div class="um_box_down"></div>
</div>
<script>
document.getElementById("UserUserGroupId").focus();
</script>