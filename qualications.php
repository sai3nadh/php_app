
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
$sql = "select * from qualifiication_cat";


$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('qua_id'=>$row[0],
'qua_name'=>$row[1]
));
}
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>

