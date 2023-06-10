<?php 

define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);

$res = mysqli_query($con,"SELECT  `s_id`, `user_name`, `tech_wrk`, `nontech_wrk` FROM   `registration_student` ");//s_id DESC LIMIT 20");

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
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);

?>