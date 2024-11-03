<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778" %>
<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>
<html>
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/quagga/0.12.1/quagga.min.js"></script>
    <title>Bước 2: Chọn tài liệu</title>
    <link rel="stylesheet" href="phongCach.css">
</head>
<body>
<%@ include file="layout/dauTrang.jsp" %>
<main>
    <div style="display: flex; justify-content: space-between; width: 100%; gap: 5px">
        <div style="flex: 1; display: flex; flex-direction: column;">
            <form action="xlTimKiemTaiLieuTheoMa.jsp" method="post" style="display: flex; gap: 5px; width: 100%">
                <input type="text" name="maTaiLieu" placeholder="97..." required>
                <button style="width: 200px; text-align: center" type="submit">Tìm kiếm</button>
                <a class="simple button" onclick="startScanning()">Quét mã</a>
                <a href="gdThemTaiLieu.jsp" class="simple button">Thêm mới</a>
            </form>

            <%
                TaiLieu778 taiLieu = (TaiLieu778) session.getAttribute("taiLieu");

                if (taiLieu != null) {
                    if (taiLieu.getMaTaiLieu() != null) {
            %>
            <table>
                <colgroup>
                    <col style="width: 200px; background: beige">
                </colgroup>
                <tr>
                    <th>Mã Tài Liệu</th>
                    <td><%=taiLieu.getMaTaiLieu()%></td>
                </tr>
                <tr>
                    <th>Tên tài liệu</th>
                    <td><%=taiLieu.getTenTaiLieu()%></td>
                </tr>
                <tr>
                    <th>Tác giả</th>
                    <td><%=taiLieu.getTacGia()%></td>
                </tr>
                <tr>
                    <th>Nhà xuất bản</th>
                    <td><%=taiLieu.getNhaXuatBan()%></td>
                </tr>
                <tr>
                    <th>Xuất bản</th>
                    <td><%=taiLieu.getNamXuatBan()%></td>
                </tr>
                <tr>
                    <th>Số lượng</th>
                    <td><%=taiLieu.getSoLuong()%></td>
                </tr>
                <tr>
                    <th>Số lượng có sẵn</th>
                    <td><%=taiLieu.getSoLuongTrongKho()%></td>
                </tr>
            </table>
            <a href="gdThemTaiLieuNhapChiTiet.jsp" class="simple button" style="margin-top: 20px; width: fit-content;">Nhập</a>
            <%
            } else {
            %>
            <p style="margin-top: 20px">Không tìm thấy tài liệu có mã trên.</p>
            <%
                    }
                }
            %>
        </div>
        <div style="flex: 1;">
            <%
                List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhapChiTiet = (List<TaiLieuNhapChiTiet778>) session.getAttribute("danhSachTaiLieuNhapChiTiet");
            %>
            <div style="display: flex; justify-content: space-between">
                <a href="gdTimKiemNhaCungCap.jsp" class="simple button">Quay lại</a>
                <%
                    if (danhSachTaiLieuNhapChiTiet != null && !danhSachTaiLieuNhapChiTiet.isEmpty())  {
                %>
                <a href="xlTaoTaiLieuNhap.jsp" class="simple button">Tạo tài liệu nhập</a>
                <%
                    }
                %>
            </div>
            <%

                if (danhSachTaiLieuNhapChiTiet != null && !danhSachTaiLieuNhapChiTiet.isEmpty()) {
            %>
            <table>
                <tr style="background: beige">
                    <th>Mã tài liệu</th>
                    <th>Tên tài liệu</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                </tr>
                <%
                    for (TaiLieuNhapChiTiet778 taiLieuNhapChiTiet : danhSachTaiLieuNhapChiTiet) {
                %>
                <tr>
                    <td><%= taiLieuNhapChiTiet.getTaiLieu().getMaTaiLieu() %></td>
                    <td><%= taiLieuNhapChiTiet.getTaiLieu().getTenTaiLieu() %></td>
                    <td><%= taiLieuNhapChiTiet.getSoLuongNhap() %></td>
                    <td><%= taiLieuNhapChiTiet.getDonGiaNhap() %></td>
                </tr>
                <%
                    }
                %>
            </table>
            <%
                }
            %>
        </div>
    </div>
    <div id="scanner-container" style="display: none;">
        <video id="scanner-preview" width="200px" height="100px"></video>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
<script>
    function startScanning() {
        document.getElementById("scanner-container").style.display = "block";

        Quagga.init({
            inputStream: {
                name: "Live",
                type: "LiveStream",
                target: document.querySelector('#scanner-preview')
            },
            decoder: {
                readers: ["ean_reader", "upc_reader"]
            }
        }, function(err) {
            if (err) {
                console.log(err);
                return;
            }
            Quagga.start();
        });

        Quagga.onDetected(function(data) {
            var code = data.codeResult.code;
            document.getElementById("scanner-container").style.display = "none";
            Quagga.stop();

            // Optionally, set the detected barcode in the search input
            document.querySelector('input[name="maTaiLieu"]').value = code;
            document.querySelector('form[action="xlTimKiemTaiLieuTheoMa.jsp"]').submit();
        });
    }
</script>
</html>
