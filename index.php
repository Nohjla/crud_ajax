<?php require_once 'partials/header.php';?>

<?php require_once 'partials/navbar.php';?>

<div class="container">
  <div class=row>
  	<div class="col-lg-2"></div>
    <div class="col-lg-8">
      
      <div class="card">
      	<div class="card-header">Registration Frorm</div>
      		<div class="card-body">
      			<form action="process_register.php" method="POST">
	      			<div class="form-group">

	      				<label>Username</label>
	      				<input type="text" class="form-control" name="username"></input>

	      			</div>

	      			<div class="form-group">

	      				<label>Password</label>
	      				<input type="password" class="form-control" name="password"></input>

	      			</div>

	      			<input class="btn btn-success" type="submit" value="SUBMIT"></input>
	      			<input class="btn btn-warning" type="reset" value="CLEAR"></input>
      			</form>
      		</div>

      </div>


    </div>
  </div>
</div>

 <?php require_once 'partials/footer.php';?>   

