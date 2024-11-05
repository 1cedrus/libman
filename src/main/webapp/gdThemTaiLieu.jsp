<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 3/11/24
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>
<html>
<head>
    <title>Bước 2: Chọn tài liệu nhập</title>
    <link rel="stylesheet" href="phongCach.css">
</head>
<body>
<%@ include file="layout/dauTrang.jsp" %>
<main style="margin-top: 0 !important;">
    <form style="width: 60%" action="xlThemTaiLieu.jsp" method="post">
        <table>
            <colgroup>
                <col style="width: 200px; background: beige">
            </colgroup>
            <tr>
                <th>Mã tài liệu</th>
                <td><input type="text" name="maTaiLieu" required/></td>
            </tr>
            <tr>
                <th>Tên tài liệu</th>
                <td><input type="text" name="tenTaiLieu" required/></td>
            </tr>
            <tr>
                <th>Tác giả</th>
                <td><input type="text" name="tacGia" required/></td>
            </tr>
            <tr>
                <th>Nhà xuất bản</th>
                <td><input type="text" name="nhaXuatBan" required/></td>
            </tr>
            <tr>
                <th>Năm xuất bản</th>
                <td><input type="date" name="namXuatBan" required/></td>
            </tr>
        </table>
        <button style="margin-top: 20px" type="submit">Thêm mới</button>
        <a href="gdTimKiemTaiLieuTheoMa.jsp" class="button simple">Quay lại</a>
    </form>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
