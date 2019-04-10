<?php
session_start();
error_reporting(0);
include('includes/config.php');
if($_SESSION['login']!=''){
$_SESSION['login']='';
}
if(isset($_POST['login']))
{
  //code for captach verification
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  {
        echo "<script>alert('Incorrect verification code');</script>" ;
    } 
        else {
$email=$_POST['emailid'];
$password=md5($_POST['password']);
$sql ="SELECT EmailId,Password,StudentId,Status FROM tblstudents WHERE EmailId=:email and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

if($query->rowCount() > 0)
{
 foreach ($results as $result) {
 $_SESSION['stdid']=$result->StudentId;
if($result->Status==1)
{
$_SESSION['login']=$_POST['emailid'];
echo "<script type='text/javascript'> document.location ='dashboard.php'; </script>";
} else {
echo "<script>alert('Your Account Has been blocked .Please contact admin');</script>";

}
}

} 

else{
echo "<script>alert('Invalid Details');</script>";
}
}
}
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Grass login & Sign up Form a Flat Responsive Widget Template :: w3layouts </title>
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Grass login & Sign up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
         />
      <script>
         addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
      </script>
      <!-- Meta tags -->
      <!-- font-awesome icons -->
      <link href="assets/login/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="assets/login/css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Barlow:300,400,500" rel="stylesheet">
   </head>
   <body>
      <h1 class="header-w3ls">
         
      </h1>
      <div class="art-bothside">
         <div class="sap_tabs">
            <div id="horizontalTab">
               <ul class="resp-tabs-list">
                  <li class="resp-tab-item"><span>Login User</span></li>
                  <li class="resp-tab-item"><span>Login Admin</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
                        <form role="form" method="post">
                           <div class="main">
                              <div class="icon-head-wthree">
                                 <h2>Login User</h2>
                              </div>
                              <div class="form-left-w3l">
                                 <input type="email" name="emailid" placeholder="Email" >
                              </div>
                              <div class="form-right-w3ls ">
                                 <input type="password" name="password" placeholder="Password" >
                              </div>
                               <div class="form-group">
                                 <label style="color: #fff;">Verification code : </label>
                                 <input type="text" class="form-control1"  name="vercode" maxlength="5" autocomplete="off"  style="height:25px;" />&nbsp;<img src="captcha.php">
                                 </div> 
                                 
                              <!-- <div class="btnn">
                                 
                                 <a href="#" class="for">Forgot password...?</a>  
                              </div> -->
                              <div class="social-icons">
                              <ul>
                                 <li>
                                    <a href="#">
                                    <button width="300px" type="submit" name="login" >LogIn</button>
                                    </a>
                                 </li>
                                 <li>
                                    
                                    <a href="signup.php">
                                    <button width="300px" style="background-color: #f47721; width: 200px; height: 40px; font-size: 15px;text-decoration:none; border: 0; color: #fff;" type="button" >Daftar</button>
                                    </a>
                                 
                                 </li>
                               
                              </ul>
                           </div>
                           </div>
                        </form>
                     </div>
                  </div>
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-left-w3ls">
                        <form action="login_script.php" method="post">
                           <div class="main">
                              <div class="icon-head-wthree">
                                 <h2>Login Admin</h2>
                              </div>
                              <div class="form-left-to-w3l">
                                 <input type="text" name="username" placeholder="Name" >
                              </div>
                              <!-- <div class="form-left-w3l">
                                 <input type="email" name="email" placeholder="Email" required="">
                              </div> -->
                              <div class="form-right-w3ls ">
                                 <input type="password" name="password" placeholder="Password">
                              </div>
                              <div class="form-group">
                              <label style="color: #fff">Verification code : </label>
                              <input type="text"  name="vercode" maxlength="5" autocomplete="off" style="width: 150px; height: 25px;" />&nbsp;<img src="captcha.php">
                              </div>  <br>
                              <div class="btnn">
                                 <button type="submit" name="login">Login</button><br>

                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <div class="copy">
         <p>&copy;2018 Grass login & Sign up Form. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a></p>
      </div>
      <!--js working-->
      <script src='assets/login/js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <script src="assets/login/js/easyResponsiveTabs.js"></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true // 100% fit in a container
         	});
         });
      </script>
   </body>
</html>