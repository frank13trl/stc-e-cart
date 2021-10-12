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

<i class="fa fa-dashboard"></i> Dashboard / View Registered Seller

</li>

</ol><!-- breadcrumb Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->

<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title">

<i class="fa fa-money fa-fw"></i> View Registered Sellers

</h3>

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<div class="table-responsive"><!-- table-responsive Starts --->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th>Sl No.</th>
<th>Seller Name</th>
<th>Seller ID</th>
<th>Delete Seller</th>
<th>Action</th>

</tr>

</thead><!-- thead Ends -->

<tbody><!-- tbody Starts -->

<?php

$i = 0;

$get_manufacturers = "select * from seller where confirm='0'";

$run_manufacturers = mysqli_query($con,$get_manufacturers);

while($row_manufacturers = mysqli_fetch_array($run_manufacturers)){

$rseller_id = $row_manufacturers['Seller_id'];

$rseller_title = $row_manufacturers['Seller_name'];


$i++;

?>

<tr>

<td><?php echo $i; ?></td>

<td><?php echo $rseller_title; ?></td>

<td><?php echo $rseller_id; ?></td>

<td>

<a href="index.php?delete_manufacturer=<?php echo $rseller_id; ?>">

<i class="fa fa-trash-o"></i> Delete

</a>

</td>

<td>
    
<form class="form-horizontal" action="" method="post">

<button name="confirm" class="form-control btn btn-primary" value="<?php echo $rseller_id; ?>">Confirm</button>

</form>

</a>

</td>

</tr>

<?php } ?>

</tbody><!-- tbody Ends -->

</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends --->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->

<?php

if(isset($_POST['confirm'])){

    $r_seller = $_POST['confirm'];

$update_seller = "update seller set confirm='1' where Seller_id='$r_seller'";

$run_seller = mysqli_query($con,$update_seller);

$sel_s = "select * from seller where Seller_id='$r_seller' and confirm='1'";

$run_s = mysqli_query($con,$sel_s);

$count_s = mysqli_num_rows($run_s);

$row_s = mysqli_fetch_array($run_s);

$s_name = $row_s['Seller_name'];

$s_email = $row_s['Seller_email'];

$s_pass = $row_s['Seller_pass'];

$message = "

<h1> Your seller registration has been confirmed </h1>

<h3> Dear $s_name </h3>

<h4> You are now a registered seller at St. Thomas E-Cart </h4>

<p>

Your Seller ID is : <span> <b>$r_seller</b> </span>

</p>

<p>

Your Password is : <span> <b>$s_pass</b> </span>

</p>

";

$from = "franktrl2000@gmail.com";

$subject = "Seller Registration Confirmed";

$headers = "From: $from\r\n";

$headers .= "Content-type: text/html\r\n";

$mail_sent = mail($s_email,$subject,$message,$headers);

if($run_seller && $mail_sent){

echo "<script>alert('Seller has been confirmed')</script>";

echo "<script>window.open('index.php?view_manufacturers','_self')</script>";

}

}

?>

<?php } ?>