 ***CONNECTION WHITH MY SQL AND DATABASE***
//=========connect with mysqli and db
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "teacher";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);

 ***TABLE FOR NAME,EMAIL,CONTACT,PASSWORD,SUBMIT*** 
<html>
<body>
<form method="post" action="insert.php">
  Name: <input type="text" name="name"> <br/>
  email: <input type="text" name="email"> <br/>
  contact: <input type="text" name="contact"> <br/>
  password: <input type="text" name="password"> <br/>
  <input type="submit"> 
</form>
</body>
</html>  

***LINk FOR LOGIN AND REGISTER***
<html>  
<body>  
<a href="login.php">Login</a>  
<br/><br/><br/>
<a href="register.php">register</a>
</body> 
</html>  

***FORM TO DATABASE ANTRY***
<?php
include("db_config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {  
   $name = $_POST['name'];
   $email = $_POST['email'];
   $contact = $_POST['contact'];
    if (empty($name . $email . $contact)) {
      echo "Name is empty";
    } else {
      echo $name . "<br/>" . $email . "<br/>" . $contact . "<br/>";
     }
    $sql = "INSERT INTO student (name, email,contact)
    VALUES ('$name','$email','$contact')";
    if ($conn->query($sql) === TRUE) {
      echo "new record created successfully";
   } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
   }
   $conn->close();
   }
   ?>     
    
***TABLE FROM COL AND ROW IN PRINT NAME,EMAIL,CONTACT,PASSWORD*** 
<html>
<body>
<style>
              table, th, td {
              border: 1px solid black;
              border-collapse: collapse;
            }
            td{
                width: 200px;
            }
            </style>
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  <!-- Name: <input type="text" name="name" class="input1"> <br/>
  email: <input type="text" name="email" class="input1"> <br/>
  contact: <input type="text" name="contact" class="input1"> <br/>
  number: <input type="text" name="number" class="input1"> <br/>
  message: <input type="text" message="message" class="input1"> <br/> -->
  <table>
                <tr>
                  <td>Name</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Email</td>
                   <td></td>
                </tr>
                <tr>
                  <td>Contact</td>
                   <td></td>
                <tr>
                  <td>Number</td>
                   <td></td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td></td>
                </tr>
              </table>
  <input type="submit"> 
</form>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $contact = $contact['contact'];
  $number = $_number['number'];
  $message = $_message['message'];
  if (empty($name.$email.$contact.$number.$message)) {
    echo "Name is empty";  
  } else {    
    echo $name.$email.$contact.$number.$message;      
  }     
}                  
?>        
</body>
</html> 

***TABLE - 1 TO 100***
<?php
$num = 10;
for($i = 1; $i <= 10; $i++)
{	
    echo "<br/>";
	
	for($j =1; $j <= $num; $j++)
	{
		$multiplication_table = ($i * $j);
		echo "<br>$j  x $i =  $multiplication_table <br/>";
	}
	echo "<br/>";
}
?>
</table>

*** IF LOOP IN CHACK FOR FRUIT NAME ***
<?php
$fruit_1 = 'banana';
$fruit_2 = 'apple';
$fruit_3 = 'mango';

$fruit = "banana";
if ($fruit_1 == $fruit) {
echo '$fruit_1 is banana' . "\n";
}
else {
echo '$fruit_1 is not banana' . "\n";
}
?>

***CHACK NUMBER FOR ODD AND EVEN***
<?php
$number = 11;
if($number % 2 == 0){
    echo "Even"; 
}
else{
    echo "Odd";
}
?>  

*** MARK.PL.POOR.AVERAGE.GOOD.EXILENT ***
<?php
$hindi = 65;
$gujrati = 45;
$english = 80;
$science = 74;
$number = ((65 + 45 + 80 + 74) * 100) / 400;
      echo $number = 66;
if ($number > 25 && $number < 51)
    echo "poor <br/>";
elseif ($number > 50 && $number < 76)
    echo "average <br/>";
