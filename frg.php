
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
  $uname=$_REQUEST['uname'];
$sql = " SELECT  `mobile`  FROM `login` WHERE `user_name`= '$uname' or `mobile`= '$uname'";


$res = mysqli_query($con,$sql);
 
$result = array();
$row = mysqli_fetch_array($res);
$value=$row[0];
//echo $value;
 echo "hi";
//echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>



