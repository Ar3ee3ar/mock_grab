<?php /* *** No Copyright for Education (Free to Use and Edit) *** * /
PHP 7.1.1 | MySQL 5.7.17 | phpMyAdmin 4.6.6 | by appserv-win32-8.6.0.exe
Created by Mr.Earn SURIYACHAY | ComSci | KMUTNB | Bangkok | Apr 2018 */ ?>
<?php
require('connect.php');

//$EmployeeID   = $_REQUEST['EmployeeID'];
//$Title		  = $_REQUEST['Title'];
$cus_name		  = $_REQUEST['cus_name'];
$cus_tel		  = $_REQUEST['cus_tel'];
$cus_address	  = $_REQUEST['cus_address'];
//$Cus_district	  = $_REQUEST['district'];
//$Cus_amphur	  = $_REQUEST['amphur'];
//$Cus_province	  = $_REQUEST['province'];
$cus_email	  = $_REQUEST['cus_email'];
$cus_username		  = $_REQUEST['cus_username'];
$cus_password		  = $_REQUEST['cus_password'];

$sql = "
	INSERT INTO customer(Cus_Name,Cus_tel,Cus_address,Cus_email,Cus_username,Cus_password)
	VALUES ('$cus_name','$cus_tel','$cus_address','$cus_email','$cus_username','$cus_password');
	";

$objQuery = mysqli_query($conn, $sql);

if ($objQuery) {
	header("Location: index.php"); 
    exit;
} else {
	echo "Error : Input";
}

mysqli_close($conn); // ปิดฐานข้อมูล
echo "<br><br>";
echo "--- END ---";
?>