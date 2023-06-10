
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 

	$sid=$_REQUEST['sid'];
	$cid=$_REQUEST['cid'];

$sql = "SELECT * FROM `quiz_mast`";
$res = mysqli_query($con,$sql);
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('id'=>$row[0],
'Quiz'=>$row[1]
));
} 

$sql1 = "SELECT count(qz_id) FROM `stu_quiz_score` where sid = (SELECT `s_id`  FROM `registration_student` WHERE `user_name`= '$sid' or `mobile`= '$sid') and `category_id`=$cid " ;
$resul = mysqli_query($con,$sql1);
$result1 = array();
while($row = mysqli_fetch_array($resul)){
array_push($result1,
array('count'=>$row[0]
));
} 


echo json_encode(array("result"=>$result,"result1"=>$result1));
mysqli_close($con);
 
?>

