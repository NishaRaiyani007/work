      <div class="hbg">
		<?php
			echo "<img src='images/images_cover_photo/".$row['cover_photo']."' style='border-radius: 25px;' alt='image not found' height='291px' width='100%' />";
		?>
	  </div>
		<div id="dvProfilePic" style="width:160px; height:160px; 
					background-color:transparent;
					top: 160; left: 100px;
					margin-top: -120px;
					margin-left: 50px;">
			<?php
				echo "<img src='images/images_profile_photo/".$row['photo']."' alt='image not found' height='150px' width='150px' />";
			?>			
		</div>
    </div>
