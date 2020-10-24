<?php
    include '../../php/connect.php';
    session_start();
    $json=array();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="user"){
        $SoCau = 30;
        $ten="";
        if(isset($_SESSION['tenmon'])){
            $ten=$_SESSION['tenmon'];
        }
        $laysocau = "select SoCauTrongDe from monhoc where TenMonHoc='$ten'";
        $result = mysqli_query($conn,$laysocau);
        if(mysqli_num_rows($result)>0){
            $row = mysqli_fetch_assoc($result);
            $SoCau = $row['SoCauTrongDe'];
        }
        $sql = "select * from cauhoi where IDMH = (select ID from monhoc where TenMonHoc='$ten')";
        $result = mysqli_query($conn,$sql);
        if(mysqli_num_rows($result)>0){
            while($row = mysqli_fetch_assoc($result)) {
                $ID= $row["ID"];
                $NoiDung = $row["NoiDung"];
                $DoKho = $row["DoKho"];
                $IDMH = $row["IDMH"];
                $DapAn = array();
                $sql2="select * from DapAn where IDCH='$ID'";
                $res = mysqli_query($conn,$sql2);
                if(mysqli_num_rows($res)>0){
                    while($row2 = mysqli_fetch_assoc($res)){
                        $IDDA = $row2['ID'];
                        $IDCH = $ID;
                        $NoiDungDA = $row2['NoiDung'];
                        array_push($DapAn,array("ID"=>$IDDA, "IDCH"=>$IDCH, "NoiDung"=>$NoiDungDA));
                    }
                }
                shuffle($DapAn);
                array_push($json,array("ID"=>$ID, "NoiDung"=>$NoiDung, "DoKho"=>$DoKho, "IDMH"=>$IDMH, "DapAn"=>$DapAn));
            }
            shuffle($json);
        }
        mysqli_close($conn);
    }
    echo json_encode(array_slice($json,0,$SoCau));
?>