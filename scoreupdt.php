
<?php
	$host='localhost';
	$uname='root';
	$pwd='';
	$db="profile_score";
	
	$con = mysql_connect($host,$uname,$pwd) or die("connection failed");
	mysql_select_db($db,$con) or die("db selection failed");
		 
	$getsid=$_REQUEST['sid'];
	$cid=$_REQUEST['cid'];
	$qid=$_REQUEST['qid'];
	$atmpt=$_REQUEST['atmpt'];
	$crct=$_REQUEST['crct'];
	$per=$_REQUEST['per'];



$getid = mysql_query("SELECT `s_id`  FROM `registration_student` WHERE `user_name`= '$getsid' or `mobile`= '$getsid'  " ,$con);

$checksid = mysql_fetch_array($getid);
$sid= $checksid[0];

if(isset($checksid)){
//echo $sid;
}





$res = mysql_query("SELECT `id`, `percentage` FROM `stu_quiz_score` WHERE `sid`=$sid and `qz_id`=$qid and  `category_id`=$cid " ,$con);

$check = mysql_fetch_array($res);
$stuqid= $check[0];
 $value = $check[1];
echo $stuqid;
 echo $value;
if(isset($check)){
//echo $value;
}

if($value > 0 )
{
	echo "fsdf";
	if( $value > $per )
	{
		echo "previous marks are higher no update";
		
	}
	else if( $value < $per )
	{
		echo "sdf";
		if($r=mysql_query("UPDATE `stu_quiz_score` SET `percentage`=$per WHERE `id` = $stuqid" ,$con))
		{
			if($e=mysql_query("UPDATE `stu_quiz_level_score` SET `attempted`=$atmpt,`correct_ans`=$crct WHERE `id`= $stuqid",$con))
			{
				$flag['code']=1;
				echo "hi";
			}
		}
		
		$verify = mysql_query("SELECT count(`qz_id`) FROM `stu_quiz_score` WHERE `sid`=$sid and `category_id`=$cid " ,$con);

		    $count = mysql_fetch_array($verify);
		    $valuec = $count[0];
		    if(isset($count)){
		    echo $valuec;
	
			}
			$prvscore = mysql_query("SELECT  `percentage` FROM `stu_quiz_score`  WHERE `sid`=$sid and `category_id`=$cid and `qz_id`=$qid " ,$con);

		    $countp = mysql_fetch_array($prvscore);
		    $prvscr = $countp[0];
		  //  echo "prv score ";
		   // echo $prvscr;
		    if(isset($countp)){
		    echo $valuec;
	
			}
			$updtval = (( $valuec * $prvscr ) + $per - $prvscr) / ($valuec );
			echo $updtval;
			
			if($e=mysql_query("UPDATE `profile_score` SET `percentage`=$updtval WHERE `s_id`=$sid and `category`= $cid",$con))
				{
					$flag['code']=1;
					echo "hi";
				}
		
	}
	
}

else if($value == "" )
{
	if($r=mysql_query("INSERT INTO `stu_quiz_score`( `sid`, `qz_id`, `category_id`, `percentage`) VALUES ($sid,$qid,$cid,$per)" ,$con))
	{
		
		if($e=mysql_query("INSERT INTO `stu_quiz_level_score`(`id`, `attempted`, `correct_ans`) VALUES ('(SELECT `id` FROM `stu_quiz_score` WHERE `sid`=$sid and `qz_id`=$qid and `category_id`=$cid )', '$atmpt' , '$crct')",$con))
		{
			$flag['code']=1;
			echo "hi";
		}
	}



	$verify = mysql_query("SELECT  `percentage` FROM `profile_score` WHERE `s_id`=$sid and  `category`=$cid " ,$con);

		$check1 = mysql_fetch_array($verify);
		 $value = $check[1];
		if(isset($check1)){
		echo $value;
		}

		if($value == "" )
		{

		if($e=mysql_query("INSERT INTO `profile_score`(`s_id`, `category`, `percentage`) VALUES ($sid, $cid, $per))",$con))
				{
					$flag['code']=1;
					echo "hi";
				}
		    }
		else
		{
			
			
			$prvscore = mysql_query("SELECT count(`qz_id`) FROM `stu_quiz_score` WHERE `sid`=$sid and `category_id`=$cid " ,$con);

		    $count = mysql_fetch_array($prvscore);//..... verif changed
		    $valuec = $count[0];
		    if(isset($count)){
		    echo $valuec;
	
			}
			$updtval = (( $value * $valuec ) + $per ) / ($valuec + 1);
			if($e=mysql_query("UPDATE `profile_score` SET `percentage`=$updtval WHERE `s_id`=$sid and `category`= $cid",$con))
				{
					$flag['code']=1;
					echo "hi";
				}
			
		}


}

	mysql_close($con);
?>
