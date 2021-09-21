<?php


if(!isset($_SESSION['seller'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {


?>

<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts  --->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / Customer reviews

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> Customer Rviews

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th>Order No:</th>
<th>Customer Name:</th>
<th>Address:</th>
<th>Product Title:</th>
<th>Product Qty:</th>
<th>Product Size:</th>
<th>Order Date:</th>

<th>Total Amount:</th>
<th>Rateing out of 5:</th>
<th>Remarks:</th>


</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php

$i = 0;
$seller_session = $_SESSION['seller'];

$get_orders = "select * from customer_orders where order_status='Completed' AND s_id='$seller_session'";

$run_orders = mysqli_query($con,$get_orders);

while ($row_orders = mysqli_fetch_array($run_orders)) {

$order_id = $row_orders['order_id'];

$c_id = $row_orders['customer_id'];

//$invoice_no = $row_orders['invoice_no'];

$product_id = $row_orders['pro_id'];

$qty = $row_orders['qty'];

$size = $row_orders['size'];

$order_status = $row_orders['order_status'];

$get_products = "select * from products where product_id='$product_id' AND Seller_id='$seller_session'";

$run_products = mysqli_query($con,$get_products);

$row_products = mysqli_fetch_array($run_products);

$product_title = $row_products['product_title'];

$get_rev = "select * from cust_review where pro_id='$product_id' AND c_id='$c_id'";

$run_rev = mysqli_query($con,$get_rev);

$row_rev = mysqli_fetch_array($run_rev);

$product_rate = $row_rev['star'];
$product_rev = $row_rev['rev'];

$i++;

?>

<tr>

<td><?php echo $i; ?></td>

<td>
<?php 

$get_customer = "select * from customers where customer_id='$c_id'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_email = $row_customer['customer_name'];

$invoice_no = $row_customer['customer_address'];

echo $customer_email;

 ?>
 </td>

<td><?php echo $invoice_no; ?></td>

<td><?php echo $product_title; ?></td>

<td><?php echo $qty; ?></td>

<td><?php echo $size; ?></td>

<td>
<?php


$get_customer_order = "select * from customer_orders where order_id='$order_id' and s_id='$seller_session'";

$run_customer_order = mysqli_query($con,$get_customer_order);

$row_customer_order = mysqli_fetch_array($run_customer_order);

$order_date = $row_customer_order['order_date'];

$order_pdate = $row_customer_order['pro_dt'];

$due_amount = $row_customer_order['due_amount'];

echo $order_date;

?>
</td>



<td>₹<?php echo $due_amount; ?></td>


<td><?php echo $product_rate ; ?></td>



<td><?php echo $product_rev ; ?></td>




</tr>

<?php } ?>

</tbody><!-- tbody Ends -->

</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->




<?php } ?>