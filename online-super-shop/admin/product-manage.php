<?php
require('top.inc.php');

isAdmin();

$name        = '';
$description = '';
$price       = '';
$rrp         = '';
$quantity    = '';
$img         = '';
$msg         = '';
if(isset($_GET['id']) && $_GET['id'] != '')
{
    $id    = get_safe_value($con, $_GET['id']);
    $res   = mysqli_query($con, "select * from products where id='$id'");
    $check = mysqli_num_rows($res);
    if($check > 0)
    {
        $row         = mysqli_fetch_assoc($res);
        $name        = $row['name'];
        $description = $row['description'];
        $price       = $row['price'];
        $rrp         = $row['rrp'];
        $quantity    = $row['quantity'];
        $img         = $row['img'];
    }
    else
    {
        header('location:products.php');
        die();
    }
}

if(isset($_POST['submit']))
{
    $name        = get_safe_value($con, $_POST['name']);
    $description = $_POST['description'];
    $price       = $_POST['price'];
    $rrp         = $_POST['rrp'];
    $quantity    = $_POST['quantity'];

    $res   = mysqli_query($con, "select * from products where name='$name'");
    $check = mysqli_num_rows($res);
    if($check > 0)
    {
        if(isset($_GET['id']) && $_GET['id'] != '')
        {
            $getData = mysqli_fetch_assoc($res);
            if($id == $getData['id'])
            {
            }
            else
            {
                $msg = "PRODUCTS ALREADY EXIST";
            }
        }
        else
        {
            $msg = "PRODUCTS ALREADY EXIST";
        }
    }

    if($msg == '')
    {
        $uploadedName = time() . '-' . $_FILES["image"]["name"];
        $uploadedDir  = '../uploads/' . $uploadedName;
        if(move_uploaded_file($_FILES["image"]["tmp_name"], $uploadedDir))
        {
            $img = 'uploads/' . $uploadedName;;
        }

        if(isset($_GET['id']) && $_GET['id'] != '')
        {
            mysqli_query($con, "update products set name='$name', description='$description', price=$price, rrp=$rrp, quantity=$quantity, img='$img' where id='$id'");
        }
        else
        {
            $sql = "INSERT INTO products (name, description, price, rrp, quantity, img) VALUES ('$name', '$description', $price, $rrp, $quantity, '$img')";
            mysqli_query($con, $sql);
        }

        header('location:products.php');
        die();
    }
}
?>

    <div class="content pb-0">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header"><strong>PRODUCTS FORM</strong></div>
                        <form method="post" enctype="multipart/form-data">
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="name" class=" form-control-label">Name</label>
                                    <input type="text" name="name" class="form-control" value="<?php echo $name ?>" required />
                                </div>

                                <div class="form-group">
                                    <label for="description" class=" form-control-label">Description</label>
                                    <textarea name="description" class="form-control"><?php echo $description ?></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="price" class=" form-control-label">Price</label>
                                    <input type="number" name="price" class="form-control" value="<?php echo $price ?>" required />
                                </div>

                                <div class="form-group">
                                    <label for="rrp" class=" form-control-label">RRP</label>
                                    <input type="number" name="rrp" class="form-control" value="<?php echo $rrp ?>" required />
                                </div>

                                <div class="form-group">
                                    <label for="quantity" class=" form-control-label">Stock Quantity</label>
                                    <input type="number" name="quantity" class="form-control" value="<?php echo $quantity ?>" required />
                                </div>

                                <div class="form-group">
                                    <label for="image" class=" form-control-label">Image</label>
                                    <div>
                                        <?php if(!empty($img)){ ?>
                                            <img src="http://localhost/online-super-shop/<?php echo $img; ?>" width="50" style="float:left;width:50px;" />
                                            <input type="file" name="image" class="form-control" style="display:inline-block;float:left;width:300px;" />
                                        <?php } else{ ?>
                                            <input type="file" name="image" class="form-control" required />
                                        <?php } ?>
                                    </div>
                                    <br/>
                                    <br/>
                                </div>

                                <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
                                    <span id="payment-button-amount">SUBMIT</span>
                                </button>

                                <div class="field_error">
                                    <?php echo $msg; ?>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php require('footer.inc.php'); ?>