package org.one_cedrus.librarysystem.model;

import java.sql.Date;

public class TaiLieuNhap778 {
    private long maTaiLieuNhap;
    private NhaCungCap778 nhaCungCap;
    private ThanhVien778 nhanVienNhap;
    private float giaNhap;
    private Date ngayNhap;

    public TaiLieuNhap778() {
    }

    public TaiLieuNhap778(long maTaiLieuNhap, NhaCungCap778 nhaCungCap, ThanhVien778 nhanVienNhap, float giaNhap) {
        this.maTaiLieuNhap = maTaiLieuNhap;
        this.nhaCungCap = nhaCungCap;
        this.nhanVienNhap = nhanVienNhap;
        this.giaNhap = giaNhap;
    }

    public Date getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(Date ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public long getMaTaiLieuNhap() {
        return maTaiLieuNhap;
    }

    public void setMaTaiLieuNhap(long maTaiLieuNhap) {
        this.maTaiLieuNhap = maTaiLieuNhap;
    }

    public NhaCungCap778 getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(NhaCungCap778 nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public ThanhVien778 getNhanVienNhap() {
        return nhanVienNhap;
    }

    public void setNhanVienNhap(ThanhVien778 nhanVienNhap) {
        this.nhanVienNhap = nhanVienNhap;
    }

    public float getGiaNhap() {
        return giaNhap;
    }

    public void setGiaNhap(float giaNhap) {
        this.giaNhap = giaNhap;
    }
}
