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

<i class="fa fa-dashboard"></i> Dashboard / View Orders

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> View Orders

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th>Order No</th>
<th>Customer Name</th>
<th>Address</th>
<th>Contact</th>
<th>Product</th>
<th>Quantity</th>
<th>Weight</th>
<th>Message (on cake)</th>
<th>Order Date</th>
<th>Delivery Date and Time</th>
<th>Total Amount</th>
<th>Order Status</th>
<th>Confirm Order</th>


</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php

$i = 0;

$seller_session = $_SESSION['seller'];

$get_orders = "select * from customer_orders where order_status in ('Pending','Cancelled') and s_id='$seller_session'";

$run_orders = mysqli_query($con,$get_orders);

while ($row_orders = mysqli_fetch_array($run_orders)) {

$order_id = $row_orders['order_id'];

$c_id = $row_orders['customer_id'];

//$invoice_no = $row_orders['invoice_no'];

$product_id = $row_orders['pro_id'];

$wish_text = $row_orders['wish_text'];

$qty = $row_orders['qty'];

$size = $row_orders['size'];

$order_date = $row_orders['order_date'];

$order_pdate = $row_orders['pro_dt'];

$due_amount = $row_orders['due_amount'];

$order_status = $row_orders['order_status'];
$wish=$row_orders['wish_text'];

$get_products = "select * from products where product_id='$product_id' AND Seller_id='$seller_session' and status='product'";

$run_products = mysqli_query($con,$get_products);

$row_products = mysqli_fetch_array($run_products);

$product_title = $row_products['product_title'];

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

$no=$row_customer['customer_contact'];

echo $customer_email;

 ?>
 </td>

<td><?php echo $invoice_no; ?></td>
<td><?php echo $no; ?></td>

<td><?php echo $product_title; ?></td>

<td><?php echo $qty; ?></td>

<td><?php echo $size; ?></td>
<td><?php echo $wish; ?></td>

<td><?php echo $wish_text; ?></td>

<td><?php echo $order_date; ?></td>

<td><?php echo $order_pdate; ?></td>

<td>₹<?php echo $due_amount; ?></td>

<td>

<?php

if($order_status=='Pending')

echo $order_status='Pending';

elseif($order_status=='Cancelled')

echo $order_status='Cancelled';

else

echo $order_status='Complete';

?>
</td>

<td>

<form class="form-horizontal" action="" method="post">

<?php

if($order_status=='Cancelled')

echo "<button class='btn btn-warning' disabled> Cancelled </button>";

else

echo "<button name='confirm' class='form-control btn btn-success' value='$order_id'> Completed </button>";

?>

</form>

</td>


</tr>

<?php } ?>

</tbody><!-- tbody Ends -->

</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->

<?php

$seller_session = $_SESSION['seller'];

if(isset($_POST['confirm'])){

    $o_id = $_POST['confirm'];

$update_order = "update customer_orders set order_status='Completed' where s_id='$seller_session' and order_id='$o_id'";

$run_order_update = mysqli_query($con,$update_order);

$sel_c = "select * from customers where customer_id='$c_id'";

$run_c = mysqli_query($con,$sel_c);

$count_c = mysqli_num_rows($run_c);

$row_c = mysqli_fetch_array($run_c);

$c_name = $row_c['customer_name'];

$c_email = $row_c['customer_email'];

$message = "

<h1> Your order for $product_title has been completed</h1>

<h3> Dear $c_name, </h3>

<p> Customer ID : $c_id </p>

<h4>Your order (Order ID : $o_id) has been completed and your product is delivered.</h4>

<i>Thank you for shopping with us. Visit St. Thomas E-Cart for more exciting products.</i>

";

$from = "franktrl2000@gmail.com";

$subject = "Order Complete (Order ID : $o_id)";

$headers = "From: $from\r\n";

$headers .= "Content-type: text/html\r\n";

$mail_sent = mail($c_email,$subject,$message,$headers);

if($run_order_update && $mail_sent){

echo "<script>alert('Order Completed')</script>";

echo "<script>window.open('index.php?view_payments','_self')</script>";

}

}

?>

<?php } ?>