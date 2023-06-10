<?php
	$host='localhost';
	$uname='root';
	$pwd='';
	$db="profile_score";
	$con = mysql_connect($host,$uname,$pwd) or die("connection failed");
	mysql_select_db($db,$con) or die("db selection failed");
	$name=$_REQUEST['name'];
	$email=$_REQUEST['email'];
	$pwd='';//$_REQUEST['pwd'];
$mob=$_REQUEST['mob'];
$ci='';//$_REQUEST['ci'];
$ss='';//$_REQUEST['ss'];
$rand=$_REQUEST['rand'];


	$flag['code']=0;

$valid=mysql_query("select * from login where `user_name`='$email' ",$con);

$data = mysql_fetch_array($valid, MYSQLI_NUM);

      
                  if(  $res=mysql_query("insert into login values('$email','$mob','$rand','1') ",$con))
                    {
              
		   if($e=mysql_query("insert into registration_student ( `user_name`, `name`,  `mobile`,  `State`, `city`)values('$email','$name','$mob','$ci','$ss') ",$con))

		   {
			$flag['code']=1;
			echo "hi";
		     }
               // echo "a";
	         }
else
       {
echo "user exis";

       }


		mysql_close($con);
?>