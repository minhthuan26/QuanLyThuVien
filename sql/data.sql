USE [master]
GO
/****** Object:  Database [QuanLiThuVien]    Script Date: 5/18/2022 12:13:19 AM ******/
CREATE DATABASE [QuanLiThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QuanLiThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QuanLiThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLiThuVien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLiThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiThuVien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLiThuVien', N'ON'
GO
ALTER DATABASE [QuanLiThuVien] SET QUERY_STORE = OFF
GO
USE [QuanLiThuVien]
GO
/****** Object:  User [minhthuan]    Script Date: 5/18/2022 12:13:19 AM ******/
CREATE USER [minhthuan] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [minhthuan]
GO
/****** Object:  Table [dbo].[ChiTietPhieuBoiThuongs]    Script Date: 5/18/2022 12:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuBoiThuongs](
	[ID] [varchar](128) NOT NULL,
	[IDPhieuBoiThuong] [varchar](128) NULL,
	[IDSach] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuBoiThuongs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuons]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuons](
	[ID] [varchar](128) NOT NULL,
	[IDPhieuMuon] [varchar](128) NULL,
	[IDSach] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuMuons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVus]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ChucVus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[ID] [varchar](128) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[HoVaTen] [nvarchar](max) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KhachHangs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[ID] [varchar](128) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[HoVaTen] [nvarchar](max) NOT NULL,
	[IDChucVu] [int] NOT NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBoiThuongs]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBoiThuongs](
	[ID] [varchar](128) NOT NULL,
	[NgayLapPhieu] [datetime] NOT NULL,
	[IDPhieuMuon] [varchar](128) NOT NULL,
	[IDNguoiLap] [varchar](128) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_PhieuBoiThuongs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuons]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuons](
	[ID] [varchar](128) NOT NULL,
	[NgayLapPhieu] [datetime] NOT NULL,
	[IDNguoiLap] [varchar](128) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDKhachHang] [varchar](128) NOT NULL,
 CONSTRAINT [PK_PhieuMuons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Saches]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saches](
	[ID] [varchar](128) NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[Gia] [float] NOT NULL,
	[NgayXuatBan] [datetime] NOT NULL,
	[IDTacGia] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
	[IDTheLoai] [int] NULL,
	[HinhAnh] [varchar](max) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Saches] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGias]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGias](
	[ID] [varchar](128) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TacGias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](max) NOT NULL,
	[MatKhau] [varchar](max) NOT NULL,
	[TrangThai] [int] NULL,
	[IDNhanVien] [varchar](128) NOT NULL,
 CONSTRAINT [PK_TaiKhoans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoais]    Script Date: 5/18/2022 12:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoais](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_TheLoais] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[ChucVus] ON 

INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (1, N'Admin')
INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (2, N'Thủ thư')
INSERT [dbo].[ChucVus] ([ID], [TenChucVu]) VALUES (3, N'Thu ngân')
SET IDENTITY_INSERT [dbo].[ChucVus] OFF
GO
INSERT [dbo].[KhachHangs] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [TrangThai]) VALUES (N'1', CAST(N'2000-12-21T00:00:00.000' AS DateTime), N'01277079700', N'TP.HCM', N'Lê Thị Tý', 1)
INSERT [dbo].[KhachHangs] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [TrangThai]) VALUES (N'af6823b4-d31e-44dc-b973-98c7b5d4fbb7', CAST(N'2022-05-17T22:35:52.000' AS DateTime), N'7954852135', N'Mồ Căng Chải', N'Nguyễn Thanh Tèo', 0)
GO
INSERT [dbo].[NhanViens] ([ID], [NgaySinh], [SoDienThoai], [DiaChi], [HoVaTen], [IDChucVu]) VALUES (N'1', CAST(N'2001-04-26T00:00:00.000' AS DateTime), N'0707593019', N'TP.HCM', N'Lê Minh Thuận', 1)
GO
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'01fbb778-f8e7-4470-88ee-6aff12806cf0', CAST(N'2022-05-17T22:35:32.260' AS DateTime), N'1', 1, N'1')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'02053fb9-e9fb-4353-bea5-22a8cf07331b', CAST(N'2022-05-17T22:37:29.333' AS DateTime), N'1', 0, N'af6823b4-d31e-44dc-b973-98c7b5d4fbb7')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'c9d2edc5-b3b2-4119-a4c8-42d69a5edb0b', CAST(N'2022-05-17T22:54:19.407' AS DateTime), N'1', 1, N'1')
INSERT [dbo].[PhieuMuons] ([ID], [NgayLapPhieu], [IDNguoiLap], [TrangThai], [IDKhachHang]) VALUES (N'f1e669f5-637d-4c63-a65e-9e8caf0cda95', CAST(N'2022-05-17T22:33:28.643' AS DateTime), N'1', 1, N'1')
GO
INSERT [dbo].[Saches] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh], [TrangThai]) VALUES (N'46a05fc9-a292-4d8a-9682-46d6da3f07bb', N'Conan', 15500, CAST(N'2022-05-13T00:10:13.273' AS DateTime), N'2', 0, 1, NULL, 1)
INSERT [dbo].[Saches] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh], [TrangThai]) VALUES (N'a58f8d8b-c546-47b3-8e88-13e451aef3ec', N'Bảy viên ngọc rồng', 15500, CAST(N'2022-05-15T14:04:18.870' AS DateTime), N'2', 12, 1, NULL, 1)
GO
INSERT [dbo].[TacGias] ([ID], [Ten]) VALUES (N'1', N'Nguyễn Nhật Ánh')
INSERT [dbo].[TacGias] ([ID], [Ten]) VALUES (N'2', N'NXB Kim Đồng')
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([ID], [TenTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (834, N'Admin', N'agyqa', 1, N'1')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoais] ON 

INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (1, N'Truyện tranh')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (2, N'Tiểu thuyết')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (3, N'Lịch sử')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (4, N'Tài liệu')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (5, N'Địa lí')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (6, N'Sách giáo khoa')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (7, N'Toán học')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (9, N'Văn học')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (10, N'Khoa học')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (11, N'Kinh dị')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (12, N'Viễn tưởng')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (13, N'Hoá học')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (14, N'Vật lí')
INSERT [dbo].[TheLoais] ([ID], [TenTheLoai]) VALUES (15, N'Nấu ăn')
SET IDENTITY_INSERT [dbo].[TheLoais] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_CTPBT_PBT]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CTPBT_PBT] ON [dbo].[ChiTietPhieuBoiThuongs]
(
	[IDPhieuBoiThuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_CTPBT_S]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CTPBT_S] ON [dbo].[ChiTietPhieuBoiThuongs]
(
	[IDSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_CTPM_PM]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CTPM_PM] ON [dbo].[ChiTietPhieuMuons]
(
	[IDPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_CTPM_S]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CTPM_S] ON [dbo].[ChiTietPhieuMuons]
(
	[IDSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_PBT_PM]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PBT_PM] ON [dbo].[PhieuBoiThuongs]
(
	[IDPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_S_TG]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_S_TG] ON [dbo].[Saches]
(
	[IDTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_S_TL]    Script Date: 5/18/2022 12:13:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_S_TL] ON [dbo].[Saches]
(
	[IDTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhachHangs] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[PhieuBoiThuongs] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[PhieuMuons] ADD  CONSTRAINT [DF_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TaiKhoans] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs]  WITH CHECK ADD  CONSTRAINT [FK_CTPBT_PBT] FOREIGN KEY([IDPhieuBoiThuong])
REFERENCES [dbo].[PhieuBoiThuongs] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs] CHECK CONSTRAINT [FK_CTPBT_PBT]
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs]  WITH CHECK ADD  CONSTRAINT [FK_CTPBT_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Saches] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuongs] CHECK CONSTRAINT [FK_CTPBT_S]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_CTPM_PM] FOREIGN KEY([IDPhieuMuon])
REFERENCES [dbo].[PhieuMuons] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons] CHECK CONSTRAINT [FK_CTPM_PM]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_CTPM_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Saches] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons] CHECK CONSTRAINT [FK_CTPM_S]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NV_CV] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVus] ([ID])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NV_CV]
GO
ALTER TABLE [dbo].[PhieuBoiThuongs]  WITH CHECK ADD  CONSTRAINT [FK_PBT_NV] FOREIGN KEY([IDNguoiLap])
REFERENCES [dbo].[NhanViens] ([ID])
GO
ALTER TABLE [dbo].[PhieuBoiThuongs] CHECK CONSTRAINT [FK_PBT_NV]
GO
ALTER TABLE [dbo].[PhieuBoiThuongs]  WITH CHECK ADD  CONSTRAINT [FK_PBT_PM] FOREIGN KEY([IDPhieuMuon])
REFERENCES [dbo].[PhieuMuons] ([ID])
GO
ALTER TABLE [dbo].[PhieuBoiThuongs] CHECK CONSTRAINT [FK_PBT_PM]
GO
ALTER TABLE [dbo].[PhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_PM_KH] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHangs] ([ID])
GO
ALTER TABLE [dbo].[PhieuMuons] CHECK CONSTRAINT [FK_PM_KH]
GO
ALTER TABLE [dbo].[PhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_PM_NV] FOREIGN KEY([IDNguoiLap])
REFERENCES [dbo].[NhanViens] ([ID])
GO
ALTER TABLE [dbo].[PhieuMuons] CHECK CONSTRAINT [FK_PM_NV]
GO
ALTER TABLE [dbo].[Saches]  WITH CHECK ADD  CONSTRAINT [FK_S_TG] FOREIGN KEY([IDTacGia])
REFERENCES [dbo].[TacGias] ([ID])
GO
ALTER TABLE [dbo].[Saches] CHECK CONSTRAINT [FK_S_TG]
GO
ALTER TABLE [dbo].[Saches]  WITH CHECK ADD  CONSTRAINT [FK_S_TL] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[TheLoais] ([ID])
GO
ALTER TABLE [dbo].[Saches] CHECK CONSTRAINT [FK_S_TL]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_TK_NV] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanViens] ([ID])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK_TK_NV]
GO
USE [master]
GO
ALTER DATABASE [QuanLiThuVien] SET  READ_WRITE 
GO
