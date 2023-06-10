
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
//$sql = "SELECT `c_id`, `c_name` FROM `category_questns`";
$sid=$_REQUEST['sid'];
	
//$sql = "SELECT profile_score.s_id,profile_score.category, category_questns.c_name FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id where profile_score.s_id=(SELECT `s_id`  FROM `registration_student` WHERE `user_name`= '$getsid' or `mobile`= '$getsid')";
$sql = "SELECT profile_score.s_id,profile_score.category, category_questns.c_name FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id where profile_score.s_id=(SELECT `s_id`  FROM `registration_student` WHERE `user_name`= '$sid' or `mobile`= '$sid')";


$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('s_id'=>$row[0],
'category'=>$row[1],
'c_name'=>$row[2],
));
} 

$sql = "SELECT `techQ_id`,`tech_cat` FROM `tech_ques`";

$res = mysqli_query($con,$sql);
 
$result1 = array();
while($row = mysqli_fetch_array($res)){
array_push($result1,
array('techQ_id'=>$row[0],
'tech_cat'=>$row[1],
));
} 



//echo json_encode(array("result"=>$result,"result1"=>$result1));
echo json_encode(array("result"=>$result));
mysqli_close($con);
 
?>

