CREATE TABLE IF NOT EXISTS tblThanhVien778 (
    maThanhVien INTEGER PRIMARY KEY AUTOINCREMENT,
    tenDangNhap VARCHAR(64) UNIQUE NOT NULL,
    matKhau VARCHAR(64) NOT NULL,
    hoVaTen VARCHAR(128),
    email VARCHAR(128) UNIQUE,
    soDienThoai VARCHAR(16) UNIQUE,
    viTri INTEGER,
    FOREIGN KEY (viTri) REFERENCES tblViTri778(maViTri) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS tblViTri778 (
    maViTri INTEGER PRIMARY KEY AUTOINCREMENT,
    tenViTri VARCHAR(64) NOT NULL
);

INSERT INTO tblViTri778 (tenViTri) VALUES ('QuanLy'), ('NhanVien'), ('BanDoc');

INSERT INTO tblThanhVien778 (tenDangNhap, hoVaTen, matKhau, email, soDienThoai, viTri) VALUES ('quanLy','Nguyễn Văn A', 'quanLy', 'quanLy@library.com', '0123456781', 1);
INSERT INTO tblThanhVien778 (tenDangNhap, hoVaTen, matKhau, email, soDienThoai, viTri) VALUES ('nhanVien', 'Đặng Thị B', 'nhanVien', 'nhanVien@library.com', '0123456782', 2);
INSERT INTO tblThanhVien778 (tenDangNhap, hoVaTen, matKhau, email, soDienThoai, viTri) VALUES ('banDoc01', 'Vũ Văn C', 'banDoc01', 'banDoc01@library.com', '0123456783', 3);
INSERT INTO tblThanhVien778 (tenDangNhap, hoVaTen, matKhau, email, soDienThoai, viTri) VALUES ('1cedrus', 'Vũ Xuân Tùng', '123', '1cedrus@gmail.com', '0869297810', 3);

CREATE TABLE IF NOT EXISTS tblTaiLieu778 (
    maTaiLieu VARCHAR(64) PRIMARY KEY NOT NULL,
    tenTaiLieu VARCHAR(256) NOT NULL,
    tacGia VARCHAR(256) NOT NULL,
    nhaXuatBan VARCHAR(512),
    namXuatBan DATE,
    soLuong INTEGER DEFAULT 0, -- Total quantity of the document in the library
    soLuongTrongKho INTEGER DEFAULT 0 -- Quantity currently available for borrowing
);

CREATE TABLE IF NOT EXISTS tblNhaCungCap778 (
    maNhaCungCap INTEGER PRIMARY KEY AUTOINCREMENT,
    ten VARCHAR(256) NOT NULL,
    diaChi VARCHAR(256),
    soDienThoai VARCHAR(16),
    email VARCHAR(128)
);

CREATE TABLE IF NOT EXISTS tblTaiLieuNhap778 (
    maTaiLieuNhap INTEGER PRIMARY KEY AUTOINCREMENT,
    maNhaCungCap INTEGER,
    maNhanVien INTEGER, -- Staff member handling the import (foreign key to Users)
    ngayNhap TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    giaNhap REAL, -- Total cost of the import
    FOREIGN KEY (maNhaCungCap) REFERENCES tblNhaCungCap778(maNhaCungCap),
    FOREIGN KEY (maNhanVien) REFERENCES tblThanhVien778(maThanhVien)
);

CREATE TABLE IF NOT EXISTS tblTaiLieuNhapChiTiet778 (
    maTaiLieuNhap INTEGER,
    maTaiLieu INTEGER,
    soLuongNhap INTEGER NOT NULL,
    donGia REAL NOT NULL,
    FOREIGN KEY (maTaiLieu) REFERENCES tblTaiLieu778(maTaiLieu),
    FOREIGN KEY (maTaiLieuNhap) REFERENCES tblTaiLieuNhap778(maTaiLieuNhap),
    PRIMARY KEY (maTaiLieuNhap, maTaiLieu)
);

-- Sample data for tblNhaCungCap778
INSERT INTO tblNhaCungCap778 (ten, diaChi, soDienThoai, email) VALUES
    ('Nhà Cung Cấp A', 'Địa chỉ 1', '0123123456', 'nccA@example.com'),
    ('Nhà Cung Cấp B', 'Địa chỉ 2', '0987123456', 'nccB@example.com'),
    ('Nhà Cung Cấp C', 'Địa chỉ 3', '0246123456', 'nccC@example.com');

-- Sample data for tblTaiLieuNhap778
-- Ensure that the maNhaCungCap and maNhanVien values correspond to valid entries in the respective tables.
INSERT INTO tblTaiLieuNhap778 (maNhaCungCap, maNhanVien, giaNhap) VALUES
    (1, 2, 3000.00),  -- Replace 1 with actual maNhaCungCap and maNhanVien
    (2, 2, 1600.00);  -- Replace with actual IDs

-- Sample data for tblTaiLieuNhapChiTiet778
-- Ensure that maTaiLieuNhap and maTaiLieu values correspond to valid entries in their respective tables.
INSERT INTO tblTaiLieuNhapChiTiet778 (maTaiLieuNhap, maTaiLieu, soLuongNhap, donGia) VALUES
    (1, 1, 10, 150.00),  -- Replace with actual IDs
    (1, 2, 5, 300.00),   -- Replace with actual IDs
    (2, 3, 8, 200.00);   -- Replace with actual IDs

-- Sample data for tblTaiLieu778
INSERT INTO tblTaiLieu778 (maTaiLieu, tenTaiLieu, tacGia,nhaXuatBan, namXuatBan, soLuong, soLuongTrongKho) VALUES
    ('9786045887752','Không bao giờ là thất bại! Tất cả chỉ là thử thách', 'Chung Ju Yung','NHÀ XUẤT BẢN TỔNG HỢP THÀNH PHỐ HỒ CHÍ MINH', '2019-06-21', 100, 80),  -- 1 corresponds to Nhà Xuất Bản A
    ('9786048889630','Chông chênh quãng tư cuộc đời', 'Nhiều tác giả','NHÀ XUẤT BẢN DÂN TRÍ', '2020-02-07', 50, 30),   -- 2 corresponds to Nhà Xuất Bản B
    ('9786047727896','Làm đúng việc (Getting the right work done)', 'Harvard Business Review Press','NHÀ XUẤT BẢN THẾ GIỚI', '2016-10-28', 75, 60);   -- 3 corresponds to Nhà Xuất Bản C

CREATE TABLE IF NOT EXISTS tblTaiLieuMuon778 (
    maTaiLieuMuon INTEGER PRIMARY KEY AUTOINCREMENT,
    maBanDoc INTEGER, -- Reader who borrows the document
    maNhanVien INTEGER, -- Librarian handling the transaction
    ngayMuon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (maBanDoc) REFERENCES tblThanhVien778(maThanhVien),
    FOREIGN KEY (maNhanVien) REFERENCES tblThanhVien778(maThanhVien)
);

CREATE TABLE IF NOT EXISTS tblTaiLieuMuonChiTiet778 (
    maTaiLieuMuon INTEGER,
    maTaiLieu INTEGER,
    ngayTra TIMESTAMP, -- NULL if not returned yet
    soLuong INTEGER NOT NULL,
    hanTra DATE, -- Due date for returning the document
    FOREIGN KEY (maTaiLieu) REFERENCES tblTaiLieu778(maTaiLieu),
    FOREIGN KEY (maTaiLieuMuon) REFERENCES tblTaiLieuMuon778(maTaiLieuMuon),
    PRIMARY KEY (maTaiLieuMuon, maTaiLieu)
);

CREATE TABLE IF NOT EXISTS tblTheDoc778 (
    maTheDoc INTEGER PRIMARY KEY AUTOINCREMENT,
    maBanDoc INTEGER,
    ngayTao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ngayHetHan DATE,
    FOREIGN KEY (maBanDoc) REFERENCES tblThanhVien778(maThanhVien) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tblPhieuTaoTheDoc778 (
    maPhieuTaoTheDoc INTEGER PRIMARY KEY AUTOINCREMENT,
    maNhanVien INTEGER,
    maBanDoc INTEGER,
    ngayTao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (maNhanVien) REFERENCES tblThanhVien778(maThanhVien),
    FOREIGN KEY (maBanDoc) REFERENCES tblThanhVien778(maThanhVien)
);

CREATE TABLE IF NOT EXISTS tblTrangThaiPhieuTao778 (
    maTrangThaiPhieuTao INTEGER PRIMARY KEY AUTOINCREMENT,
    tenTrangThai VARCHAR(64) NOT NULL
);

