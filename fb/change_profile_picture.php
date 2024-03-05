<?php
		include("header_title.php");
		include("header_menu.php");		
?>
<?php
	mysql_connect("localhost","root","");
	mysql_select_db("tina");
	//session_start();
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
	if(isset($_POST['btn_submit']))
	{
		move_uploaded_file($_FILES['file_photo']['tmp_name'],"images/images_profile_photo/".$_FILES['file_photo']['name']);
		$photo=$_FILES['file_photo']['name'];
		
		$old_photo = $row['photo'];
		$update_old = "update `tina`.`user` set old_photo='".$old_photo."' where id='".$row['id']."'";
		$update = "update `tina`.`user` set photo='".$photo."' where id='".$row['id']."'";
		
		
		mysql_query($update_old);
		mysql_query($update);
		header("Location: change_profile_picture_02.php");
	}
			
?>
<body bgcolor="#C893FF" >
<form method="post" enctype="multipart/form-data">
<center>
<div style="background-color: pink; border: 1px solid red; width: 400px; padding: 10px; border-radius: 50;">
<font size="5">
	This is your current profile picture
</font>
	<div id="dvProfilePic" style="width:160px; height:160px; 
				background-color:darkgray; text-align: center; 
				padding-top: 5px; position: relative;
				z-index: 50; top: 30px;">
		
		<?php
			echo "<img src='images/images_profile_photo/".$row['photo']."' alt='image not found' height='150px' width='150px' />";
		?>
	
	<br>
	<br>
	Set New Profile Picture:
	<input type="file" name="file_photo" />
	<br><br>
	<input type="submit" name="btn_submit" value="Upload Profile Picture"
	style="height: 46px; width: 99%; background-image:url('btn_bg.png');
		color: white; font-size: 12px; font-weight: 900;" />
	<br><br>
	<input type="submit" name="btn_profile" value="Go to Profile Page"
	style="height: 46px; width: 100%; background-image:url('btn_bg.png');
		color: white; font-size: 12px; font-weight: 900;" />
	</div>
	<br><br><br><br><br><br>
	<br><br><br><br><br><br>
		
</div>
</center>
</form>
<?php
	//include("footer.php");
?>
</body>