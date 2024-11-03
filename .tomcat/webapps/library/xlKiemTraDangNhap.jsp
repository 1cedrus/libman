<%@ page import="org.one_cedrus.librarysystem.model.ThanhVien778" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ThanhVien778 thanhVien = (ThanhVien778) session.getAttribute("thanhVien");

    if (thanhVien == null) {
        response.sendRedirect("gdDangNhap.jsp");
        return;
    }
%>
