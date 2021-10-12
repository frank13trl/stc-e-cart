<?php

session_start();

include("includes/db.php");

?>
<!DOCTYPE HTML>
<html>

<head>

<title>Seller Login</title>

<link rel="stylesheet" href="css/bootstrap.min.css" >

<link rel="stylesheet" href="css/login.css" >

</head>

<body style="background-image: url('other_images/loginbg.jpg'); background-size: cover;">

<div class="container" ><!-- container Starts -->

<form class="form-login" action="" method="post" ><!-- form-login Starts -->

<h2 class="form-login-heading" >Seller Login</h2>

<input type="text" class="form-control" name="admin_email" placeholder="Seller id" required >

<input type="password" class="form-control" name="admin_pass" placeholder="Password" required >

<button class="btn btn-lg btn-primary btn-block" type="submit" name="Seller_login" >

Log in

</button>

<div style="text-align: center;">

<br/>New seller? <a href="../seller_register.php"> Click here</a> to register

</div>

<div style="text-align: center;">

<br/>Go back to <a href="../index.php"> E-Cart</a>

</div>

</form><!-- form-login Ends -->

</div><!-- container Ends -->



</body>

</html>

<?php

if(isset($_POST['Seller_login'])){

$seller_id = mysqli_real_escape_string($con,$_POST['admin_email']);

$admin_pass = mysqli_real_escape_string($con,$_POST['admin_pass']);

$get_admin = "select * from seller where Seller_id='$seller_id' AND Seller_pass='$admin_pass' AND confirm='1'";

$run_admin = mysqli_query($con,$get_admin);

$count = mysqli_num_rows($run_admin);

if($count==1){

$_SESSION['seller']=$seller_id;

echo "<script>alert('You are Logged in into Seller panel')</script>";

echo "<script>window.open('index.php?dashboard','_self')</script>";

}
else {

echo "<script>alert('Email or Password is Wrong')</script>";

}

}

?>