elseif ($number > 75 && $number < 80)
    echo "good <br/>";
elseif ($number > 80)
    echo "exilent <br/>";
else                  
?>

***CREAT TABLE IN DATABASE***
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "teacher";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// sql to create table
$sql = "CREATE TABLE Mystudent (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";     
if ($conn->query($sql) === TRUE) {
  echo "Table Mystudent created successfully";
} else {
  echo "Error creating table: " . $conn->error;
}
$conn->close();
?>

***1 TO 100 FOR ODD YA EVEN***
<?php
$number = 100;
for ($a = 1; $a <= $number; $a++) {
    echo $a . '<br>';
if ($a % 2 == 0) {
        echo "even";
    } else {
        echo "odd";
    }
  }
?>  

***100 TO 1 ULTA PRINT***
<?php
 $number = 0;
 for ($a = 100; $a > $number;$a--) {
     echo $a . '<br>';
 }
?>   

***TABLE FOR 1 TO 1***
<?php
for($a = 1; $a <= 10; $a++)
{	
    echo "<br/>";
	
	for($b =1; $b <= 1; $b++)
	{
		$table = ($a * $b);
		echo "$a x $b = $table <br/>";
	}
}
?>

***TABLE FOR SUBMIT BUTTON IN OUTPUT TABLE***
<html>
<body>
        <form method="POST">
            <input type="text" name="number">
            <input type="Submit">  
        </form>
</body>
</html>
<?php
if($_POST)
{
    $num = $_POST["number"];
    for ($i = 1; $i <= 10; $i++)
    {
        echo "$num" ."*". "$i" . " = " . $num * $i . "</br>";
    }
}
?>

***DATABASE IN ENTRY FOR NAME...MESSAGE TO NOT PRINT SECOND TIME SAME EMAIL***
require("db_connect.php"); 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $contact = $_POST['contact'];
    $message = $_POST['message'];

    if( empty( $name ) ) {
        echo "Name is must be required";
        die;
    }
    if( empty( $email ) ) {
        echo "Email is must be required";
        die;
    }
    if( empty( $contact ) ) {
        echo "Contact is must be required";
        die;
    }
    if( empty( $message ) ) {
        echo "Password is must be required";
        die;
    }
    $sql = "SELECT * FROM student WHERE email='".$email."'";
    $result = $conn->query($sql);

    if( $result->num_rows > 0 ) {
        echo "Email already exist! Please try with new one.";
        die;
    } else {
        $sql = "INSERT INTO student (name,email,contact,password)
        VALUES ('$name','$email','$contact','$password')";

        // print_r($sql);
        // die;

         if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}
?>

***DATABASE MA ONE TIME MAIL SEND THAY SAIM MAIL SECOND TIME NA THAY SEND***
$sql = "SELECT * FROM student WHERE email='". $email."'";
           $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "Email already exist! Please try new.";
            die;
        } else {
            $sql = "INSERT INTO student (name,email,contact,password,message)
            VALUES ('$name','$email','$contact','$password','message')";


***CREAT TABLE***
CREAT TABLE student(
  id INT(6) AUTO_INCREMENT PRIMARY KEY,
  friestname varchar(30)  NOT NULL,
  lastname varchare(20) NOT NULL,
)
***INSERT DATA***
INSERT INTO table_name (column1....column2...colum3)
VELUES (velues1, values2, values3...)
$sql = "INSERT INTO student (name,email,)
VALUES ('$name','$email')";

***SELECT DATA***
SELECT * FROM table_name
$sql = "SELECT * FROM student";

***WHERE***
SELECT column_name FROM table_name WHERE column_name
$sql = "SELECT * FROM student WHERE email='".$email"'; 

***DELETE DATA***
DELETE FROM table_name WHERE some_column = some_value
$sql = "DELETE FROM student WHERE name=2";

***one time enter not second time email,password for database***
include("db_config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];
   if (isset($_POST['submit'])) {
       if (isset($email) && isset($password)) {
            $sql = "SELECT * FROM student WHERE email='" . $email . "' AND password='" . $password . "'";
            $result = $conn->query($sql);
                if($result->num_rows > 0){
                        echo "login sucsessfully";
                } else{
                        echo "not found";
                }
            } 
         }
         }
  
***SESSION SET***
$_SESSION["login"] = "true";
 } else{
 }   
 
