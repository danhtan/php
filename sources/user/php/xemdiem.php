<?php
    session_start();
    include '../../php/connect.php';
    $idtk=$_SESSION['ID'];
    $monhoc= $_POST['Ten'];
    $sqlIDMH = "select id from monhoc where TenMonHoc='$monhoc'";
    $result = mysqli_query($conn, $sqlIDMH);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $IDMH=$row['id'];
        $sqlDiem= "select Diem from diem where IDMH = '$IDMH' and IDTK = '$idtk'";
        $ret = mysqli_query($conn, $sqlDiem);
        if(mysqli_num_rows($ret) > 0){
            $row = mysqli_fetch_assoc($ret);
            echo $row['Diem'];
        }
        else{
            echo '-1';
        }
    }
    mysqli_close($conn);
?>