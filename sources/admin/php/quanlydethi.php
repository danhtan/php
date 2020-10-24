<?php
    include '../../php/connect.php';
    $IDMH = $_POST['IDMH'];
    $soLuong = $_POST['SL'];
    $sql = "update monhoc set SoCauTrongDe = $soLuong where id = '$IDMH'";
    mysqli_query($conn, $sql);
    mysqli_close($conn);
    echo "Cập nhật thành công";
?>