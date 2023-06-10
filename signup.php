<?php
	$host='localhost';
	$uname='root';
	$pwd='';
	$db="profile_score";

	$con = mysql_connect($host,$uname,$pwd) or die("connection failed");
	mysql_select_db($db,$con) or die("db selection failed");
	 
	$name=$_REQUEST['name'];
	$email=$_REQUEST['email'];
	$pwd=$_REQUEST['pwd'];
	$flag['code']=0;

	if($r=mysql_query("insert into login values('$email','$pwd',1) ",$con))
	{
		if($e=mysql_query("insert into registration_student ( `user_name`, `name`, `lastname`)values('$email','$name','$pwd') ",$con))
		{
			$flag['code']=1;
			echo "hi";
		}
	}
else
{}
	

	mysql_close($con);
?>