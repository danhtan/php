$(document).ready(function () {
    var socauhoi = 0;
    // lay so luong cau hoi va phan trang
    $.ajax({
        type: "GET",
        url: "php/danhsachcauhoi.php",
        data: "",
        dataType: "text",
        success: function (response) {
            var data = JSON.parse(response);
            socauhoi = data.length;
            $('#soluongcauhoi').html('Số lượng câu hỏi: ' + socauhoi);
            var a = "<ul class='pagination'>";
            for (var i = 1; i <= Math.ceil(socauhoi / 10); i++) {
                a += "<li><a href='#'>";
                a += i;
                a += "</a></li>"
            }
            a += '</ul>';
            $('.phantrang').html(a);
            //console.log(data);
            var chondapan = [];
            var s = "";
            $.each(data, function (indexInArray, cauhoi) {
                s += "<div class='cauhoi'>";
                s += '<xmp>' + 'Câu ' + (indexInArray + 1) + ': ' + cauhoi.NoiDung + '</xmp>';
                s += '<ul>';
                $.each(cauhoi.DapAn, function (index, dapan) {
                    s += '<input  type="radio" name="cau' + indexInArray + '" value ="' + dapan.ID + '>"';
                    s += '<li>' + '<xmp>     ' + dapan.NoiDung + '</xmp> <br>' + '</li>';
                });
                s += '</ul>';
                s += "</div>";
            });
            $('.vien1').html(s);
            //hien cau hoi theo tung trang
            function hiencauhoi(trang) {
                //trang n : tu (n-1)*10 +1 den (n-1)*10 +10
                $(".cauhoi").each(function (stt, element) {
                    if (stt + 1 >= ((trang - 1) * 10 + 1) && stt + 1 <= ((trang - 1) * 10 + 10)) {
                        $(this).show();
                    }
                    else {
                        $(this).hide();
                    }
                });
            }
            hiencauhoi(1);
            $(".phantrang a").click(function () {
                var trang = $(this).html();
                hiencauhoi(trang);
            });
            $('#nopbai').click(function () {
                var da = [];
                //$('ol').each(function (index, element) {
                // lay gia tri cua dap an
                $('input:radio').each(function (index1, element1) {
                    var x = $(this).prop('checked');
                    if (x == true) {
                        var a = $(this).val();
                        da.push(a);
                    }
                });
                function ChamDiem() {
                    $.ajax({
                        type: "POST",
                        url: "php/chamdiem.php",
                        data: {
                            DA: da,
                            SoCauHoi: socauhoi
                        },
                        dataType: "text",
                        success: function (response) {
                            ;
                            alert("Điểm của bạn là: " + response);
                            window.location.href = "user.html";
                        }
                    });
                }
                if (socauhoi == da.length) {
                    ChamDiem();
                }
                else {
                    if (confirm('bạn chưa làm xong câu hỏi,có muốn nộp bài không')) {
                        ChamDiem();
                    }
                }
            })
        }
    });
    // lay ten mon hoc gan vao thong tin thi
    $.ajax({
        type: "GET",
        url: "php/laytenmonhoc.php",
        data: "",
        dataType: "text",
        success: function (response) {
            $('#vien2').html('Tên môn học: ' + response);
        }
    });
    // ham tra ve thoi gian hien tai
    function getDate() {
        return ((new Date).getTime()) / 1000;
    }
    var thoigianketthuc = 0;
    // lay thoi gian thi tu tren sever ve
    $.ajax({
        type: "POST",
        url: "php/laythoigianthi.php",
        data: "",
        dataType: "text",
        success: function (response) {
            var data = JSON.parse(response);
            thoigianketthuc = ((new Date(data.end)).getTime()) / 1000;
        }
    });
    function thoigian() {
        //neu het thoi gian thi nop bai
        if (getDate() >= thoigianketthuc) {
            var da = [];
            //$('ol').each(function (index, element) {
            $('input:radio').each(function (index1, element1) {
                var x = $(this).prop('checked');
                if (x == true) {
                    var a = $(this).val();
                    da.push(a);
                }
            });
            $.ajax({
                type: "POST",
                url: "php/chamdiem.php",
                data: {
                    DA: da,
                    SoCauHoi: socauhoi
                },
                dataType: "text",
                success: function (response) {
                    alert("Điểm của bạn là: " + response);
                    window.location.href = "user.html";
                }
            });
            clearInterval(interval);
        }
        else {
            var phut = Math.floor((thoigianketthuc - getDate()) / 60);
            var giay = Math.floor((thoigianketthuc - getDate()) % 60);
            $('#dongho').html('Thời gian: ' + phut + ':' + giay);
        }
    }
    var interval = setInterval(thoigian, 1000);
})