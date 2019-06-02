/*
select user();
show databases;
use quanlibanlaptop;
show tables;
desc nguoidung;
drop database quanlibanlaptop;
drop table nguoidung;
select * from nguoidung;
SET FOREIGN_KEY_CHECKS=0; truncate TABLE nguoidung; SET FOREIGN_KEY_CHECKS=1;
*/

create database if not exists QuanLiBanLaptop;
use QuanLiBanLaptop;

create table if not exists NguoiDung(
MaND int(10) not null auto_increment,
TenND varchar(255) not null,
MatKhau varchar(255) not null,
Cap int default 3,
primary key(MaND),
unique key(TenND),
check (Cap>=0)
);

insert into NguoiDung(TenND, MatKhau, Cap) values('che0be0', 'che0be0', 0);
insert into NguoiDung(TenND, MatKhau, Cap) values('tori', 'tori', 1);
insert into NguoiDung(TenND, MatKhau, Cap) values('toanketu', 'toanketu', 2);
insert into NguoiDung(TenND, MatKhau, Cap) values('mydieu', 'mydieu', 3);
insert into NguoiDung(TenND, MatKhau, Cap) values('lnb', 'lnb', 4);
insert into NguoiDung(TenND, MatKhau, Cap) values('hoichu', 'hoichu', 5);
insert into NguoiDung(TenND, MatKhau, Cap) values('lucvo', 'lucvo', 4);
insert into NguoiDung(TenND, MatKhau, Cap) values('phatlee', 'phatlee', 3);
insert into NguoiDung(TenND, MatKhau, Cap) values('lamtac', 'lamtac', 2);
insert into NguoiDung(TenND, MatKhau, Cap) values('hienthuc', 'hienthuc', 1);
insert into NguoiDung(TenND, MatKhau, Cap) values('ceo', 'ceo', 5);
insert into NguoiDung(TenND, MatKhau, Cap) values('coo', 'coo', 4);
insert into NguoiDung(TenND, MatKhau, Cap) values('cxo', 'cxo', 3);
insert into NguoiDung(TenND, MatKhau, Cap) values('super', 'super', 2);
insert into NguoiDung(TenND, MatKhau, Cap) values('vhv101', 'vhv101', 1);

create table NhanVien(
MaNV int(10) not null auto_increment,
TenNV varchar(255) charset utf8mb4,
GioiTinh bit,
NgayNV date,
DiaChi varchar(255) charset utf8mb4,
SoDT varchar(255),
Email varchar(255),
ChucVu varchar(255) charset utf8mb4,
LuongCB float,
PhuCap float,
LuongCT float default 0.0,
Hinh varchar(1023) charset utf8mb4 default 'Images/IMG_Default_NV.png',
MaND int(10),
primary key(MaNV),
foreign key(MaND) references NguoiDung(MaND),
unique(MaND)
);

insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Chèo Bẻo', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'che0be0@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_1.jpg', 1);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Tờ Rí', 1, '2016-08-17', N'Tây Hòa', '842577777777', 'tori@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_2.jpg', 2);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Toàn Ketu', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'toanketu@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_3.jpg', 3);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'My Điệu', 1, '2016-08-17', N'Tây Hòa', '842577777777', 'mydieu@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_4.jpg', 4);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Lnb', 1, '2016-08-17', N'Tây Hòa', '842577777777', 'lnb@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_5.jpg', 5);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Hội Chủ', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'hoichu@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_6.jpg', 6);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Lực Vô', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'lucvo@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_7.jpg', 7);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Phát Lee', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'phatlee@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_8.jpg', 8);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Lâm Tặc', 0, '2016-08-17', N'Tây Hòa', '842577777777', 'lamtac@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_9.jpg', 9);
insert into NhanVien(TenNV, GioiTinh, NgayNV, DiaChi, SoDT, Email, ChucVu, LuongCB, PhuCap, LuongCT, Hinh, MaND) values
(N'Hiền Thục', 1, '2016-08-17', N'Tây Hòa', '842577777777', 'hienthuc@plh.com', N'Nhân viên', 500, 50, 550, N'images/IMG_NV_10.jpg', 10);

create table KhachHang(
MaKH int(10) not null auto_increment,
TenKH varchar(255) charset utf8mb4,
GioiTinh bit,
NgaySinh date,
DiaChi varchar(255) charset utf8mb4,
SoDT varchar(255),
Email varchar(255),
MatKhau varchar(255),
Hinh varchar(1023) charset utf8mb4 default 'Images/IMG_Default_KH.png',
primary key(MaKH),
unique(Email)
);

insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Đông Tà', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'dongta@plh.com', 'dongta', N'images/IMG_KH_1.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Tây Độc', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'taydoc@plh.com', 'taydoc', N'images/IMG_KH_2.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Nam Đế', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'namde@plh.com', 'namde', N'images/IMG_KH_3.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Bắc Cái', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'baccai@plh.com', 'baccai', N'images/IMG_KH_4.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Vô Danh', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'vodanh@plh.com', 'vodanh', N'images/IMG_KH_5.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Vô Tình', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'votinh@plh.com', 'votinh', N'images/IMG_KH_6.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Ly Mạch', 1, '1998-01-16', N'Tây Hòa', '842577777777', 'lymach@plh.com', 'lymach', N'images/IMG_KH_7.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Lãnh Huyết', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'lanhhuyet@plh.com', 'lanhhuyet', N'images/IMG_KH_8.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Truy Mệnh', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'truymenh@plh.com', 'truymenh', N'images/IMG_KH_9.jpg');
insert into KhachHang(TenKH, GioiTinh, NgaySinh, DiaChi, SoDT, Email, MatKhau, Hinh) values
(N'Thiết Thủ', 0, '1998-01-16', N'Tây Hòa', '842577777777', 'thietthu@plh.com', 'thietthu', N'images/IMG_KH_10.jpg');

