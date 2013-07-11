<?php
/*
	This file is part of UserMgmt.

	Author: Chetan Varshney (http://ektasoftwares.com)

	UserMgmt is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	UserMgmt is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<div class="umtop">
	<?php echo $this->Session->flash(); ?>
	<?php echo $this->element('dashboard'); ?>
	<div class="um_box_up"></div>
	<div class="um_box_mid">
		<div class="um_box_mid_content">
			<div class="um_box_mid_content_top">
				<span class="umstyle1"><?php echo __('Your All Music'); ?><?php //echo $this->Html->link(__("Add App",true),"add_app") ?></span>
				<span class="umstyle2" style="float:right"><?php echo $this->Html->link(__("Add a Song",true),"upload"); ?></span>
				<div style="clear:both"></div>
			</div>
			<div class="umhr"></div>
			<div class="um_box_mid_content_mid" id="index">
				<table cellspacing="0" cellpadding="0" width="100%" border="0" >
					<thead>
						<tr>
							<th><?php echo __('Tile');?></th>
							<th><?php echo __('File Name');?></th>
                                                        <th><?php echo __('Action');?></th>
						</tr>
					</thead>
					<tbody>
				<?php   if(!empty($fetch_user_music)) {
							foreach ($fetch_user_music as $row) {
								echo "<tr>";
								echo "<td>".$row['StoreMusic']['title']."</td>";
								echo "<td>".h($row['StoreMusic']['file_name'])."</td>";
                                                                echo "<td>";
									echo "<a href='".$this->Html->url('edit/'.$row['StoreMusic']['id'])."'><img src='".SITE_URL."usermgmt/img/edit.png' border='0' alt='Edit' title='Edit'></a>";
                                                                        echo $this->Html->link($this->Html->image(SITE_URL.'usermgmt/img/delete.png', array("alt" => __('Delete'), "title" => __('Delete'))), array('action' => 'delete', $row['StoreMusic']['id']), array('escape' => false, 'confirm' => __('Are you sure you want to delete this song?')));
									
								echo "</td>";    
								echo "</tr>";
							}
						} else {
							echo "<tr><td colspan=6><br/><br/>No songs Added</td></tr>";
						} ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="um_box_down"></div>
</div>