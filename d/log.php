<!DOCTYPE html>
<html lang="en">
<head>
<style>
body {
 background-image: url("img/5.jfif");
}
 .coll {
 background-image: url("img/4.jfif");
 background-color: #cccccc;
 padding:13%;
 margin:13px;
}
</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php include 'nav.php';?>
    <div class="container-fluid " >
        <div class="row">
        <div class="col"></div>
       
            <div class="col coll">
            <h2>login</h2>
            <form action="val.php" method="post">
            <div class="form-group">
            <label for="">username</label>
            <input type="text" name="user" class="form-control" required="required">
            </div>
            <div class="form-group">
            <label for="">password</label>
            <input type="text" name="pswd" class="form-control" required="required">
            </div>
            <input type="hidden" value="true" name="submitted"/>
            <button  type="submit"  class="btn btn-primary">login</button><br>
            <?php  
    if(isset($_GET['msg'])){
        echo $_GET['msg'];
    }
    ?>
        

            </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
    
</body>
</html>