***SESSION CHACK***
 session_start();
if (isset($_SESSION["login"])){
    header("Location: home.php");
}

***SESSION UNSET***
session_start();
unset($_SESSION["login"]);
header("Location: login.php");

***FORM NA DATA FORM MA PRINT THAY***
include("db_config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

if (isset($_POST['submit'])) {
if (isset($email) && isset($password)) {
$sql = "SELECT * FROM student WHERE email='" . $email . "' AND password='" . $password . "'";
$result = $conn->query($sql);
                
if($result->num_rows > 0){

//for($row=0; $row<=$result->num_rows; $row++){
while($row = $result->fetch_assoc()) {
echo "<br/> ". $row["email"]. "<br/>" . $row["password"] . "</br>";
//echo "<br/>" . $email . "<br/>" . $password."<br/>";
$_SESSION['user_id'] = $row["id"];
  }
}        
  }    
echo "sucsessfully";
} else{
echo "not found";
}
} 

***DB IN ENTRYDATA SESSION SET,GATE AND LOGIN PAGE***
// set set session
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>home page</h1>
    <a href="logout.php">Logout</a>
</body>
</html>
<?php
  session_start();
  if(!isset($_SESSION["login"])){
      header("location: login.php");
  }
  ?>
***SESSION GATE***
<?php
session_start();
include("db_config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];
     if (isset($_POST['submit'])) {
        if (isset($email) && isset($password)) {
            $sql = "SELECT * FROM student WHERE email='" . $email . "' AND password='" . $password . "'";
            $result = $conn->query($sql);
              if ($result->num_rows > 0) {
                $_SESSION["login"] = "true";
                 } else{
                }
           }
         }
     }
?> 
***LOGIN***
<html>
<body>
     <style>
              .input1{
                margin-bottom:10px;
              }
    </style> 
<form method="post" action="desbord.php">
  email: <input type="text" name="email" class="input1"> <br/>
  password: <input type="text" name="password" class="input1"> <br/>
  <input type="submit" name="submit"> 
  </form> 
 </body> 
 </html>
<?php
session_start();

    if (isset($_SESSION["login"])){
    header("Location: home.php");
  }  
?>
***LOGOUT***
<?php
session_start();
unset($_SESSION["login"]);
header("Location: login.php");
?>

***SESSION TO ID GATE***
session_start();
include("db_config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = $_POST['email'];
    $password = $_POST['password'];

    if (isset($_POST['submit'])) {

        if (isset($email) && isset($password)) {
            $sql = "SELECT * FROM student WHERE email='" . $email . "'AND password='" . $password . "'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {

                    $_SESSION["id"] = $row["id"];

                    echo "<br/>" . $_SESSION["id"] . "<br/>";
                }
                } else {
                echo "Not Found";
            }
        }
    }
} 

***SESSION WHITH ID TO GATE DATA PRINT***
session_start();
include("db_config.php");

$id = $_SESSION['id'];
     echo "<br/>". $_SESSION["id"]."<br/>"."<br/>";
if (isset($_SESSION['id'])) {
     $sql = "SELECT id, name, email,contact,password,message FROM student WHERE id= $_SESSION[id]";
     $result = $conn->query($sql);
if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
     echo "".$row["name"]."</br>".$row["email"]."</br>".$row["contact"]."</br>".$row["password"]."</br>".$row["message"]."<br>";
          }
     } else {
    }
  }

