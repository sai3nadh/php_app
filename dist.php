
<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
$sql = "select `Did`,`St.no`, `distname` from district";


$res = mysqli_query($con,$sql);
 
$result = array();
while($row = mysqli_fetch_array($res)){
array_push($result,
array('Did'=>$row[0],
'St.no'=>$row[1],
'distname'=>$row[2]
));
}
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>

