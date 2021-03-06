<?php
include('connection/connect.php');
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
    <title>posts List</title>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="index.php">HOS Blog</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="posts-list.php">Posts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">About Us</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="login.php"> Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead"
        style="background-image: url(https://www.dataquest.io/wp-content/uploads/2020/05/learn-data-science.jpg)">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>HOS Blog</h1>
                        <span class="subheading">Make The Complex Simple</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <?php
                $sql = "SELECT * FROM posts";
                $result = mysqli_query($conn, $sql);
                
                if (mysqli_num_rows($result) > 0) {
                  // output data of each row
                  while($row = mysqli_fetch_assoc($result)) {
                    $post_id = $row['id'];
                    $post_title = substr($row['title'], 0, 35);
                    $post_image = $row['image'];
                    $pub_date = $row['pub_date'];
                    $post_author = $row['author_id'];

                    //Getting Author Name By Using author_id Value From posts table
                    $author = "SELECT * FROM author WHERE id = $post_author";
                    $author_res = mysqli_query($conn, $author);
                    while($author_row = mysqli_fetch_assoc($author_res)) {
                        $f_name = $author_row['first_name'];
                        $l_name = $author_row['last_name'];
                        $full_name = $f_name.' '.$l_name;
                    }

                    echo '
                    <div class="card" style="width: 20rem;">
                    <img style="max-height:180px;object-fit:cover;" src="'.$post_image.'" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">'.$post_title.'...</h5>
                        <p class="post-meta">Posted by
                            <span class="font-weight-bold">'.$full_name.'</span> on '.date("M d, Y", strtotime($pub_date)).'</p>
                        <a href="post.php?post_id='.$post_id.'" class="btn btn-primary">Read More</a>
                    </div>
                    </div>
                    ';
                  }
                }
            ?>
        </div>
        <!-- Pager -->
        <!-- <div class="clearfix" style="border: radius 4px;">
            <button class="btn btn-primary float-right" href="#">
                More &rarr;
            </button>

        </div> -->
        <hr>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <p class="copyright text-muted">Copyright &copy; Hos Blog 2021</p>
                    </div>
                </div>
            </div>
        </footer>

</body>

</html>