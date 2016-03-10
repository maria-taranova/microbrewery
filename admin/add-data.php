<?php
include 'dbconfig.php';
if(isset($_POST['btn-save']))
{
	    
    $title = $_POST['title'];
	$description = $_POST['description'];
    $price = $_POST['price'];
    $image = $_POST['image'];
	$vol = $_POST['vol'];
	$alcohol = $_POST['alcohol'];
    $inventory = $_POST['inventory'];
	
	if($crud->create($title,$price,$description,$alcohol,$image,$vol, $inventory))
	{
		header("Location: add-data.php?inserted");
	}
	else
	{
		header("Location: add-data.php?failure");
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

 	
	 <form method='post'>
 
    <table class='table table-bordered'>
 
         <tr>
            <td>Title</td>
            <td><input type='text' name='title' class='form-control' required></td>
        </tr>
 
        
        <tr>
            <td>Price</td>
            <td><input type='text' name='price' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>Description</td>
            <td><input type='text' name='description' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>Alcohol</td>
            <td><input type='text' name='alcohol' class='form-control' required></td>
        </tr>
 
        <tr>
            <td>Image</td>
            <td><input type='text' name='image' class='form-control' required></td>
        </tr>
         <tr>
            <td>Vol</td>
            <td><input type='number' name='vol' class='form-control' required></td>
        </tr>
   <tr>
            <td>Inventory</td>
            <td><input type='number' name='inventory' class='form-control' required></td>
        </tr>
 
        <tr>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-save">
    		<span class="glyphicon glyphicon-plus"></span> Create New Record
			</button>  
            <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to index</a>
            </td>
        </tr>
 
    </table>
</form>
     
     
</div>

<?php include 'footer.php'; ?>