
<center>

<h1><b>Do you really want to delete your account ?</b></h1>

<p class="text-muted text-danger" >

Note : This action cannot be undone!

</p>

<form action="" method="post" style="padding: 50px;">

<input class="btn btn-danger" type="submit" name="yes" value="Yes, I want to delete my account">

<input class="btn btn-success" type="submit" name="no" value="No, I don't want to delete my account">

</form>

</center>

<?php

$c_email = $_SESSION['customer_email'];

if(isset($_POST['yes'])){

$delete_customer = "delete from customers where customer_email='$c_email'";

$run_delete = mysqli_query($con,$delete_customer);

if($run_delete){

session_destroy();

echo "<script>alert('Your Account Has Been Deleted! Good By')</script>";

echo "<script>window.open('../index.php','_self')</script>";

}

}

if(isset($_POST['no'])){

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}


?>