***SESSION WHITH DATA PRINT IN TABLE***
session_start();
include("db_config.php");
$id = "";
$name = "";
$email = "";
$contact = "";
$password = "";
$message = "";

     $id = $_SESSION['id'];
     
if (isset($_SESSION['id'])) {
    $sql = "SELECT id, name, email,contact,password,message FROM student WHERE id= $_SESSION[id]";
     $result = $conn->query($sql);
       if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {
          $name = $row["name"];  
          $email = $row["email"];
          $contact = $row["contact"];
          $password = $row["password"];
          $message = $row["message"];     
     }
          }

     } else {
      
     }
?>
<html>
<body>
<style>
              .input1{
                margin-bottom:10px;
              }
</style>
<form method="post" action="edit.php">
  id: <input type="text" name="name" class="input1" value="<?php echo $id; ?>"> <br/>   
  Name: <input type="text" name="name" class="input1" value="<?php echo $name; ?>"> <br/>
  email: <input type="text" name="email" class="input1" value="<?php echo $email; ?>"> <br/>
  contact: <input type="text" name="contact" class="input1" value="<?php echo $contact; ?>"> <br/>
  password: <input type="text" name="password" class="input1"value="<?php echo $password; ?>"> <br/>
  message: <input type="text" name="message" class="input1"value="<?php echo $message; ?>"> <br/>
</form>
</body>
</html>

***UPDATE DATA IN DATABASE***
 session_start();
 include("db_config.php");
 $name = $_POST['name'];
 $email = $_POST['email'];
 $contact = $_POST['contact'];
 $password = $_POST['password'];
 $message = $_POST['message'];

$id = $_SESSION['id'];
   echo "<br/>". $_SESSION["id"]."<br/>";
if (isset($_SESSION['id'])) {
 $sql = "update student set name='$name',email='$email',contact='$contact',password='$password',message='$message' where id='$id'";
 $result = $conn->query($sql);

if (isset($_SESSION['id'])=== TRUE) {
    echo "updated successfully ";
} 
   }

***DATABASE NA ALL DATA PRINT***  
session_start();
include("db_config.php");
       $id = $_SESSION['id'];    
$sql = "SELECT  id,name,email,contact,password,message FROM student" ;    
$result = $conn->query($sql);
    if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
    echo"<br>".$row["id"]."<br/>"."".$row["name"]."<br/>"."".$row["email"]."<br/>"."".$row["contact"]."<br/>"."".$row["password"]."<br/>"."".$row["message"]."<br>";       
            }
} 

***DATABASE ALL DATA PRINT IN TABLE***
<html>
<body>
<style>
    table{
        margin-top:20px;    
    }
table, th,td {
    border: 1px solid black;
  border-collapse: collapse;
} 
</style> 
<table>
            <tr>
                <th>Id</th>
                <th>name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Password</th>
                <th>message</th>
            </tr>
session_start();
include("db_config.php");
$id = "";
$name = "";
$email = "";
$contact = "";
$password = "";
$message = "";   

     //$id = $_SESSION['id']; 
$sql = "SELECT  id,name,email,contact,password,message FROM student" ;    
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
   // echo "<br>" . $row["id"] . "<br/>" . "" . $row["name"] . "<br/>" . "" . $row["email"] . "<br/>" . "" . $row["contact"] . "<br/>" . "" . $row["password"] . "<br/>" . "" . $row["message"] . "<br>";
    $id = $row["id"];
    $name = $row["name"];
    $email = $row["email"];
    $contact = $row["contact"];
    $password = $row["password"];
    $message = $row["message"];
for ($i = 1; $i < $result->num_rows; $i++) { ?>
      <tr>
      <td><?php echo $id; ?></td>
      <td><?php echo $name; ?></td>
      <td><?php echo $email; ?></td>
      <td><?php echo $contact; ?></td>
      <td><?php echo $password; ?></td>
      <td><?php echo $message; ?></td> 
    </tr>  
   <?php }
  }
}
?>
</table>                                       
</body>
</html> 
    

 





