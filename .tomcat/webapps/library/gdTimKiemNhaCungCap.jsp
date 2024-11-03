<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %>
<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 01:49
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
<main>
    <div style="flex: 1; display: flex; flex-direction: column; align-items: center;">
        <form action="xlTimNhaCungCap.jsp" method="post" style="display: flex; gap: 5px; width: 100%">
            <input type="text" name="tuKhoa" placeholder="Nhà cung cấp A..." required>
            <button class="button" type="submit">Tìm kiếm</button>
            <a href="gdThemNhaCungCap.jsp" class="simple button">Thêm mới</a>
        </form>
        <%
            List<NhaCungCap778> danhSachNhaCungCap = (List<NhaCungCap778>) session.getAttribute("danhSachNhaCungCap");

            if (danhSachNhaCungCap != null && !danhSachNhaCungCap.isEmpty()) {
        %>
        <table>
            <tr style="background: beige">
                <th>Mã Nhà Cung Cấp</th>
                <th>Tên Nhà Cung Cấp</th>
                <th></th>
            </tr>
            <%
                for (NhaCungCap778 nhaCungCap778 : danhSachNhaCungCap) {
            %>
            <tr>
                <td><%= nhaCungCap778.getMaNhaCungCap() %></td>
                <td><%= nhaCungCap778.getTenNhaCungCap() %></td>
                <td><a href="gdNhaCungCapChiTiet.jsp?maNhaCungCap=<%= nhaCungCap778.getMaNhaCungCap() %>">Xem chi tiết</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
        } else if (danhSachNhaCungCap != null) {
        %>
        <p style="margin-top: 20px">Không tìm thấy nhà cung cấp nào.</p>
        <%
            }
        %>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
