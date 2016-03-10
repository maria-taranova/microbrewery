<?php
include 'dbconfig.php';

if(isset($_POST['btn-create-user']))
{
    $lname = $_POST['lname'];
	$fname = $_POST['fname'];
    $city = $_POST['city'];
	$email = $_POST['email'];
    $pcode = $_POST['pcode'];
	$password = $_POST['password'];
	
	if($crud->createuser($lname, $fname, $city, $email, $pcode, $password))
	{
		header("Location: create-user.php?usercreated");
	}
	else
	{
		header("Location: create-user.php?failure");
	}
}
?>
<?php include 'header.php'; ?>


<div id="splashscreen"><!--start of splashscreen-->
  <div class="wrapper">
      <div class="form-signin" id="signin">
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control"  type="email" name="email" placeholder="email" id="email" required="" autofocus="" value="test@user.com" />
      <input type="password" class="form-control" name="password" placeholder="Password" id="password" required="" value="90"/>      
   
      <button class="btn btn-lg btn-primary btn-block enter_link" type="submit" id="sign-in">Login</button>   
      <a href="create-account.php" onclick="createAccount()">Create Account</a>
          <div id="hint"></div>
  </div>
        </div>


</div> <!--end of splashscreen-->


<div class="content-table">

<div class="container">
<a href="add-data.php" class="btn btn-large btn-info"><i class="glyphicon glyphicon-plus"></i> &nbsp; Add Records</a>
</div>

<div class="clearfix"></div><br />

<div class="container">
	 <table class='table table-bordered table-responsive'>
     <tr>
     <th>#</th>
     <th>Title</th>
    <th >Price</th>
     <th>Description</th>
     <th>Alcohol %</th>
     <th >Image</th>
     <th >Litres</th>
    <th>Inventory</th>
     <th colspan="2" align="center">Actions</th>
     </tr>
     <?php
		$query = "SELECT * FROM products";       
		$records_per_page=6;
		$newquery = $crud->paging($query,$records_per_page);
		$crud->dataview($newquery);
	 ?>
    <tr>
        <td colspan="10" align="center">
 			<div class="pagination-wrap">
            <?php $crud->paginglink($query,$records_per_page); ?>
        	</div>
        </td>
    </tr>
 
</table>
   
       
</div>
    </div>                


<?php include 'footer.php'; ?>

