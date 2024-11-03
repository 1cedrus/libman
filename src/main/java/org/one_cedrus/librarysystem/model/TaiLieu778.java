package org.one_cedrus.librarysystem.model;

public class TaiLieu778 {
    private String maTaiLieu;
    private String tenTaiLieu;
    private String tacGia;
    private String nhaXuatBan;
    private String namXuatBan;
    private long soLuong;
    private long soLuongTrongKho;

    public TaiLieu778(String maTaiLieu, String tenTaiLieu, String tacGia, String nhaXuatBan, String namXuatBan, long soLuong, long soLuongTrongKho) {
        this.maTaiLieu = maTaiLieu;
        this.tenTaiLieu = tenTaiLieu;
        this.tacGia = tacGia;
        this.nhaXuatBan = nhaXuatBan;
        this.namXuatBan = namXuatBan;
        this.soLuong = soLuong;
        this.soLuongTrongKho = soLuongTrongKho;
    }

    public TaiLieu778() {
    }

    public String getMaTaiLieu() {
        return maTaiLieu;
    }

    public void setMaTaiLieu(String maTaiLieu) {
        this.maTaiLieu = maTaiLieu;
    }

    public String getTenTaiLieu() {
        return tenTaiLieu;
    }

    public void setTenTaiLieu(String tenTaiLieu) {
        this.tenTaiLieu = tenTaiLieu;
    }

    public String getTacGia() {
        return tacGia;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public String getNhaXuatBan() {
        return nhaXuatBan;
    }

    public void setNhaXuatBan(String nhaXuatBan) {
        this.nhaXuatBan = nhaXuatBan;
    }

    public String getNamXuatBan() {
        return namXuatBan;
    }

    public void setNamXuatBan(String namXuatBan) {
        this.namXuatBan = namXuatBan;
    }

    public long getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(long soLuong) {
        this.soLuong = soLuong;
    }

    public long getSoLuongTrongKho() {
        return soLuongTrongKho;
    }

    public void setSoLuongTrongKho(long soLuongTrongKho) {
        this.soLuongTrongKho = soLuongTrongKho;
    }
}

