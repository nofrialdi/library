<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{ 

if(isset($_POST['return']))
{
$rid=intval($_GET['rid']);
$fine=$_POST['fine'];
$rstatus=1;
$sql="update tblissuedbookdetails set fine=:fine,RetrunStatus=:rstatus where id=:rid";
$query = $dbh->prepare($sql);
$query->bindParam(':rid',$rid,PDO::PARAM_STR);
$query->bindParam(':fine',$fine,PDO::PARAM_STR);
$query->bindParam(':rstatus',$rstatus,PDO::PARAM_STR);
$query->execute();

$_SESSION['msg']="Buku berhasil dikembalikan";
header('location:manage-issued-books.php');



}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Perpustakaan Online</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script>
// function for get student name
function getstudent() {
$("#loaderIcon").show();
jQuery.ajax({
url: "get_student.php",
data:'studentid='+$("#studentid").val(),
type: "POST",
success:function(data){
$("#get_student_name").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

//function for book details
function getbook() {
$("#loaderIcon").show();
jQuery.ajax({
url: "get_book.php",
data:'bookid='+$("#bookid").val(),
type: "POST",
success:function(data){
$("#get_book_name").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

</script> 
<style type="text/css">
  .others{
    color:red;
}

</style>


</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wra
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Edit Peminjaman</h4>
                
                            </div>

</div>
<div class="row">
<div class="col-md-10 col-sm-6 col-xs-12 col-md-offset-1"">
<div class="panel panel-info">
<div class="panel-heading">
Edit Peminjaman
</div>
<div class="panel-body">
<form role="form" method="post">
<?php 
$rid=intval($_GET['rid']);
$sql = "SELECT tblstudents.FullName,tblbooks.BookName,tblbooks.ISBNNumber,tblbooks.BookPrice,tblissuedbookdetails.IssuesDate,tblissuedbookdetails.ReturnDate,tblissuedbookdetails.Batas,tblissuedbookdetails.id as rid,tblissuedbookdetails.fine,tblissuedbookdetails.RetrunStatus from  tblissuedbookdetails join tblstudents on tblstudents.StudentId=tblissuedbookdetails.StudentId join tblbooks on tblbooks.id=tblissuedbookdetails.BookId where tblissuedbookdetails.id=:rid";
$query = $dbh -> prepare($sql);
$query->bindParam(':rid',$rid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{               ?>                                      
                   



<div class="form-group">
<label>Nama :</label>
<?php echo htmlentities($result->FullName);?>
</div>

<div class="form-group">
<label>Judul Buku :</label>
<?php echo htmlentities($result->BookName);?>
</div>


<div class="form-group">
<label>Kode Rak/Buku :</label>
<?php echo htmlentities($result->ISBNNumber);?>
</div>

<div class="form-group">
<label>Dipinjam Tanggal :</label>
<?php echo htmlentities($result->IssuesDate);?>
</div>

<div class="form-group">
<label>Batas Pengembalian Tanggal :</label>
<?php echo htmlentities($result->Batas);?>
</div>

<div class="form-group">
<label>Dikembalikan Tanggal / Status Pengembalian :</label>
<?php if($result->ReturnDate=="")
                                            {
                                                echo htmlentities("Buku Belum di Kembalikan");
                                            } else {


                                            echo htmlentities($result->ReturnDate);
}
                                            ?>
</div>

<div class="form-group">
<label>Harga Buku (Rp) :</label> Rp.
<?php echo number_format($result->BookPrice, 0, ".", ".");?>
</div>

<div class="form-group">
<label>Kondisi Buku :</label>
<select class="form-control" name="fine">
<option value="Baik"><?php echo htmlentities($result->fine);?></option>
    <option value="Baik">Baik</option>
    <option value="Rusak">Rusak</option>
    <option value="Hilang">Hilang</option>
    
</select>

</div>

<!-- <div class="form-group">
<label>Denda Kehilangan/Kerusakan (Rp) :</label>
<?php 
if($result->fine=="")
{?>
<input class="form-control" type="text" name="fine" id="fine"  required />

<?php }else {
echo htmlentities($result->fine);
}
?>
</div> -->
 <?php if($result->RetrunStatus==0){?> 

<button type="submit" name="return" id="submit" class="btn btn-info">Perbarui </button>


 </div>

 <?php }}} ?> 
                                    </form>
                            </div>
                        </div>
                            </div>

        </div>
   
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>

</body>
</html>
<?php } ?>
