<%@ page import="org.one_cedrus.librarysystem.dao.NhaCungCap778DAO" %>
<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 01:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp"%>

<%
    NhaCungCap778DAO nhaCungCap778DAO = new NhaCungCap778DAO();

    NhaCungCap778 nhaCungCap778 = new NhaCungCap778();

    String tenNhaCungCap = request.getParameter("ten");
    String diaChi = request.getParameter("diaChi");
    String soDienThoai = request.getParameter("soDienThoai");
    String email = request.getParameter("email");

    nhaCungCap778.setTenNhaCungCap(tenNhaCungCap);
    nhaCungCap778.setDiaChi(diaChi);
    nhaCungCap778.setSoDienThoai(soDienThoai);
    nhaCungCap778.setEmail(email);

    nhaCungCap778DAO.themNhaCungCap(nhaCungCap778);

    response.sendRedirect("gdTimKiemNhaCungCap.jsp");
%>
