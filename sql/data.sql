USE [QuanLiThuVien]
GO
/****** Object:  Table [dbo].[ChiTietPhieuBoiThuong]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuBoiThuong](
	[ID] [varchar](128) NOT NULL,
	[IDPhieuBoiThuong] [varchar](128) NULL,
	[IDSach] [varchar](128) NULL,
	[IDKhachHang] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuon]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuon](
	[ID] [varchar](128) NOT NULL,
	[IDPhieuMuon] [varchar](128) NULL,
	[IDSach] [varchar](128) NULL,
	[IDKhachHang] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [varchar](128) NOT NULL,
	[Ho] [nvarchar](max) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [varchar](128) NOT NULL,
	[Ho] [nvarchar](max) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[IDTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBoiThuong]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBoiThuong](
	[ID] [varchar](128) NOT NULL,
	[NgayLapPhieu] [datetime] NOT NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
	[IDPhieuMuon] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[ID] [varchar](128) NOT NULL,
	[NgayLapPhieu] [datetime] NOT NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[ID] [varchar](128) NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[Gia] [float] NOT NULL,
	[NgayXuatBan] [datetime] NOT NULL,
	[IDTacGia] [varchar](128) NULL,
	[SoLuong] [int] NOT NULL,
	[IDTheLoai] [int] NULL,
	[HinhAnh] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[ID] [varchar](128) NOT NULL,
	[Ho] [nvarchar](max) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](max) NOT NULL,
	[MatKhau] [varchar](max) NOT NULL,
	[IDChucVu] [int] NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 3/11/2022 2:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([ID], [TenChucVu]) VALUES (1, N'Admin')
INSERT [dbo].[ChucVu] ([ID], [TenChucVu]) VALUES (2, N'Thủ thư')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
INSERT [dbo].[Sach] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh]) VALUES (N'1', N'Tiếng Việt 1', 15000, CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'1', 20, 1, NULL)
INSERT [dbo].[Sach] ([ID], [TenSach], [Gia], [NgayXuatBan], [IDTacGia], [SoLuong], [IDTheLoai], [HinhAnh]) VALUES (N'2', N'Conan', 16500, CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'1', 30, 2, NULL)
GO
INSERT [dbo].[TacGia] ([ID], [Ho], [Ten]) VALUES (N'1', N'NXB', N'Kim Đồng')
INSERT [dbo].[TacGia] ([ID], [Ho], [Ten]) VALUES (N'2', N'Nguyễn', N'Nhật Ánh')
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [TenTaiKhoan], [MatKhau], [IDChucVu], [TrangThai]) VALUES (1, N'Admin', N'db69fc039dcbd2962cb4d28f5891aae1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([ID], [TenTaiKhoan], [MatKhau], [IDChucVu], [TrangThai]) VALUES (2, N'Nv1', N'9dfa104dd0102bb70fbc1124a271a6ae', 2, N'1')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (1, N'Sách giáo khoa')
INSERT [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (2, N'Truyện tranh')
INSERT [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (3, N'Tiểu thuyết')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuong]  WITH CHECK ADD  CONSTRAINT [FK_CTPBT_PBT] FOREIGN KEY([IDPhieuBoiThuong])
REFERENCES [dbo].[PhieuBoiThuong] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuong] CHECK CONSTRAINT [FK_CTPBT_PBT]
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuong]  WITH CHECK ADD  CONSTRAINT [FK_CTPBT_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuBoiThuong] CHECK CONSTRAINT [FK_CTPBT_S]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_CTPM_KH] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon] CHECK CONSTRAINT [FK_CTPM_KH]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_CTPM_PM] FOREIGN KEY([IDPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon] CHECK CONSTRAINT [FK_CTPM_PM]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_CTPM_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon] CHECK CONSTRAINT [FK_CTPM_S]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NV_TK] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NV_TK]
GO
ALTER TABLE [dbo].[PhieuBoiThuong]  WITH CHECK ADD  CONSTRAINT [FK_PBT_PM] FOREIGN KEY([IDPhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([ID])
GO
ALTER TABLE [dbo].[PhieuBoiThuong] CHECK CONSTRAINT [FK_PBT_PM]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_S_TG] FOREIGN KEY([IDTacGia])
REFERENCES [dbo].[TacGia] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_S_TG]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_S_TL] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[TheLoai] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_S_TL]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TK_CV] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([ID])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TK_CV]
GO
