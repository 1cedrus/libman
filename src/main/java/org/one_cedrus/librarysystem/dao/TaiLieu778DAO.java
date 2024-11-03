package org.one_cedrus.librarysystem.dao;

import org.one_cedrus.librarysystem.model.TaiLieu778;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TaiLieu778DAO extends DAO778 {
    public TaiLieu778DAO() {
        super();
    }

    public boolean themTaiLieu(TaiLieu778 taiLieu778) {
        try {
            PreparedStatement ps;

            String sql = "INSERT INTO tblTaiLieu778(maTaiLieu, tenTaiLieu, tacGia, nhaXuatBan, namXuatBan, soLuong, soLuongTrongKho) VALUES(?, ?, ?, ?, ?, ?, ?);";

            ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, taiLieu778.getMaTaiLieu());
            ps.setString(2, taiLieu778.getTenTaiLieu());
            ps.setString(3, taiLieu778.getTacGia());
            ps.setString(4, taiLieu778.getNhaXuatBan());
            ps.setString(5, taiLieu778.getNamXuatBan());
            ps.setLong(6, taiLieu778.getSoLuong());
            ps.setLong(7, taiLieu778.getSoLuongTrongKho());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            e.printStackTrace();

            return false;
        }
    }

    public TaiLieu778 timKiemTaiLieuTheoMa(String maTaiLieu) {
        TaiLieu778 taiLieu778 = new TaiLieu778();

        try {
            PreparedStatement ps;
            ResultSet rs;

            String sql = "SELECT * FROM tblTaiLieu778 WHERE maTaiLieu = ?;";

            ps = con.prepareStatement(sql);
            ps.setString(1, maTaiLieu);
            rs = ps.executeQuery();

            while (rs.next()) {
                taiLieu778.setMaTaiLieu(rs.getString("maTaiLieu"));
                taiLieu778.setTenTaiLieu(rs.getString("tenTaiLieu"));
                taiLieu778.setTacGia(rs.getString("tacGia"));
                taiLieu778.setNhaXuatBan(rs.getString("nhaXuatBan"));
                taiLieu778.setNamXuatBan(rs.getString("namXuatBan"));
                taiLieu778.setSoLuong(rs.getLong("soLuong"));
                taiLieu778.setSoLuongTrongKho(rs.getLong("soLuongTrongKho"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return taiLieu778;
    }

    public ArrayList<TaiLieu778> timKiemTaiLieuTheoTen(String tenTaiLieu) {
        ArrayList<TaiLieu778> danhSachTaiLieu = new ArrayList<>();

        try {
            PreparedStatement ps;
            ResultSet rs;

            String sql = "SELECT * FROM tblTaiLieu778 WHERE tenTaiLieu LIKE '%' || ? || '%';";

            ps = con.prepareStatement(sql);
            ps.setString(1, tenTaiLieu);
            rs = ps.executeQuery();

            while (rs.next()) {
                TaiLieu778 taiLieu778 = new TaiLieu778();
                taiLieu778.setMaTaiLieu(rs.getString("maTaiLieu"));
                taiLieu778.setTenTaiLieu(rs.getString("tenTaiLieu"));
                taiLieu778.setTacGia(rs.getString("tacGia"));
                taiLieu778.setNhaXuatBan(rs.getString("nhaXuatBan"));
                taiLieu778.setNamXuatBan(rs.getString("namXuatBan"));
                taiLieu778.setSoLuong(rs.getLong("soLuong"));
                taiLieu778.setSoLuongTrongKho(rs.getLong("soLuongTrongKho"));

                danhSachTaiLieu.add(taiLieu778);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return danhSachTaiLieu;
    }
}
