<?php
    session_start();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="admin"){
        include "../../php/connect.php";
        $tk = $_POST['tenTK'];
        $mk = $_POST['mK'];
        $sql = "select * from taikhoan where TenTaiKhoan = '$tk'";
        $result = mysqli_query($conn,$sql);
        if(mysqli_num_rows($result)>0){
            echo "Tên đăng nhập đã tồn tại";
        }
        else{
            $sql = "insert into taikhoan values(null,'$tk','$mk','user')";
            mysqli_query($conn, $sql);
            echo "Tạo thành công";
        }
        mysqli_close($conn);
    }
    else{
        echo "Bạn không có quyền tạo tài khoản";
    }
?>