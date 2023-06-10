
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
$sql = "SELECT `c_id`, `c_name` FROM `category_questns`";

$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('c_id'=>$row[0],
'c_name'=>$row[1],
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



echo json_encode(array("result"=>$result,"result1"=>$result1));
mysqli_close($con);
 
?>

