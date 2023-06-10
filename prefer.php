<?php
	$host='localhost';
	$uname='root';
	$pwd='';
	$db="profile_score";
	
	$con = mysql_connect($host,$uname,$pwd) or die("connection failed");
	mysql_select_db($db,$con) or die("db selection failed");
	 
	$name=$_REQUEST['name'];
	$value=$_REQUEST['value'];

	$flag['code']=0;
//$r=mysql_query("INSERT INTO `student_pref`(`s _id`, `pref`) VALUES ((SELECT `s_id` FROM `registration_student` WHERE `user_name`='$name'),'$value') ",$con);
//$check = mysqli_fetch_array($r);

//$sql = "select * from users where username='$id' and password='$name'";

if($res = mysql_query("INSERT INTO `student_pref`(`s _id`, `pref`) VALUES ((SELECT `s_id` FROM `registration_student` WHERE `user_name`='$name'),'$value') ",$con))
{
echo "hi";
}
else
{
echo "no response";
}

//$check = mysql_fetch_array($res);
 //$value = $check[0];
//if(isset($check)){
//
//			$flag['code']=1;
//		echo "hi";
//echo $value;
//if($value==null)

//{
//echo "hi";// "invalid user";
//}

//	}
//else
//{
//echo "hi";//invalid user";
//}
	

	mysql_close($con);
?>