create table DanhMuc(
MaDM int(10) not null auto_increment,
TenDM varchar(255) charset utf8mb4,
MoTa varchar(1023) charset utf8mb4,
primary key(MaDM),
unique(TenDM)
);

insert into DanhMuc(TenDM, MoTa) values(N'Chơi Game', N'Laptop Chơi Game');
insert into DanhMuc(TenDM, MoTa) values(N'Văn Phòng', N'Laptop Văn Phòng');
insert into DanhMuc(TenDM, MoTa) values(N'Doanh Nhân', N'Laptop Doanh Nhân');
insert into DanhMuc(TenDM, MoTa) values(N'Học Tập', N'Laptop Học Tập');
insert into DanhMuc(TenDM, MoTa) values(N'2 Trong 1', N'Laptop 2 Trong 1');

create table SanPham(
MaSP int(10) not null auto_increment,
TenSP varchar(255) charset utf8mb4,
DonGia float,
TonKho int,
NhaSX varchar(255) charset utf8mb4,
CPU varchar(255) charset utf8mb4,
RAM varchar(255) charset utf8mb4,
OCung varchar(255) charset utf8mb4,
ManHinh varchar(255) charset utf8mb4,
HeDH varchar(255) charset utf8mb4,
BaoHanh varchar(255) charset utf8mb4,
Hinh varchar(1023) charset utf8mb4 default 'Images/IMG_Default_SP.png',
MaDM int(10),
primary key(MaSP),
unique(TenSP),
foreign key(MaDM) references DanhMuc(MaDM),
check(TonKho>=0)
);

insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'Dell 5559', 550, 25, N'Dell', N'Core i5', N'4GB', N'500GB', N'15.6 inch', N'Free DOS', N'1 năm', N'images/IMG_SP_1.jpg', 1);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'ASUS A556UF', 650, 20, N'ASUS', N'Core i7', N'8GB', N'1TB', N'15.6 inch', N'Windows 7', N'2 năm', N'images/IMG_SP_2.jpg', 2);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'Lenovo T480', 750, 15, N'Lenovo', N'Core i9', N'16GB', N'2TB', N'14.0 inch', N'Windows 8', N'1 năm', N'images/IMG_SP_3.jpg', 3);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'HP S2018', 850, 10, N'HP', N'Core i3', N'32GB', N'3TB', N'13.3 inch', N'Windows 10', N'2 năm', N'images/IMG_SP_4.jpg', 4);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'MSI Titan', 950, 5, N'MSI', N'Core i9', N'64GB', N'4TB', N'17.3 inch', N'Ubuntu', N'1 năm', N'images/IMG_SP_5.jpg', 5);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'PLH C21', 999, 10, N'PLH Vietnam', N'Core i5', N'4GB', N'500GB', N'15.6 inch', N'Free DOS', N'5 năm', N'images/IMG_SP_6.jpg', 5);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'PLH C20', 1001, 10, N'PLH Thailand', N'Core i7', N'8GB', N'1TB', N'15.6 inch', N'Free DOS', N'5 năm', N'images/IMG_SP_7.jpg', 4);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'PLH C19', 1111, 10, N'PLH Japan', N'Core i9', N'16GB', N'2TB', N'14.0 inch', N'Free DOS', N'5 năm', N'images/IMG_SP_8.jpg', 3);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'PLH C18', 3003, 10, N'PLH Korea', N'Core i3', N'32GB', N'3TB', N'13.3 inch', N'Free DOS', N'5 năm', N'images/IMG_SP_9.jpg', 2);
insert into SanPham(TenSP, DonGia, TonKho, NhaSX, CPU, RAM, OCung, ManHinh, HeDH, BaoHanh, Hinh, MaDM) values
(N'PLH A30', 3333, 10, N'PLH China', N'Core i9', N'64GB', N'4TB', N'17.3 inch', N'Free DOS', N'5 năm', N'images/IMG_SP_10.jpg', 1);

create table DonHang(
MaDH int(10) not null auto_increment,
-- MaNV int(10),
MaKH int(10),
NgayDat datetime default current_timestamp,
NgayNhan datetime default current_timestamp,
GiamGia float default 0.0,
Phi float default 0.0,
TongTien float default 0.0,
TinhTrang varchar(255) charset utf8mb4,
primary key(MaDH),
-- foreign key(MaNV) references NhanVien(MaNV),
foreign key(MaKH) references KhachHang(MaKH),
check(NgayNhan>=NgayDat)
);

create table ChiTietDonHang(
MaCTDH int(10) not null auto_increment,
MaDH int(10),
MaSP int(10),
SoLuong int,
GiaBan float,
ThanhTien float default 0.0,
primary key(MaCTDH),
foreign key(MaDH) references DonHang(MaDH),
foreign key(MaSP) references SanPham(MaSP),
unique(MaDH, MaSP),
check(SoLuong>=0)
);