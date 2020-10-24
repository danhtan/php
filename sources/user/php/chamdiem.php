<?php
    session_start();
    include '../../php/connect.php';
    $soCauHoi = $_POST['SoCauHoi'];
    $diem=0;
    if($soCauHoi!=0){
        $dapAn= $_POST['DA'];
        $soDapAnDung=0;
        foreach($dapAn as $id){
            $sql = "SELECT * FROM DapAn where id='$id'";
            $result = mysqli_query($conn, $sql);
    
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                if($row['DapAn']==true){
                    $soDapAnDung++;
                }
               
            }
        }
        $tenmon= $_SESSION['tenmon'];
        $sqlIDMH = "select id from monhoc where TenMonHoc='$tenmon'";
        $result = mysqli_query($conn, $sqlIDMH);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $idmh=$row['id'];
            $diem =  10/$soCauHoi*$soDapAnDung;
            $idtk= $_SESSION['ID'];
            $sqlInsertDiem = "insert into diem values('$idmh','$idtk','$diem')";
            mysqli_query($conn,$sqlInsertDiem);
           
        }
    }
    else{
        $tenmon= $_SESSION['tenmon'];
        $sqlIDMH = "select id from monhoc where TenMonHoc='$tenmon'";
        $result = mysqli_query($conn, $sqlIDMH);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $idmh=$row['id'];
            $idtk= $_SESSION['ID'];
            $diem =0;
            $sqlInsertDiem = "insert into diem values('$idmh','$idtk','$diem')";
            mysqli_query($conn,$sqlInsertDiem);
           
        }
    }
   
    echo $diem;
    mysqli_close($conn);
?>