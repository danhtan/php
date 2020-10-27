$(document).ready(function () {
    var kiemtra = false;
    $.ajax({
        type: "GET",
        url: "php/danhsachmon.php",
        data: "",
        dataType: "text",
        success: function (response) {
            var data = JSON.parse(response);
            var s = "";
            $.each(data, function (indexInArray, valueOfElement) {
                s += "<div>"
                s += data[indexInArray].TenMonHoc;
                s += "</div>"
            });
            $('#danhsachmonhoc').html(s);
            // xem diem
            $('#danhsachmonhoc div').click(function () {
                var ten = $(this).html();
                $.ajax({
                    type: "POST",
                    url: "php/xemdiem.php",
                    data: { Ten: ten },
                    dataType: "text",
                    success: function (response) {
                        if (response != -1) {
                            $('.noidung').hide();
                            var s = "<p> Tên môn học: " + ten + "</p>Điểm: ";
                            $('#diem').html(s + response);
                            $('#diem').show();
                        }
                        else {
                            $('#diem').hide();
                            $('.noidung').show();
                            $.ajax({
                                type: "POST",
                                url: "php/laythoigianthi.php",
                                data: "",
                                dataType: "text",
                                success: function (response) {
                                    // alert(response);
                                    var data = JSON.parse(response);
                                    console.log(data);
                                    kiemtra = data.thi;
                                    $('#ngaythi').html('Ngày thi: ' + new Date(data.start).toLocaleDateString());
                                    $('#thoigianbatdau').html('Thời gian bắt đầu: ' + (new Date(data.start).toTimeString()).slice(0, 9));
                                    $('#thoigianketthuc').html('Thời gian kết thúc: ' + (new Date(data.end).toTimeString()).slice(0, 9));
                                }
                            });
                        }
                    }
                });
                $("#tenmon").html('Tên môn học: ' + ten);
                $.ajax({
                    type: "POST",
                    url: "php/clickmonhoc.php",
                    data: { Ten: ten },
                    dataType: "text",
                    success: function (response) {
                    }
                });
            })
        }
    });
    $('#btnbatdau').click(function () {
        if (kiemtra == false) {
            window.location.href = "thi.html";
            $.ajax({
                type: "GET",
                url: "php/danhsachcauhoi.php",
                data: { ID: id },
                dataType: "text",
                success: function (response) {
                }
            });
        }
        else {
            alert('Chưa đến thời gian thi');
        }
    })
    //lay danh sach diem
    $('#danhsach').click(function () {
        $('.noidung').hide();
        $.ajax({
            type: "POST",
            url: "php/laydiem.php",
            data: "data",
            dataType: "text",
            success: function (response) {
                console.log(response);
                var data = JSON.parse(response)
                var s = "<table > ";
                s += "<tr>";
                s += "<th>";
                s += 'Tên môn';
                s += "</th>";
                s += "<th>";
                s += 'Điểm';
                s += "</th>";
                s += "</tr>";
                $.each(data, function (i, e) {
                    s += "<tr>";
                    s += "<td>";
                    s += e.TenMonHoc;
                    s += "</td>";
                    s += "<td>";
                    s += e.Diem;
                    s += "</td>";
                    s += "</tr>";
                });
                s += "</table>";
                $('#diem').html(s);
                $('#diem').show();
            }
        });
        // $('#diem').html(s);
    })
    $('#logout').click(function () {

        var s = confirm('bạn có muốn đăng xuất không');
        if (s == true) {
            window.location.href = "../index.html";
        }
        else {
        }
    })
    $.ajax({
        type: "POST",
        url: "php/laythongtin.php",
        data: "",
        dataType: "text",
        success: function (response) {
            $('#ten').val('Xin chào, ' + response);
        }
    });
});