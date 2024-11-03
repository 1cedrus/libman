<%@ page import="org.one_cedrus.librarysystem.dao.ThanhVien778DAO" %>
<%@ page import="org.one_cedrus.librarysystem.model.ThanhVien778" %>
<%@ page import="org.one_cedrus.librarysystem.dao.ThanhVien778DAO" %>
<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 1/11/24
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ThanhVien778DAO thanhVien778DAO = new ThanhVien778DAO();
    ThanhVien778 thanhVien778 = new ThanhVien778(request.getParameter("tenDangNhap"), request.getParameter("matKhau"));

    if (thanhVien778DAO.kiemTraDangNhap(thanhVien778)) {
        session.setAttribute("thanhVien", thanhVien778);

        response.sendRedirect("gdChinh.jsp");
    } else {
        response.sendRedirect("gdDangNhap.jsp?error=failed");
    }
%>