<?php
	if(isset($_GET["id"]))
	{
		session_start();
		$id=$_GET["id"];
		$con=mysql_connect('localhost','root','');
		mysql_select_db('tina');
		
		$select_chat_text_1_sender = "select * from chatting where ((sender_id=".$id." and receiver_id=".$_SESSION['id'].") or (sender_id=".$_SESSION['id']." and receiver_id=".$id."))";
		$result_chat_text_1_sender = mysql_query($select_chat_text_1_sender);
		while($row_chat_text_1_sender = mysql_fetch_array($result_chat_text_1_sender))
		{
			if($row_chat_text_1_sender['sender_id'] == $id)
			{
				echo "<div style='width: 80%;'>";
					$select_chat_text_1_sender_photo = "select * from user where id=".$row_chat_text_1_sender['sender_id'];
					$result_chat_text_1_sender_photo = mysql_query($select_chat_text_1_sender_photo);
					$row_chat_text_1_sender_photo = mysql_fetch_array($result_chat_text_1_sender_photo);
					echo "<img src='images/images_profile_photo/". $row_chat_text_1_sender_photo['photo']."' height='32px' width='32px' />";
						
					echo "<span class='leftarrowdiv' style='background-color: white; display:inline-block; margin-left: 10px;
								top: -32px; margin-left: 47px; margin-bottom: -22px; padding: 5px; text-align: left;'>";
						echo $row_chat_text_1_sender['chat'];
					echo "</span>";
				echo "</div>";
			}
			else if($row_chat_text_1_sender['sender_id'] == $_SESSION['id'])
			{
				echo "<div style='text-align: right;'>";
					echo "<div style='margin-left: 40px; width: 80%; text-align: right;'>";
						echo "<span class='rightarrowdiv' style='background-color: lightblue; display:inline-block; 
									margin-bottom: 10px; padding: 5px; text-align: left;'>";
							echo $row_chat_text_1_sender['chat'];
						echo "</span>";
					echo "</div>";
				echo "</div>";
			}
		}
				
		mysql_close($con);
	}
?>