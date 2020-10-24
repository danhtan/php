<?php
    session_start();
    $json=array();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="user"){
        include '../../php/connect.php';
        $sql= "select ID,TenMonHoc from monhoc";
        $result = mysqli_query($conn,$sql);
        // class MonHoc{
        //     public $ID;
        //     public $TenMonHoc;
        // }
        if (mysqli_num_rows($result) > 0) {
            // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
                $ID= $row["ID"];
                $TenMonHoc = $row["TenMonHoc"];
                array_push($json,array("ID"=>$ID, "TenMonHoc"=>$TenMonHoc));
            }
            // $row = mysqli_fetch_assoc($result);
        }
        mysqli_close($conn);
    }
    echo json_encode($json);
?>