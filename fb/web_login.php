<?php
	$con = mysql_connect("localhost","root","");
	mysql_select_db("tina");
	if(isset($_POST['btn_login_x'], $_POST['btn_login_y']))
	{
		$username=$_POST['txt_username'];
		$password=$_POST['txt_password'];
		
		$select = "select * from admin_login where username='".$username."' and password='".$password."'";
		$result = mysql_query($select);
		while($row = mysql_fetch_array($result))
		{
			session_start();
			$_SESSION['admin']='admin';
			setcookie(session_id(), 'admin', time()+7200);
			header("Location: admin/admin_home.php");
		}
	}
	mysql_close($con);
?>
<html>
<head>
<title>Smile Buddy</title>
<link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        td
        {
            padding: 5px;
        }
        .txt_width
        {
            width: 180px;
            height: 28px;
            padding: 5px;
            color: gray;
            font-size: large;
        }
        
    </style>
</head>
<body>
	<center>
	<h1>
		<a href="login.php">
		<span>Smile</span>Buddy<small>Gathering Friends</small>
		</a>
	</h1>
	<br>
	<form id="form1" method="post">
    <div>
        <table style="font-size: 32px; border: solid 3px red; border-radius: 15px; 
		        background-image:url('images/wrapper_02.png'); background-repeat: repeat-x;
		        margin-top: 50px; padding: 20px; ">
        <tr>
        <td colspan="2" style="font-size: large; color: Blue; text-align:center">
        <blink>
        <u>
			<span style="font-size:large; color: Blue; 
						font-family: Cambria; font-size: 42px;">
				Admin Login
			</span>
        </u>
        </blink>
        </td>
        </tr>
        <tr>
        <td>
			<span>Username</span>
        </td>
        <td>
			<input type="text" id="txt_username" name="txt_username" class="txt_width" />
        </td>
        </tr>
        <tr>
        <td>
			<span>Password</span>
        </td>
        <td>
			<input type="password" id="txt_password" name="txt_password" class="txt_width" />
        </td>
        </tr>
        <tr>
        <td style="text-align:center;" colspan="2">
			<span id="lbl_msg" name="lbl_msg" 
					style="font-weight: bold; font-size: large; color: red;" />
        </td>
        </tr>
        <tr>
        <td style="text-align:center;" colspan="2">
			<input id="btn_login" name="btn_login" type="image" 
				value="Login" src="images/images_login_logout/login.png" 
				style="	height: 150px; width: 150px;
						margin-bottom:-10px; padding:0px;"  />
            </td>
        </tr>
        
        </table>
        </center>
    </div>
    </form>
</body>
</html>
