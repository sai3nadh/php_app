
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
$sql = "SELECT `preference`, `pref_value` FROM `preferences`";


$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('preference'=>$row[0],
'pref_value'=>$row[1]
));
}
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>
