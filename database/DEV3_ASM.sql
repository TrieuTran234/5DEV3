USE [master]
GO
/****** Object:  Database [DEV3_ASM]    Script Date: 6/4/2022 10:36:19 AM ******/
CREATE DATABASE [DEV3_ASM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEV3_ASM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DEV3_ASM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DEV3_ASM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DEV3_ASM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DEV3_ASM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEV3_ASM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEV3_ASM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEV3_ASM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEV3_ASM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEV3_ASM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEV3_ASM] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEV3_ASM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEV3_ASM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEV3_ASM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEV3_ASM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEV3_ASM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEV3_ASM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEV3_ASM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEV3_ASM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEV3_ASM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEV3_ASM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DEV3_ASM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEV3_ASM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEV3_ASM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEV3_ASM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEV3_ASM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEV3_ASM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEV3_ASM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEV3_ASM] SET RECOVERY FULL 
GO
ALTER DATABASE [DEV3_ASM] SET  MULTI_USER 
GO
ALTER DATABASE [DEV3_ASM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEV3_ASM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEV3_ASM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEV3_ASM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DEV3_ASM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DEV3_ASM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DEV3_ASM', N'ON'
GO
ALTER DATABASE [DEV3_ASM] SET QUERY_STORE = OFF
GO
USE [DEV3_ASM]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [varchar](30) NOT NULL,
	[active] [bit] NULL,
	[address] [nvarchar](100) NULL,
	[dateof_birth] [date] NULL,
	[email] [varchar](70) NULL,
	[fullname] [nvarchar](70) NULL,
	[image] [varchar](255) NULL,
	[password] [varchar](50) NULL,
	[phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_statuss]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_statuss](
	[id] [varchar](30) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_statuss_orders]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_statuss_orders](
	[order_status_id] [varchar](30) NOT NULL,
	[orders_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](100) NULL,
	[create_date] [date] NULL,
	[price] [float] NULL,
	[customerid] [varchar](30) NULL,
	[staffid] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders_order_status]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders_order_status](
	[order_id] [int] NOT NULL,
	[order_status_id] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[available] [bit] NULL,
	[create_date] [date] NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](100) NULL,
	[categoryid] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_details]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[promotionid] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotions](
	[id] [varchar](30) NOT NULL,
	[discount] [float] NULL,
	[from_date] [date] NULL,
	[status] [bit] NULL,
	[to_date] [date] NULL,
	[name] [nvarchar](100) NULL,
	[staffid] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staffs]    Script Date: 6/4/2022 10:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staffs](
	[id] [varchar](30) NOT NULL,
	[address] [nvarchar](100) NULL,
	[admin] [bit] NULL,
	[dateofbirth] [date] NULL,
	[email] [varchar](70) NULL,
	[fullname] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[image] [varchar](255) NULL,
	[password] [varchar](50) NULL,
	[phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([id], [name]) VALUES (N'RS', N'R-SERIES')
GO
INSERT [dbo].[categories] ([id], [name]) VALUES (N'SS', N'S-SERIES')
GO
INSERT [dbo].[categories] ([id], [name]) VALUES (N'YS', N'YOUTH SERIES')
GO
INSERT [dbo].[categories] ([id], [name]) VALUES (N'ZS', N'Z-SERIES')
GO
INSERT [dbo].[customers] ([id], [active], [address], [dateof_birth], [email], [fullname], [image], [password], [phone]) VALUES (N'CT01', 1, N'Quan 12, HCM City', CAST(N'2000-02-02' AS Date), N'minhnhi@gmail.com', N'Linh Nhi', N'backgroundpassword.png', N'ASD', N'0123987499')
GO
SET IDENTITY_INSERT [dbo].[products] ON 
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (4, 9000, 1, CAST(N'2022-06-03' AS Date), N'banner-2.jpg', N' SUPER73-S1 Full White', N'SS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (5, 3695, 1, CAST(N'2022-06-03' AS Date), N'product-1.jpg', N'SUPER73-RX Mojave', N'RS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (6, 1200, 1, CAST(N'2022-06-03' AS Date), N'product-5.jpg', N'PIZZAZLE PINK', N'RS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (7, 456, 1, CAST(N'2022-06-03' AS Date), N'product-6.jpg', N'PIZZAZLE PINK', N'RS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (8, 3690, 1, CAST(N'2022-06-03' AS Date), N'SUPER73-RXBlu Tang.PNG', N'SUPER73-RX Mojave / Blu Tang', N'RS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (9, 1495, 1, CAST(N'2022-06-03' AS Date), N'PIZZAZLE PINK.PNG', N'PIZZAZLE PINK', N'YS')
GO
INSERT [dbo].[products] ([id], [price], [available], [create_date], [image], [name], [categoryid]) VALUES (10, 2195, 1, CAST(N'2022-06-03' AS Date), N'SUPER73-S1Black.PNG', N'SUPER73-S1 / Black', N'SS')
GO
SET IDENTITY_INSERT [dbo].[products] OFF
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST01', N'92/1A ( hẻm 867 ) , phường Đông Hưng Thuận, đường Nguyễn Văn Quá , Q12', 1, CAST(N'2001-11-11' AS Date), N'tranlehongphuc2001@gmail.com', N'Trần Lê Hồng Phúc', 1, N'anhchandung.jpg', N'SAD', N'0962463995')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST02', N'Quận Phú Nhuận, Hồ Chí Minh', 0, CAST(N'2000-09-20' AS Date), N'haitrieu2k@gmail.com', N'Trần Hải Triều', 1, N'trieungu.png', N'123456', N'0988416330')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST03', N'Quận Gò Vấp, Hồ Chí Minh', 0, CAST(N'2001-05-14' AS Date), N'quynhdiem@gmail.com', N'Phạm Diễm Quỳnh', 0, N'dquynh.PNG', N'159789', N'0649851236')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST04', N'Quận 9, TP Hồ Chí Minh', 0, CAST(N'1997-02-27' AS Date), N'dongpham@gmail.com', N'Phạm Văn Đông', 1, N'DONGPHAM.PNG', N'255979', N'0234568599')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST05', N'Quận 12, TP Hồ Chí Minh ', 0, CAST(N'2000-04-30' AS Date), N'lebich@gmail.com', N'Lê Thị Bích', 0, N'BICH.PNG', N'147963', N'0964851236')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST06', N'Quận 08, TP Hồ Chí Minh', 0, CAST(N'1998-12-12' AS Date), N'phuonglinh@gmail.com', N'Nguyễn Phương Linh', 0, N'linhp.PNG', N'1597853', N'0975148254')
GO
INSERT [dbo].[staffs] ([id], [address], [admin], [dateofbirth], [email], [fullname], [gender], [image], [password], [phone]) VALUES (N'ST07', N'Quận Tân Bình, Tp Hồ Chí Minh', 0, CAST(N'1998-05-05' AS Date), N'vonguyenvu@gmail.com', N'Võ Nguyên Vũ', 1, N'vukhung.jpg', N'156498', N'0123456789')
GO
/****** Object:  Index [UKq6g0dat7vpwfmviv2im5ffewx]    Script Date: 6/4/2022 10:36:20 AM ******/
ALTER TABLE [dbo].[order_details] ADD  CONSTRAINT [UKq6g0dat7vpwfmviv2im5ffewx] UNIQUE NONCLUSTERED 
(
	[productid] ASC,
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKd1kpplush7mried83tar4g687]    Script Date: 6/4/2022 10:36:20 AM ******/
ALTER TABLE [dbo].[promotion_details] ADD  CONSTRAINT [UKd1kpplush7mried83tar4g687] UNIQUE NONCLUSTERED 
(
	[promotionid] ASC,
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK3w63vi3bk795mlimkws8fvuin] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK3w63vi3bk795mlimkws8fvuin]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKh35b1ljeu4440iie9psw8a7yt] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKh35b1ljeu4440iie9psw8a7yt]
GO
ALTER TABLE [dbo].[order_statuss_orders]  WITH CHECK ADD  CONSTRAINT [FK8cq046o74sl5stkfsaavahue] FOREIGN KEY([orders_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_statuss_orders] CHECK CONSTRAINT [FK8cq046o74sl5stkfsaavahue]
GO
ALTER TABLE [dbo].[order_statuss_orders]  WITH CHECK ADD  CONSTRAINT [FKluxu3nj7dv0cy53jgqr69fs1g] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_statuss] ([id])
GO
ALTER TABLE [dbo].[order_statuss_orders] CHECK CONSTRAINT [FKluxu3nj7dv0cy53jgqr69fs1g]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK7orngfblbwyce32cqv07j9f9b] FOREIGN KEY([customerid])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK7orngfblbwyce32cqv07j9f9b]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKm8kmni9ryped5f6x0cggyf1pa] FOREIGN KEY([staffid])
REFERENCES [dbo].[staffs] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKm8kmni9ryped5f6x0cggyf1pa]
GO
ALTER TABLE [dbo].[orders_order_status]  WITH CHECK ADD  CONSTRAINT [FKb0bkcijikeb33hvfk8tbbojcf] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders_order_status] CHECK CONSTRAINT [FKb0bkcijikeb33hvfk8tbbojcf]
GO
ALTER TABLE [dbo].[orders_order_status]  WITH CHECK ADD  CONSTRAINT [FKeupla98b4plcsno9wcxv1oqtd] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_statuss] ([id])
GO
ALTER TABLE [dbo].[orders_order_status] CHECK CONSTRAINT [FKeupla98b4plcsno9wcxv1oqtd]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
ALTER TABLE [dbo].[promotion_details]  WITH CHECK ADD  CONSTRAINT [FKit8aj2b5asd78klfeod4tbw0o] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[promotion_details] CHECK CONSTRAINT [FKit8aj2b5asd78klfeod4tbw0o]
GO
ALTER TABLE [dbo].[promotion_details]  WITH CHECK ADD  CONSTRAINT [FKq8y5646pup0guksulono5f6lq] FOREIGN KEY([promotionid])
REFERENCES [dbo].[promotions] ([id])
GO
ALTER TABLE [dbo].[promotion_details] CHECK CONSTRAINT [FKq8y5646pup0guksulono5f6lq]
GO
ALTER TABLE [dbo].[promotions]  WITH CHECK ADD  CONSTRAINT [FKjf2ammlgpo5owvxccb7r5a14v] FOREIGN KEY([staffid])
REFERENCES [dbo].[staffs] ([id])
GO
ALTER TABLE [dbo].[promotions] CHECK CONSTRAINT [FKjf2ammlgpo5owvxccb7r5a14v]
GO
USE [master]
GO
ALTER DATABASE [DEV3_ASM] SET  READ_WRITE 
GO
