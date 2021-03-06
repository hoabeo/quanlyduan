USE [quantri]
GO
/****** Object:  Table [dbo].[danhmucsanpham]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmucsanpham](
	[madanhmucsanpham] [int] NOT NULL,
	[tendanhmucsanpham] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmucsanpham] PRIMARY KEY CLUSTERED 
(
	[madanhmucsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danhmuctintuc]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuctintuc](
	[madanhmuctintuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuctintuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmuctintuc] PRIMARY KEY CLUSTERED 
(
	[madanhmuctintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makhachhang] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tensanpham] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[gia] [nvarchar](50) NULL,
	[madanhmucsanpham] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[matintuc] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tentintuc] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[chitiet] [nvarchar](50) NULL,
	[madanhmuctintuc] [int] NULL,
 CONSTRAINT [PK_tintuc1] PRIMARY KEY CLUSTERED 
(
	[matintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_table]    Script Date: 06/18/21 12:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[pass_word] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (1, N'HP')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (2, N'ASUS')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (3, N'Dell')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (4, N'MSI')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (5, N'Aser')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (6, N'Lenovo')
SET IDENTITY_INSERT [dbo].[danhmuctintuc] ON 

INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (4, N'Giảm Giá 50%')
INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (5, N'Black Friday')
INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (6, N'Giảm Giá 5%')
INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (7, N'Giảm 25%')
SET IDENTITY_INSERT [dbo].[danhmuctintuc] OFF
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([makhachhang], [tenkhachhang], [ngaysinh], [diachi], [sodienthoai], [email]) VALUES (2, N'Nguyễn Văn Anh', CAST(N'1999-02-02' AS Date), N'Hà Nội', N'098123548', N'thachthaonpt@gmail.com')
INSERT [dbo].[khachhang] ([makhachhang], [tenkhachhang], [ngaysinh], [diachi], [sodienthoai], [email]) VALUES (3, N'Trần Anh Bê', CAST(N'1999-01-01' AS Date), N'Hồ Chí Minh', N'0946999874', N'hello@gmail.com')
INSERT [dbo].[khachhang] ([makhachhang], [tenkhachhang], [ngaysinh], [diachi], [sodienthoai], [email]) VALUES (4, N'Diêm Vương', CAST(N'1999-01-01' AS Date), N'Đà Nẵng', N'094365794', N'hi@gmail.com')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([manhanvien], [anh], [tennhanvien], [ngaysinh], [diachi], [sodienthoai]) VALUES (5, N'images.jpg', N'Lưu Văn Phương', CAST(N'2000-03-10' AS Date), N'Hà Nội', N'0943999999')
INSERT [dbo].[nhanvien] ([manhanvien], [anh], [tennhanvien], [ngaysinh], [diachi], [sodienthoai]) VALUES (6, N'hinhnen.png', N'hoa', CAST(N'2000-09-06' AS Date), N'Hà Nội', N'0123456')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (10, N'khunglaptop-5_optimized-600x600.jpg', N'Dell Precision M4800', N'<p>Ram 8GB DDR3L,&Ocirc; cứng 156GB,CPU&nbsp;Intel&reg; Core&trade; i5 - 4310M (3M Cache), 2.7 Ghz up to 3.4 Ghz</p>
', N'12850000', 3)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (11, N'dell-latitude-3580-0.jpg', N'Dell Latitude E3580', N'<p>Ram 8GB DDR4, ở cứng 256GB SSD, cpu&nbsp;Intel&reg; Core&trade; i5 - 7200U (3M Cache), 2.5 Ghz up to 3.1 Ghz<img alt="" src="/Anh/images/13.jpg" style="height:200px; width:200px" /></p>
', N'10500000', 3)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (12, N'hp-zhan-66-pro-1.jpg', N'HP Zhan 66 Pro G', N'<p>Ram 8GB DDR4 24oo MHZ, ổ cứng 156Gb SSD<img alt="" src="/Anh/images/hp-zhan-66-pro-1.jpg" style="height:200px; width:200px" /></p>
', N'10850000', 1)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (13, N'hp-probook-650-laptop-hcm.jpg', N'HP Probook 650 G2', N'<p>&Ocirc; cứng 1TB HDD, Ram 8GB DDR4 2133 MHZ<img alt="" src="/Anh/images/hp-probook-650-laptop-hcm.jpg" style="height:200px; width:200px" /></p>
', N'9800000', 1)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (14, N'lenovo-thinkpad-w520-0.jpg', N'Lenovo ThinkPad W520', N'<p>Ổ cứng 240Gb SSD, Ram 8GB DDR4 1333 <img alt="" src="/Anh/images/lenovo-thinkpad-w520-0.jpg" style="height:200px; width:200px" />MHZ</p>
', N'7800000', 6)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (15, N'laptop-lenovo-thinkpad-t460-core-i5.jpg', N'Lenovo ThinkPad T460', N'<p>Ram 8GB DDR3L 1600 MHZ, Ổ cứng 256GB SSD&nbsp;<img alt="" src="/Anh/images/laptop-lenovo-thinkpad-t460-core-i5.jpg" style="height:200px; width:200px" /></p>
', N'10490000', 6)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (16, N'asus-tuf-f15-fx506-3.jpg', N'Asus TUF FX506LI ', N'<p>Ram 16GB DDR4&nbsp; 2933 MHZ, ổ cứng 512GB SSD<img alt="" src="/Anh/images/asus-tuf-f15-fx506-3.jpg" style="height:200px; width:200px" /></p>
', N'18490000', 2)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
SET IDENTITY_INSERT [dbo].[tintuc] ON 

INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (6, N'blackfriday.jpg', N'Giảm Giá Ngày Black Driday', N'<p>Giảm gi&aacute; mạnh c&aacute;c sản phẩm c&oacute; thể l&ecirc;n tới 50%<img alt="" src="/Anh/images/giam50pc.jpg" style="height:183px; width:275px" /></p>
', N'Giảm giá tối thiểu 20%', 5)
INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (7, N'sale50pc.png', N'Giảm Giá 50%', N'<p>Giảm gi&aacute; một số sản phẩm 50%</p>
', N'Giảm Giá laptop Dell 50%', 4)
INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (8, N'sale.jpg', N'Giảm Giá ', N'<p>Giảm gi&aacute; sốc 25%<img alt="" src="/Anh/images/giam15pc.png" style="height:225px; width:225px" /></p>
', N'giảm giá 25%hãng acer', 7)
SET IDENTITY_INSERT [dbo].[tintuc] OFF
SET IDENTITY_INSERT [dbo].[user_table] ON 

INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (1, N'phuong', N'123', N'luuphuong')
INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (2, N'a', N'a', N'a')
INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (6, N'luuphuong', N'luuphuong', N'luu van phuong')
INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (7, N'thuhoa', N'123', N'Thu Hòa')
SET IDENTITY_INSERT [dbo].[user_table] OFF
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_danhmucsanpham] FOREIGN KEY([madanhmucsanpham])
REFERENCES [dbo].[danhmucsanpham] ([madanhmucsanpham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_danhmucsanpham]
GO
ALTER TABLE [dbo].[tintuc]  WITH CHECK ADD  CONSTRAINT [FK_tintuc_danhmuctintuc] FOREIGN KEY([madanhmuctintuc])
REFERENCES [dbo].[danhmuctintuc] ([madanhmuctintuc])
GO
ALTER TABLE [dbo].[tintuc] CHECK CONSTRAINT [FK_tintuc_danhmuctintuc]
GO
