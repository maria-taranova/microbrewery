<?php
include 'dbconfig.php';
if(isset($_POST['btn-update']))
{
	$id = $_POST['id'];
    $title = $_POST['title'];
	$description = $_POST['description'];
    $alcohol = $_POST['alcohol'];
    $price = $_POST['price'];
	$vol = $_POST['vol'];
	$image = $_POST['image'];
    $inventory = $_POST['inventory'];
	
	if($crud->update($id, $title, $description, $alcohol,  $price, $vol, $image, $inventory))
	{
		$msg = "<div class='alert alert-info'>
				This beer was updated successfully <a href='index.php'>HOME</a>!
				</div>";
	}
	else
	{
		$msg = "<div class='alert alert-warning'>
				<strong>Nope</strong> didn't work
				</div>";
	}
}

if(isset($_GET['edit_id']))
{
	$id = $_GET['edit_id'];
	extract($crud->getID($id));	
}

?>
<?php include_once 'header.php'; ?>

<div class="clearfix"></div>

<div class="container">
<?php
if(isset($msg))
{
	echo $msg;
}
?>
</div>
<!--For MD: Edit data here-->

<div class="clearfix"></div><br />

<div class="container">
	 
     <form method='post'>
 
    <table class='table table-bordered'>
        
           <tr>
            <td>ID</td>
            <td><input name="id" value="<?php echo $id; ?>"/></td>
        </tr>
 
        <tr>
            <td>Beer title</td>
            <td><input type='text' name='title' class='form-control' value="<?php echo $title; ?>" required></td>
        </tr>
 
        <tr>
            <td>Description</td>
            <td><input type='text' name='description' class='form-control' value="<?php echo $description; ?>" required></td>
        </tr>
 
        <tr>
            <td>Alcohol %</td>
            <td><input type='textarea' name='alcohol' class='form-control' value="<?php echo $alcohol; ?>" required></td>
        </tr>
 
        
        <tr>
            <td>Price</td>
            <td><input type='text' name='price' class='form-control' value="<?php echo $price; ?>" required></td>
        </tr>
        
        <tr>
            <td>Litres</td>
            <td><input type='number' name='vol' class='form-control' value="<?php echo $vol; ?>" required></td>
        </tr>
            <tr>
            <td>Image preview</td>
            <td><img style='width: 100px;' src="<?php echo $image; ?>" class="preview-image"/></td>
        </tr>
        <tr>
            <tr>
            <td>Image path</td>
            <td><input type='text' name='image' class='form-control' value="<?php echo $image; ?>" required></td>
        </tr>
    <tr>
            <td>Inventory</td>
            <td><input type='text' name='inventory' class='form-control' value="<?php echo $inventory; ?>" required></td>
        </tr>
            <td colspan="2">
                <button type="submit" class="btn btn-primary" name="btn-update">
    			<span class="glyphicon glyphicon-edit"></span>  Update this Record
				</button>
                <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; CANCEL</a>
            </td>
        </tr>
 
    </table>
</form>
     
     
</div>

<?php include_once 'footer.php'; ?>