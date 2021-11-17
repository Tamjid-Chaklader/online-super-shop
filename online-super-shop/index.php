<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta charset="utf-8">

	<title>Foody</title>

	<!-- Font-awesome -->
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css"/>

	<!-- Main stylesheet -->
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	
	

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lobster|Poppins:40,0,700" rel="stylesheet"/>

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="img/fav.png" />

	<!--Contact-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 	
	<meta name="keywords" content="Working Contact Form HTML/PHP " />
	<!--web-fonts-->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'></head>
	<link href='//fonts.googleapis.com/css?family=Candal' rel='stylesheet' type='text/css'>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<style>
*{box-sizing:border-box;}

.form_box{width:400px; margin-left:40%;  padding:10px; background-color:white;}
input{padding:5px;  margin-bottom:5px;}
input[type="submit"]{border:none; outlin:none; background-color:#679f1b; color:white;}
.heading{background-color:#ac1219; color:white; height:40px; width:100%; line-height:40px; text-align:center;}
.shadow{
  -webkit-box-shadow: 0px 0px 17px 1px rgba(0,0,0,0.43);
-moz-box-shadow: 0px 0px 17px 1px rgba(0,0,0,0.43);
box-shadow: 0px 0px 17px 1px rgba(0,0,0,0.43);}
.pic{text-align:left; width:33%; float:left;}
</style>

</head>
<body>

	<header id="header">
		
	
		<nav id="myTopNav" class="navtoggle">
			<ul class="header_list">
				<li class="active"><a href="http://localhost/online-super-shop/index.php">HOME</a></li>
				<li><a href="it project/aboutus.html">About</a></li>
				<li><a href="shoppingcart2/">Products</a></li>
                <li><a href="#">Log in</a>
                    <div class="sub-menu">
                        <ul>
                            <li><a href="admin/login.php">Admin</a></li>
                            <li><a href="customer-login/home.php">Customer</a></li>
                            <li><a href="http://localhost/online-super-shop/pro/admin/index.php">Vendor</a></li>
                        </ul>
					</div>
                </li>
				<li><a href="customer-login/user-registration.php">Sign up</a></li>
				<li><a href="#c">Contact</a></li>
			</ul>
		</nav>
		
	</header>

	<section id="hero-image">
		<div class="hero-text">
			<h1>MARS SUPER STORE</h1>
		</div>

	</section>
	<section>
		<div class="flex-container">
			<div class="flex-item1">
				<div class="content1">
					<h1>We Are Here To Serve You</h1>
						<div class="prap">
						<p>Buy Your Best Product</p>
						</div>
				</div>
			</div>
			<div class="flex-item1" id="flex-image">
				<div class="content2">
					<img src="img/g3.jpg" alt="Image">
				</div>
			</div>
		</div>
	</section>
	<section id="c">
	<section class="contact">
		<div class="header">
			<h1>Contact Us</h1>
		</div>
		<!---header--->
		<!---main--->
			<div class="main-content">
				<div class="contact-w3">

					<form action="send_form_email.php" method="post">
						<label>Name</label>
						<input type="text" name="name" placeholder="Your name" required>
						<div class="row">
							<div class="contact-left-w3">
								<label>Email</label>
									<input type="text" name="email" placeholder="Email address" required>
							</div>
							<div class="contact-right-w3l">
								<label>Phone</label>
								<input type="text" name="phone" placeholder="Phone number" required>
							</div>
							<div class="clear"></div>
						</div>
						<label>Subject</label>
							<input type="text" name="subject" placeholder="Subject" required>
						<div class="row1">
							<label>Message</label>
							<textarea placeholder="Message" name="message"></textarea>
						</div>
						<input type="submit" value="Send message">
					</form>
				</div>
			</div>
		<div class="footer-w3-agile">
			<p>PLEASE GIVE YOUR FEEDBACK</p>
		</div>
		<?php
if(isset($_POST['email'])) {
 
    // EDIT THE 2 LINES BELOW AS REQUIRED
    $email_to = "megharaghav1414@gmail.com";
    $email_subject = "Message from xyz";
 
    function died($error) {
        // your error code can go here
        echo "We are very sorry, but there were error(s) found with the form you submitted. ";
        echo "These errors appear below.<br /><br />";
        echo $error."<br /><br />";
        echo "Please go back and fix these errors.<br /><br />";
        die();
    }
 
 
    // validation expected data exists
    if(!isset($_POST['name']) ||
        !isset($_POST['email']) ||
        !isset($_POST['phone']) ||
        !isset($_POST['subject']) ||
        !isset($_POST['message'])) {
        died('We are sorry, but there appears to be a problem with the form you submitted.');       
    }
 
     
 
    $name = $_POST['name']; // required
    $email_from = $_POST['email']; // required
    $phone = $_POST['phone']; // required
    $subject = $_POST['subject']; // required
    $message = $_POST['message']; // required
    
 
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
 
  if(!preg_match($email_exp,$email_from)) {
    $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
  }
 
    $string_exp = "/^[A-Za-z .'-]+$/";
 
  if(!preg_match($string_exp,$name)) {
    $error_message .= 'The Name you entered does not appear to be valid.<br />';
  }
 
   
  if(strlen($message) < 1) {
    $error_message .= 'The Comments you entered do not appear to be valid.<br />';
  }
 
  if(strlen($error_message) > 0) {
    died($error_message);
  }
 
    $email_message = "Form details below.\n\n";
 
     
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
 
     
 
    $email_message .= "First Name: ".clean_string($name)."\n";
    $email_message .= "Email: ".clean_string($email_from)."\n";
    $email_message .= "Phone: ".clean_string($phone)."\n";
    $email_message .= "Subject: ".clean_string($subject)."\n";
    $email_message .= "Message: ".clean_string($message)."\n";
 
// create email headers
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers);  
?>
 
<!-- include your own success html here -->
 
Thank you for contacting us. We will be in touch with you very soon.
 
<?php
 
}
?>
<div class="form_box shadow">
 <form method="post" action="feed.php">
 <div class="heading">
   YOUR FEEDBACK MATTERS
 </div>
 <br/>
 <p>What do you think about the quality of our products?</p>
 <div>
   <div class="pic">
     <img src="bad.jpg" alt="" width='40' height='40'> <br/>
     <input type="radio" name="quality" value="0"> Bad
   </div>
   <div class="pic">
     <img src="neutral.jpg" alt="" width='40' height='40'> <br/>
     <input type="radio" name="quality" value="1"> Okay
   </div>
   <div class="pic">
     <img src="good.jpg" alt="" width='40' height='40'> <br/>
     <input type="radio" name="quality" value="2"> Good
   </div>
 </div>
 
 <p>Do you have any suggestion for us? </p>
 <textarea name=" suggestion" rows="8" cols="40"></textarea>
  <input type="submit" name="submit" value="Submit Form">
</form>
 </div>

</section>
</section>


</body>

</html>