

<?php include_once("header.php");
$con=mysql_connect("localhost","root","")or die("can't create");

mysql_select_db("mobile")or die("can't select database");
 ?>


<!-- ####################################################################################################### -->
<!-- ####################################################################################################### -->


<br /><br />
<form onsubmit="return val()" name="frm" method="GET" action="login.php">
<center>
Enter email add:  
<input type="text" name="s1"><br/>
Enter password: <input type="password" name="s2"><br/>
<input type="submit" value="sign in">
</center>
</form>

