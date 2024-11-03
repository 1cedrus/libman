<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %>
<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.dao.NhaCungCap778DAO" %><%--
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
    String tuKhoa = request.getParameter("tuKhoa");

    if (tuKhoa == null) {
        tuKhoa = "";
    }

    List<NhaCungCap778> danhSachNhaCungCap = nhaCungCap778DAO.timKiemNhaCungCapTheoTen(tuKhoa);
    session.setAttribute("danhSachNhaCungCap", danhSachNhaCungCap);

    response.sendRedirect("gdTimKiemNhaCungCap.jsp");
%>

