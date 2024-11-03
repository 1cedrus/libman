<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.model.*" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 3/11/24
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>
<html>
<head>
    <title>Bước 3: Xác nhận</title>
    <link rel="stylesheet" href="phongCach.css">
</head>
<body>
<%@ include file="layout/dauTrang.jsp" %>
<main style="margin-top: 0 !important;">
    <div style="display: flex; justify-content: space-between; width: 100%; gap: 5px">
        <div style="flex: 1; display: flex; flex-direction: column;">
            <%--    <div id="scanner-container" style="display: none;">--%>
            <%--      <video id="scanner-preview" width="200px" height="100px"></video>--%>
            <%--    </div>--%>
            <%
                TaiLieuNhap778 taiLieuNhap778 = (TaiLieuNhap778) session.getAttribute("taiLieuNhap");

                if (taiLieuNhap778 == null) {
                    response.sendRedirect("gdTimKiemNhaCungCap.jsp");
                }
            %>
            <table>
                <colgroup>
                    <col style="width: 200px; background: beige">
                </colgroup>
                <tr>
                    <th>Mã nhà cung cấp</th>
                    <td><%=taiLieuNhap778.getNhaCungCap().getMaNhaCungCap()%>
                    </td>
                </tr>
                <tr>
                    <th>Tên nhà cung cấp</th>
                    <td><%=taiLieuNhap778.getNhaCungCap().getTenNhaCungCap()%>
                    </td>
                </tr>
                <tr>
                    <th>Mã nhân viên nhập</th>
                    <td><%=taiLieuNhap778.getNhanVienNhap().getMaThanhVien()%>
                    </td>
                </tr>
                <tr>
                    <th>Tên nhân viên nhập</th>
                    <td><%=taiLieuNhap778.getNhanVienNhap().getHoVaTen()%>
                    </td>
                </tr>
                <tr>
                    <th>Tổng tiền</th>
                    <td><%=taiLieuNhap778.getGiaNhap()%>
                    </td>
                </tr>
            </table>
            <div style="margin-top: 20px;">
                <a href="xlThemTaiLieuNhap.jsp" class="simple button">Xác nhận</a>
                <a href="gdTimKiemTaiLieuTheoMa.jsp" class="simple button">Quay lại</a>
            </div>
        </div>
        <div style="flex: 1;">
            <%
                List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhapChiTiet = (List<TaiLieuNhapChiTiet778>) session.getAttribute("danhSachTaiLieuNhapChiTiet");

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
                    <td><%= taiLieuNhapChiTiet.getTaiLieu().getMaTaiLieu() %>
                    </td>
                    <td><%= taiLieuNhapChiTiet.getTaiLieu().getTenTaiLieu() %>
                    </td>
                    <td><%= taiLieuNhapChiTiet.getSoLuongNhap() %>
                    </td>
                    <td><%= taiLieuNhapChiTiet.getDonGiaNhap() %>
                    </td>
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
</main>
<%@ include file="layout/cuoiTrang.jsp" %>
</body>
</html>
