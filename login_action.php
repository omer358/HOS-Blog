<?php
include('connection/connect.php');
if(isset($_POST['login_btn'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM author WHERE password = '$password' AND email = '$email' ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $db_email = $row['email'];

    if($db_email !=''){
        // start session and store email value in the session
        session_start();
        $_SESSION['user_email'] = $db_email;        
        // Redirect user to index.php
        header("Location: insert_post.php");
    }
    else{
        // header("Location: login.php");
    }
}
?>