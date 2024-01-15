<?php 
require_once("includes/config.php");
if(!empty($_POST["UserId"])) {
  $UserId= strtoupper($_POST["UserId"]);
 
    $sql ="SELECT FullName,Status FROM tblusers WHERE UserId=:UserId";
$query= $dbh -> prepare($sql);
$query-> bindParam(':UserId', $UserId, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
foreach ($results as $result) {
if($result->Status==0)
{
echo "<span style='color:red'> User ID Blocked </span>"."<br />";
echo "<b>User Name-</b>" .$result->FullName;
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else {
?>


<?php  
echo htmlentities($result->FullName);
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
}
 else{
  
  echo "<span style='color:red'> Invaid User Id. Please Enter Valid User id .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
}
}



?>
