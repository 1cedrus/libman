package org.one_cedrus.librarysystem.dao;

import org.one_cedrus.librarysystem.model.NhaCungCap778;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NhaCungCap778DAO extends DAO778 {
    public NhaCungCap778DAO() {
        super();
    }

    public boolean themNhaCungCap(NhaCungCap778 nhaCungCap778) {
        try {
            PreparedStatement ps;

            String sql = "INSERT INTO tblNhaCungCap778(ten, diaChi, soDienThoai, email) VALUES(?, ?, ?, ?);";

            ps = con.prepareStatement(sql);
            ps.setString(1, nhaCungCap778.getTenNhaCungCap());
            ps.setString(2, nhaCungCap778.getDiaChi());
            ps.setString(3, nhaCungCap778.getSoDienThoai());
            ps.setString(4, nhaCungCap778.getEmail());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            e.printStackTrace();

            return false;
        }
    }

    public ArrayList<NhaCungCap778> timKiemNhaCungCapTheoTen(String tenNhaCungCap) {
        ArrayList<NhaCungCap778> danhSachNhaCungCap = new ArrayList<>();

        try {
            PreparedStatement ps;
            ResultSet rs;

            String sql = "SELECT * FROM tblNhaCungCap778 WHERE ten LIKE '%' || ? || '%';";

            ps = con.prepareStatement(sql);
            ps.setString(1, tenNhaCungCap);
            rs = ps.executeQuery();

            while (rs.next()) {
                NhaCungCap778 nhaCungCap778 = new NhaCungCap778();

                nhaCungCap778.setMaNhaCungCap(rs.getLong("maNhaCungCap"));
                nhaCungCap778.setTenNhaCungCap(rs.getString("ten"));
                nhaCungCap778.setDiaChi(rs.getString("diaChi"));
                nhaCungCap778.setSoDienThoai(rs.getString("soDienThoai"));
                nhaCungCap778.setEmail(rs.getString("email"));

                danhSachNhaCungCap.add(nhaCungCap778);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return danhSachNhaCungCap;
    }
}
