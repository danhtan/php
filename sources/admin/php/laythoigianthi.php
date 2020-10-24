<?php
    include '../../php/connect.php';
    $IDMH = $_POST['IDMH'];
    $sql = "select * from thoigian where IDMH = '$IDMH'";
    $json =array();
    $result = mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)>0){
        while($row = mysqli_fetch_assoc($result)) {
            $start = $row['thoigianbatdau'];
            $end = $row['thoigianketthuc'];
            $id = $row['ID'];
            array_push($json,array("start"=>$start,"end"=>$end,"ID"=>$id));
        }
    }
    echo json_encode($json);
    mysqli_close($conn);
?>