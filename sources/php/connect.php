<?php
    // $servername = "localhost";
    // $username = "root";
    // $password = "";
    // $dtb="thitracnghiem";

     $servername = "remotemysql.com:3306";
     $username = "cKBwKpLNq7";
     $password = "hErPirQl9s";
     $dtb="cKBwKpLNq7";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password,$dtb);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    mysqli_set_charset($conn,"utf8");
?>