<?php
    include '../../php/connect.php';
    $cauhoi = json_decode($_POST['CH']);
    $sql = "update cauhoi set NoiDung = '$cauhoi->NoiDung', DoKho = '$cauhoi->DoKho' where ID = '$cauhoi->ID'";
    if (mysqli_query($conn, $sql)) {
        foreach($cauhoi->DapAn as $da){
            $sql="update dapan set NoiDung='$da->NoiDung', DapAn='$da->DapAn' where ID = '$da->ID'";
            mysqli_query($conn, $sql);
        }
        echo "Sửa thành công";
    }
    mysqli_close($conn);
    // echo json_encode($cauhoi);
?>