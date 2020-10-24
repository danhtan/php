<?php
    include '../../php/connect.php';
    session_start();
    $tenmon="";
    if(isset($_SESSION['tenmon'])){
        $tenmon = $_SESSION['tenmon'];
    }
    $json=(object) array("start"=>"1/1/2050 00:00", "end"=>"1/1/2050 01:00","thi"=>true);
    $sql = "select thoigianbatdau, thoigianketthuc from thoigian where thoigianbatdau<now() and thoigianketthuc>now() and IDMH = (select ID from monhoc where TenMonHoc='$tenmon')";
    $ret = mysqli_query($conn, $sql);
    if(mysqli_num_rows($ret) > 0){
        $row = mysqli_fetch_assoc($ret);
        $json->start = $row['thoigianbatdau'];
        $json->end = $row['thoigianketthuc'];
    }
    else{
        $json->thi = false;
        $sql = "select thoigianbatdau, thoigianketthuc from thoigian where thoigianbatdau>now() and IDMH = (select ID from monhoc where TenMonHoc='$tenmon')";
        $ret = mysqli_query($conn, $sql);
        if(mysqli_num_rows($ret) > 0){
            $row = mysqli_fetch_assoc($ret);
            $json->start = $row['thoigianbatdau'];
            $json->end = $row['thoigianketthuc'];
        }
    }
    echo json_encode($json);
    
    mysqli_close($conn);
?>