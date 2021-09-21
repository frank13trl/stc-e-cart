<?php


include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");

?>

<?php

if(isset($_GET['c_id'])){

$customer_id = $_GET['c_id'];

}

$ip_add = getRealUserIp();

$status = "pending";

$invoice_no = mt_rand();

$select_cart = "select * from cart where ip_add='$ip_add'";

$run_cart = mysqli_query($con,$select_cart);

while($row_cart = mysqli_fetch_array($run_cart)){

$pro_id = $row_cart['p_id'];

$pro_size = $row_cart['size'];

$pro_qty = $row_cart['qty'];

$pro_dt = $row_cart['pref_dt'];

$sub_total = $row_cart['p_price']*$pro_qty;

$select_pro = "select * from products where product_id='$pro_id'";

$run_pro = mysqli_query($con,$select_pro);

while($row_pro = mysqli_fetch_array($run_pro)){

$s_id = $row_pro['Seller_id'];
}
$insert_customer_order = "insert into customer_orders (customer_id,pro_id,s_id,due_amount,invoice_no,qty,size,order_date,order_status,pro_dt) values ('$customer_id','$pro_id','$s_id','$sub_total','$invoice_no','$pro_qty','$pro_size',NOW(),'$status','$pro_dt')";

$run_customer_order = mysqli_query($con,$insert_customer_order);

$insert_pending_order = "insert into pending_orders (customer_id,invoice_no,product_id,qty,size,order_status,pro_dt) values ('$customer_id','$invoice_no','$pro_id','$pro_qty','$pro_size','$status','$pro_dt')";

$run_pending_order = mysqli_query($con,$insert_pending_order);

$delete_cart = "delete from cart where ip_add='$ip_add'";

$run_delete = mysqli_query($con,$delete_cart);

echo "<script>alert('Your order has been submitted,Thanks ')</script>";

echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";





}

?>
