<?php
session_start();
include('connection/connect.php');
if(!isset($_SESSION['user_email'])){
  header('Location: index.php');
  exit();
}else{
    $user_email = $_SESSION['user_email'];
    $sql = "SELECT * FROM author WHERE email = '$user_email' ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $author_id = $row['id'];
    $f_name = $row['first_name'];
    $l_name = $row['last_name'];
    $full_name = $f_name.' '.$l_name;
    $email = $row['email'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
        type='text/css'>
    <link
        href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/style.css">
    <title>HOS Blog</title>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
        <span class="navbar-brand">HOS cPanel</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-warning" href="logout.php">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="alert alert-success mt-4" role="alert">
            Logged In As <span class=""><?php echo  $full_name?></span>
        </div>
        <form class="mt-4" method="POST" action="insert_post_action.php">
            <h2>Insert A New Post !</h2>
            <div class="form-group">
                <label for="exampleFormControlInput1">Post Title</label>
                <input type="text" name="post_title" class="form-control" id="exampleFormControlInput1"
                    placeholder="Insert Title">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Post Image (URL)</label>
                <input type="text" name="post_image" class="form-control" id="exampleFormControlInput1"
                    placeholder="Insert Your Image (URL)">
            </div>
            <div class="form-group">
                <input type="hidden" name="admin_id" class="form-control" id="exampleFormControlInput1"
                    value="<?php echo $author_id ?>">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Post Content</label>
                <textarea class="form-control" id="post_content" name="post_content" id="exampleFormControlTextarea1"
                    rows="3"></textarea>
            </div>
            <button type="submit" name="insert_post_btn" class="btn btn-primary">Insert</button>
        </form>
    </div>
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
</body>
</html>
<script>
    CKEDITOR.replace('post_content');
</script>