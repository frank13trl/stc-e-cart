<?php
$aMan  = array();

$aPCat = array();

$aCat  = array();

/// Manufacturers Code Starts ///

if(isset($_REQUEST['man'])&&is_array($_REQUEST['man'])){

foreach($_REQUEST['man'] as $sKey=>$sVal){

if((int)$sVal!=0){

$aMan[(int)$sVal] = (int)$sVal;

}

}

}

/// Manufacturers Code Ends ///

/// Products Categories Code Starts ///

if(isset($_REQUEST['p_cat'])&&is_array($_REQUEST['p_cat'])){

foreach($_REQUEST['p_cat'] as $sKey=>$sVal){

if((int)$sVal!=0){

$aPCat[(int)$sVal] = (int)$sVal;

}

}

}

/// Products Categories Code Ends ///

/// Categories Code Starts ///

if(isset($_REQUEST['cat'])&&is_array($_REQUEST['cat'])){

foreach($_REQUEST['cat'] as $sKey=>$sVal){

if((int)$sVal!=0){

$aCat[(int)$sVal] = (int)$sVal;

}

}

}

/// Categories Code Ends ///


?>




<div class="panel panel-default sidebar-menu"><!--- panel panel-default sidebar-menu Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

Categories

<div class="pull-right"><!-- pull-right Starts -->

<a style="color:black;">

<span class="nav-toggle hide-show">

Hide

</span>

</a>

</div><!-- pull-right Ends -->


</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->

<div class="panel-collapse collapse-data"><!-- panel-collapse collapse-data Starts -->

<div class="panel-body"><!-- panel-body Starts -->

<div class="input-group"><!-- input-group Starts -->

<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-cats" placeholder="Filter Categories">

<a class="input-group-addon"> <i class="fa fa-search"> </i> </a>

</div><!-- input-group Ends -->

</div><!-- panel-body Ends -->

<div class="panel-body" style="height: fit-content;"><!-- panel-body scroll-menu Starts -->

<ul class="nav nav-pills nav-stacked category-menu" id="dev-cats"><!-- nav nav-pills nav-stacked category-menu Starts -->

<?php

$get_cat = "select * from categories where cat_top='yes'";

$run_cat = mysqli_query($con,$get_cat);

while($row_cat = mysqli_fetch_array($run_cat)){

$cat_id = $row_cat['cat_id'];

$cat_title = $row_cat['cat_title'];

$cat_image = $row_cat['cat_image'];

if($cat_image == ""){

}
else{

$cat_image = "<img src='admin_area/other_images/$cat_image' width='20'>&nbsp;";

}

echo "

<li class='checkbox checkbox-primary' style='background:#dddddd;'>

<a>

<label>

<input ";

if(isset($aCat[$cat_id])){ echo "checked='checked'"; }

echo " type='checkbox' value='$cat_id' name='cat' class='get_cat' id='cat'> 

<span>
$cat_image
$cat_title
</span>

</label>

</a>

</li>

";

}


$get_cat = "select * from categories where cat_top='no'";

$run_cat = mysqli_query($con,$get_cat);

while($row_cat = mysqli_fetch_array($run_cat)){

$cat_id = $row_cat['cat_id'];

$cat_title = $row_cat['cat_title'];

$cat_image = $row_cat['cat_image'];

if($cat_image == ""){

}
else{

$cat_image = "<img src='admin_area/other_images/$cat_image' width='20'>&nbsp;";

}

echo "<li>


<label>";



if(isset($aCat[$cat_id])){ echo "checked='checked'"; }

echo " 

<span>

<br>🛍️ <a href=index_pro.php?cat=$cat_id>$cat_title</a><br>

</span>

</label>



</li>

";

}


?>

</ul><!-- nav nav-pills nav-stacked category-menu Ends -->

</div><!-- panel-body scroll-menu Ends -->

</div><!-- panel-collapse collapse-data Ends -->

</div><!--- panel panel-default sidebar-menu Ends -->
