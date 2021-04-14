<?php
include('connection/connect.php');
if(isset($_POST['reg_btn'])){
    $f_name = $_POST['first_name'];
    $l_name = $_POST['last_name'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $random_num = sprintf( "%04d", rand(0,9999));
    $user_name = $f_name.$random_num;

    $sql = "INSERT INTO author (first_name, last_name, password, email, username)
    VALUES ('$f_name', '$l_name', '$password', '$email', '$user_name')";
    
    if (mysqli_query($conn, $sql)) {
      header("Location: login.php");
    } else{
        header("Location: reg.php");
        echo"<script>alert('An Error Occured ! , Try Later')</sript>";
    }
}
?>