package org.one_cedrus.librarysystem.dao;

import org.one_cedrus.librarysystem.model.TaiLieuNhap778;
import org.one_cedrus.librarysystem.model.TaiLieuNhapChiTiet778;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class TaiLieuNhap778DAO extends DAO778 {
    public TaiLieuNhap778DAO() {
    }

    public boolean taoTaiLieuNhap(TaiLieuNhap778 taiLieuNhap, List<TaiLieuNhapChiTiet778> danhSachTaiLieuNhapChiTiet) {
        try {
            PreparedStatement ps;
            ResultSet rs;

            String sql = "INSERT INTO tblTaiLieuNhap778(maNhanVien, maNhaCungCap, giaNhap) VALUES(?, ?, ?);";

            ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setLong(1, taiLieuNhap.getNhanVienNhap().getMaThanhVien());
            ps.setLong(2, taiLieuNhap.getNhaCungCap().getMaNhaCungCap());
            ps.setFloat(3, taiLieuNhap.getGiaNhap());

            ps.executeUpdate();

            for (TaiLieuNhapChiTiet778 taiLieuNhapChiTiet778 : danhSachTaiLieuNhapChiTiet) {
                String sql2 = "INSERT INTO tblTaiLieuNhapChiTiet778(maTaiLieuNhap, maTaiLieu, soLuongNhap, donGia) VALUES(?, ?, ?, ?);";
                String sql3 = "UPDATE tblTaiLieu778 SET soLuong = soLuong + ?, soLuongTrongKho = soLuongTrongKho + ? WHERE maTaiLieu = ?;";

                ps = con.prepareStatement(sql2);
                ps.setLong(1, taiLieuNhapChiTiet778.getTaiLieuNhap().getMaTaiLieuNhap());
                ps.setString(2, taiLieuNhapChiTiet778.getTaiLieu().getMaTaiLieu());
                ps.setInt(3, taiLieuNhapChiTiet778.getSoLuongNhap());
                ps.setFloat(4, taiLieuNhapChiTiet778.getDonGiaNhap());

                ps.executeUpdate();

                ps = con.prepareStatement(sql3);
                ps.setInt(1, taiLieuNhapChiTiet778.getSoLuongNhap());
                ps.setInt(2, taiLieuNhapChiTiet778.getSoLuongNhap());
                ps.setString(3, taiLieuNhapChiTiet778.getTaiLieu().getMaTaiLieu());

                ps.executeUpdate();
            }

            return true;
        } catch (Exception e) {
            e.printStackTrace();

            return false;
        }
    }
}
