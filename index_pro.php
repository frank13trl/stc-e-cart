<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- Cover -->
  <main>
    <div class="hero">
      <!-- <a href="shop.php" class="btn1">View all products
</a> -->
    </div>
    <!-- Main -->
    <div class="wrapper">
            <h1>Today's Special<h1>
            
      </div>



    <div id="content" class="container" style="width: 90%; margin: 0px auto 0px 250px;"><!-- container Starts -->

    <div class="row"><!-- row Starts -->

    <?php

$get_cat=$_GET['cat'];
    
$get_products = "select * from products where status='product' and cat_id='$get_cat' order by RAND()";

$run_products = mysqli_query($db,$get_products);

while($row_products=mysqli_fetch_array($run_products)){

$pro_id = $row_products['product_id'];

$pro_title = $row_products['product_title'];

$pro_price = $row_products['product_price'];

$pro_weight = $row_products['product_weight'];

$pro_img1 = $row_products['product_img1'];

$pro_label = $row_products['product_label'];

$manufacturer_id = $row_products['Seller_id'];
  
  $get_manufacturer = "select * from seller where Seller_id='$manufacturer_id'";
  
  $run_manufacturer = mysqli_query($db,$get_manufacturer);
  
  $row_manufacturer = mysqli_fetch_array($run_manufacturer);
  
//$manufacturer_name = $row_manufacturer['manufacturer_title'];

$pro_psp_price = $row_products['product_psp_price'];

$pro_url = $row_products['product_url'];

if($pro_label == "Sale" or $pro_label == "Gift"){

$product_price = "<del> ₹$pro_price </del>";

$product_psp_price = "| ₹$pro_psp_price";

}
else{

$product_psp_price = "";

$product_price = "₹$pro_price";

}


if($pro_label == ""){


}
else{

$product_label = "

<a class='label sale' href='#' style='color:black;'>

<div class='thelabel'>$pro_label</div>

<div class='label-background'> </div>

</a>

";

}


echo "

<div class='col-md-3 col-sm-6 single' >

<div class='product' >

<a href='$pro_url' >

<img src='./product_img/$pro_img1' class='img-responsive' style='height:270px; width:100%; object-fit: cover;'>

</a>

<div class='text' style='min-height: 250px;'>

<center>

</center>

<hr>

<h3><a href='$pro_url' >$pro_title</a></h3>

<p class='price' > $pro_weight </p>

<p class='price' > $product_price $product_psp_price </p>

<p class='buttons' >

<a href='$pro_url' class='btn btn-default' >View details</a>

<a href='$pro_url' class='btn btn-primary'>

<i class='fa fa-shopping-cart'></i> Add to cart

</a>

</p>

</div>

$product_label

</div>

</div>

";

}

    ?>

    </div><!-- row Ends -->

    </div><!-- container Ends -->
    <!-- FOOTER -->
    <footer class="page-footer">

      <div class="footer-nav">
        <div class="container clearfix">

          <!-- <div class="footer-nav__col footer-nav__col--info">
            <div class="footer-nav__heading">Information</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">The brand</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Local stores</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Customer service</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Privacy &amp; cookies</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Site map</a>
              </li>
            </ul>
          </div>

          <div class="footer-nav__col footer-nav__col--whybuy">
            <div class="footer-nav__heading">Why buy from us</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Shipping &amp; returns</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Secure shipping</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Testimonials</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Award winning</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Ethical trading</a>
              </li>
            </ul>
          </div> -->

          <!-- <div class="footer-nav__col footer-nav__col--account">
            <div class="footer-nav__heading">Your account</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Sign in</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Register</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">View cart</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">View your lookbook</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Track an order</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Update information</a>
              </li>
            </ul>
          </div> -->

          <div class="row justify-content-center">
        <div class="text-center text-muted p-5">
          
        
          
            <div class="footer-nav__heading">Contact details</div>
            <address class="address">
            St, Thomas College (Autonomous)<br>
            Thrissur<br>
            680 001
          </address>
            <div class="phone">
              Telephone:
              <a class="phone__number" href="tel:0123456789">0487 2420435</a>
            </div>
            <div class="email">
              Email:
              <a href="mailto:support@yourwebsite.com" class="email__addr">support@stthomas.com</a>
            </div>
          </div>
          </div>
      </div>

        </div>
      

      <div class="banners">
        <div class="container clearfix">

          <!-- <div class="banner-award">
            <span>Award winner</span><br> Fashion awards 2016
          </div>

          <div class="banner-social">
            <a href="#" class="banner-social__link">
            <i class="icon-facebook"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-twitter"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-instagram"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-pinterest-circled"></i>
          </a>
          </div> -->

        </div>
      </div>

      <div class="page-footer__subline">
        <div class="container clearfix">

          <div class="copyright">
            &copy; IIC, St. Thomas College(Autonomous), Thrissur&trade;
          </div>

          <div class="developer">
            Powered by 'The P Gang'
          </div>

          <!-- <div class="designby">
            Design by Yasser Dalouzi
          </div> -->

        </div>
      </div>
    </footer>
</body>

</html>
