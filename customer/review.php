<?php

session_start();

if(!isset($_SESSION['customer_email'])){

echo "<script>window.open('../checkout.php','_self')</script>";


}else {

include("includes/db.php");
//include("../includes/header.php");
//include("functions/functions.php");
//include("includes/main.php");

?>
<!DOCTYPE html>
<html>

<head>
    <title>Customer Review</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Thambi+2:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- My Stylesheet -->
    <link rel="stylesheet" href="styles/backend.css">

</head>

<body style="background-image: url('images/reviewbg.jpg'); background-size: cover;">

   
            <span style="font-size: 100px; font-family:'Segoe UI'; text-align: center;">Customer <b>Review</b></span>
          
    <div class="container p-5" style="margin-top: 200px; background-color: #b3b3cc; border-radius: 50px;">

    <form method="POST" action="review.php?order_id=<?php echo $_GET['order_id'];?>">
         
        <div class="row justify-content-center">
            <div class="stars text-center">
                <div class="col">
                    <div class="form-group">

                        <input type="radio" id="five" name="rate" value="5">
                        <label for="five"></label>
                        <input type="radio" id="four" name="rate" value="4">
                        <label for="four"></label>
                        <input type="radio" id="three" name="rate" value="3">
                        <label for="three"></label>
                        <input type="radio" id="two" name="rate" value="2">
                        <label for="two"></label>
                        <input type="radio" id="one" name="rate" value="1">
                        <label for="one"></label>

                        <span class="result"></span>

                    </div>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col justify-content-center">
                <div class="form-group" style="text-align: center;">
                    <label for="textarea"><b>Review</b></label>

                    <textarea class="form-control" id="textarea" rows="4" placeholder="Post your review..." name="rev"></textarea>
                </div>
            </div>
        </div>

        <div class="row" style="text-align: center;">
            <div class="col">
                <input type="submit" class="btn btn-primary" value="Review" name="submit">
            </div>
        </div>
    </form>
    </div>

</body>

</html>
<?php

if(isset($_POST['submit'])){

$o_id = $_GET['order_id'];

$customer_session = $_SESSION['customer_email'];

$get_customer = "select * from customers where customer_email='$customer_session'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];

$get_orders = "select * from customer_orders where customer_id='$customer_id' and order_id='$o_id'";

$run_orders = mysqli_query($con,$get_orders);

$row_orders = mysqli_fetch_array($run_orders);

$pro_id = $row_orders['pro_id'];

$star = $_POST['rate'];

$review = $_POST['rev'];

$ins_review = "insert into customer_review(order_id,customer_id,product_id,star,review) values ('$o_id','$customer_id','$pro_id','$star','$review')";

$run_ins = mysqli_query($con,$ins_review);

if($run_ins){
    echo "<script>alert('Thank you for your review :)')</script>";
    echo "<script>window.open('my_account.php?my_orders','_self')</script>";
}
}
}
?>