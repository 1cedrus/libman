<%@ page import="org.one_cedrus.librarysystem.model.ThanhVien778" %><%--
  Created by IntelliJ IDEA.
  User: 1cedrus
  Date: 31/10/24
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    ThanhVien778 thanhVien = (ThanhVien778) session.getAttribute("thanhVien");

    if (thanhVien != null) {
        response.sendRedirect("gdChinh.jsp");
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link type="text/css" rel="stylesheet" href="phongCach.css">
    <style>
        .login-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 2px solid #000;
            outline: none;
        }

        .login-form input[type="text"]:focus,
        .login-form input[type="password"]:focus {
            border-color: #000000;
        }

        .login-form button {
            width: 100%;
            padding: 10px;
            background-color: #fff;
            color: black;
            font-size: 1rem;
            font-weight: bold;
            border: 2px solid black;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #000000;
            color: white;
        }
    </style>
</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh">
        <form action="xlDangNhap.jsp" method="post" class="login-form">
            <table>
                <colgroup>
                    <col style="width: 200px; background: beige">
                </colgroup>
                <tr>
                    <th>Tên đăng nhập</th>
                    <td><input type="text" name="tenDangNhap" required/></td>
                </tr>
                <tr>
                    <th>Mật khẩu</th>
                    <td><input type="password" name="matKhau" required /></td>
                </tr>
            </table>
            <button type="submit">Đăng Nhập</button>
            <% String error = request.getParameter("error"); %>
            <%= error != null ? "<p style='color: red; font-size: 0.8rem;'>" + "Tên đăng nhập hoặc mật khẩu không chính xác!" + "</p>" : "<p style='font-size: 0.8rem;'>&nbsp;</p>" %>
        </form>
</div>
</body>
</html>

