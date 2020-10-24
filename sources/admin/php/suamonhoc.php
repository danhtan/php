<?php
    include '../../php/connect.php';
    $id = $_POST['ID'];
    $tenmon = $_POST['tenMonHoc'];
    $sql = "update monhoc set TenMonHoc = '$tenmon' where id = '$id'";
    mysqli_query($conn, $sql);
    mysqli_close($conn);
    echo "Sửa thành công";
?>