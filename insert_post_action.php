<?php
include('connection/connect.php');
if(isset($_POST['insert_post_btn'])){
    $post_title = $_POST['post_title'];
    $post_image = $_POST['post_image'];
    $post_content = $_POST['post_content'];
    $admin_id = $_POST['admin_id'];

    $sql = "INSERT INTO posts (title, image, content, author_id)
    VALUES ('$post_title', '$post_image', '$post_content', '$admin_id')";
    
    if (mysqli_query($conn, $sql)) {
      header("Location: index.php");
      echo "New record created successfully";
    } 
}
?>