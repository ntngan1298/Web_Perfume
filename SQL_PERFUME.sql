USE [master]
GO
/****** Object:  Database [WebNuocHoa1]    Script Date: 5/28/2019 6:47:33 PM ******/
CREATE DATABASE [WebNuocHoa1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebNuocHoa1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebNuocHoa1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebNuocHoa1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebNuocHoa1_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebNuocHoa1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebNuocHoa1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebNuocHoa1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebNuocHoa1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebNuocHoa1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebNuocHoa1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebNuocHoa1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebNuocHoa1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebNuocHoa1] SET  MULTI_USER 
GO
ALTER DATABASE [WebNuocHoa1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebNuocHoa1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebNuocHoa1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebNuocHoa1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebNuocHoa1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebNuocHoa1]
GO
/****** Object:  Table [dbo].[CTDH]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[MaSP] [int] NULL,
	[soluonng] [int] NULL,
	[dongia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhtrangGH] [int] NULL,
	[ngaydat] [date] NULL,
	[ngaygiao] [date] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Taikhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[GT] [int] NULL,
	[NS] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanHieu]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHieu](
	[MaNH] [int] IDENTITY(1,1) NOT NULL,
	[TenNH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SP]    Script Date: 5/28/2019 6:47:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
	[Khoiluong] [int] NULL,
	[Anh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[SolgTon] [int] NULL,
	[MaLSP] [int] NULL,
	[MaNH] [int] NULL,
	[Moi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (1, 1, 1, CAST(N'2019-02-05' AS Date), CAST(N'2019-03-05' AS Date), 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (2, 1, 1, CAST(N'2019-02-05' AS Date), CAST(N'2019-06-05' AS Date), 2)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (3, 1, 1, CAST(N'2019-01-05' AS Date), CAST(N'2019-04-05' AS Date), 3)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (4, 1, 1, CAST(N'2019-02-05' AS Date), CAST(N'2019-03-05' AS Date), 4)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (5, 1, 1, CAST(N'2019-07-06' AS Date), CAST(N'2019-09-06' AS Date), 5)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (6, 0, 0, CAST(N'2019-05-14' AS Date), CAST(N'2019-05-17' AS Date), 6)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (7, 0, 0, CAST(N'2019-05-12' AS Date), CAST(N'2019-05-15' AS Date), 7)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH]) VALUES (8, 0, 0, CAST(N'2019-05-13' AS Date), CAST(N'2019-05-15' AS Date), 8)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (1, N'Ðào Ng?c Ánh', N'anh11', N'ngoanh', N'anh12@gmail.com', N'Hà nữi', N'0988765245', 1, CAST(N'1998-04-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (2, N'Ngân Nguy?n', N'ngan23', N'nganha', N'congchua@gmail.com', N'Hà nữi', N'0988467298', 1, CAST(N'1998-05-02' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (3, N'Toàn Toàn', N'sieunhan', N'12345', N'sieunhan@gmail.com', N'H?i ph?ng', N'0988325664', 0, CAST(N'1998-02-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (4, N'Chu Hà', N'chuoke', N'chuhu', N'chuchu@gmail.com', N'Cà Mau', N'0988764325', 0, CAST(N'1998-06-07' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (5, N'Ly Nguy?n', N'lykute', N'lyly', N'ly@gmail.com', N'Nam Ð?nh', N'0988765267', 1, CAST(N'1998-05-08' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (6, N'Phi Linh', N'123', N'456', N'anh1245@gmail.com', N'Hà nữi', N'0988765245', 1, CAST(N'1998-04-12' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (7, N'Hoài Nam', N'namanh11', N'namanh', N'namanh12@gmail.com', N'H? Chí Minh', N'0988765243', 0, CAST(N'1998-05-02' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (8, N'Phí Hoài Anh', N'hoaianh', N'ngoanh43', N'hoaianh12@gmail.com', N'Hà nữi', N'0988088096', 1, CAST(N'1998-11-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (9, N'Toàn Toàn', N'sieunhan', N'12345', N'sieunhan@gmail.com', N'Hải Phòng', N'0988325664', 0, CAST(N'1998-07-11' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (10, N'Ngân Nguy?n', N'ngan23', N'nganha', N'congchua@gmail.com', N'Hà Nội', N'0988467298', 1, CAST(N'1998-05-02' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (11, N'Ðào Ng?c Ánh', N'anh11', N'ngoanh', N'anh12@gmail.com', N'Hà Nội', N'0988765245', 1, CAST(N'1998-04-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (12, N'Ly Nguyễn', N'lykute', N'lyly', N'ly@gmail.com', N'Nam Ðịnh', N'0988765267', 1, CAST(N'1998-05-08' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (13, N'Phi Linh', N'123', N'456', N'anh1245@gmail.com', N'Hà Nội', N'0988765245', 1, CAST(N'1998-04-12' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (14, N'Hoài Nam', N'namanh11', N'namanh', N'namanh12@gmail.com', N'Hồ Chí Minh', N'0988765243', 0, CAST(N'1998-05-02' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (15, N'Phí Hoài Anh', N'hoaianh', N'ngoanh43', N'hoaianh12@gmail.com', N'Hà Nội', N'0988088096', 1, CAST(N'1998-11-05' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (1, N'Nước hoa nam')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (2, N'Nước hoa nữ')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[NhanHieu] ON 

INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (1, N'Chanel')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (2, N'Gucci')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (3, N'Dior')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (4, N'Calvin Klein')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (5, N'Burberrry')
SET IDENTITY_INSERT [dbo].[NhanHieu] OFF
SET IDENTITY_INSERT [dbo].[SP] ON 

INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (1, N'Burberry for her', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp1', N'Nước hoa cho nữ', 5, 2, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (2, N'Burberry black', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp2', N'Nước hoa cho nam', 5, 1, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (3, N'Burberry vàng', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp3', N'Nước hoa cho nam', 5, 1, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (4, N'Burberry mis ', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp4', N'Nước hoa cho nam', 5, 1, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (5, N'Burberry touch for women', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp5', N'Nước hoa cho nữ', 5, 2, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (6, N'Burberry pink', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp6', N'Nước hoa cho nữ', 5, 2, 5, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (7, N'Burberry weekend', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp7', N'Nước hoa cho nữ', 5, 2, 5, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (8, N'Burberry brit', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp8', N'Nước hoa cho nữ', 5, 2, 5, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (9, N'Burberry touch for him', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp9', N'Nước hoa cho nữ', 5, 2, 5, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (10, N'Burberry sooc', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp10', N'Nước hoa cho nam', 5, 1, 5, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (11, N'Chanel for you', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp1', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (12, N'Chanel pink', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp2', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (13, N'Chanel coco', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp3', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (14, N'Chanel bleu ', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp4', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (15, N'Chanel N19', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp5', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (16, N'Chanel cisal', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp6', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (17, N'Chanel beluw', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp7', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (18, N'Chanel with me', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp8', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (19, N'Chanel selw', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp9', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (20, N'Chanel bols', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp10', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (21, N'CK one', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp1', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (22, N'CK be', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp2', N'Nước hoa cho nữ', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (23, N'CK for men', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp3', N'Nước hoa cho nam', 5, 1, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (24, N'CK euphoria', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp4', N'Nước hoa cho nam', 5, 1, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (25, N'CK sheer', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp5', N'Nước hoa cho nam', 5, 1, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (26, N'CK red', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp6', N'Nước hoa cho nữ', 5, 2, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (27, N'CK deep', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp7', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (28, N'CK summer', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp8', N'Nước hoa cho nam', 5, 1, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (29, N'CK escape', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp9', N'Nước hoa cho nữ', 5, 2, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (30, N'CK tee', CAST(2450000 AS Decimal(18, 0)), 15, N'CK_sp10', N'Nước hoa cho nữ', 5, 2, 4, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (31, N'Dior sauvage', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp1', N'Nước hoa cho nữ', 5, 2, 3, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (32, N'Dior joy', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp2', N'Nước hoa cho nam', 5, 1, 3, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (33, N'Dior jadore', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp3', N'Nước hoa cho nữ', 5, 2, 3, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (34, N'Dior hypnotic', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp4', N'Nước hoa cho nữ', 5, 2, 3, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (35, N'Dior M', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp5', N'Nước hoa cho nữ', 5, 2, 3, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (36, N'Dior black', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp6', N'Nước hoa cho nam', 5, 1, 3, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (37, N'Dior sensi', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp7', N'Nước hoa cho nữ', 5, 2, 3, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (38, N'Dior christian', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp8', N'Nước hoa cho nam', 5, 1, 3, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (39, N'Dior homme', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp9', N'Nước hoa cho nam', 5, 1, 3, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (40, N'Dior Addict', CAST(1450000 AS Decimal(18, 0)), 15, N'dior_sp10', N'Nước hoa cho nam', 5, 1, 3, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (41, N'Gucci guilty', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp1', N'Nước hoa cho nam', 5, 1, 2, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (42, N'Gucci flora', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp2', N'Nước hoa cho nữ', 5, 2, 2, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (43, N'Gucci guilty pink', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp3', N'Nước hoa cho nữ', 5, 2, 2, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (44, N'Gucci by gucci', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp4', N'Nước hoa cho nam', 5, 1, 2, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (45, N'Gucci flora ye', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp5', N'Nước hoa cho nữ', 5, 2, 2, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (46, N'Gucci bamboo', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp6', N'Nước hoa cho nữ', 5, 2, 2, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (47, N'Gucci floraflow', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp7', N'Nước hoa cho nam', 5, 1, 2, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (48, N'Gucci pour homme', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp8', N'Nước hoa cho nữ', 5, 2, 2, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (49, N'Gucci romantic', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp9', N'Nước hoa cho nam', 5, 1, 2, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (50, N'Gucci intenciout', CAST(2300000 AS Decimal(18, 0)), 15, N'gucci_sp10', N'Nước hoa cho nam', 5, 1, 2, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (55, N'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SP] OFF
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SP] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[SP]  WITH CHECK ADD FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSP] ([MaLSP])
GO
ALTER TABLE [dbo].[SP]  WITH CHECK ADD FOREIGN KEY([MaNH])
REFERENCES [dbo].[NhanHieu] ([MaNH])
GO
USE [master]
GO
ALTER DATABASE [WebNuocHoa1] SET  READ_WRITE 
GO
