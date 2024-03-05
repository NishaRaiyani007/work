<?php
		include("header_title.php");
		include("header_menu.php");
?>

<div class="content">
	<div class="content_bg">
	<div class="mainbar">
	  <div class="article">
	  <p class="post-data">
		<?php
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$select = "select * from user where id <> " . $_SESSION["id"];
			$result = mysql_query($select);
			
			while($row_user = mysql_fetch_array($result))
			{
				echo "<table style='padding: 10px; width: 600px; 
						border: solid 1px black; margin-top: 10px;'>";
				echo "<tr>";
				
				echo "<td style='width: 100px;'>";
				echo "<img src='images/images_profile_photo/".$row_user["photo"]."' height='80px' width='80px' style='padding: 10px;' />";
				echo "</td>";
				echo "<td style='vertical-align:top; padding: 15px;'>";
				echo "<span style='font-size: large;'>";
				echo $row_user["f_name"] . "&nbsp;&nbsp;" . $row_user["l_name"];
				echo "</span>";
				echo "<br>(";
				echo $row_user["gender"] . "&nbsp;-&nbsp;" . $row_user["city"];
				echo ")</td>";
				echo "<td style='width: 180px; text-align: center'>";
				$has_friend = false;
				$select_friend = "select user_id, friend_req_id, friend_id from friends where user_id=" . $_SESSION["id"];
				$result_friend = mysql_query($select_friend);
				
				//echo $row_user["id"];
				
				while($row_friends = mysql_fetch_array($result_friend))
				{
					$select_friend_req_id = "select friend_req_id from friends where user_id=" . $row_user["id"];
					$result_friend_req_id = mysql_query($select_friend_req_id);
					
					while($row_friend_req_id = mysql_fetch_array($result_friend_req_id))
					{
						$has_friend = true;
						
						//echo $row_friends["friend_id"];
						//echo "<br>";
						//echo $row_user["id"];
						if(substr_count($row_friends["friend_id"], $row_user["id"]) == 1)
						{
							echo "<div style='height:40px; width:150px; background:#78bbe6;border-radius: 10px;line-height:13px;'><br>";
							echo "<a href='remove_friend.php?user_id=" . $row_user["id"] . "' name='btn_remove_friend' id='btn_remove_friend'  style='padding: 10px;font-size: 16px;font-weight:bold; border:none;border-radius: 10px;  color:#f00; background:#78bbe6;' >Remove friend</a>";
							echo "</div>";
						}
						
						else if(substr_count($row_friends["friend_req_id"], $row_user["id"]) == 1)
						{
							echo "<div style='height:40px; width:150px; background:#78bbe6;border-radius: 10px;line-height:13px;'><br>";
							echo "<a href='confirm_friend.php?user_id=" . $row_user["id"] . "' name='btn_confirm_friend' id='btn_confirm_friend'  style='padding: 10px;font-size: 16px;font-weight:bold; border:none;border-radius: 10px;  color:#0f0; background:#78bbe6;' >Confirm friend</a>";
							echo "</div>";
						}
						else if(substr_count($row_friend_req_id["friend_req_id"], $_SESSION['id']) == 1)
						{
							echo "<div style='height:40px; width:150px; background:#78bbe6;border-radius: 10px;line-height:13px;'><br>";
							echo "<a href='#' style='padding: 10px;font-size: 16px;color:#ff0;font-weight:bold; border:none;border-radius: 10px; background:#78bbe6;' >Request Sent</a>";
							echo "</div>";
						}
						else
						{
							echo "<div style='height:40px; width:150px; background:#78bbe6;border-radius: 10px;line-height:13px;'><br>";
							echo "<a href='add_friend.php?user_id=" . $row_user["id"] . "' name='btn_add_friend' id='btn_add_friend' style='padding: 10px;font-size: 16px;color:#fff;font-weight:bold; border:none;border-radius: 10px; background:#78bbe6;' >Add friend</a>";
							echo "</div>";
						}
					}					
				}
				
				if($has_friend == false)
				{
					echo "<div style='height:40px; width:150px; background:#78bbe6;border-radius: 10px;line-height:13px;'><br>";
					echo "<a href='add_friend.php?user_id=" . $row_user["id"] . "' name='btn_add_friend' id='btn_add_friend' style='padding: 10px;font-size: 16px;color:#fff;font-weight:bold; border:none;border-radius: 10px; background:#78bbe6;' >Add friend</a>";
					echo "</div>";
				}
				echo "</td>";
				echo "</tr>";
				echo "</table>";
			}			
		?>
	</p>
	<div class="clr"></div>
  </div>
 
</div>
<?php
	include("sidebar.php");
?>
	
<?php
	//include("footer.php");
?>