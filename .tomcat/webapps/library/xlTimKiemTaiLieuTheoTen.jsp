<%@ page import="org.one_cedrus.librarysystem.dao.TaiLieu778DAO" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 1/11/24
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraDangNhap.jsp" %>

<%
    TaiLieu778DAO taiLieu778DAO = new TaiLieu778DAO();
    String tuKhoa = request.getParameter("tuKhoa");

    if (tuKhoa == null) {
        tuKhoa = "";
    }

    List<TaiLieu778> danhSachTaiLieu = taiLieu778DAO.timKiemTaiLieuTheoTen(tuKhoa);
    session.setAttribute("danhSachTaiLieu", danhSachTaiLieu);

    response.sendRedirect("gdTimKiemTaiLieu.jsp");
%>
