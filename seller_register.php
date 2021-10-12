<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");


?>


  <!-- MAIN -->
  <main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">Register</span> AT E-CART
      </div>
      <p class="nero__text">
      </p>
    </div>
  </main>


<div id="content" ><!-- content Starts -->
<div class="container" ><!-- container Starts -->





<div class="col-md-12" ><!-- col-md-12 Starts -->

<div class="box" ><!-- box Starts -->

<div class="box-header" ><!-- box-header Starts -->

<center><!-- center Starts -->

<h2> Register A New Seller Account </h2>



</center><!-- center Ends -->

</div><!-- box-header Ends -->

<form action="seller_register.php" method="post" enctype="multipart/form-data" ><!-- form Starts -->

<div class="form-group" ><!-- form-group Starts -->

<label>Seller Name</label>

<input type="text" class="form-control" name="s_name" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Seller Email</label>

<input type="text" class="form-control" name="s_email" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Staff / Student ID Number </label>

<input type="text" class="form-control" name="s_id" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Seller Password </label>

<div class="input-group"><!-- input-group Starts -->

<span class="input-group-addon"><!-- input-group-addon Starts -->

<i class="fa fa-check tick1"> </i>

<i class="fa fa-times cross1"> </i>

</span><!-- input-group-addon Ends -->

<input type="password" class="form-control" id="pass" name="s_pass" required>

<span class="input-group-addon"><!-- input-group-addon Starts -->

<div id="meter_wrapper"><!-- meter_wrapper Starts -->

<span id="pass_type"> </span>

<div id="meter"> </div>

</div><!-- meter_wrapper Ends -->

</span><!-- input-group-addon Ends -->

</div><!-- input-group Ends -->

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Confirm Password </label>

<div class="input-group"><!-- input-group Starts -->

<span class="input-group-addon"><!-- input-group-addon Starts -->

<i class="fa fa-check tick2"> </i>

<i class="fa fa-times cross2"> </i>

</span><!-- input-group-addon Ends -->

<input type="password" class="form-control confirm" id="con_pass" required>

</div><!-- input-group Ends -->

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Seller Contact </label>

<input type="text" class="form-control" name="s_contact" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Seller Address </label>

<input type="text" class="form-control" name="s_address" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Seller City </label>

<input type="text" class="form-control" name="s_city" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<!-- <label> Seller Image </label>

<input type="file" class="form-control" name="s_image" required> -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<!-- <center>

<label> Captcha Verification </label>

<div class="g-recaptcha" data-sitekey="6Lc-WxYUAAAAAFUhTFfBEzLGmEgRXHHdsD4ECvIC"></div>

</center> -->

</div><!-- form-group Ends -->


<div class="text-center"><!-- text-center Starts -->

<button type="submit" name="register" class="btn btn-primary">

<i class="fa fa-user-md"></i> Register

</button>

</div><!-- text-center Ends -->

</form><!-- form Ends -->

</div><!-- box Ends -->

</div><!-- col-md-12 Ends -->



</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

<script>

$(document).ready(function(){

$('.tick1').hide();
$('.cross1').hide();

$('.tick2').hide();
$('.cross2').hide();


$('.confirm').focusout(function(){

var password = $('#pass').val();

var confirmPassword = $('#con_pass').val();

if(password == confirmPassword){

$('.tick1').show();
$('.cross1').hide();

$('.tick2').show();
$('.cross2').hide();



}
else{

$('.tick1').hide();
$('.cross1').show();

$('.tick2').hide();
$('.cross2').show();


}


});


});

</script>

<script>

$(document).ready(function(){

$("#pass").keyup(function(){

check_pass();

});

});

