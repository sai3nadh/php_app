
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
// $sid=$_REQUEST['sid'];
$sql = "SELECT * FROM `cat_mast` WHERE 1";

$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('cat_id'=>$row[0],
'cat_name'=>$row[1]
));
} 

$sql = "SELECT * FROM `cat_sub_mast` WHERE 1";

$res = mysqli_query($con,$sql);
 
$result1 = array();
while($row = mysqli_fetch_array($res)){
array_push($result1,
array('c_id'=>$row[0],
'cat_id'=>$row[1],
'cat_name'=>$row[2]
));
} 

//$sql = "SELECT * FROM `quiz_mast` WHERE 1";
$sql = "SELECT q.`qz_id`, qn.`qz_name`, q.`c_id`, q.`status` FROM `quiz_mast` q, Quiz qn WHERE q.`Quiz`=qn.qz_id order by qn.`qz_id`";
$res = mysqli_query($con,$sql);
 
$result2 = array();
while($row = mysqli_fetch_array($res)){
array_push($result2,
array('qz_id'=>$row[0],
'qz_name'=>$row[1],
'c_id'=>$row[2]
));
} 

//SELECT * FROM `stu_quiz_score` WHERE 1`sid`=()

$sql = "SELECT * FROM `stu_quiz_score` WHERE `sid`=(SELECT `s_id`  FROM `registration_student` WHERE `user_name`= 'sai' or `mobile`= 'sai' )";

$res = mysqli_query($con,$sql);
 
$result3 = array();
while($row = mysqli_fetch_array($res)){
array_push($result3,
array('qz_id'=>$row[2],
'category_id'=>$row[3],
'percentage'=>$row[4]
));
} 

$sql = "SELECT * FROM `profile_score` WHERE `s_id` =(SELECT `s_id`  FROM `registration_student` WHERE `user_name`= 'sai' or `mobile`= 'sai' )";

$res = mysqli_query($con,$sql);
 
$result4 = array();
while($row = mysqli_fetch_array($res)){
array_push($result4,
array('category_id'=>$row[2],
'percentage'=>$row[3]
));
} 

// `category`, `percentage`

echo json_encode(array("result"=>$result,"result1"=>$result1,"result2"=>$result2,"result3"=>$result3,"result4"=>$result4));




mysqli_close($con);


 
?>

