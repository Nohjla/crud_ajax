<?php require_once 'partials/header.php';?>
<?php require_once 'partials/navbar.php';?>
<?php require_once 'partials/dbcon.php';?>


<?php
	$id = $_GET['id'];
	$sql = "SELECT * FROM tbl_users WHERE id = $id";
	$result = mysqli_query($con,$sql);
?>

<div class="container">
  <div class=row>
  	<div class="col-lg-2"></div>
    <div class="col-lg-8">
      
      <div class="card">
      	<div class="card-header">Edit User</div>
      		<div class="card-body">
      			<form action="process_update.php" method="POST">

      			<?php while($row = mysqli_fetch_assoc($result)){?>

      				<input type="hidden" name="id" value="<?=$row['id']?>">

	      			<div class="form-group">

	      				<label>Username</label>
	      				<input type="text" class="form-control" name="username" value="<?=$row['uname']?>"></input>

	      			</div>

	      			<div class="form-group">

	      				<label>Password</label>
	      				<input type="password" class="form-control" name="password" value="<?=$row['password']?>"></input>

	      			</div>

	      			<input class="btn btn-success" type="submit" value="SUBMIT"></input>
	      			<input class="btn btn-warning" type="reset" value="CLEAR"></input>
	      			<?php } ?>
      			</form>
      		</div>

      </div>


    </div>
  </div>
</div>

 <?php require_once 'partials/footer.php';?>   

