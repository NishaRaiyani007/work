<script type="text/javascript" language="javascript">
	function submit_post()
	{
		document.frm_status.submit();
	}
</script>

<script type="text/javascript" language="javascript">
	function submit_comment()
	{
		document.frm_post.submit();
	}
</script>

<?php
		include("header_title.php");
		include("header_menu.php");
		include("header_photo.php");
		
?>

<div class="content">
	<div class="content_bg">
	<div class="mainbar">
	<form name="frm_status" method='get' action='post.php?friend_id=' enctype="multipart/form-data">
	<div id="dv_post" style="padding-left: 100px;">
		<input type="submit" id="btn_post" name="btn_post" value="Status" style="width: 200px;
			height: 40px;" />
		<div id="dv_post_data" style="width: 400px; text-align: right;">
			<input type='hidden' id='friend_id' name='friend_id' 
					value="<?php if(isset($_GET['friend_id'])) { echo $_GET['friend_id']; } else { echo $_SESSION['id']; }?>"></input>
			<input type="text" id="txt_post_data" name="txt_post_data"
				placeholder="What's on your mind?" onUnfocus='submit_post()' 
				style="width: 400px; height: 40px; color: gray; font-weight: bold; padding: 5px;" />
		</div>
	</div>
	</form>
	  <div class="article" style="padding-left: 100px;">
		<div class="clr"></div>
		<p class="post-data">
			<?php
				mysql_connect("localhost","root","");
				mysql_select_db("tina");
				
				$select_post = "";
				$friend_id = "";
				if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
				{
					$friend_id = $_GET['friend_id'];
					$select_post = "select * from post where receiver_id = " . $friend_id . " order by post_id desc";
				}
				else
				{
					$select_post = "select * from post where receiver_id = " . $_SESSION['id'] . " order by post_id desc";
				}
				$result_post = mysql_query($select_post);
				
				echo "<div style='width: 300px;'>";
				
				while($row_post = mysql_fetch_array($result_post))
				{
					echo "<form name='frm_post' method='get' action='comment.php' enctype='text/plain'>";
					echo "<div style='padding: 10px; background-color: white; width: 400px; border: solid 1px black'>";
					
					$sender_id = $row_post['sender_id'];
					$select_sender = "select * from user where id = " . $sender_id;
					$result_sender = mysql_query($select_sender);
					while($row_sender = mysql_fetch_array($result_sender))
					{
						echo "<span style='margin-right: 10px; vertical-align:-10px;'>";
						echo "<input type='hidden' id='post_id' name='post_id' value='".$row_post['post_id']."'></input>";
						echo "<input type='hidden' id='friend_id' name='friend_id' value='".$friend_id."'></input>";
						echo "<img src='images/images_profile_photo/". $row_sender['photo']."' height='32px' width='32px' />";
						echo "&nbsp;<span style='font-size: 14px; color: #69ACD7;vertical-align:24px;'>". $row_sender['f_name'] . "&nbsp;&nbsp;" . $row_sender['l_name'] . "</span>";
						echo "</span>";
					}
					echo "<br>";
					echo $row_post["post"];
					echo "<br><br><br><hr style='height: 1px; color: #eee;'>";
					
					$select_likes = "select likes from post where post_id=".$row_post["post_id"];
					$result_likes = mysql_query($select_likes);
					$row_likes = mysql_fetch_array($result_likes);
					$likes = $row_likes['likes'];
					if($likes == "")
					{
						$no_of_likes = 0;
					}
					else
					{
						$no_of_likes = substr_count($likes, ',') + 1;
					}
					
					$I_liked = false;
					$user_count = 0;
					if(substr_count($likes, $_SESSION["id"]) == 1)
					{
						$I_liked = true;
						$user_count = 1;
						echo "<a id='lnk_like_unlike' name='lnk_like_unlike' href='Like.php?op=unlike&friend_id=".$friend_id."&post_id=".$row_post["post_id"]."'>Unlike</a>&nbsp;";
					}
					else
					{
						$I_liked = false;
						$user_count = 0;
						echo "<a id='lnk_like_unlike' name='lnk_like_unlike' href='Like.php?op=like&friend_id=".$friend_id."&post_id=".$row_post["post_id"]."'>Like</a>&nbsp;";
					}
					echo "</div>";
					
					echo "<table style='width: 422px; border-left: solid 1px black; border-right: solid 1px black;'>";
					echo "<tr>";
					echo "<td style='padding-top : 10px;'>";
					
					if($no_of_likes >= 1)
					{
						echo "<span style='display: block; width: 402px;
								white-space: -moz-pre-wrap !important;  /* Mozilla, since 1999 */
								white-space: -pre-wrap;      /* Opera 4-6 */
								white-space: -o-pre-wrap;    /* Opera 7 */
								white-space: pre-wrap;       /* css-3 */
								word-wrap: break-word;       /* Internet Explorer 5.5+ */
								white-space: -webkit-pre-wrap; /* Newer versions of Chrome/Safari*/ 
								padding-left: 10px; font-size: 11px; color: #69ACD7;'>";
						
						$likes_array = explode(',', $likes);
						
						if($I_liked == true && $no_of_likes == 1)
						{
							echo "<span style='color: black;'>You</span>";
						}
						else if($I_liked == true && $no_of_likes == 2)
						{
							echo "<span style='color: black;'>You and </span>";
						}
						else if($I_liked == true && $no_of_likes > 2)
						{
							echo "<span style='color: black;'>You, </span>";
						}
						
						foreach($likes_array as $like_key=>$like_value)
						{
							$select_like_user = "select * from user where id=".$like_value;
							$result_like_user = mysql_query($select_like_user);
							$row_like_user = mysql_fetch_array($result_like_user);
							
							if($like_value == $_SESSION['id'])
							{
								continue;
							}
							else
							{
								$user_count++;
								echo $row_like_user['f_name'];
								echo "&nbsp;";
								echo $row_like_user['l_name'];
								
								if(($no_of_likes - 1) == $user_count)
								{
									echo " and &nbsp;";
								}
								else if($no_of_likes == $user_count)
								{
									echo "&nbsp;";
								}
								else
								{
									echo ",&nbsp;";
								}
							}						
						}
						echo "<span style='color: black;'>&nbsp;like this.</span>";
						echo "</span>";
						echo "<hr style='height: 1px; color: #eee;'>";
					}
					
					echo "</td>";
					echo "</tr>";
					echo "</table>";		
					
					$select_comment = "select * from comment where post_id = " . $row_post["post_id"] . " order by comment_id";
					$result_comment = mysql_query($select_comment);
					while($row_comment = mysql_fetch_array($result_comment))
					{
						$select_comment_sender = "select * from user where id = " . $row_comment["user_id"];
						$result_comment_sender = mysql_query($select_comment_sender);
						while($row_comment_sender = mysql_fetch_array($result_comment_sender))
						{
							echo "<table style='padding-left: 20px; width: 422px; border-left: solid 1px black; border-right: solid 1px black;'>";
								echo "<tr>";
								echo "<td>";
								echo "<span style='vertical-align:-10px;'>";
								echo "<img src='images/images_profile_photo/". $row_comment_sender['photo']."' height='32px' width='32px' />";
								echo "</span>";
								echo "</td>";
								echo "<td style='text-align:left; font-size: 14px; font-weight: bold; vertical-align:16px; height: 30px; width: 340px; color: grey;'>";
								echo "<span style='color: black;'>" . $row_comment_sender['f_name'] . "&nbsp;&nbsp;" .$row_comment_sender['l_name'] . ":&nbsp;&nbsp;</span>";
								echo "<span>" . $row_comment['comment'] . "</span>";
								echo "</td>";
								echo "</tr>";
							echo "</table>";
						}
					}
					
					echo "<div style='padding: 10px; width: 400px; border-left: solid 1px black; border-right: solid 1px black; border-bottom: solid 1px black;'>";
						echo "<span style='margin-right: 10px; vertical-align:-10px;'>";
						echo "<img src='images/images_profile_photo/". $row_login['photo']."' height='32px' width='32px' />";
						echo "&nbsp;<input type='text' onUnfocus='submit_comment()' placeholder='Write a comment...' id='txt_comment' name='txt_comment' style='padding-left: 5px; font-size: 14px; font-weight: bold; vertical-align:16px; height: 30px; width: 340px; color: grey;'></input>";
						echo "</span>";
					echo "</div><br>";
					echo "</form>";
				}
				
				echo "</div>";
			?>
		</p>
		<div class="clr"></div>
	  </div>
	 
	</div>
	
	<?php
		include("sidebar.php");
	?>
		
	<?php
		include("footer.php");
	?>