<?php


if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {


?>

<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts  --->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / Customer Reviews

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> Customer Reviews

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-body"><!-- panel-body Starts -->

<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th>Order No</th>
<th>Customer Name</th>
<th>E-mail</th>
<th>Product Title</th>
<th>Product Qty</th>
<th>Product Size</th>
<th>Order Date</th>
<!-- <th>Total Amount</th> -->
<th>Rating out of 5</th>
<th>Review</th>
<th>Action</th>


</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php

$i = 0;
$seller_session = $_SESSION['admin_email'];

$get_orders = "select * from customer_orders where order_status='Completed'";

$run_orders = mysqli_query($con,$get_orders);

while ($row_orders = mysqli_fetch_array($run_orders)) {

$order_id = $row_orders['order_id'];

$c_id = $row_orders['customer_id'];

//$invoice_no = $row_orders['invoice_no'];

$product_id = $row_orders['pro_id'];

$qty = $row_orders['qty'];

$size = $row_orders['size'];

$order_date = $row_orders['order_date'];

$order_pdate = $row_orders['pro_dt'];

$due_amount = $row_orders['due_amount'];

$order_status = $row_orders['order_status'];

$get_products = "select * from products where product_id='$product_id'";

$run_products = mysqli_query($con,$get_products);

$row_products = mysqli_fetch_array($run_products);

$product_title = $row_products['product_title'];

$get_rev = "select * from customer_review where order_id='$order_id'";

$run_rev = mysqli_query($con,$get_rev);

while($row_rev = mysqli_fetch_array($run_rev)){

$product_rate = $row_rev['star'];

$product_rev = $row_rev['review'];

}

$i++;

?>

<tr>

<td><?php echo $i; ?></td>

<td>
<?php 

$get_customer = "select * from customers where customer_id='$c_id'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_name = $row_customer['customer_name'];

$customer_email = $row_customer['customer_email'];

echo $customer_name;

 ?>
 </td>

<td><?php echo $customer_email; ?></td>

<td><?php echo $product_title; ?></td>

<td><?php echo $qty; ?></td>

<td><?php echo $size; ?></td>

<td><?php echo $order_date; ?></td>

<!-- <td>₹<?php //echo $due_amount; ?></td> -->

<td>
<?php if(!isset($product_rate)) 
echo "<i class='text-muted'>Not rated</i>";

else
echo "<b>".$product_rate."</b>";

?>
</td>

<td>
    <?php if(!isset($product_rev)) 
echo "<i class='text-muted'>Not reviewed</i>";

else
echo "<b>".$product_rev."</b>";

$product_rate=$product_rev=null;

?>
</td>

<td>

<form class="form-horizontal" action="" method="post">

<input type="submit" name="del" class="form-control btn btn-primary" value="Delete" >

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

$seller_session = $_SESSION['admin_email'];

if(isset($_POST['del'])){

$del_review = "delete from customer_review where order_id='$order_id' and product_id='$product_id'";

$run_del = mysqli_query($con,$del_review);

if($run_del){

echo "<script>alert('Review deleted')</script>";

}

}

?>



<?php } ?>