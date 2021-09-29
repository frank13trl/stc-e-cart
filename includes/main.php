</head>

<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

        <div class="currency">
          <a class="currency__change" href="customer/my_account.php?my_orders">
          <?php
          if(isset($_SESSION['customer_email'])){
            echo "Welcome : " . $_SESSION['customer_email'] . "";
          // echo " Customer Login"; 
          }
          // else
          // { 
          //     echo "Welcome : " . $_SESSION['customer_email'] . "";
          //   }
          ?>
          </a>

          
        </div>
        <div class="currency" style="padding-left: 25px;">
          

          <a class="currency__change" href="seller-area/login.php">Seller Login</a>
         
        </div>
        <div class="currency" style="padding-left: 25px;">
          

        <a class="currency__change" href="admin_area/login.php">Administrator</a>
         
        </div>

        <div class="basket">
          <a href="cart.php" class="btn btn--basket">
            <i class="icon-basket"></i>
            <?php items(); ?> items
          </a>
        </div>
   
        <ul class="login">

<li class="login__item">



<?php
if(isset($_SESSION['customer_email'])){
  // echo '<a href="customer_register.php" class="login__link"><b>Register</b></a>';
  echo '<a href="customer/my_account.php?my_orders" class="login__link"><b>My Account</b></a>';
} 
  // else
  // { 
  //     echo '<a href="my_account.php?my_orders" class="login__link"><b>My Account</b></a>';
  // }   
?>  
</li>


<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="checkout.php" class="login__link"><b>Sign In</b></a>';
} 
  else
  { 
      echo '<a href="logout.php" class="login__link"><b>Log out</b></a>';
  }   
?>  
  
</li>
</ul>
      
      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

        <div class="logo" style="display:flex; align-items:center; margin-top: 30px;">
          <a class="logo__link" href="index.php"></a>
            <img class="logo__img" src="images/logo1.png" alt="Avenue fashion logotype" width="150">
            <span style="font-size: 100px; font-family:'Segoe UI', sans-serif">ST THOMAS <b>E-CART</b></span>
          
        </div>

        <nav class="main-nav">
          <ul class="categories">

            <li class="categories__item">
              <a class="categories__link" href="index.php">
                Shop
              </a>
            </li>

            <!-- <li class="categories__item">
              <a class="categories__link" href="index1.php">
                Cakes
               
              </a>
              </li>

            <li class="categories__item">
              <a class="categories__link" href="index2.php">
                Pastries
               
              </a>
            </li> -->

            <!-- <li class="categories__item">
              <a class="categories__link" href="localstore.php">
                Local Stores
              </a>
            </li> -->

          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                My Account
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown-lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Account Settings</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">My Wishlist</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">My Orders</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">View Shopping Cart</a>
                      </li>
                    </ul>
                  </div>
                  <div class="dropdown__half">
                    <div class="dropdown__heading"></div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Edit Your Account</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Change Password</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Delete Account</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>

            </li>

          </ul>
        </nav>
      </div>
    </div>
  </header>