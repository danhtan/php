<?php
    include "../../php/connect.php";
    session_start();
    $json=array();
    $idtk = $_SESSION['ID'];
    $sql = "select Diem, TenMonHoc from Diem,MonHoc where Diem.IDMH=MonHoc.ID and IDTK = '$idtk'";
    $ret = mysqli_query($conn, $sql);
    if(mysqli_num_rows($ret) > 0){
        // $row = mysqli_fetch_assoc($ret);
        while($row = mysqli_fetch_assoc($ret)) {
            $tenmon = $row['TenMonHoc'];
            $diem = $row['Diem'];
            array_push($json,array("TenMonHoc"=>$tenmon, "Diem"=>$diem));
        }
    }
    echo json_encode($json);
    mysqli_close($conn);
?>