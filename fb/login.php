<?php
$con = mysql_connect("localhost","root","");
mysql_select_db("tina");
if(isset($_POST['btn_submit']))
{
	move_uploaded_file($_FILES['file_photo']['tmp_name'],"images/images_profile_photo/".$_FILES['file_photo']['name']);
	move_uploaded_file($_FILES['cover_photo']['tmp_name'],"images/images_cover_photo/".$_FILES['cover_photo']['name']);
	
		$f_name=$_POST['txt_fname'];
		$l_name=$_POST['txt_lname'];
		$email=$_POST['txt_email'];
		$pass=md5($_POST['txt_pass']);
		$gender=$_POST['gender'];
		$city=$_POST['ddl_city'];
		$b_month=$_POST['ddl_month'];
		$b_day=$_POST['ddl_day'];
		$b_year=$_POST['ddl_year'];
		$photo=$_FILES['file_photo']['name'];
		$cover_photo=$_FILES['cover_photo']['name'];
		

		$query = "INSERT INTO `tina`.`user` (`id`, `f_name`, `l_name`, `email`, `password`, `gender`, `city`, `b_month`, `b_day`, `b_year`, `photo`, `cover_photo`) VALUES (NULL, '$f_name','$l_name','$email','$pass','$gender','$city','$b_month','$b_day','$b_year','$photo','$cover_photo')";
		
		mysql_query($query);
}
if(isset($_POST['btn_login']))
{
	$email_login=$_POST['txt_email_login'];
	$pass_login=$_POST['txt_password_login'];
	
	$select = "select * from user where email='".$email_login."' and password='".md5($pass_login)."'";
	$result = mysql_query($select);
	while($row = mysql_fetch_array($result))
	{
		session_start();
		if(isset($_POST["captcha"]) && $_POST["captcha"] != "")
		{
			if($_SESSION["captcha"]==$_POST["captcha"])
			{
				if(isset($_SESSION['views']))
					$_SESSION['views']=$_SESSION['views']+1;
				else
					$_SESSION['views']=1;
					
				$handle = fopen("counter.txt", "r");
				if(!$handle){			
				 echo "could not open the file" ;
				}
				else {
					$counter = (int ) fread($handle,20);
					fclose ($handle);
					$counter++;
					
					$_SESSION['views']=$counter;
					
					$handle = fopen("counter.txt", "w" );
					fwrite($handle,$counter) ;
					fclose ($handle) ;
				}
			
				$_SESSION['id']=$row['id'];
				$_SESSION['user']=$row['f_name'];
				setcookie(session_id(), $row['f_name'], time()+7200);
				header("Location: profile.php");
			}
			else
			{
				$login_msg = 'CAPTHCA is not valid.';
			}
		}
		else
		{
			$login_msg = 'Enter 3 black CAPTHCA code.';
		}
	}
}
mysql_close($con);
?>
<html>
	<head>
		<title>Smile Buddy</title>
	</head>
	<body>
	<form action="login.php" method="post" enctype="multipart/form-data">
	
	<div style="background-color:#336699">
	<table width="100%" style="padding-top: 18px;">
	<tr>
	<td rowspan="2" style="vertical-align:top;">
		<font style="color:white;font-size:46px;margin-left:140px; margin-right:140px; font-family: LilyUPC">Smile Buddy</font>
	</td>
	<td rowspan="1">
		<input type="text" id="txt_email_login"name="txt_email_login" 
				style="padding-left:5px;font-weight:900;font-size:15px;
					font-family:verdana;height:32px;" placeholder="Email or Phone"/>
	</td>
	<td rowspan="1">
		<input type="password" id="txt_password_login" name="txt_password_login"
				style="padding-left:5px;font-weight:900;font-size:15px;
					font-family:verdana;height:32px;" placeholder="password"/>
	</td>
	<td style="width: 100px; text-align:right;">
		<img src="captcha.php" alt="captcha image" height="26px" width="80px">
	</td>
	<td style="width: 100px; text-align:left;">
		<input type="text" name="captcha" size="3" maxlength="3" width="150px">
	</td>
	<td rowspan="1">
		<input type="submit" value="Log In" id="btn_login" name="btn_login" 
				style="width: 100px; height: 32px; font-weight: 900"/>
	</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td colspan="2" style="color: white;">
			<?php
			if(isset($login_msg) && $login_msg != "")
			{
				echo $login_msg;
			}
			?>
		</td>
		<td>&nbsp;</td>
	</tr>
	</table>
	</div>
	<div style="background-image:url('fb_bg_04.jpg'); background-repeat: repeat;
			width: 100%; height: 100%;"> 
		<center>
		<br><br>
			<table width="28%" height="75%"
				style="opacity: 0.9; filter: alpha(opacity=90); 
				padding-top:0px; padding-bottom:10px; background-color: #FAFBFC;" 
				border="0">
				<tr>
					<td style="text-align:center">
						<span style="font-family:'Verdana'">
							<h1>Sign Up</h1>
						</span>
						
						<span style="color: #9197A3; font-weight:bold; font-size:16px;font-family:'Verdana'">
							It's free and always will be.
						</span>
						<br>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 15px;">
						<input type="text" name="txt_fname" placeholder="First Name"
								style="padding-left:5px;font-weight:900;height:32px;
								color: #9197A3;
								font-size:16px;font-family:verdana;width:48%">
						<input type="text" name="txt_lname" placeholder="Last Name"
								style="padding-left:5px;font-weight:900;height:32px;
								color: #9197A3;
								font-size:16px;font-family:verdana;width:48%">
					</td>
				</tr>
					<tr>
						<td style="padding-left: 15px;">
						<input type="text" name="txt_email" placeholder="Email "
								style="color: #9197A3;padding-left:5px;font-weight:900;font-size:16px;
								font-family:verdana;width:97%; margin-bottom: 3px;margin-top: 3px; height: 32px;">	
						</td>
					</tr>
					<tr>
						<td style="padding-left: 15px;">
						<input type="password" name="txt_pass" placeholder="New Password "
								style="color: #9197A3;padding-left:5px;font-weight:900;
								font-size:16px;font-family:verdana;width:97%; height: 32px;">	
						</td>
					</tr>
					<tr>
					<td><table width="100%"><tr>
						<td style="padding-left: 15px; padding-bottom: 3px;">
							<span style="font-size:17px; color:gray; font-weight:900; padding-left:5px;padding-right:5px; font-family:'Verdana'">Birthday</span>
							<select style="width:80px; font-size: 10px; font-family: verdana;" name="ddl_month">
								<option value="month:"> Month</option>
								<option value="jan"> jan</option>
								<option value="feb"> feb</option>
								<option value="mar"> mar</option>
								<option value="apr"> apr</option>
								<option value="may"> may</option>
								<option value="jun"> jun</option>
								<option value="jul"> jul</option>
								<option value="aug"> aug</option>
								<option value="sep"> sep</option>
								<option value="oct"> oct</option>
								<option value="nov"> nov</option>
								<option value="dec"> dec</option>
							</select>	
							<select style="width:50px; font-size: 10px; font-family: verdana;" name="ddl_day">
								<option value="day:"> Day</option>
								<option value="1"> 1</option>
								<option value="2"> 2</option>
								<option value="3"> 3</option>
								<option value="4"> 4</option>
								<option value="5"> 5</option>
								<option value="6"> 6</option>
								<option value="7"> 7</option>
								<option value="8"> 8</option>
								<option value="9"> 9</option>
								<option value="10"> 10</option>
								<option value="11"> 11</option>
								<option value="12"> 12</option>
							</select>	
							<select style="width:60px; font-size: 10px; font-family: verdana;" name="ddl_year">
								<option value="year:"> Year</option>
								<option value="1984"> 1984</option>
								<option value="1985"> 1985</option>
								<option value="1986"> 1986</option>
								<option value="1987"> 1987</option>
								<option value="1988"> 1988</option>
								<option value="1989"> 1989</option>
								<option value="1990"> 1990</option>
								<option value="1991"> 1991</option>
								<option value="1992"> 1992</option>
								<option value="1993"> 1993</option>
								<option value="1994"> 1994</option>
								<option value="1995"> 1995</option>
							</select>	
						</td>
					</tr>
					<tr>
						<td style="padding-left: 15px; padding-bottom: 3px;">
							<span style="font-size:18px; color:gray; font-weight:900; padding-left:5px; font-family:'Verdana'">Gender</span>
						
						<input type="radio" name="gender" value="Female" style="margin-left: 10px; background-color: white"/>  
							<span style="font-size:14px; font-weight:900; font-family:'Verdana'">Female</span>
						<input type="radio" name="gender" value="Male" style="margin-left: 10px"/>  
							<span style="font-size:14px; font-weight:900; font-family:'Verdana'">Male</span>
								
						</td>
					</tr>
					<tr>
						<td style="padding-left: 15px; padding-bottom: 3px;">
							<span style="font-size:17px; color:gray; font-weight:900; padding-left:5px;padding-right:45px; font-family:'Verdana'">City</span>
							<select style="width:80px; font-size: 10px; font-family: verdana;" name="ddl_city">
								<option value="city:"> City</option>
								<option value="Rajkot"> Rajkot</option>
								<option value="Ahmedabad"> Ahmedabad</option>
								<option value="Baroda"> Baroda</option>
								<option value="Surat"> Surat</option>
							</select>
						</td>
					</tr>
				
					<tr>
						<td style="padding-left: 15px; padding-bottom: 3px;">
							<span style="font-size:17px; color:gray; font-weight:900; padding-left:5px;padding-right:25px; font-family:'Verdana'">Photo</span>
							<input type="file" name="file_photo" />
						</td>
					</tr>
					<tr>
						<td style="padding-left: 15px; padding-bottom: 3px;">
							<span style="font-size:17px; color:gray; font-weight:900; padding-left:5px;padding-right:25px; font-family:'Verdana'">Cover Photo</span>
							<input type="file" style="width: 90px;" name="cover_photo" />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
	
					<tr>
						<td style="padding-left: 15px; padding-right: 15px;">
							<hr>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 15px; padding-right: 15px; text-align:center;">
							<input type="submit" name="btn_submit" value="Sign Up"
								style="height: 46px; width: 99%; background-image:url('btn_bg.png');
									color: white; font-size: 20px; font-weight: 900;" />
						</td>
					</tr>
					</table>
					</td>
					</tr>
			</table>
			
		</center>
	</div>
	<div style="background-color: silver; height: 40px;
				margin-top:-18; margin-bottom: -18; padding: 0;">
	  <div style="width: 95%">
	    <p style="text-align:right">Developed By: <a href="#">Priya & Tina</a></p>
	  </div>
	</div>
	<div align=center><a href='#'></a></div>	
</form>
</body>
</html>