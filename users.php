<?php require_once 'partials/header.php';?>

<?php require_once 'partials/navbar.php';?>

<?php require_once 'partials/dbcon.php';?>

<?php

$sql ="SELECT * FROM users";
$result = mysqli_query($con,$sql);

?>

<div class="container">
  <div class=row>
  	<div class="col-lg-2"></div>
    <div class="col-lg-8">
      
      <div class="card">
      	<div class="card-header">Users</div>
      		<div class="card-body">

      			<table class="table table-bordered">
      				<tr>
      					<th>ID</th>
      					<th>Usernames</th>
      					<th>Password</th>
      					<th colspan="2">Actions</th>
      				</tr>
      				<?php while ($row = mysqli_fetch_assoc($result)){?>
      				<tr>
      					
      					<td> <?= $row['id']?></td>
      					<td> <?= $row['uname']?></td>
      					<td> <?= $row['password']?></td>
      					<td>
      						<a href="edit_user.php?id=<?= $row['id']?>">Edit</a>
      					</td>
      					<td>
      						<a  onclick="return confirm('sure ka?')" href="delete_user.php?id=<?= $row['id']?>">Delete</a>
      					</td>
      				</tr>

      				<?php } ?>

      			</table>

      		</div>

      </div>


    </div>
  </div>
</div>

 <?php require_once 'partials/footer.php';?>   

