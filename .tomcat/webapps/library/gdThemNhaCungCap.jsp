<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 3/11/24
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>
<html>
<head>
    <title>Bước 1: Chọn nhà cung cấp</title>
    <link rel="stylesheet" href="phongCach.css">
</head>
<body>
<%@ include file="layout/dauTrang.jsp" %>
<main style="margin-top: 0 !important;">
    <form style="width: 60%" action="xlThemNhaCungCap.jsp" method="post">
        <table>
            <colgroup>
                <col style="width: 200px; background: beige">
            </colgroup>
            <tr>
                <th>Tên nhà cung cấp</th>
                <td><input type="text" name="ten" required/></td>
            </tr>
            <tr>
                <th>Địa chỉ</th>
                <td><input type="text" name="diaChi" required/></td>
            </tr>
            <tr>
                <th>Số điện thoại</th>
                <td><input type="text" name="soDienThoai" required/></td>
            </tr>
            <tr>
                <th>Thư điện tử</th>
                <td><input type="email" name="email" required/></td>
            </tr>
        </table>
        <button style="margin-top: 20px" type="submit">Thêm mới</button>
    </form>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
