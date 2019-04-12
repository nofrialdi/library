<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{ 
if(isset($_POST['update']))
{    
$sid=$_SESSION['stdid'];  
$fname=$_POST['fullanme'];
$pangkat=$_POST['pangkat'];
$nrp=$_POST['nrp'];
$jabatan=$_POST['jabatan'];
$satuan=$_POST['satuan'];
$mobileno=$_POST['mobileno'];

$sql="update tblstudents set FullName=:fname,MobileNumber=:mobileno,Pangkat=:pangkat,Nrp=:nrp,Jabatan=:jabatan,Satuan=:satuan where StudentId=:sid";
$query = $dbh->prepare($sql);
$query->bindParam(':sid',$sid,PDO::PARAM_STR);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
$query->bindParam(':pangkat',$mobileno,PDO::PARAM_STR);
$query->bindParam(':nrp',$mobileno,PDO::PARAM_STR);
$query->bindParam(':jabatan',$mobileno,PDO::PARAM_STR);
$query->bindParam(':satuan',$mobileno,PDO::PARAM_STR);
$query->execute();

echo '<script>alert("Profil Berhasil diperbarui")</script>';
}

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>pPerpustakaan Online</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> 

</head>
<body>
    <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Profil Saya</h4>
                
                            </div>

        </div>
             <div class="row">
           
<div class="col-md-9 col-md-offset-1">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           Profil Saya
                        </div>
                        <div class="panel-body">
                            <form name="signup" method="post">
<?php 
$sid=$_SESSION['stdid'];
$sql="SELECT StudentId,FullName,EmailId,MobileNumber,RegDate,UpdationDate,Status,Pangkat,Nrp,Jabatan,Satuan from  tblstudents  where StudentId=:sid ";
$query = $dbh -> prepare($sql);
$query-> bindParam(':sid', $sid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{               ?>  

<div class="form-group">
<label>Nomor KTA : </label>
<?php echo htmlentities($result->StudentId);?>
</div>

<div class="form-group">
<label>Tanggal Registrasi : </label>
<?php echo htmlentities($result->RegDate);?>
</div>
<?php if($result->UpdationDate!=""){?>
<div class="form-group">
<label>Last Updation Date : </label>
<?php echo htmlentities($result->UpdationDate);?>
</div>
<?php } ?>


<div class="form-group">
<label>Status Profil: </label>
<?php if($result->Status==1){?>
<span style="color: green">Aktif</span>
<?php } else { ?>
<span style="color: red">Blokir</span>
<?php }?>
</div>


<div class="form-group">
<label>Nama</label>
<input class="form-control" type="text" name="fullanme" value="<?php echo htmlentities($result->FullName);?>" autocomplete="off" required />
</div>

<div class="form-group">
<label>Pangkat / Golongan</label>
<input class="form-control" type="text" name="pangkat" value="<?php echo htmlentities($result->Pangkat);?>" autocomplete="off" required />
</div>

<div class="form-group">
<label>NRP / NIP</label>
<input class="form-control" type="text" name="nrp" value="<?php echo htmlentities($result->Nrp);?>" autocomplete="off" required />
</div>

<div class="form-group">
<label>Jabatan</label>
<input class="form-control" type="text" name="jabatan" value="<?php echo htmlentities($result->Jabatan);?>" autocomplete="off" required />
</div>

<div class="form-group">
<label>Satuan</label>
<input class="form-control" type="text" name="satuan" value="<?php echo htmlentities($result->Satuan);?>" autocomplete="off" required />
</div>




<div class="form-group">
<label>No Telp :</label>
<input class="form-control" type="text" name="mobileno" maxlength="10" value="<?php echo htmlentities($result->MobileNumber);?>" autocomplete="off" required />
</div>
                                        
<div class="form-group">
<label>Email</label>
<input class="form-control" type="email" name="email" id="emailid" value="<?php echo htmlentities($result->EmailId);?>"  autocomplete="off" required  />
</div>
<?php }} ?>
                              
<button type="submit" name="update" class="btn btn-primary" id="submit">Perbarui </button>

                                    </form>
                            </div>
                        </div>
                            </div>
        </div>
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
    <?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
