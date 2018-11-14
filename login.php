<?php require_once 'partials/header.php';?>

<?php require_once 'partials/navbar.php';?>

<div class="container">
  <div class=row>
  	<div class="col-lg-2"></div>
    <div class="col-lg-8">
      
      <div class="card">
      	<div class="card-header">Login Form</div>
      		<div class="card-body">
      			<form action="users.php" id="form_login" method="POST">
	      			<div class="form-group">

	      				<label>Username</label>
	      				<input type="text" class="form-control" id="username" name="username">
	      				<p class="validation"></p>

	      			</div>

	      			<div class="form-group">

	      				<label>Password</label>
	      				<input type="password" class="form-control" id="password" name="password">
	      				<p class="validation"></p>
	      			</div>
	      			<p id="error_message"></p>
	      			<button id="btn_login" class="btn btn-success" type="button">Submit</button>
	      			<input class="btn btn-warning" type="reset" value="CLEAR"></input>
      			</form>
      		</div>

      </div>


    </div>
  </div>
</div>

<?php require_once 'partials/footer.php';?>   