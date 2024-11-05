<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 23:00
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
    <div style="display: flex; justify-content: space-between; width: 50%; gap: 5px">
        <div style="flex: 1; display: flex; flex-direction: column;">
            <%
                TaiLieu778 taiLieu = (TaiLieu778) session.getAttribute("taiLieu");

                if (taiLieu != null) {
                    if (taiLieu.getMaTaiLieu() != null) {
            %>
            <form action="xlThemTaiLieuNhapChiTiet.jsp" method="post">
                <table>
                    <colgroup>
                        <col style="width: 200px; background: beige">
                    </colgroup>
                    <tr>
                        <th>Số lượng</th>
                        <td><input type="text" name="soLuong"/></td>
                    </tr>
                    <tr>
                        <th>Giá nhập (1 Quyển)</th>
                        <td><input type="text" name="giaNhap"/></td>
                    </tr>
                </table>
                <div style="display: flex; gap: 5px; margin-top: 20px">
                    <a href="gdTimKiemTaiLieuTheoMa.jsp" class="button simple">Quay lại</a>
                    <button type="submit" style="width: fit-content;">Lưu</button>
                </div>
            </form>
            <%
            } else {
            %>
            <p style="margin-top: 20px">Không tìm thấy tài liệu có mã trên.</p>
            <%
                    }
                }
            %>
        </div>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
