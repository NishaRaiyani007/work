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
		move_uploaded_file($_FILES['cover_photo']['tmp_name'],"images/images_cover_photo/".$_FILES['cover_photo']['name']);
		$cover_photo=$_FILES['cover_photo']['name'];
		
		$old_cover_photo = $row['cover_photo'];
		$update_old = "update `tina`.`user` set old_cover_photo='".$old_cover_photo."' where id='".$row['id']."'";
		$update = "update `tina`.`user` set cover_photo='".$cover_photo."' where id='".$row['id']."'";
		
		
		mysql_query($update_old);
		mysql_query($update);
		header("Location: change_cover_photo_02.php");
	}
		
	
?>
<body bgcolor="#C893FF">
<form method="post" enctype="multipart/form-data">
<font size="5">
This is your current Cover Photo
</font>
<br><br>
	<div id="dvCoverPhoto" style="width:100%; height:200px; 
				background-color:red; text-align: center; padding: 10px;
				z-index: 10;">
		<?php
			echo "<img src='images/images_cover_photo/".$row['cover_photo']."' alt='image not found' height='200px' width='98%' />";
		?>
	<br>
	<br>
	Set New Cover Photo:
	<input type="file" name="cover_photo" />
	<br><br>
	<input type="submit" name="btn_submit" value="Upload Cover Photo"
	style="height: 46px; width: 30%; background-image:url('btn_bg.png');
		color: white; font-size: 16px; font-weight: 900;" />
	<br><br>
	<input type="submit" name="btn_profile" value="Go to Profile Page"
	style="height: 46px; width: 30%; background-image:url('btn_bg.png');
		color: white; font-size: 12px; font-weight: 900;" />
	</div>
</font>
	</form>
<?php
	//include("footer.php");
?>
</body>