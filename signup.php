<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_POST['signup']))
{
//code for captach verification
if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  {
        echo "<script>alert('Incorrect verification code');</script>" ;
    } 
        else {    
//Code for student ID
$count_my_page = ("studentid.txt");
$hits = file($count_my_page);
$hits[0] ++;
$fp = fopen($count_my_page , "w");
fputs($fp , "$hits[0]");
fclose($fp); 
$StudentId= $hits[0];   
$fname=$_POST['fullanme'];
$pangkat=$_POST['pangkat'];
$nrp=$_POST['nrp'];
$jabatan=$_POST['jabatan'];
$satuan=$_POST['satuan'];
$mobileno=$_POST['mobileno'];
$email=$_POST['email']; 
$password=md5($_POST['password']); 
$status=1;
$sql="INSERT INTO  tblstudents(StudentId,FullName,MobileNumber,EmailId,Password,Status,Pangkat,NRP,Jabatan,Satuan) VALUES(:StudentId,:fname,:mobileno,:email,:password,:status,:pangkat,:nrp,:jabatan,:satuan)";
$query = $dbh->prepare($sql);
$query->bindParam(':StudentId',$StudentId,PDO::PARAM_STR);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->bindParam(':pangkat',$pangkat,PDO::PARAM_STR);
$query->bindParam(':nrp',$nrp,PDO::PARAM_STR);
$query->bindParam(':jabatan',$jabatan,PDO::PARAM_STR);
$query->bindParam(':satuan',$satuan,PDO::PARAM_STR);

$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo '<script>alert("Registrasi Anda berhasil dan ID Anggota Anda  "+"'.$StudentId.'")</script>';
}
else 
{
echo "<script>alert('Ada yang salah. Silakan coba lagi');</script>";
}
}
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Daftar Anggota Perpustakaan</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <script type="text/javascript">
        function valid()
        {
        if(document.signup.password.value!= document.signup.confirmpassword.value)
        {
        alert("Kata Sandi dan Konfirmasi Kata Sandi tidak cocok !!");
        document.signup.confirmpassword.focus();
        return false;
        }
        return true;
        }
    </script>
    
    <script>
        function checkAvailability() {
        $("#loaderIcon").show();
        jQuery.ajax({
        url: "check_availability.php",
        data:'emailid='+$("#emailid").val(),
        type: "POST",
        success:function(data){
        $("#user-availability-status").html(data);
        $("#loaderIcon").hide();
        },
        error:function (){}
        });
        }
    </script>    

	<!-- Custom Theme files -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->

</head>
<body>

<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>Daftar Anggota Perpustakaan</h1>
		<div class="header-main">
			<!-- <div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div> -->
			<div class="header-left-bottom">
				<form  name="signup" method="post" onSubmit="return valid();">
                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="text" name="fullanme" placeholder="Nama" >
                    </div>
					
					<div class="icon1">
						<span class="fa fa-user"></span>
						<input type="text" name="pangkat" placeholder="Pangkat / Golongan" >
					</div>

                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="text" name="nrp" placeholder="NRP / NIP " >
                    </div>
                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="text" name="jabatan" placeholder="Jabatan" >
                    </div>
                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="text" name="satuan" placeholder="Satuan" >
                    </div>
                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="text" name="mobileno" placeholder="No Telp" >
                    </div>

                    <div class="icon1">
                        <span class="fa fa-user"></span>
                        <input type="email" placeholder="Email" name="email" required=""/>
                    </div>

					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input type="password" placeholder="Password" name="password" />
					</div>

                    <div class="icon1">
                        <span class="fa fa-lock"></span>
                        <input type="password" placeholder="Konfirmasi Password" name="confirmpassword" />
                    </div>
                    <div align="center">
                        <img src="captcha.php">
                    </div>

                    <div class="icon1">
                        <span class="fa fa-lock"></span>
                        <input type="text"  name="vercode" placeholder="kode verifikasi" maxlength="5" autocomplete="off" required style="width: 150px; height: 25px;" />
                    </div>


					<!-- <div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Keep me logged in</label>
					</div> -->
					<div class="bottom">
						<button class="btn" name="signup">Daftar</button>
					</div>

                    <div class="bottom">
                        <a href="index.php">
                        <button class="btn" type="button" >Masuk</button>
                        </a>
                    </div>
					<!-- <div class="links">
						<p><a href="#">Forgot Password?</a></p>
						<p class="right"><a href="#">New User? Register</a></p>
						<div class="clear"></div>
					</div> -->
				</form>	
			</div>
			<!-- <div class="social">
				<ul>
					<li>or login using : </li>
					<li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" class="twitter"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#" class="google"><span class="fa fa-google-plus"></span></a></li>
				</ul>
			</div>
		</div> -->
		
		<!-- copyright -->
<br>
        <div class="copy">
                   <p style="color: #fff" align="center">&copy;2019 Perpustakaan Online |<a style="color: #fff" href="" target="_blank"  > Designed by : Mabes TNI</a></p> 
                </div>
		<!-- <div class="copyright">
			<p>© 2019 Slide Login Form . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
		</div> -->
		<!-- //copyright --> 
	</div>
</div>	
<!-- //main -->

</body>
</html>