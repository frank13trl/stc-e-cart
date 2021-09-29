<?php


if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {


?>

<?php

if(isset($_GET['edit_manufacturer'])){

$edit_seller = $_GET['edit_manufacturer'];

$get_seller = "select * from seller where Seller_id='$edit_seller'";

$run_seller = mysqli_query($con,$get_seller);

$row_manufacturer = mysqli_fetch_array($run_seller);

$m_id = $row_manufacturer['Seller_id'];

$m_title = $row_manufacturer['Seller_name'];

//$m_top = $row_manufacturer['manufacturer_top'];

$m_num = $row_manufacturer['Seller_contact'];

$m_email = $row_manufacturer['Seller_email'];

//$m_image = $row_manufacturer['manufacturer_image'];

//$new_m_image = $row_manufacturer['manufacturer_image'];


}


?>

<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts -->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / Edit Seller

</li>

</ol><!-- breadcrumb Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"> </i> Edit Seller

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<form class="form-horizontal" action="" method="post" enctype="multipart/form-data"><!-- form-horizontal Starts -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Name </label>

<div class="col-md-6">

<input type="text" name="manufacturer_name" class="form-control" value="<?php echo $m_title; ?>">

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Contact Number </label>

<div class="col-md-6">

<input type="tel" name="manufacturer_num" class="form-control" value="<?php echo $m_num; ?>">

</div>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> Seller Email </label>

<div class="col-md-6">

<input type="email" name="manufacturer_email" class="form-control" value="<?php echo $m_email; ?>">

</div>

</div><!-- form-group Ends -->

<!-- <div class="form-group"> -->
    <!-- form-group Starts -->

<!-- <label class="col-md-3 control-label"> Show as Top Manufacturers </label>

<div class="col-md-6">

<input type="radio" name="manufacturer_top" value="yes" 
<?php //if($m_top == 'no'){}else{ echo "checked='checked'"; } ?> >

<label> Yes </label>

<input type="radio" name="manufacturer_top" value="no" 
<?php //if($m_top == 'no'){ echo "checked='checked'"; }else{} ?> >

<label> No </label>

</div>

</div> -->
<!-- form-group Ends -->

<!-- <div class="form-group"> -->
    <!-- form-group Starts -->

<!-- <label class="col-md-3 control-label"> Select Manufacturer Image </label>

<div class="col-md-6">

<input type="file" name="manufacturer_image" class="form-control" >

<br>

<img src="other_images/<?php //echo $m_image; ?>" width="70" height="70">

</div>

</div> -->
<!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"> </label>

<div class="col-md-6">

<input type="submit" name="update" class="form-control btn btn-primary" value=" Update Seller " >

</div>

</div><!-- form-group Ends -->

</form><!-- form-horizontal Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->

<?php

if(isset($_POST['update'])){

$manufacturer_name = $_POST['manufacturer_name'];

$manufacturer_num = $_POST['manufacturer_num'];

$manufacturer_email = $_POST['manufacturer_email'];

$manufacturer_top = "no";

//$manufacturer_image = $_FILES['manufacturer_image']['name'];

//$tmp_name = $_FILES['manufacturer_image']['tmp_name'];

//move_uploaded_file($tmp_name,"other_images/$manufacturer_image");

//if(empty($manufacturer_image)){

//$manufacturer_image = $new_m_image;

//}

$update_manufacturer = "update seller set Seller_name='$manufacturer_name',Seller_contact='$manufacturer_num',Seller_email='$manufacturer_email' where Seller_id='$m_id'";

$run_manufacturer = mysqli_query($con,$update_manufacturer);

if($run_manufacturer){

echo "<script>alert('Manufacturer Has Been Updated')</script>";

echo "<script>window.open('index.php?view_manufacturers','_self')</script>";

}

}

?>

<?php } ?>