<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smile Buddy</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<div id="divTopLeft" style="position: absolute; left: 0px; top: 453px;">
	<a href="profile.php" target="_self">
		<img src="floating_logo_02.png" alt="Smile Buddy" title="Smile Buddy" width="160" border="0" height="260">
	</a>
</div>
<script type="text/javascript" src="floating_logo.js"></script>
	
<?php
	mysql_connect("localhost","root","");
	mysql_select_db("tina");
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		$select_login = "select * from user where id='".$_SESSION['id']."'";
		$result_login = mysql_query($select_login);
		$row_login = mysql_fetch_array($result_login);
		
		$select = "";
		if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
		{
			$select = "select * from user where id='".$_GET['friend_id']."'";
		}
		else
		{
			$select = "select * from user where id='".$_SESSION['id']."'";
		}
		$result = mysql_query($select);
		
		$row = mysql_fetch_array($result);
	}
	else
	{
		header("Location: login.php");
	}
?>

</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo" style="width: 325px;">
        <h1><a href="profile.php"><span>Smile</span>Buddy<small>Gathering Friends</small></a></h1>
      </div>
	  
      <div style="text-align:right;">
        <form method="get" id="search" name="search" action="search_friends.php">
          <div style="font-size: 16px;">
		  <?php 
			echo "<span style='margin-right: 20px; font-size: 12px; vertical-align:0px;'>";
			echo "<a style='text-decoration: none;'>( total " ; 
			echo $_SESSION['views'];
			echo " visitors )</a>";
			echo "</span>";
			echo "<span style='margin-right: 10px; vertical-align:-10px;'>";
			echo "<img src='images/images_profile_photo/". $row['photo']."' height='32px' width='32px' />";
			echo "&nbsp;<span style='font-size: 24px; color: black;vertical-align:8px;'>". $row['f_name'] . "</span>";
			echo "</span>";
			echo "<span style='vertical-align:0px;'>";
			
			//echo "<img src='images/friend.png' height='28px' width='28px' />";
			//echo "&nbsp;<img src='images/message.png' height='28px' width='28px' />";
			//echo "&nbsp;<img src='images/notification.png' height='28px' width='28px' />";
			echo "</span>";
		  ?>
			  <span style='vertical-align:0px;
							padding: 8px; background-color: white;
							border: solid 1px black;'>
	          <input type="text" placeholder="Smile Buddy" 
						style="width: 235px; height: 30px; font-weight:bold;
								border: none;
								margin-bottom:10px;" name="txt_search" />
			
	          <input name="searchsubmit" type="image" src="images/search.gif" 
					value="Go" id="searchsubmit" 
					style="margin-top:20px; margin-left: -10px;
							height: 30px;
							margin-bottom:-10px;"  />
			</span>
				
          </div>
        </form>
        <!--/searchform -->
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      