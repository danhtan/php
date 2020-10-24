<?php
    session_start();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="admin"){
        include "../../php/connect.php";
        $name = $_POST['name'];
        $sql="select * from MonHoc where TenMonHoc='$name'";
        $res=mysqli_query($conn,$sql);
        if (mysqli_num_rows($res) > 0) {
            echo "Trùng tên môn học";
        }else {
            $sql = "insert into MonHoc values (null,'$name',30)";
            mysqli_query($conn,$sql);
            echo "Thêm thành công môn $name";
        }

        mysqli_close($conn);
    }
    else{
        echo "Bạn không có quyền thêm môn học";
    }
?>