<?php
    include '../../php/connect.php';
    $IDMH = $_POST['IDMH'];
    $sql = "select SoCauTrongDe from monhoc where ID = '$IDMH'";
    $result = mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)>0){
       $row = mysqli_fetch_assoc($result);
       echo $row['SoCauTrongDe'];
    }
    else{
        echo 10;
    }
    mysqli_close($conn);
?>