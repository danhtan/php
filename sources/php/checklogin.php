<?php
        // $servername = "localhost";
        // $username = "root";
        // $password = "";
        // $dtb="thitracnghiem";
        // // Create connection
        // $conn = mysqli_connect($servername, $username, $password,$dtb);

        // // Check connection
        // if (!$conn) {
        //     die("Connection failed: " . mysqli_connect_error());
        // }
        session_start();
        include 'connect.php';
        $tk = $_POST['username'];
        $mk = $_POST['password'];
        $sql = "SELECT * FROM taikhoan where TenTaiKhoan='$tk' and MatKhau='$mk'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            
            $row = mysqli_fetch_assoc($result);
            $_SESSION['ID']=$row['ID'];
            $_SESSION['username']=$row['TenTaiKhoan'];
            $_SESSION['quyen']=$row['Quyen'];
            echo $row["Quyen"];
        } else {
            echo "false";
        }
        mysqli_close($conn);
?>