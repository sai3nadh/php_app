<?php
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','profile_score');
 

$con = mysqli_connect(HOST,USER,PASS,DB);
 
$c=$_REQUEST['c'];
$c1=$_REQUEST['c1'];
	
if($c == 1){
$sql = "select * from questions where qid in (select distinct(qid) from questions where `c_id`=$c1) ORDER BY rand() limit 5";

}
else if($c==2)
{
$sql = "select * from question_skill where qid in (select distinct(qid) from question_skill where `c_id`=$c1) ORDER BY rand() limit 5";
}

$res = mysqli_query($con,$sql);
 
$result = array();
 
while($row = mysqli_fetch_array($res)){
array_push($result,
array('qid'=>$row[0],
'qname'=>$row[1],
'op1'=>$row[2],
'op2'=>$row[3],
'op3'=>$row[4],
'op4'=>$row[5],
'answer'=>$row[6]

));
}
 if (!$res) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>