function check_pass() {
 var val=document.getElementById("pass").value;
 var meter=document.getElementById("meter");
 var no=0;
 if(val!="")
 {
// If the password length is less than or equal to 6
if(val.length<=6)no=1;

 // If the password length is greater than 6 and contain any lowercase alphabet or any number or any special character
  if(val.length>6 && (val.match(/[a-z]/) || val.match(/\d+/) || val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)))no=2;

  // If the password length is greater than 6 and contain alphabet,number,special character respectively
  if(val.length>6 && ((val.match(/[a-z]/) && val.match(/\d+/)) || (val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)) || (val.match(/[a-z]/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/))))no=3;

  // If the password length is greater than 6 and must contain alphabets,numbers and special characters
  if(val.length>6 && val.match(/[a-z]/) && val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/))no=4;

  if(no==1)
  {
   $("#meter").animate({width:'50px'},300);
   meter.style.backgroundColor="red";
   document.getElementById("pass_type").innerHTML="Very Weak";
  }

  if(no==2)
  {
   $("#meter").animate({width:'100px'},300);
   meter.style.backgroundColor="#F5BCA9";
   document.getElementById("pass_type").innerHTML="Weak";
  }

  if(no==3)
  {
   $("#meter").animate({width:'150px'},300);
   meter.style.backgroundColor="#FF8000";
   document.getElementById("pass_type").innerHTML="Good";
  }

  if(no==4)
  {
   $("#meter").animate({width:'200px'},300);
   meter.style.backgroundColor="#00FF40";
   document.getElementById("pass_type").innerHTML="Strong";
  }
 }

 else
 {
  meter.style.backgroundColor="";
  document.getElementById("pass_type").innerHTML="";
 }
}

</script>

</body>

</html>

<?php

if(isset($_POST['register'])){

// $secret = "6Lc-WxYUAAAAAN5j2OdDsryWwGfREg5eeuZFpKMv";

// $response = $_POST['g-recaptcha-response'];

// $remoteip = $_SERVER['REMOTE_ADDR'];

// $url = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$response&remoteip=$remoteip");

// $result = json_decode($url, TRUE);

// if($result['success'] == 1){

  $s_name = $_POST['s_name'];

  $s_email = $_POST['s_email'];

  $s_id = $_POST['s_id'];
  
  $s_pass = $_POST['s_pass'];
  
  $s_contact = $_POST['s_contact'];
  
  $s_address = $_POST['s_address'];

  $s_city = $_POST['s_city'];

// $s_image = $_FILES['s_image']['name'];

// $s_image_tmp = $_FILES['s_image']['tmp_name'];

$s_ip = getRealUserIp();

// move_uploaded_file($s_image_tmp,"customer/customer_images/$s_image");

$get_email = "select * from seller where Seller_email='$s_email'";

$run_email = mysqli_query($con,$get_email);

$check_email = mysqli_num_rows($run_email);

if($check_email == 1){

  echo "<script>alert('This email is already registered, try another one')</script>";
  
  exit();
  
  }

$get_id = "select * from seller where Seller_id='$s_id'";

$run_id = mysqli_query($con,$get_id);

$check_id = mysqli_num_rows($run_id);

if($check_id == 1){

  echo "<script>alert('You are already registered, try logging in')</script>";

  echo "<script>window.open('seller-area/login.php','_self')</script>";
  
  exit();
  
  }

// $customer_confirm_code = mt_rand();

// $subject = "Email Confirmation Message";

// $from = "sad.ahmed22224@gmail.com";

// $message = "

// <h2>
// Email Confirmation By Computerfever.com $s_name
// </h2>

// <a href='localhost/ecom_store/customer/my_account.php?$customer_confirm_code'>

// Click Here To Confirm Email

// </a>

// ";

// $headers = "From: $from \r\n";

// $headers .= "Content-type: text/html\r\n";

// mail($s_email,$subject,$message,$headers);

$insert_seller = "insert into seller (Seller_name,Seller_email,Seller_pass,Seller_id,Seller_city,Seller_contact,Seller_address) values ('$s_name','$s_email','$s_pass','$s_id','$s_city','$s_contact','$s_address')";

$run_seller = mysqli_query($con,$insert_seller);

if($run_seller){


echo "<script>alert('Your account will be activated within 24 hours')</script>";

echo "<script>window.open('index.php','_self')</script>";

}

}

?>
