Create database QuanLiThuVien
go
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2024 16:01:27
-- Generated from EDMX file: D:\tmp\Library-Management\Model\Database.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QuanLiThuVien];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CTPBT_PBT]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs] DROP CONSTRAINT [FK_CTPBT_PBT];
GO
IF OBJECT_ID(N'[dbo].[FK_CTPBT_S]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs] DROP CONSTRAINT [FK_CTPBT_S];
GO
IF OBJECT_ID(N'[dbo].[FK_CTPM_PM]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTietPhieuMuons] DROP CONSTRAINT [FK_CTPM_PM];
GO
IF OBJECT_ID(N'[dbo].[FK_CTPM_S]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTietPhieuMuons] DROP CONSTRAINT [FK_CTPM_S];
GO
IF OBJECT_ID(N'[dbo].[FK_NV_CV]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanViens] DROP CONSTRAINT [FK_NV_CV];
GO
IF OBJECT_ID(N'[dbo].[FK_PBT_NV]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhieuBoiThuongs] DROP CONSTRAINT [FK_PBT_NV];
GO
IF OBJECT_ID(N'[dbo].[FK_PBT_PM]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhieuBoiThuongs] DROP CONSTRAINT [FK_PBT_PM];
GO
IF OBJECT_ID(N'[dbo].[FK_PM_KH]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhieuMuons] DROP CONSTRAINT [FK_PM_KH];
GO
IF OBJECT_ID(N'[dbo].[FK_PM_NV]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhieuMuons] DROP CONSTRAINT [FK_PM_NV];
GO
IF OBJECT_ID(N'[dbo].[FK_S_TG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Saches] DROP CONSTRAINT [FK_S_TG];
GO
IF OBJECT_ID(N'[dbo].[FK_S_TL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Saches] DROP CONSTRAINT [FK_S_TL];
GO
IF OBJECT_ID(N'[dbo].[FK_TK_NV]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaiKhoans] DROP CONSTRAINT [FK_TK_NV];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ChiTietPhieuBoiThuongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChiTietPhieuBoiThuongs];
GO
IF OBJECT_ID(N'[dbo].[ChiTietPhieuMuons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChiTietPhieuMuons];
GO
IF OBJECT_ID(N'[dbo].[ChucVus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChucVus];
GO
IF OBJECT_ID(N'[dbo].[KhachHangs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KhachHangs];
GO
IF OBJECT_ID(N'[dbo].[NhanViens]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NhanViens];
GO
IF OBJECT_ID(N'[dbo].[PhieuBoiThuongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhieuBoiThuongs];
GO
IF OBJECT_ID(N'[dbo].[PhieuMuons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhieuMuons];
GO
IF OBJECT_ID(N'[dbo].[Saches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Saches];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TacGias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TacGias];
GO
IF OBJECT_ID(N'[dbo].[TaiKhoans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaiKhoans];
GO
IF OBJECT_ID(N'[dbo].[TheLoais]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TheLoais];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ChiTietPhieuBoiThuongs'
CREATE TABLE [dbo].[ChiTietPhieuBoiThuongs] (
    [ID] varchar(128)  NOT NULL,
    [IDPhieuBoiThuong] varchar(128)  NULL,
    [IDSach] varchar(128)  NULL,
    [SoLuong] int  NOT NULL,
    [Gia] float  NOT NULL
);
GO

-- Creating table 'ChiTietPhieuMuons'
CREATE TABLE [dbo].[ChiTietPhieuMuons] (
    [ID] varchar(128)  NOT NULL,
    [IDPhieuMuon] varchar(128)  NULL,
    [IDSach] varchar(128)  NULL,
    [SoLuong] int  NOT NULL
);
GO

-- Creating table 'ChucVus'
CREATE TABLE [dbo].[ChucVus] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TenChucVu] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KhachHangs'
CREATE TABLE [dbo].[KhachHangs] (
    [ID] varchar(128)  NOT NULL,
    [NgaySinh] datetime  NOT NULL,
    [SoDienThoai] varchar(20)  NOT NULL,
    [DiaChi] nvarchar(max)  NOT NULL,
    [HoVaTen] nvarchar(max)  NOT NULL,
    [TrangThai] int  NOT NULL
);
GO

-- Creating table 'NhanViens'
CREATE TABLE [dbo].[NhanViens] (
    [ID] varchar(128)  NOT NULL,
    [NgaySinh] datetime  NOT NULL,
    [SoDienThoai] varchar(20)  NOT NULL,
    [DiaChi] nvarchar(max)  NOT NULL,
    [HoVaTen] nvarchar(max)  NOT NULL,
    [IDChucVu] int  NOT NULL
);
GO

-- Creating table 'PhieuBoiThuongs'
CREATE TABLE [dbo].[PhieuBoiThuongs] (
    [ID] varchar(128)  NOT NULL,
    [NgayLapPhieu] datetime  NOT NULL,
    [IDPhieuMuon] varchar(128)  NOT NULL,
    [IDNguoiLap] varchar(128)  NOT NULL,
    [TrangThai] int  NOT NULL
);
GO

-- Creating table 'PhieuMuons'
CREATE TABLE [dbo].[PhieuMuons] (
    [ID] varchar(128)  NOT NULL,
    [NgayLapPhieu] datetime  NOT NULL,
    [IDNguoiLap] varchar(128)  NOT NULL,
    [TrangThai] int  NOT NULL,
    [IDKhachHang] varchar(128)  NOT NULL
);
GO

-- Creating table 'Saches'
CREATE TABLE [dbo].[Saches] (
    [ID] varchar(128)  NOT NULL,
    [TenSach] nvarchar(max)  NOT NULL,
    [Gia] float  NOT NULL,
    [NgayXuatBan] datetime  NOT NULL,
    [IDTacGia] varchar(128)  NULL,
    [SoLuong] int  NOT NULL,
    [IDTheLoai] int  NULL,
    [HinhAnh] varchar(max)  NULL,
    [TrangThai] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TacGias'
CREATE TABLE [dbo].[TacGias] (
    [ID] varchar(128)  NOT NULL,
    [Ten] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TaiKhoans'
CREATE TABLE [dbo].[TaiKhoans] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TenTaiKhoan] varchar(max)  NOT NULL,
    [MatKhau] varchar(max)  NOT NULL,
    [TrangThai] int  NULL,
    [IDNhanVien] varchar(128)  NOT NULL
);
GO

-- Creating table 'TheLoais'
CREATE TABLE [dbo].[TheLoais] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TenTheLoai] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'ChiTietPhieuBoiThuongs'
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs]
ADD CONSTRAINT [PK_ChiTietPhieuBoiThuongs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ChiTietPhieuMuons'
ALTER TABLE [dbo].[ChiTietPhieuMuons]
ADD CONSTRAINT [PK_ChiTietPhieuMuons]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ChucVus'
ALTER TABLE [dbo].[ChucVus]
ADD CONSTRAINT [PK_ChucVus]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'KhachHangs'
ALTER TABLE [dbo].[KhachHangs]
ADD CONSTRAINT [PK_KhachHangs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [PK_NhanViens]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PhieuBoiThuongs'
ALTER TABLE [dbo].[PhieuBoiThuongs]
ADD CONSTRAINT [PK_PhieuBoiThuongs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PhieuMuons'
ALTER TABLE [dbo].[PhieuMuons]
ADD CONSTRAINT [PK_PhieuMuons]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Saches'
ALTER TABLE [dbo].[Saches]
ADD CONSTRAINT [PK_Saches]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'TacGias'
ALTER TABLE [dbo].[TacGias]
ADD CONSTRAINT [PK_TacGias]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TaiKhoans'
ALTER TABLE [dbo].[TaiKhoans]
ADD CONSTRAINT [PK_TaiKhoans]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TheLoais'
ALTER TABLE [dbo].[TheLoais]
ADD CONSTRAINT [PK_TheLoais]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IDPhieuBoiThuong] in table 'ChiTietPhieuBoiThuongs'
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs]
ADD CONSTRAINT [FK_CTPBT_PBT]
    FOREIGN KEY ([IDPhieuBoiThuong])
    REFERENCES [dbo].[PhieuBoiThuongs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CTPBT_PBT'
CREATE INDEX [IX_FK_CTPBT_PBT]
ON [dbo].[ChiTietPhieuBoiThuongs]
    ([IDPhieuBoiThuong]);
GO

-- Creating foreign key on [IDSach] in table 'ChiTietPhieuBoiThuongs'
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs]
ADD CONSTRAINT [FK_CTPBT_S]
    FOREIGN KEY ([IDSach])
    REFERENCES [dbo].[Saches]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CTPBT_S'
CREATE INDEX [IX_FK_CTPBT_S]
ON [dbo].[ChiTietPhieuBoiThuongs]
    ([IDSach]);
GO

-- Creating foreign key on [IDPhieuMuon] in table 'ChiTietPhieuMuons'
ALTER TABLE [dbo].[ChiTietPhieuMuons]
ADD CONSTRAINT [FK_CTPM_PM]
    FOREIGN KEY ([IDPhieuMuon])
    REFERENCES [dbo].[PhieuMuons]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CTPM_PM'
CREATE INDEX [IX_FK_CTPM_PM]
ON [dbo].[ChiTietPhieuMuons]
    ([IDPhieuMuon]);
GO

-- Creating foreign key on [IDSach] in table 'ChiTietPhieuMuons'
ALTER TABLE [dbo].[ChiTietPhieuMuons]
ADD CONSTRAINT [FK_CTPM_S]
    FOREIGN KEY ([IDSach])
    REFERENCES [dbo].[Saches]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CTPM_S'
CREATE INDEX [IX_FK_CTPM_S]
ON [dbo].[ChiTietPhieuMuons]
    ([IDSach]);
GO

-- Creating foreign key on [IDChucVu] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK_NV_CV]
    FOREIGN KEY ([IDChucVu])
    REFERENCES [dbo].[ChucVus]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NV_CV'
CREATE INDEX [IX_FK_NV_CV]
ON [dbo].[NhanViens]
    ([IDChucVu]);
GO

-- Creating foreign key on [IDKhachHang] in table 'PhieuMuons'
ALTER TABLE [dbo].[PhieuMuons]
ADD CONSTRAINT [FK_PM_KH]
    FOREIGN KEY ([IDKhachHang])
    REFERENCES [dbo].[KhachHangs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PM_KH'
CREATE INDEX [IX_FK_PM_KH]
ON [dbo].[PhieuMuons]
    ([IDKhachHang]);
GO

-- Creating foreign key on [IDNguoiLap] in table 'PhieuBoiThuongs'
ALTER TABLE [dbo].[PhieuBoiThuongs]
ADD CONSTRAINT [FK_PBT_NV]
    FOREIGN KEY ([IDNguoiLap])
    REFERENCES [dbo].[NhanViens]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PBT_NV'
CREATE INDEX [IX_FK_PBT_NV]
ON [dbo].[PhieuBoiThuongs]
    ([IDNguoiLap]);
GO

-- Creating foreign key on [IDNguoiLap] in table 'PhieuMuons'
ALTER TABLE [dbo].[PhieuMuons]
ADD CONSTRAINT [FK_PM_NV]
    FOREIGN KEY ([IDNguoiLap])
    REFERENCES [dbo].[NhanViens]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PM_NV'
CREATE INDEX [IX_FK_PM_NV]
ON [dbo].[PhieuMuons]
    ([IDNguoiLap]);
GO

-- Creating foreign key on [IDNhanVien] in table 'TaiKhoans'
ALTER TABLE [dbo].[TaiKhoans]
ADD CONSTRAINT [FK_TK_NV]
    FOREIGN KEY ([IDNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TK_NV'
CREATE INDEX [IX_FK_TK_NV]
ON [dbo].[TaiKhoans]
    ([IDNhanVien]);
GO

-- Creating foreign key on [IDPhieuMuon] in table 'PhieuBoiThuongs'
ALTER TABLE [dbo].[PhieuBoiThuongs]
ADD CONSTRAINT [FK_PBT_PM]
    FOREIGN KEY ([IDPhieuMuon])
    REFERENCES [dbo].[PhieuMuons]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PBT_PM'
CREATE INDEX [IX_FK_PBT_PM]
ON [dbo].[PhieuBoiThuongs]
    ([IDPhieuMuon]);
GO

-- Creating foreign key on [IDTacGia] in table 'Saches'
ALTER TABLE [dbo].[Saches]
ADD CONSTRAINT [FK_S_TG]
    FOREIGN KEY ([IDTacGia])
    REFERENCES [dbo].[TacGias]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_S_TG'
CREATE INDEX [IX_FK_S_TG]
ON [dbo].[Saches]
    ([IDTacGia]);
GO

-- Creating foreign key on [IDTheLoai] in table 'Saches'
ALTER TABLE [dbo].[Saches]
ADD CONSTRAINT [FK_S_TL]
    FOREIGN KEY ([IDTheLoai])
    REFERENCES [dbo].[TheLoais]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_S_TL'
CREATE INDEX [IX_FK_S_TL]
ON [dbo].[Saches]
    ([IDTheLoai]);
GO

SET IDENTITY_INSERT [dbo].[TheLoais] ON
insert into TheLoais (ID, TenTheLoai) values 
(1, N'Truyện tranh'),
(2, N'Tiểu thuyết'),
(3, N'Lịch sử'),
(4, N'Tài liệu'),
(5, N'Địa lí'),
(6, N'Sách giáo khoa'),
(7, N'Toán học'),
(9, N'Văn học'),
(10, N'Khoa học'),
(11, N'Kinh dị'),
(12, N'Viễn tưởng'),
(13, N'Hoá học'),
(14, N'Vật lí'),
(15, N'Nấu ăn')
SET IDENTITY_INSERT [dbo].[TheLoais] OFF

INSERT [dbo].[TacGias] ([ID], [Ten]) VALUES (N'1', N'Nguyễn Nhật Ánh')
INSERT [dbo].[TacGias] ([ID], [Ten]) VALUES (N'2', N'NXB Kim Đồng')
GO

INSERT [dbo].[Saches] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh], [TrangThai]) VALUES (N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', N'Conan', 15500, CAST(N'2022-05-13T00:10:13.273' AS DateTime), N'2', 0, 1, NULL, 1)
INSERT [dbo].[Saches] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh], [TrangThai]) VALUES (N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', N'Bảy viên ngọc rồng', 15500, CAST(N'2022-05-15T14:04:18.870' AS DateTime), N'2', 12, 1, NULL, 1)
GO

SET IDENTITY_INSERT [dbo].[ChucVus] ON 
INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (1, N'Admin')
INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (2, N'Thủ thư')
INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (3, N'Thu ngân')
SET IDENTITY_INSERT [dbo].[ChucVus] OFF

INSERT [dbo].[NhanViens] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [IDChucVu]) VALUES (N'1', CAST(N'2001-04-26T00:00:00.000' AS DateTime), N'0707593019', N'TP.HCM', N'Lê Minh Thuận', 1)
GO

SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 
INSERT [dbo].[TaiKhoans] ([ID], [TenTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (834, N'Admin', N'agyqa', 1, N'1')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF

INSERT [dbo].[KhachHangs] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [TrangThai]) VALUES (N'1', CAST(N'2000-12-21T00:00:00.000' AS DateTime), N'01277079700', N'TP.HCM', N'Lê Thị Tý', 1)
INSERT [dbo].[KhachHangs] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [TrangThai]) VALUES (N'af6823b4-d31e-44dc-b973-98c7b5d4fbb7', CAST(N'2022-05-17T22:35:52.000' AS DateTime), N'7954852135', N'Mồ Căng Chải', N'Nguyễn Thanh Tèo', 0)
GO

INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'01fbb778-f8e7-4470-88ee-6aff12806cf0', CAST(N'2022-05-17T22:35:32.260' AS DateTime), N'1', 1, N'1')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'02053fb9-e9fb-4353-bea5-22a8cf07331b', CAST(N'2022-05-17T22:37:29.333' AS DateTime), N'1', 0, N'af6823b4-d31e-44dc-b973-98c7b5d4fbb7')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'c9d2edc5-b3b2-4119-a4c8-42d69a5edb0b', CAST(N'2022-05-17T22:54:19.407' AS DateTime), N'1', 1, N'1')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'f1e669f5-637d-4c63-a65e-9e8caf0cda95', CAST(N'2022-05-17T22:33:28.643' AS DateTime), N'1', 1, N'1')
GO

INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'0e99257b-705d-4cb3-8d78-820314cf27fd', N'f1e669f5-637d-4c63-a65e-9e8caf0cda95', N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'273271f6-072d-4d7a-9740-b041eec50ce7', N'01fbb778-f8e7-4470-88ee-6aff12806cf0', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'3cfea01c-0275-4368-a82f-a6ad2a370e35', N'02053fb9-e9fb-4353-bea5-22a8cf07331b', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'4ad75393-48a3-4ba9-9392-4f804f3da903', N'c9d2edc5-b3b2-4119-a4c8-42d69a5edb0b', N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'777dad90-a2fa-4f2d-8703-b4cab132f9d5', N'02053fb9-e9fb-4353-bea5-22a8cf07331b', N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'b05e49be-27fb-4ea4-8d07-1f75d5b37e11', N'f1e669f5-637d-4c63-a65e-9e8caf0cda95', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'bee3f841-57e0-4f90-b8a3-4d7c3e2e75e2', N'01fbb778-f8e7-4470-88ee-6aff12806cf0', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'ceee46db-cc0f-4cde-9225-9675eaeb16dd', N'f1e669f5-637d-4c63-a65e-9e8caf0cda95', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'e6f87000-872b-46ec-a878-da9cf030cdee', N'02053fb9-e9fb-4353-bea5-22a8cf07331b', N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', 1)
INSERT [dbo].[ChiTietPhieuMuons] ([ID], [IDPhieuMuon], [IDSach], [SoLuong]) VALUES (N'ee3e08af-4c6b-49a6-8f8f-7c9f2d5faa48', N'01fbb778-f8e7-4470-88ee-6aff12806cf0', N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', 1)
GO
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------