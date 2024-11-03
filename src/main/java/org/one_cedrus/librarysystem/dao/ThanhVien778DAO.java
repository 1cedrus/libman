package org.one_cedrus.librarysystem.dao;

import org.one_cedrus.librarysystem.model.ThanhVien778;
import org.one_cedrus.librarysystem.model.ViTri778;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ThanhVien778DAO extends DAO778 {
    public ThanhVien778DAO() {
        super();
    }

    public boolean kiemTraDangNhap(ThanhVien778 thanhVien778) {
        try {
            PreparedStatement ps;
            ResultSet rs;

            String sql = "SELECT tv.maThanhVien, tv.tenDangNhap, tv.hoVaTen, tv.email, tv.soDienThoai, vi.tenViTri, vi.maViTri FROM tblThanhVien778 tv LEFT JOIN tblViTri778 vi ON tv.viTri = vi.maViTri WHERE tv.tenDangNhap = ? AND tv.matKhau = ?;";

            ps = con.prepareStatement(sql);
            ps.setString(1, thanhVien778.getTenDangNhap());
            ps.setString(2, thanhVien778.getMatKhau());
            rs = ps.executeQuery();

            if (rs.next()) {
                thanhVien778.setMaThanhVien(rs.getLong("maThanhVien"));
                thanhVien778.setHoVaTen(rs.getString("hoVaTen"));
                thanhVien778.setEmail(rs.getString("email"));
                thanhVien778.setSoDienThoai(rs.getString("soDienThoai"));

                ViTri778 viTri778 = new ViTri778();

                viTri778.setMaViTri(rs.getLong("maViTri"));
                viTri778.setTen(rs.getString("tenViTri"));

                thanhVien778.setViTri(viTri778);

                return true;
            }

            return false;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}
