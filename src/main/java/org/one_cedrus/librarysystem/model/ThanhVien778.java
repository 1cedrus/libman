package org.one_cedrus.librarysystem.model;

public class ThanhVien778 {
    private long maThanhVien;
    private String hoVaTen;
    private String tenDangNhap;
    private String matKhau;
    private String email;
    private String soDienThoai;
    private ViTri778 viTri;

    public ThanhVien778() {
    }

    public ThanhVien778(long maThanhVien, String hoVaTen, String tenDangNhap, String matKhau, String email, String soDienThoai, ViTri778 viTri) {
        this.maThanhVien = maThanhVien;
        this.hoVaTen = hoVaTen;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.viTri = viTri;
    }

    public ThanhVien778(String tenDangNhap, String matKhau) {
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
    }

    public long getMaThanhVien() {
        return maThanhVien;
    }

    public void setMaThanhVien(long maThanhVien) {
        this.maThanhVien = maThanhVien;
    }

    public String getHoVaTen() {
        return hoVaTen;
    }

    public void setHoVaTen(String hoVaTen) {
        this.hoVaTen = hoVaTen;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public ViTri778 getViTri() {
        return viTri;
    }

    public void setViTri(ViTri778 viTri) {
        this.viTri = viTri;
    }
}
