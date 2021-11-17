<?php 
session_start();  
if (!isset($_SESSION['admin_id'])) {
  header("location:login.php");
}

include "./templates/top.php"; 

?>




 
<?php include "./templates/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

      <center><h1>Welcome to Vendor's Panel</h1></center>
      <div class="table-responsive">
        
</div>
<div>
<html>
<head>
<style>
img {
  border-radius: 8px;
}
</style>
</head>
<body>



<center><img src='http://localhost/online-super-shop/pro/product_images/bg.png' width="500" height="500"></center>

</body>
</html>


<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/admin.js"></script>
