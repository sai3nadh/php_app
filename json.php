<?php
define('HOST','localhost');
define('USER','stock');
define('PASS','stock');
define('DB','aa');
 
$con = mysqli_connect(HOST,USER,PASS,DB);
 
$sql = "select * from Persons";
 
$res = mysqli_query($con,$sql);
 
$result = array();
 
while($row = mysqli_fetch_array($res)){
array_push($result,
array('id'=>$row[0],
'name'=>$row[1],
'address'=>$row[2]
));
}
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>