<?php include("slider.php");?>  
</br>
  <font color="#000033" size="+2">  <font size="+3">Case Payment</font></br></br>
        
<script language="javascript">
function check()
{
  //var net=document.getElementsByName("t1");
var b1=document.getElementsByName("b1");

  if(b1[0].checked)
  {
    document.f1.action="cashpay.php";
    document.f1.submit();
  }
  else if(b1[1].checked)
  {
    document.f1.action="craditpay.php";
    document.f1.submit();
  } 
else
{
	alert("please choose any payment method");
}

}
</script>

<?php
$total=$_GET['h1'];
//echo $net;

echo "<form name='f1' action='#' method='GET'>";
//echo $net;
echo "<input type='checkbox' name='c1'>"."<font  style='Italic Bold' size=5>I agree to pay <b><u>Rs.";
echo $total;
echo "</u></b> in cash when the order is delivered to the shipping address";echo "</font>";
echo "<br><br><input type='button' value='CONFIRM ORDER' onClick='check();'>";

?>
  
          </div>
                </div>
    </font>
	</br></br>
      <?php include("footer.php");?>
     
<script language="javascript">
function check(){
var c1=document.getElementsByName("c1");
//alert(b1[0].checked);
if(c1[0].checked)
{
	
		document.f1.action="cmsg.php";
	
		document.f1.submit();
	
}


else
{
	alert("please click on checkbox");
}
}
</script>
<?php
echo "<form>";
include("connection.php");
$d="delete from order1";
mysql_query($d,$con)or die("can't delete");
?>