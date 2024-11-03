<%@ page import="org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778" %>
<%@ page import="java.util.List" %>
<%@ page import="org.one_cedrus.librarysystem.model.NhaCungCap778" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="xlKiemTraNhanVien.jsp"%>

<%
    String maNhaCungCap = request.getParameter("maNhaCungCap");

    if (maNhaCungCap == null) {
      response.sendRedirect("gdTimKiemNhaCungCap.jsp");
    }

    List<NhaCungCap778> danhSachNhaCungCap = (List<NhaCungCap778>) session.getAttribute("danhSachNhaCungCap");

    NhaCungCap778 nhaCungCap778 = danhSachNhaCungCap.stream().filter(ncc -> ncc.getMaNhaCungCap().equals(Long.parseLong(maNhaCungCap))).findFirst().orElse(null);

    if (nhaCungCap778 == null) {
      response.sendRedirect("gdTimKiemNhaCungCap.jsp");
    }

    session.setAttribute("nhaCungCap", nhaCungCap778);

    List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhapChiTiet = new ArrayList<>();
    session.setAttribute("danhSachTaiLieuNhapChiTiet", danhSachTaiLieuNhapChiTiet);

    response.sendRedirect("gdTimKiemTaiLieuTheoMa.jsp");
%>