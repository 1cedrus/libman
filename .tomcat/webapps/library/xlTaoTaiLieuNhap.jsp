<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778" %>
<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhap778" %>
<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 01:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp"%>
<%
    List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhapChiTiet = (List<TaiLieuNhapChiTiet778>) session.getAttribute("danhSachTaiLieuNhapChiTiet");
    NhaCungCap778 nhaCungCap778 = (NhaCungCap778) session.getAttribute("nhaCungCap");

    if (danhSachTaiLieuNhapChiTiet == null || nhaCungCap778 == null) {
        response.sendRedirect("gdTimKiemNhaCungCap.jsp");
    }

    TaiLieuNhap778 taiLieuNhap778 = new TaiLieuNhap778();

    taiLieuNhap778.setNhaCungCap(nhaCungCap778);
    taiLieuNhap778.setNhanVienNhap(thanhVien);
    float giaNhap = danhSachTaiLieuNhapChiTiet.stream().map(tl -> tl.getDonGiaNhap() * tl.getSoLuongNhap()).reduce(0f, Float::sum);
    taiLieuNhap778.setGiaNhap(giaNhap);

    session.setAttribute("taiLieuNhap", taiLieuNhap778);

    response.sendRedirect("gdXacNhanNhapTaiLieu.jsp");
%>

