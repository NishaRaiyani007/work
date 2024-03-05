<?php
	mysql_connect("localhost","root","");
	mysql_select_db("tina");
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		$select = "select * from user where id='".$_SESSION['id']."'";
		
		$result = mysql_query($select);
		
		$row = mysql_fetch_array($result);
	}
	else
	{
		header("Location: login.php");
	}
	if(isset($_POST['btn_profile']))
	{
		header("Location: profile.php");
	}			
?>
<body bgcolor="#C893FF" >
<form method="post" enctype="multipart/form-data">
<center>
<div style="background-color: pink; border: 1px solid red; width: 400px; padding: 10px; border-radius: 50;">
<font size="5">
	This was your old profile picture
</font>
	<div id="dvProfilePic" style="width:160px; height:160px; 
				background-color:darkgray; text-align: center; 
				padding-top: 5px; position: relative;
				z-index: 50; top: 30px;">
		
		<?php
			echo "<img src='images/images_profile_photo/".$row['old_photo']."' alt='image not found' height='150px' width='150px' />";
		?>
	
	<br>
	<br>
	
	</div>
	<br><br><br>
	<font size="5">
This is your new Profile Picture
		<div id="dvNewProfilePic" style="width:160px; height:160px; 
				background-color:darkgray; text-align: center; 
				padding-top: 5px; position: relative;
				z-index: 50; top: 10px; left: 10px;">
		
		<?php
			echo "<img src='images/images_profile_photo/".$row['photo']."' alt='image not found' height='150px' width='150px' />";
		?>
		</div>
		<br>
	<input type="submit" name="btn_profile" value="Go to Profile Page"
	style="height: 46px; width: 40%; background-image:url('btn_bg.png');
		color: white; font-size: 12px; font-weight: 900;" />
		
</div>
</center>
		</form>
</body>