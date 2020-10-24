<?php
    include '../../php/connect.php';
    $id = $_POST['ID'];
    $sql= "delete from thoigian where ID = '$id'";
    mysqli_query($conn,$sql);
    echo "Xóa thành công";
    mysqli_close($conn);
?>