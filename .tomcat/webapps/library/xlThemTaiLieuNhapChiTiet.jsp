<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>

<%
    List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhap = (List<TaiLieuNhapChiTiet778>) session.getAttribute("danhSachTaiLieuNhapChiTiet");

    if (danhSachTaiLieuNhap == null) {
        danhSachTaiLieuNhap = new ArrayList<>();
        session.setAttribute("danhSachTaiLieuNhapChiTiet", danhSachTaiLieuNhap);
    }

    TaiLieu778 taiLieu778 = (TaiLieu778) session.getAttribute("taiLieu");
    String soLuong = request.getParameter("soLuong");
    String giaNhap = request.getParameter("giaNhap");

    if (taiLieu778 == null || soLuong == null || giaNhap == null) {
        response.sendRedirect("gdChinh.jsp");
        return;
    }

    TaiLieuNhapChiTiet778 taiLieuNhapChiTiet778 = new TaiLieuNhapChiTiet778();

    taiLieuNhapChiTiet778.setTaiLieu(taiLieu778);
    taiLieuNhapChiTiet778.setSoLuongNhap(Integer.parseInt(soLuong));
    taiLieuNhapChiTiet778.setDonGiaNhap(Float.parseFloat(giaNhap));

    danhSachTaiLieuNhap.add(taiLieuNhapChiTiet778);

    response.sendRedirect("gdTimKiemTaiLieuTheoMa.jsp");
%>

