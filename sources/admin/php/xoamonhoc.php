<?php
    include '../../php/connect.php';
    $id = $_POST['id'];
    //xóa đáp án
    //xóa câu hỏi
    //xóa môn học
    //xóa điểm
    $sql = "delete from monhoc where ID = '$id'";
    mysqli_query($conn, $sql);
    $sql = "select * from monhoc where ID = '$id'";
    $result =  mysqli_query($conn, $sql);
    if(mysqli_num_rows($result)>0){
        echo "Có lỗi khi xóa môn học";
    }
    else{
        echo "Xóa thành công";
    }
    mysqli_close($conn);
    
?>