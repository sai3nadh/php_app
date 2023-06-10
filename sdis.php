<?php 

define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
$id=$_REQUEST['id'];
	

$res = mysqli_query($con,"SELECT  `s_id`, `user_name`, `tech_wrk`, `nontech_wrk` FROM   `registration_student`  where `user_name` = '$id' ");//s_id DESC LIMIT 20");

//$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('s_id'=>$row[0],
'user_name'=>$row[1],
'tech_wrk'=>$row[2],
'nontech_wrk'=>$row[3]
));
}

$rs = mysqli_query($con,"SELECT profile_score.s_id, profile_score.category, category_questns.c_name,.profile_score.percentage FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id where profile_score.s_id=(SELECT  `s_id` FROM   `registration_student`  where `user_name`='$id' )");
//SELECT `s_id`, `category`, `percentage` FROM `profile_score` WHERE `s_id`=$id");//s_id DESC LIMIT 20");

//SELECT profile_score.s_id, profile_score.category, category_questns.c_name,.profile_score.percentage FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id where profile_score.s_id=$id
//$result = array();
while($row = mysqli_fetch_array($rs)){
array_push($result,
array(
//'s_id'=>$row[0],
//'user_name'=>$row[1],
'c_name'=>$row[2],
'percentage'=>$row[3]
));
}

//c_name	percentage




 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);

?>