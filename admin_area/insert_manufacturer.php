<?php


if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {


?>


<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts -->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / Insert Seller

</li>

</ol><!-- breadcrumb Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"> </i> Insert Seller

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<form class="form-horizontal" action="" method="post" enctype="multipart/form-data"><!-- form-horizontal Starts -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Name </label>

<div class="col-md-6">

<input type="text" name="s_name" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Email </label>

<div class="col-md-6">

<input type="email" name="s_email" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Staff / Student ID Number </label>

<div class="col-md-6">

<input type="text" name="s_id" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Password </label>

<div class="col-md-6">

<input type="text" name="s_pass" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Contact Number </label>

<div class="col-md-6">

<input type="tel" name="s_num" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Address </label>

<div class="col-md-6">

<input type="text" name="s_address" class="form-control" >

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller City </label>

<div class="col-md-6">

<input type="text" name="s_city" class="form-control" >

</div>

</div><!-- form-group Ends -->

<!-- <div class="form-group"> -->
    <!-- form-group Starts -->

<!-- <label class="col-md-3 control-label"> Show as Top Manufacturers </label>

<div class="col-md-6">

<input type="radio" name="manufacturer_top" value="yes" >

<label> Yes </label>

<input type="radio" name="manufacturer_top" value="no" >

<label> No </label>

</div>

</div> -->
<!-- form-group Ends -->

<!-- <div class="form-group"> -->
    <!-- form-group Starts -->

<!-- <label class="col-md-3 control-label"> Select Seller Image </label>

<div class="col-md-6">

<input type="file" name="manufacturer_image" class="form-control" >

</div>

</div> -->
<!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> </label>

<div class="col-md-6">

<input type="submit" name="submit" class="form-control btn btn-primary" value=" Add Seller " >

</div>

</div><!-- form-group Ends -->

</form><!-- form-horizontal Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->

<?php

if(isset($_POST['submit'])){

    $s_name = $_POST['s_name'];

    $s_email = $_POST['s_email'];

    $s_id = $_POST['s_id'];
    
    $s_pass = $_POST['s_pass'];
    
    $s_contact = $_POST['s_num'];
    
    $s_address = $_POST['s_address'];

    $s_city = $_POST['s_city'];

$get_email = "select * from seller where Seller_email='$s_email'";

$run_email = mysqli_query($con,$get_email);

$check_email = mysqli_num_rows($run_email);

if($check_email == 1){

  echo "<script>alert('This email is already registered, try another one')</script>";
  
  exit();
  
  }

$get_id = "select * from seller where Seller_id='$s_id'";

$run_id = mysqli_query($con,$get_id);

$check_id = mysqli_num_rows($run_id);

if($check_id == 1){

  echo "<script>alert('This seller is already registered')</script>";

  exit();
  
  }

//$manufacturer_image = $_FILES['manufacturer_image']['name'];

//$tmp_name = $_FILES['manufacturer_image']['tmp_name'];

//move_uploaded_file($tmp_name,"other_images/$manufacturer_image");

$insert_seller = "insert into seller (Seller_name,Seller_email,Seller_pass,Seller_id,Seller_city,Seller_contact,Seller_address,confirm) values ('$s_name','$s_email','$s_pass','$s_id','$s_city','$s_contact','$s_address',1)";

$run_seller = mysqli_query($con,$insert_seller);

if($run_seller){

echo "<script>alert('Seller has been added')</script>";

echo "<script>window.open('index.php?view_manufacturers','_self')</script>";

} else
    echo(mysqli_error($con));

}

?>

<?php } ?>