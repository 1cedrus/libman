package org.one_cedrus.librarysystem.model;

public class TaiLieuNhapChiTiet778 {
    private long maTaiLieuNhapChiTiet;
    private TaiLieuNhap778 taiLieuNhap;
    private TaiLieu778 taiLieu;
    private int soLuongNhap;
    private float donGiaNhap;

    public TaiLieuNhapChiTiet778() {
    }

    public TaiLieuNhapChiTiet778(long maTaiLieuNhapChiTiet, TaiLieuNhap778 taiLieuNhap, TaiLieu778 taiLieu, int soLuongNhap, float donGiaNhap) {
        this.maTaiLieuNhapChiTiet = maTaiLieuNhapChiTiet;
        this.taiLieuNhap = taiLieuNhap;
        this.taiLieu = taiLieu;
        this.soLuongNhap = soLuongNhap;
        this.donGiaNhap = donGiaNhap;
    }

    public long getMaTaiLieuNhapChiTiet() {
        return maTaiLieuNhapChiTiet;
    }

    public void setMaTaiLieuNhapChiTiet(long maTaiLieuNhapChiTiet) {
        this.maTaiLieuNhapChiTiet = maTaiLieuNhapChiTiet;
    }

    public TaiLieuNhap778 getTaiLieuNhap() {
        return taiLieuNhap;
    }

    public void setTaiLieuNhap(TaiLieuNhap778 taiLieuNhap) {
        this.taiLieuNhap = taiLieuNhap;
    }

    public TaiLieu778 getTaiLieu() {
        return taiLieu;
    }

    public void setTaiLieu(TaiLieu778 taiLieu) {
        this.taiLieu = taiLieu;
    }

    public int getSoLuongNhap() {
        return soLuongNhap;
    }

    public void setSoLuongNhap(int soLuongNhap) {
        this.soLuongNhap = soLuongNhap;
    }

    public float getDonGiaNhap() {
        return donGiaNhap;
    }

    public void setDonGiaNhap(float donGiaNhap) {
        this.donGiaNhap = donGiaNhap;
    }
}
