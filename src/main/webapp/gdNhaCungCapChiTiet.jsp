<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 17:18
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
    <div style="flex: 1; display: flex; flex-direction: column; margin: 20px 100px">
        <form action="xlTimKiemTaiLieuTheoTen.jsp" method="post" style="display: flex; gap: 5px; width: 100%">
            <input type="text" name="tuKhoa" placeholder="Nhà cung cấp A ..." required>
            <button style="width: 150px" type="submit">Tìm kiếm</button>
        </form>

        <%
            List<NhaCungCap778> danhSachNhaCungCap = (List<NhaCungCap778>) session.getAttribute("danhSachNhaCungCap");

            String maNhaCungCapStr = request.getParameter("maNhaCungCap");

            if (maNhaCungCapStr == null) {
                response.sendRedirect("gdTimKiemNhaCungCap.jsp");
                return;
            }

            Long maNhaCungCap = Long.parseLong(maNhaCungCapStr);
            NhaCungCap778 nhaCungCap778 = danhSachNhaCungCap.stream().filter(ncc -> ncc.getMaNhaCungCap().equals(maNhaCungCap)).findFirst().orElse(null);

            if (nhaCungCap778 != null) {
        %>
        <table>
            <colgroup>
                <col style="width: 200px; background: beige">
            </colgroup>
            <tr>
                <th>Mã nhà cung cấp</th>
                <td><%=nhaCungCap778.getMaNhaCungCap()%></td>
            </tr>
            <tr>
                <th>Tên nhà cung cấp</th>
                <td><%=nhaCungCap778.getTenNhaCungCap()%></td>
            </tr>
            <tr>
                <th>Địa chỉ</th>
                <td><%=nhaCungCap778.getDiaChi()%></td>
            </tr>
            <tr>
                <th>Số điện thoại</th>
                <td><%=nhaCungCap778.getSoDienThoai()%></td>
            </tr>
            <tr>
                <th>Thư điện tử</th>
                <td><%=nhaCungCap778.getEmail()%></td>
            </tr>
        </table>
        <%
            }
        %>
        <div style="margin-top: 20px; display: flex; justify-content: space-between">
            <a href="gdTimKiemNhaCungCap.jsp" class="simple button" style="width: fit-content;">Quay lại</a>
            <a href="xlNhapTaiLieu.jsp?maNhaCungCap=<%=maNhaCungCap%>" class="simple button" style="width: fit-content;">Nhập tài liệu</a>
        </div>
    </div>
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
