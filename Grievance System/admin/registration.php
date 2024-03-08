
<?php
session_start();
include('include/config.php');
if(isset($_POST['submit']))
{
	$fullname=$_POST['name'];
	$password=md5($_POST['password']);
	$userType=$_POST['user_type'];
	$query=mysqli_query($bd, "insert into admin(username,password,user_type,updationDate) values('$fullname','$password','$userType',NOW())");
	$msg="Registration successfull!";
}

if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Closed Complaints</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+500+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>
</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Add Sub-Admin Complaints</h3>
							</div>
							<div class="module-body table">

								<form class="form-horizontal row-fluid" method="post">
								<p style="padding-left: 1%; color: green">
		        					<?php if($msg){
										echo htmlentities($msg);
		        					}?>
		       					 </p>

								    <div class="control-group">
										<label class="control-label" for="basicinput">Name</label>
										<div class="controls">
										<input type="text" placeholder="Enter Name"  name="name" class="span5 tip" required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="basicinput">Password</label>
										<div class="controls">
										<input type="text" placeholder="Enter Password"  name="password" class="span5 tip" required>
										</div>
									</div>
								      
									<div class="control-group">
										<label class="control-label" for="basicinput">User type</label>
										<div class="controls">
											<select name="user_type" class="form-control no-border span5 tip " required>
												<option value="1">Admin</option>
												<option value="2">Service-Manager</option>
												<option value="3">Service-Engineer</option>
											</select>										
										</div>
									</div>
									<br>	
									<div class="controls">
										<button type="submit" name="submit" class="btn  btn-theme">Create</button>
									</div>
								</form>	  	
							
								
							</div>
						</div>						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>