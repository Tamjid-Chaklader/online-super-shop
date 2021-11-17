<?php 
session_start();  
if (!isset($_SESSION['admin_id'])) {
  header("location:http://localhost/online-super-shop/pro/admin/login.php");
}

include "./templates/top.php"; 

?>
 
<?php include "./templates/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

      <center><h1>WELCOME TO VENDOR'S PAGE</h1></center>
      </DIV>
</div>

<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/admin.js"></script>
