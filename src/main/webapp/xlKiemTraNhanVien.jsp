<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 3/11/24
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraDangNhap.jsp" %>
<%
    if (!thanhVien.getViTri().getTen().equals("NhanVien") && !thanhVien.getViTri().getTen().equals("QuanLy")) {
        response.sendRedirect("gdChinh.jsp");
    }
%>


