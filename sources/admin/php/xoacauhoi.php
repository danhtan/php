<?php
    include '../../php/connect.php';
    $id = $_POST['ID'];
    $sql= "delete from dapan where IDCH = '$id'";
    mysqli_query($conn,$sql);
    $sql= "delete from cauhoi where ID = '$id'";
    mysqli_query($conn,$sql);
    echo "Xóa thành công";
    mysqli_close($conn);
?>