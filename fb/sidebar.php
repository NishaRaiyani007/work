<script>
	window.setInterval(function() {
	  var elem = document.getElementById('data');
	  elem.scrollTop = elem.scrollHeight;
		}, 100);
</script>

<script type="text/javascript" language="javascript">
	function submit_chatting_1()
	{
		document.frm_chatting.submit();
	}
</script>
<style>
	.leftarrowdiv{
	
	min-height:40px; /*min height of DIV should be set to at least 2x the width of the arrow*/
	background: white;
	color:black;
	padding:5px;
	position:relative;
	word-wrap:break-word;
	-moz-border-radius:5px; /*add some nice CSS3 round corners*/
	-webkit-border-radius:5px;
	border-radius:5px;
	margin-bottom:2em;
	}

	.rightarrowdiv{
	
	min-height:40px; /*min height of DIV should be set to at least 2x the width of the arrow*/
	background: lightblue;
	color:black;
	padding:5px;
	position:relative;
	word-wrap:break-word;
	-moz-border-radius:5px; /*add some nice CSS3 round corners*/
	-webkit-border-radius:5px;
	border-radius:5px;
	margin-bottom:2em;
	}

	.leftarrowdiv:after{ /*arrow added to leftarrowdiv DIV*/
	content:'';
	display:block;
	position:absolute;
	top:10px;
	left:-20px; /*should be set to -border-width x 2 */
	width:0;
	height:0;
	border-color: transparent white transparent transparent; /*border color should be same as div div background color*/
	border-style: solid;
	border-width: 10px;
	}

	.rightarrowdiv:after{ /*arrow added to rightarrowdiv DIV*/
	content:'';
	display:block;
	position:absolute;
	top:10px;
	left:100%; /*should be set to 100% */
	width:0;
	height:0;
	border-color: transparent transparent transparent lightblue; /*border color should be same as div div background color*/
	border-style: solid;
	border-width: 10px;
	}
</style>
<style>
	.show_div_chatbox:hover
	{
		text-decoration: underline;
		color: #69ACD7;
	}
	.hide_div_chatbox:hover
	{
		color: red;
	}
