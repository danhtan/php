<?php
    session_start();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="admin"){
        include "../../php/connect.php";
        $cauhoi = json_decode($_POST['data']);
        // $sql = "insert into MonHoc values (null,'$name')";
        // $result = mysqli_query($conn,$sql);
        $themcauhoi = "insert into CauHoi values(null,'$cauhoi->noiDung','$cauhoi->doKho','$cauhoi->IDMH')";
        if (mysqli_query($conn, $themcauhoi)) {
            $IDCH = $conn->insert_id;
            foreach($cauhoi->dapAn as $da){
                $themDapAn="insert into dapAn values(null,'$IDCH','$da->noiDung','$da->dapAn')";
                mysqli_query($conn, $themDapAn);
            }
            echo "Thêm thành công";
        }
        else{
            echo "Có lỗi khi thêm câu hỏi";
        }
        mysqli_close($conn);
    }
    else{
        echo "Bạn không có quyền thêm câu hỏi";
    }
?>