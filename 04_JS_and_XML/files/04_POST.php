<?php
//B1: test POST 
//echo "<h1>AJAX FORM</h1>";
//echo "<pre>";
//print_r($_POST);
//echo "</pre>";

//B2: chuyen sang xml va hien thi len html(04_POST.html)
$user="admin";
$password = "123123";
if(@$_POST['username'] != $user){ //them @ : de ko hien thong bao loi
    $msg_user = "Username khong ton tai";
}else if(@$_POST['password'] != $password){
    $msg_user = "Password khong ton tai";
}
$flag_login = "error";
if(empty($msg_user)){
    $msg_user = "Login thanh cong";
    $flag_login = "ok";
}
//echo"<br/>".$msg_user;
header("Content-type: text/xml");
echo '<?xml version="1.0" encoding="utf-8"?>';
echo '<root>';
echo '<flag>'. $flag_login . '</flag>';
echo '<msg>' . $msg_user . '</msg>';
echo '</root>';