</style>
        <div class="sidebar">
          <div class="gadget">
            <h2 class="star">
				<span>
				<?php
					if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
					{
						//echo "<a href='search_friends.php?friend_id=".$_GET['friend_id']."'>Friends</a>";
						echo "<a href='#'>Friends</a>";
					}
					else
					{
						echo "<a href='search_friends.php'>Friends</a>";
					}
				?>
				</span>
			</h2>
			<img src="images/fbg_bg.jpg" height="3px" width="100%" />
            <div class="clr"></div>
            <?php
				$select_friend_id = "";
				if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
				{
					$select_friend_id = "select friend_id from friends where user_id='".$_GET['friend_id']."'";
				}
				else
				{
					$select_friend_id = "select friend_id from friends where user_id='".$_SESSION['id']."'";
				}
				$result_friend_id = mysql_query($select_friend_id);
				$has_friends = false;
				while($row_friend_id = mysql_fetch_array($result_friend_id))
				{
					$has_friends = true;
					$friend_id = $row_friend_id["friend_id"];
					if($friend_id == null || $friend_id == "")
					{
						echo "<br><h3>You have no friends...!</h3>";
					}
					else
					{
						$select_all = "select * from user where id in (".$friend_id.")";
						$result_all = mysql_query($select_all);
						echo "<div id='dvFriendPhotos'";
							echo "style='width:259px;background-color:transparent;";
							echo "text-align: left; padding: 5px;";
							echo "top: 300px; left: 600px;'>";
							
							$i=0;
							
							echo "<table>";
							echo "<tr>";
							while($row_all = mysql_fetch_array($result_all))
							{
								if($i % 3 == 0)
								{
									echo "</tr>";
									echo "<tr>";
								}
								
								echo "<td align='center' valign='top'>";
								echo "<a href='profile.php?friend_id=".$row_all['id']."'>";
								echo "<img src='images/images_profile_photo/".$row_all['photo']."' title=".$row_all['id']." 
											style='border: solid 3px white;'
											height='80px' width='80px' alt='image not found' />";
								
								echo "</a>";
								echo "<br>";
								echo "<span>";
								echo "<a href='profile.php?receiver_id=".$row_all['id']."' id=" . $row_all['id'] . " class='show_div_chatbox' style='text-decoration: none;'>";
								echo $row_all['f_name'];
								echo "</a>";
								echo "</span>";
								echo "</td>";
								
								$i++;
							}	
							echo "</tr>";
							echo "</table>";
							
						echo "</div>";
					}
				}
				if($has_friends == false)
				{
					echo "<br><h3>You have no friends...!</h3>";
				}
				?>
          </div>
          <div class="gadget">
			<h2 class="star">
				<span>
				<?php
					if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
					{
						//echo "<a href='search_books.php?friend_id=".$_GET['friend_id']."'>Favorite Books</a>";
						echo "<a href='#'>Favorite Books</a>";
					}
					else
					{
						echo "<a href='search_books.php'>Favorite Books</a>";
					}
				?>
				</span>
			</h2>
            <img src="images/fbg_bg.jpg" height="3px" width="100%" />
			<div class="clr"></div>
            <?php
				$select_book_id = "";
				if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
				{
					$select_book_id = "select fav_books from user where id='".$_GET['friend_id']."'";
				}
				else
				{
					$select_book_id = "select fav_books from user where id='".$_SESSION['id']."'";
				}
				$result_book_id = mysql_query($select_book_id);
				while($row_book_id = mysql_fetch_array($result_book_id))
				{
					$fav_books = $row_book_id["fav_books"];
					if($fav_books == null || $fav_books == "")
					{
						echo "<br><h3>You have no book selected...!</h3>";
					}
					else
					{
						$select_all = "select * from books where book_id in (".$fav_books.")";
						$result_all = mysql_query($select_all);
						echo "<div ";
							echo "style='width:259px;background-color:transparent;";
							echo "text-align: left; padding: 5px;";
							echo "top: 300px; left: 600px;'>";
							
							$i=0;
							
							echo "<table>";
							echo "<tr>";
							while($row_all = mysql_fetch_array($result_all))
							{
								if($i % 3 == 0)
								{
									echo "</tr>";
									echo "<tr>";
								}
								
								echo "<td align='center' valign='top'>";
								echo "<a href='#'>";
								echo "<img src='".$row_all['book_photo']."' style='border: solid 3px white;'
											height='80px' width='80px' alt='image not found' />";
								
								echo "</a>";
								echo "<br>";
								echo "<span><a style='text-decoration: none;'>".$row_all['book_name']."</a></span>";
								echo "</td>";
								
								$i++;
							}	
							echo "</tr>";
							echo "</table>";
							
						echo "</div>";
					}
				}
				?>
          </div>
          <div class="gadget">
			<h2 class="star">
				<span>
				<?php
					if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
					{
						//echo "<a href='search_movies.php?friend_id=".$_GET['friend_id']."'>Favorite Movies</a>";
						echo "<a href='#'>Favorite Movies</a>";
					}
					else
					{
						echo "<a href='search_movies.php'>Favorite Movies</a>";
					}
				?>
				</span>
			</h2>
            <img src="images/fbg_bg.jpg" height="3px" width="100%" />
			<div class="clr"></div>
            <?php
				$select_movie_id = "";
				if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
				{
					$select_movie_id = "select fav_movies from user where id='".$_GET['friend_id']."'";
				}
				else
				{
					$select_movie_id = "select fav_movies from user where id='".$_SESSION['id']."'";
				}
				$result_movie_id = mysql_query($select_movie_id);
				while($row_movie_id = mysql_fetch_array($result_movie_id))
				{
					$fav_movies = $row_movie_id["fav_movies"];
					if($fav_movies == null || $fav_movies == "")
					{
						echo "<br><h3>You have no movie selected...!</h3>";
					}
					else
					{
						$select_all = "select * from movies where movie_id in (".$fav_movies.")";
						$result_all = mysql_query($select_all);
						echo "<div ";
							echo "style='width:259px;background-color:transparent;";
							echo "text-align: left; padding: 5px;";
							echo "top: 300px; left: 600px;'>";
							
							$i=0;
							
							echo "<table>";
							echo "<tr>";
							while($row_all = mysql_fetch_array($result_all))
							{
								if($i % 3 == 0)
								{
									echo "</tr>";
									echo "<tr>";
								}
								
								echo "<td align='center' valign='top'>";
								echo "<a href='#'>";
								echo "<img src='".$row_all['movie_photo']."' style='border: solid 3px white;'
											height='80px' width='80px' alt='image not found' />";
								
								echo "</a>";
								echo "<br>";
								echo "<span><a style='text-decoration: none;'>".$row_all['movie_name']."</a></span>";
								echo "</td>";
								
								$i++;
							}	
							echo "</tr>";
							echo "</table>";
							
						echo "</div>";
					}
				}
				?>
          </div>
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
<?php
	if(isset($_GET['receiver_id']) && !isset($_GET['friend_id']))
	{
		echo "<form name='frm_chatting' method='get' action='chatting.php' enctype='text/plain'>";
			echo "<div id='div_chatting_1' name='div_chatting_1' "; 
				echo "style='position: fixed; right: 200px; bottom: 0px; height: 320px; width: 300px; ";
						echo "border: solid 1px black; background-color: #DDDDDD;'> ";
				echo "<div id='div_chatting_title_1' style='height: 20px; padding: 5px; font-size: 14px; background-color: #589BC6; color: white;'>";
					//<!-- show_span_chatting using AJAX -->
					echo "<span id='span_chatting_title_1'>";
					
						if(isset($_GET["receiver_id"]))
						{
							$id=$_GET["receiver_id"];
							$_SESSION['chatbox_sender_1_id'] = $id;
							$con=mysql_connect('localhost','root','');
							mysql_select_db('tina');
							$sql="select * from user where id='". $id ."'";
							$result=mysql_query($sql);
							$row=mysql_fetch_array($result);
							//$_SESSION['chatbox_sender_1_id'] = $row['id'];
							$_SESSION['chatbox_sender_1_f_name'] = $row['f_name'];
							$_SESSION['chatbox_sender_1_l_name'] = $row['l_name'];
							echo "<input type='hidden' id='receiver_id' name='receiver_id' value='".$id."'></input>";
							echo $_SESSION['chatbox_sender_1_f_name'] . "&nbsp;" . $_SESSION['chatbox_sender_1_l_name'];
									
							mysql_close($con);
						}
						else
						{
							$_SESSION['chatbox_sender_1_id'] = "";
							$_SESSION['chatbox_sender_1_f_name'] = "";
							$_SESSION['chatbox_sender_1_l_name'] = "";
							
							echo "";
						}

					echo "</span>";
					echo "<span class='hide_div_chatbox' style='position: absolute; right: 5px;'>";
							echo "<a href='profile.php' style='color: red; text-decoration: none;'>x</a>";
					echo "</span>";
				echo "</div>";
				//<!-- show_div_chatting_text_1 using AJAX -->
				echo "<div id='div_chatting_text_1' style='height: 268px; padding: 5px; overflow: scroll;'>";
				
					if(isset($_GET["receiver_id"]))
					{
						//session_start();
						$id=$_GET["receiver_id"];
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
				
				echo "</div>";
			echo "</div>";
			echo "<div id='div_chatting_sender_1' name='div_chatting_sender_1' ";
				echo "style='padding: 0px; width: 300px; bottom: 0px; position: fixed; right: 200px; '> ";
				echo "<input type='text' onUnfocus='submit_chatting_1()' placeholder='Type here...' ";
						echo "id='txt_chatting_sender_1' name='txt_chatting_sender_1' ";
						echo "style='padding-left: 5px; font-size: 14px; font-weight: bold; ";
								echo "height: 30px; width: 298px; color: black;'>";
				echo "</input>";
			echo "</div>";
		echo "</form>";
	}
?>

<script>
	var objDiv = document.getElementById("div_chatting_text_1");
	objDiv.scrollTop = objDiv.scrollHeight;
</script>
