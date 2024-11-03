<%@ page import="org.one_cedrus.librarysystem.dao.TaiLieuNhap778DAO" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhap778" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 3/11/24
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>

<%
    TaiLieuNhap778DAO taiLieuNhap778DAO = new TaiLieuNhap778DAO();

    TaiLieuNhap778 taiLieuNhap778 = (TaiLieuNhap778) session.getAttribute("taiLieuNhap");
    List<TaiLieuNhapChiTiet778>  danhSachTaiLieuNhapChiTiet = (List<TaiLieuNhapChiTiet778>) session.getAttribute("danhSachTaiLieuNhapChiTiet");

    if (taiLieuNhap778 == null || danhSachTaiLieuNhapChiTiet == null) {
        response.sendRedirect("gdTimKiemNhaCungCap.jsp");
    }

    danhSachTaiLieuNhapChiTiet.forEach(tl -> tl.setTaiLieuNhap(taiLieuNhap778));

    taiLieuNhap778DAO.taoTaiLieuNhap(taiLieuNhap778, danhSachTaiLieuNhapChiTiet);

    session.removeAttribute("taiLieuNhap");
    session.removeAttribute("danhSachTaiLieuNhapChiTiet");

    response.sendRedirect("gdTimKiemNhaCungCap.jsp");
%>
