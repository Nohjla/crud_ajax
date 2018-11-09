<?php require_once 'partials/header.php';?>

<div class="embed-responsive embed-responsive-16by9">
  <iframe width="806" height="453" src="https://www.youtube.com/embed/93_py44rCo0?autoplay=1&iv_load_policy=3&loop=1&modestbranding=1&playlist=hID3pGSHn3U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>


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

