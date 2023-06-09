USE [SHOPGIAY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaGIAY] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Dongia] [decimal](18, 0) NOT NULL,
	[Tongtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaGIAY] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETGIAY]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETGIAY](
	[MaSize] [int] NOT NULL,
	[MaGIAY] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC,
	[MaGIAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETLOAIHANG]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETLOAIHANG](
	[MaLOAI] [int] NOT NULL,
	[MaHANG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLOAI] ASC,
	[MaHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[Dathanhtoan] [bit] NOT NULL,
	[Tinhtranggiaohang] [bit] NOT NULL,
	[Ngaydat] [datetime] NOT NULL,
	[Ngaygiao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAY]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAY](
	[MaGIAY] [int] IDENTITY(1,1) NOT NULL,
	[TenGIAY] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[Anhbia] [varchar](50) NOT NULL,
	[Ngaycapnhat] [datetime] NOT NULL,
	[MaLOAI] [int] NOT NULL,
	[MaHANG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGIAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANG]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANG](
	[MaHANG] [int] IDENTITY(1,1) NOT NULL,
	[TenHANG] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Taikhoan] [varchar](50) NOT NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DiachiKH] [nvarchar](200) NOT NULL,
	[DienthoaiKH] [varchar](50) NOT NULL,
	[Ngaysinh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MaLOAI] [int] IDENTITY(1,1) NOT NULL,
	[TenLOAI] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIZEGIAY]    Script Date: 4/13/2022 2:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZEGIAY](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'admin', N'13579', N'Nguyễn Đình An')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'user', N'97531', N'Mr An')
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 16, 13, 1, CAST(4031500 AS Decimal(18, 0)), 4031500)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 17, 14, 1, CAST(3070000 AS Decimal(18, 0)), 3070000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 75, 15, 1, CAST(8300000 AS Decimal(18, 0)), 8300000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 77, 13, 1, CAST(9500000 AS Decimal(18, 0)), 9500000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 78, 16, 1, CAST(10000000 AS Decimal(18, 0)), 10000000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 81, 17, 2, CAST(9250000 AS Decimal(18, 0)), 18500000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 82, 16, 1, CAST(9780000 AS Decimal(18, 0)), 9780000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 83, 17, 1, CAST(10580000 AS Decimal(18, 0)), 10580000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 84, 15, 2, CAST(11500000 AS Decimal(18, 0)), 23000000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 85, 17, 1, CAST(7500000 AS Decimal(18, 0)), 7500000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 86, 15, 1, CAST(4590000 AS Decimal(18, 0)), 4590000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (6, 87, 16, 1, CAST(12580000 AS Decimal(18, 0)), 12580000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (7, 40, 1, 1, CAST(3890000 AS Decimal(18, 0)), 3890000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (7, 87, 16, 1, CAST(12580000 AS Decimal(18, 0)), 12580000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (8, 78, 16, 1, CAST(10000000 AS Decimal(18, 0)), 10000000)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [MaSize], [Soluong], [Dongia], [Tongtien]) VALUES (8, 87, 16, 1, CAST(12580000 AS Decimal(18, 0)), 12580000)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (1, 4, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (1, 39, 58)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (1, 40, 34)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (1, 59, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (2, 5, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (2, 41, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (3, 6, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (3, 23, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (3, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (3, 42, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (4, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (4, 7, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (4, 24, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (4, 38, 56)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (4, 43, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (5, 8, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (5, 25, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (5, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (5, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (5, 44, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (6, 9, 32)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (6, 26, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (6, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (6, 45, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (7, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (7, 27, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (7, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (7, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (8, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (8, 11, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (8, 28, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (8, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (8, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (9, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (9, 29, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (9, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (9, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (10, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (10, 30, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (11, 2, 0)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (11, 31, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (11, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (12, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (12, 32, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 16, 34)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 33, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 54, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (13, 77, 19)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 4, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 5, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 6, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 7, 20)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 17, 34)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 34, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (14, 55, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 8, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 9, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 11, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 16, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 17, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 36, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 38, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 39, 60)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 56, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 75, 14)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 84, 18)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (15, 86, 29)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 2, 70)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 35, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 57, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 77, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 78, 33)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 82, 22)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (16, 87, 21)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 37, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 58, 35)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 75, 20)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 78, 20)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 81, 19)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 83, 11)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 85, 34)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 86, 20)
INSERT [dbo].[CHITIETGIAY] ([MaSize], [MaGIAY], [SoLuongTon]) VALUES (17, 87, 34)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (1, 1)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (1, 2)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (1, 3)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (2, 1)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (2, 2)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (2, 3)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (3, 1)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (3, 2)
INSERT [dbo].[CHITIETLOAIHANG] ([MaLOAI], [MaHANG]) VALUES (4, 2)
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [MaKH], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao]) VALUES (6, 4, 0, 0, CAST(N'2022-04-09 22:40:05.210' AS DateTime), NULL)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [MaKH], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao]) VALUES (7, 3, 0, 0, CAST(N'2022-04-12 22:38:48.027' AS DateTime), NULL)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [MaKH], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao]) VALUES (8, 5, 0, 0, CAST(N'2022-04-13 08:58:44.313' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[GIAY] ON 

INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (2, N'ADIDAS STAN SMITH WHITE', CAST(1337500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'002.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (4, N'ADIDAS SUPER STAR', CAST(2550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'004.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (5, N'ADIDAS STAN SMITH GREEN', CAST(1340000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'005.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (6, N'NIKE AIR FORCE BROWN 1', CAST(2300000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'006.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (7, N'NIKE AIR FORCE B/W', CAST(2270000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'007.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (8, N'NIKE AIR FORCE 1 BLACK', CAST(1800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'008.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (9, N'JORDAN 1 BLACK', CAST(4050000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'009.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (11, N'NIKE AIR FORCE 1 BROWN 2 ', CAST(1040000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'011.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (15, N'ADIDAS YEEZY WHITE', CAST(10250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'015.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (16, N'JORDAN 1 BLUE', CAST(4031500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'016.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (17, N'JORDAN 1 PINK', CAST(3070000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'017.jpg', CAST(N'2021-07-15 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (23, N'NIKE AIR FORCE 1 BIG BANG', CAST(2950000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'023.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (24, N'NIKE AIR FORCE 1 WGREEN', CAST(2098000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'024.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (25, N'ADIDAS NMD HR PURPLE', CAST(8900000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'025.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (26, N'ADIDAS ULTRABOOST BB', CAST(4550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'026.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (27, N'ADIDAS ULTRABOOST WHITE', CAST(4271500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'027.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (28, N'ADIDAS ULTRABOOST BAPE', CAST(11790000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'028.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (29, N'ADIDAS YEEZY 700 GB', CAST(15337500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'029.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (30, N'JORDAN LEBRONCE WHITE', CAST(6000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'030.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (31, N'JORDAN 12', CAST(4500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'031.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (32, N'NIKE AIR FORCE 1 NORMAL', CAST(2250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'032.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (33, N'NIKE AIR FORCE 1 WRED', CAST(2550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'033.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (34, N'NIKE JORDAN GREEN', CAST(4000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'033A.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (35, N'NIKE KORTEX BASE', CAST(4000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'035.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (36, N'ADIDAS NMD HR WHITE', CAST(7800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'036.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (37, N'ADIDAS NMD GREY ', CAST(6000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'037.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (38, N'ADIDAS NMD BASE', CAST(6200000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'038.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (39, N'ADIDAS YEEZY 700 ORANGE', CAST(17800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'039.jpg', CAST(N'2021-07-16 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (40, N'NIKE VARPOMAX', CAST(3890000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'040.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (41, N'NIKE JORDAN BROWN', CAST(1950000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'041.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (42, N'NIKE AIR MAX 90', CAST(6890000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'042.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (43, N'NIKE AIR MAX 90 BLUE', CAST(5505000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'043.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (44, N'ADIDAS YEEZY 350 GP', CAST(15596000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'044.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (45, N'ADIDAS YEEZY 350 BLACK', CAST(12674000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'045.jpg', CAST(N'2021-07-17 00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (54, N'ADIDAS YEEZY 500 BASE', CAST(8020000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'054.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (55, N'ADIDAS SUPERSTAR ORANGE', CAST(6020000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'055.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (56, N'ADIDAS SUPERSTAR GREY', CAST(6510000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'056.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (57, N'ADIDAS NMD HR YB', CAST(9200000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'057.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (58, N'ADIDAS YEZZY 500 SEA', CAST(11150000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'058.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (59, N'ADIDAS YEEZY 700 BASE', CAST(15000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'059.jpg', CAST(N'2021-07-18 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (75, N'JORDAN AIR 8', CAST(8300000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'060.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (77, N'JORDAN AIR 8 GREY', CAST(9500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'061.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (78, N'JORDAN AIR 5 YELLOW', CAST(10000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'062.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (81, N'JORDAN AIR 5 BLACK', CAST(9250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'063.jpg', CAST(N'2022-04-08 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (82, N'JORDAN AIR 5 RED', CAST(9780000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'064.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (83, N'JORDAN AIR 10 WHITE', CAST(10580000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'065.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 4, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (84, N'JORDAN AIR 10 BLUE', CAST(11500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'066.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (85, N'JORDAN AIR 4 WHITE', CAST(7500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'067.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (86, N'NIKE AIR MAX 90 RW', CAST(4590000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'068.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (87, N'JORDAN 1 RETRO', CAST(12580000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'069.jpg', CAST(N'2022-04-09 00:00:00.000' AS DateTime), 1, 3)
SET IDENTITY_INSERT [dbo].[GIAY] OFF
SET IDENTITY_INSERT [dbo].[HANG] ON 

INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (1, N'NIKE ', N'Washington County, Oregon, Mỹ (Near Beaverton, Oregon)', N'0123456789')
INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (2, N'ADIDAS ', N'Herzogenaurach, Đức', N'9876543210')
INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (3, N'JORDAN ', N'Nhật Bản', N'6548435486')
SET IDENTITY_INSERT [dbo].[HANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (3, N'Nguyễn Đình An', N'nguyenan890', N'nguyenan890', N'nguyenan890@gmail.com', N'TPHCM', N'0703635220', CAST(N'2022-04-09 00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (4, N'Huỳnh Lê Minh Hoàng', N'hoanghuynh123', N'hoanghuynh123', N'hoanghuynh123@gmail.com', N'TPHCM', N'0703635229', CAST(N'2022-04-09 00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (5, N'Nguyễn Đoàn Anh Tuấn', N'anhtuan890', N'anhtuan890', N'anhtuan890@gmail.com', N'TPHCM', N'0703635220', CAST(N'2022-04-13 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (1, N'GIÀY SNEAKER ')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (2, N'GIÀY STREET ')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (3, N'GIÀY CUSTOM ')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (4, N'GIÀY COMFORT ')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
SET IDENTITY_INSERT [dbo].[SIZEGIAY] ON 

INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (1, 30)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (2, 31)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (3, 32)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (4, 33)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (5, 34)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (6, 35)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (7, 36)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (8, 37)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (9, 38)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (10, 39)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (11, 40)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (12, 41)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (13, 42)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (14, 43)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (15, 44)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (16, 45)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (17, 46)
SET IDENTITY_INSERT [dbo].[SIZEGIAY] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64F60755662]    Script Date: 4/13/2022 2:35:36 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D1053471AE4B3C]    Script Date: 4/13/2022 2:35:36 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__SIZEGIAY__A3250D0642B0758B]    Script Date: 4/13/2022 2:35:36 PM ******/
ALTER TABLE [dbo].[SIZEGIAY] ADD UNIQUE NONCLUSTERED 
(
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD FOREIGN KEY([MaGIAY])
REFERENCES [dbo].[GIAY] ([MaGIAY])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZEGIAY] ([MaSize])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETGIAY]  WITH CHECK ADD FOREIGN KEY([MaGIAY])
REFERENCES [dbo].[GIAY] ([MaGIAY])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETGIAY]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZEGIAY] ([MaSize])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETLOAIHANG]  WITH CHECK ADD FOREIGN KEY([MaHANG])
REFERENCES [dbo].[HANG] ([MaHANG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETLOAIHANG]  WITH CHECK ADD FOREIGN KEY([MaLOAI])
REFERENCES [dbo].[LOAI] ([MaLOAI])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD FOREIGN KEY([MaHANG])
REFERENCES [dbo].[HANG] ([MaHANG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD FOREIGN KEY([MaLOAI])
REFERENCES [dbo].[LOAI] ([MaLOAI])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD CHECK  (([Giaban]>(0)))
GO
ALTER TABLE [dbo].[SIZEGIAY]  WITH CHECK ADD CHECK  (([Size]>(0)))
GO
