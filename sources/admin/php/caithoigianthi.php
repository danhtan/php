<?php
    include '../../php/connect.php';
    $start = $_POST['batDau'];
    $end = $_POST['ketThuc'];
    $IDMH = $_POST['IDMH'];
    $sql = "select * from thoigian where IDMH = '$IDMH' and ((thoigianbatdau <= '$start' and thoigianketthuc >= '$start') or (thoigianbatdau <= '$end' and thoigianketthuc >= '$end'))";
    $result = mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)>0){
        echo "Trùng lịch thi";
    }
    else{
        $sql = "insert into thoigian values(null,'$IDMH','$start','$end')";
        mysqli_query($conn, $sql);
        echo "Thêm lịch thi thành công";
    }
    mysqli_close($conn);
?>