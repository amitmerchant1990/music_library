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
        <h2>All music</h2>
        
	<?php echo $this->Session->flash(); ?>
	<?php //echo $this->element('dashboard'); ?>
	<div class="um_box_up"></div>
	<div class="um_box_mid">
		<div class="um_box_mid_content">
			<div class="um_box_mid_content_top">
                                <?php 
                                    $user_id = $this->UserAuth->getUserId();
                                    if (empty($user_id)) { ?>
                                    <span class="umstyle2" style="float:right"><?php echo $this->Html->link(__("Login to upload music",true),"/login"); ?></span>
                                <?php }else{ ?>    
                                    <span class="umstyle2" style="float:right"><?php echo $this->Html->link(__("Go to your music",true),"/your_music"); ?></span>
                                <?php } ?>    
				<div style="clear:both"></div>
			</div>
			<div class="umhr"></div>
			<div class="um_box_mid_content_mid" id="index">
				<table cellspacing="0" cellpadding="0" width="100%" border="0" >
					<thead>
						<tr>
							<th><?php echo __('Title');?></th>
							<th><?php echo __('Song');?></th>
                                                        <th><?php echo __('Play It');?></th>
                                                        <th><?php echo __('');?></th>    
                                                </tr>
					</thead>
					<tbody>
				<?php   if(!empty($fetch_all_music)) {
							foreach ($fetch_all_music as $row) {
								echo "<tr>";
								echo "<td>".$row['StoreMusic']['title']."</td>";
								echo "<td>".h($row['StoreMusic']['file_name'])."</td>";
                                          ?>                      
                                                                <td id="myElement_<?php echo $row['StoreMusic']['id']; ?>"></td>
                                                                <script>
                                                                    jwplayer("myElement_<?php echo $row['StoreMusic']['id']; ?>").setup({
                                                                        players: settings.modes.flashhtml5,
                                                                        file: "<?php echo SITE_URL.'music/'.$row['StoreMusic']['file_name']; ?>",
                                                                        width: 441,
                                                                        height: 28,
                                                                        skin: "<?php echo SITE_URL; ?>newtubedark/NewTubeDark.xml",
                                                                        provider: "audio",
                                                                        controlbar: "bottom"

                                                                    });
                                                                </script>
                                            <?php                    
                                                                echo "<td>";
									echo $this->Html->link('Download', '/music/download/'.$row['StoreMusic']['id'], array('escape' => false));
									
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