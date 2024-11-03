<%@ page import="org.one_cedrus.librarysystem.model.TaiLieu778" %>
<%@ page import="org.one_cedrus.librarysystem.dao.TaiLieu778DAO" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 01:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp"%>

<%
    TaiLieu778DAO taiLieu778DAO = new TaiLieu778DAO();

    TaiLieu778 taiLieu778 = new TaiLieu778();

    String maTaiLieu = request.getParameter("maTaiLieu");
    String tenTaiLieu = request.getParameter("tenTaiLieu");
    String tacGia = request.getParameter("tacGia");
    String nhaXuatBan = request.getParameter("nhaXuatBan");
    String namXuatBan = request.getParameter("namXuatBan");

    taiLieu778.setMaTaiLieu(maTaiLieu);
    taiLieu778.setTenTaiLieu(tenTaiLieu);
    taiLieu778.setTacGia(tacGia);
    taiLieu778.setNhaXuatBan(nhaXuatBan);
    taiLieu778.setNamXuatBan(namXuatBan);
    taiLieu778.setSoLuong(0);
    taiLieu778.setSoLuongTrongKho(0);

    if (taiLieu778DAO.themTaiLieu(taiLieu778)) {
        session.setAttribute("taiLieu", taiLieu778);
    }

    response.sendRedirect("gdTimKiemTaiLieuTheoMa.jsp");
%>

