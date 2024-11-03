<%@ page import="org.one_cedrus.librarysystem.dao.TaiLieu778DAO" %>
<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp" %>

<%
    TaiLieu778DAO taiLieu778DAO = new TaiLieu778DAO();
    String maTaiLieu = request.getParameter("maTaiLieu");

    if (maTaiLieu == null) {
        maTaiLieu = "";
    }

    TaiLieu778 taiLieu778 = taiLieu778DAO.timKiemTaiLieuTheoMa(maTaiLieu);
    session.setAttribute("taiLieu", taiLieu778);

    response.sendRedirect("gdTimKiemTaiLieuTheoMa.jsp");
%>

