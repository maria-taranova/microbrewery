<?php
include 'dbconfig.php';
if(isset($_POST['btn-new-user']))
{
	    
    $lname = $_POST['lname'];
	$fname = $_POST['fname'];
    $city = $_POST['city'];
	$email = $_POST['email'];
    $pcode = $_POST['pcode'];
	$password = $_POST['password'];
	
	if($crud->createuser($lname, $fname, $city, $email, $pcode, $password))
	{
		header("Location: create-account.php?user-created");
	}
	else
	{
		header("Location: create-account.php?failure");
	}
}
?>
<?php include_once 'header.php'; ?>
<div class="clearfix"></div>

<?php
if(isset($_GET['inserted']))
{
	?>
    <div class="container">
	<div class="alert alert-info">
    <strong>WOW!</strong> Record was inserted successfully <a href="index.php">HOME</a>!
	</div>
	</div>
    <?php
}
else if(isset($_GET['failure']))
{
	?>
    <div class="container">
	<div class="alert alert-warning">
    <strong>SORRY!</strong> ERROR while inserting record !
	</div>
	</div>
    <?php
}
?>


<!--For MD: to add a new record-->

<div class="clearfix"></div><br />

<div class="container">

 	
	 <form id="email_form" method='post'>
 
    <table class='table table-bordered'>
 
         <tr>
            <td>Last name</td>
            <td><input type='text' name='lname' class='form-control' required></td>
        </tr>
 
        
        <tr>
            <td>First name</td>
            <td><input type='text' name='fname' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>City</td>
            <td><input type='text' name='city' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>Postal Code</td>
            <td><input type='text' name='pcode' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>Email</td>
            <td><input type='email' name='email' class='form-control' required></td>
        </tr>
         <tr>
            <td>Password</td>
            <td><input type='password' name='password' class='form-control' required></td>
        </tr>

 
        <tr>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-new-user" >
    		<span class="glyphicon glyphicon"></span> Create New Account
			</button>  
            <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to index</a>
            </td>
        </tr>
 
    </table>
</form>
     
     
</div>

<?php include 'footer.php'; ?>