<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);
if (strlen($_SESSION['agrouid']==0)) {
  header('location:logout.php');
  } else{ ?>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>KRISHAN BAZAR WEBSITE-User Dashboard</title>
    
                <div class="card-header white">
                    <h6>Dashboard </h6>
                </div>
                
                            <?php
                           $uid=$_SESSION['agrouid'];

 $query=mysqli_query($con,"select ID from tblapplyjob where UserId='$uid' && date(ApplyDate)=CURDATE();");
$count_today_appjob=mysqli_num_rows($query);
 ?> 
                            <h5 class="font-weight-normal s-14">Today's Applied Jobs</h5>
                            <span class="s-48 font-weight-lighter text-primary"><?php echo $count_today_appjob;?></span>
                            
                        </div>
                        <div class="p-5">
                            <?php
                           $uid=$_SESSION['agrouid'];

 $query1=mysqli_query($con,"select ID from tblapplyjob where UserId='$uid' && date(ApplyDate)=DATE(NOW()) - INTERVAL 1 DAY");
$count_yday_appjob=mysqli_num_rows($query1);
 ?> 
                            <h5 class="font-weight-normal s-14">Yesterday Applied Jobs</h5>
                            <span class="s-48 font-weight-lighter light-green-text"><?php echo $count_yday_appjob;?></span>
                            
                        </div>
                        <div class="p-5 light">
                            <?php
                           $uid=$_SESSION['agrouid'];
//Last Sevendays applied Jobs
 $query2=mysqli_query($con,"select ID from tblapplyjob where UserId='$uid' && date(ApplyDate)=DATE(NOW()) - INTERVAL 7 DAY");
$count_sevenday_appjob=mysqli_num_rows($query2);
 ?> 
                            <h5 class="font-weight-normal s-14">Last 7 Days Applied Jobs</h5>
                            <span class="s-48 font-weight-lighter text-primary"><?php echo $count_sevenday_appjob;?></span>
                           
                        </div>
                        <div class="p-5">
                            <?php
                           $uid=$_SESSION['agrouid'];
//Total applied Jobs
 $query3=mysqli_query($con,"select ID from tblapplyjob where UserId='$uid'");
$count_total_appjob=mysqli_num_rows($query3);
 ?>
                            <h5 class="font-weight-normal s-14">Total Applied Jobs</h5>
                            <span class="s-48 font-weight-lighter amber-text"><?php echo $count_total_appjob;?></span>
                            
                        </div>
                       
                           

                            
                       
</body>
</html>

