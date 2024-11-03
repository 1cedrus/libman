<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 1/11/24
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraDangNhap.jsp" %>
<html>
<head>
    <title>Tìm kiếm tài liệu</title>
    <link rel="stylesheet" href="phongCach.css">
</head>
<body>
<%@ include file="layout/dauTrang.jsp" %>
<main>
    <div style="flex: 1; display: flex; flex-direction: column; align-items: center; margin: 20px 100px">
        <form action="xlTimKiemTaiLieuTheoTen.jsp" method="post" style="display: flex; gap: 5px; width: 100%">
            <input type="text" name="tuKhoa" placeholder="Tài liệu A..." required>
            <button style="width: 150px" type="submit">Tìm kiếm</button>
        </form>
        <%
            List<TaiLieu778> danhSachTaiLieu = (List<TaiLieu778>) session.getAttribute("danhSachTaiLieu");

            if (danhSachTaiLieu != null && !danhSachTaiLieu.isEmpty()) {
        %>
        <table>
            <tr style="background: beige">
                <th>Mã Tài Liệu</th>
                <th>Tên Tài Liệu</th>
                <th></th>
            </tr>
            <%
                for (TaiLieu778 taiLieu : danhSachTaiLieu) {
            %>
            <tr>
                <td><%= taiLieu.getMaTaiLieu() %></td>
                <td><%= taiLieu.getTenTaiLieu() %></td>
                <td><a href="gdTaiLieuChiTiet.jsp?maTaiLieu=<%= taiLieu.getMaTaiLieu() %>">Xem chi tiết</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
        } else if (danhSachTaiLieu != null) {
        %>
            <p style="margin-top: 20px">Không tìm thấy tài liệu nào.</p>
        <%
        }
        %>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
