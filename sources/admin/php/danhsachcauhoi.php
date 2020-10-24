<?php
    include '../../php/connect.php';
    session_start();
    $json=array();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="admin"){
        $id = $_GET['ID'];
        $sql = "select * from cauhoi where IDMH ='$id'";
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
                        $dapAn = $row2['DapAn'];
                        array_push($DapAn,array("ID"=>$IDDA, "IDCH"=>$IDCH, "NoiDung"=>$NoiDungDA,"DapAn"=>$dapAn));
                    }
                }
                array_push($json,array("ID"=>$ID, "NoiDung"=>$NoiDung, "DoKho"=>$DoKho, "IDMH"=>$IDMH, "DapAn"=>$DapAn));
            }
        }
        mysqli_close($conn);
    }
    echo json_encode($json);
?>