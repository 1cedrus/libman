<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 1/11/24
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("thanhVien");
    response.sendRedirect("gdDangNhap.jsp");
%>
