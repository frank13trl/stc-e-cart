<?php



if(!isset($_SESSION['seller'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {

?>

<?php

if(isset($_GET['delete_product'])){

$delete_id = $_GET['delete_product'];

$delete_pro = "update products set status='not_product' where product_id='$delete_id'";

$run_delete = mysqli_query($con,$delete_pro);

if($run_delete){

echo "<script>alert('One Product Has been deleted')</script>";

echo "<script>window.open('index.php?view_products','_self')</script>";

}

}

?>

<?php } ?>