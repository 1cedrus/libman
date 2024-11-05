<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 1/11/24
  Time: 23:40
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
    <div style="flex: 1; display: flex; flex-direction: column; margin: 20px 100px">
        <%
            List<TaiLieu778> danhSachTaiLieu = (List<TaiLieu778>) session.getAttribute("danhSachTaiLieu");

            String maTaiLieu = request.getParameter("maTaiLieu");
            TaiLieu778 taiLieu = danhSachTaiLieu.stream().filter(tl -> tl.getMaTaiLieu().equals(maTaiLieu)).findFirst().orElse(null);

            if (taiLieu != null) {
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
        </table>
        <%
        }
        %>
        <a href="gdTimKiemTaiLieu.jsp" class="simple button" style="width: fit-content; margin-top: 20px;">Quay lại</a>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
