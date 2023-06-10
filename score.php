
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
//$sql = "SELECT profile_score.s_id, profile_score.category, category_questns.c_name, profile_score.percentage FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id where profile_score.s_id=1";
$sql = "SELECT profile_score.s_id, profile_score.category, cat_sub_mast.c_name, profile_score.percentage FROM profile_score LEFT JOIN cat_sub_mast ON profile_score.category= cat_sub_mast.c_id where profile_score.s_id=1";
//SELECT `s_id`,`category`,AVG(`percentage`) as avgper FROM `profile_score` group by `category`";

//SELECT profile_score.s_id, profile_score.category, category_questns.c_name, profile_score.percentage FROM profile_score LEFT JOIN category_questns ON profile_score.category= category_questns.c_id


$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('s_id'=>$row[0],
'c_name'=>$row[2],
'avgper'=>$row[3]
));
}
 
echo json_encode(array("result"=>$result));
// echo "hi";
mysqli_close($con);
 
?>

