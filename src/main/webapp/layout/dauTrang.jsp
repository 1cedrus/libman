<%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 2/11/24
  Time: 02:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="simple">
  <div style="display: flex; align-items: center; justify-content: space-between">
    <div style="display: flex; gap: 20px">
      <p>Chào mừng <%=thanhVien.getHoVaTen()%> đến với thư viện</p>
    </div>
    <div>
      <a href="gdTimKiemTaiLieu.jsp">Tìm kiếm tài liệu</a>
      <% if (thanhVien.getViTri().getTen().equals("NhanVien") || thanhVien.getViTri().getTen().equals("QuanLy")) { %>
       - <a href="gdNhapTaiLieu.jsp">Nhập tài liệu</a>
      <% } %>
    </div>
    <a href="xlDangXuat.jsp">Đăng xuất</a>
  </div>
</header>
