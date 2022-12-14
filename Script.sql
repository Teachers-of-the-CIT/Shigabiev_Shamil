USE [master]
GO
/****** Object:  Database [Parfumer]    Script Date: 05.11.2022 11:14:57 ******/
CREATE DATABASE [Parfumer]
GO
USE [Parfumer]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.11.2022 11:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Delivery_date] [date] NULL,
	[Point_Of_Issue] [int] NULL,
	[User_Id] [int] NULL,
	[Receipt_Code] [int] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.11.2022 11:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Id] [int] NULL,
	[Product_Articul] [nvarchar](6) NULL,
	[Amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point_Of_Issue]    Script Date: 05.11.2022 11:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point_Of_Issue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NULL,
	[Town] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Building] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.11.2022 11:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Articul] [nvarchar](6) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[DiscountMax] [int] NULL,
	[Developer] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[DiscountCurrent] [int] NULL,
	[Amount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Articul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.11.2022 11:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (1, CAST(N'2022-05-04' AS Date), CAST(N'2022-05-10' AS Date), 24, NULL, 201, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (2, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 25, NULL, 202, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (3, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 26, NULL, 203, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (4, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 27, NULL, 204, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (5, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 28, NULL, 205, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (6, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 29, NULL, 206, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 30, NULL, 207, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 31, NULL, 208, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (9, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 32, NULL, 209, N'Новый ')
INSERT [dbo].[Order] ([Id], [Date], [Delivery_date], [Point_Of_Issue], [User_Id], [Receipt_Code], [Status]) VALUES (10, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 33, NULL, 210, N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (1, 1, N'A112T4', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (5, 1, N'F893T5', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (6, 2, N'E530Y6', 1)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (7, 2, N'F346G5', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (8, 3, N'J432E4', 1)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (9, 3, N'D344Y7', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (10, 4, N'E245R5', 1)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (11, 4, N'D378D3', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (12, 5, N'H732R5', 3)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (13, 5, N'R464G6', 2)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (14, 6, N'K535G6', 3)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (15, 6, N'E573G6', 3)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (16, 7, N'G532R5', 5)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (17, 7, N'F344S4', 6)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (18, 8, N'D526R4', 5)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (19, 8, N'S753T5', 4)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (20, 9, N'V47S3', 3)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (21, 9, N'A436H7', 3)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (22, 10, N'O875F6', 4)
INSERT [dbo].[OrderProduct] ([Id], [Order_Id], [Product_Articul], [Amount]) VALUES (23, 10, N'E479G6', 1)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Point_Of_Issue] ON 

INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (1, 344288, N' г. Ангарск', N' ул. Чехова', N'1')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (2, 614164, N' г.Ангарск', N'  ул. Степная', N'30')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (3, 394242, N' г. Ангарск', N' ул. Коммунистическая', N'43')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (4, 660540, N' г. Ангарск', N' ул. Солнечная', N'25')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (5, 125837, N' г. Ангарск', N' ул. Шоссейная', N'40')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (6, 125703, N' г. Ангарск', N' ул. Партизанская', N'49')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (7, 625283, N' г. Ангарск', N' ул. Победы', N'46')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (8, 614611, N' г. Ангарск', N' ул. Молодежная', N'50')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (9, 454311, N' г.Ангарск', N' ул. Новая', N'19')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (10, 660007, N' г.Ангарск', N' ул. Октябрьская', N'19')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (11, 603036, N' г. Ангарск', N' ул. Садовая', N'4')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (12, 450983, N' г.Ангарск', N' ул. Комсомольская', N'26')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (13, 394782, N' г. Ангарск', N' ул. Чехова', N'3')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (14, 603002, N' г. Ангарск', N' ул. Дзержинского', N'28')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (15, 450558, N' г. Ангарск', N' ул. Набережная', N'30')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (16, 394060, N' г. Ангарск', N' ул. Фрунзе', N'43')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (17, 410661, N' г. Ангарск', N' ул. Школьная', N'50')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (18, 625590, N' г. Ангарск', N' ул. Коммунистическая', N'20')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (19, 625683, N' г. Ангарск', N' ул. 8 Марта', N'15')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (20, 400562, N' г. Ангарск', N' ул. Зеленая', N'32')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (21, 614510, N' г. Ангарск', N' ул. Маяковского', N'47')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (22, 410542, N' г. Ангарск', N' ул. Светлая', N'46')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (23, 620839, N' г. Ангарск', N' ул. Цветочная', N'8')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (24, 443890, N' г. Ангарск', N' ул. Коммунистическая', N'1')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (25, 603379, N' г. Ангарск', N' ул. Спортивная', N'46')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (26, 603721, N' г. Ангарск', N' ул. Гоголя', N'41')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (27, 410172, N' г. Ангарск', N' ул. Северная', N'13')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (28, 420151, N' г. Ангарск', N' ул. Вишневая', N'32')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (29, 125061, N' г. Ангарск', N' ул. Подгорная', N'8')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (30, 630370, N' г. Ангарск', N' ул. Шоссейная', N'24')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (31, 614753, N' г. Ангарск', N' ул. Полевая', N'35')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (32, 426030, N' г. Ангарск', N' ул. Маяковского', N'44')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (33, 450375, N' г. Ангарск', N'ул. Клубная', N'44')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (34, 625560, N' г. Ангарск', N' ул. Некрасова', N'12')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (35, 630201, N' г. Ангарск', N' ул. Комсомольская', N'17')
INSERT [dbo].[Point_Of_Issue] ([Id], [Index], [Town], [Street], [Building]) VALUES (36, 190949, N' г. Ангарск', N' ул. Мичурина', N'26')
SET IDENTITY_INSERT [dbo].[Point_Of_Issue] OFF
GO
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'A436H7', N'Туалетная вода', 1000, 15, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'C323R4', N'Парфюмерная вода', 4100, 25, N'TRUSSARDI', N'Летуаль', N'Мужской парфюм', 4, 8, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'D344Y7', N'Парфюмерная вода', 223, 10, N'Today Parfum', N'Летуаль', N'Женский парфюм', 5, 16, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', N'D344Y7.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'D378D3', N'Туалетная вода', 1500, 10, N'Dilis Parfum', N'Летуаль', N'Женский парфюм', 3, 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл', N'D378D3.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'D526R4', N'Парфюмерная вода', 3600, 10, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 3, 6, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'D634D4', N'Туалетная вода', 367, 15, N'Paris Line', N'Рив Гош', N'Мужской парфюм', 2, 14, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'E245R5', N'Туалетная вода', 1000, 15, N'Dilis Parfum', N'Рив Гош', N'Женский парфюм', 5, 2, N'Туалетная вода Dilis Parfum Mila, 100 мл', N'E245R5.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'E479G6', N'Туалетная вода', 6100, 25, N'HUGO BOSS', N'Рив Гош', N'Мужской парфюм', 5, 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'E530Y6', N'Парфюмерная вода', 519, 15, N'Parfums Constantine', N'Летуаль', N'Женский парфюм', 3, 9, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', N'E530Y6.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'E573G6', N'Духи', 1087, 15, N'Dilis Parfum', N'Рив Гош', N'Женский парфюм', 5, 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'F344S4', N'Туалетная вода', 546, 5, N'Today Parfum', N'Рив Гош', N'Женский парфюм', 2, 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'F346G5', N'Туалетная вода', 450, 5, N'Today Parfum', N'Рив Гош', N'Женский парфюм', 3, 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', N'F346G5.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'F893T5', N'Туалетная вода', 327, 15, N'Paris Line', N'Рив Гош', N'Женский парфюм', 2, 14, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', N'F893T5.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'G532R5', N'Парфюмерная вода', 640, 10, N'Parfums Constantine', N'Летуаль', N'Мужской парфюм', 3, 16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'G832G6', N'Туалетная вода', 368, 10, N'Paris Line', N'Рив Гош', N'Женский парфюм', 4, 7, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', N'G832G6.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'H647R5', N'Туалетная вода', 555, 10, N'Parfums Constantine', N'Рив Гош', N'Женский парфюм', 4, 6, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'H732R5', N'Туалетная вода', 500, 15, N'Paris Line', N'Рив Гош', N'Женский парфюм', 5, 7, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'J432E4', N'Туалетная вода', 341, 5, N'Paris Line', N'Рив Гош', N'Женский парфюм', 2, 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', N'J432E4.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'K535G6', N'Парфюмерная вода', 1200, 15, N'Yves de Sistelle', N'Рив Гош', N'Женский парфюм', 2, 5, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'K742T5', N'Туалетная вода', 900, 15, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'L533E4', N'Туалетная вода', 3900, 15, N'HUGO BOSS', N'Рив Гош', N'Мужской парфюм', 4, 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'O875F6', N'Парфюмерная вода', 600, 10, N'Dilis Parfum', N'Рив Гош', N'Мужской парфюм', 2, 5, N'Dilis Parfum Мужской Walker Breeze', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'R464G6', N'Духи', 290, 5, N'Dilis Parfum', N'Летуаль', N'Женский парфюм', 2, 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'R563E3', N'Туалетная вода', 418, 5, N'Today Parfum', N'Летуаль', N'Мужской парфюм', 4, 9, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'S346H6', N'Туалетная вода', 1000, 10, N'Dilis Parfum', N'Летуаль', N'Мужской парфюм', 4, 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'S753T5', N'Парфюмерная вода', 5200, 5, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 4, 3, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'V324R5', N'Парфюмерная вода', 519, 5, N'Parfums Constantine', N'Летуаль', N'Женский парфюм', 3, 5, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', N'V324R5.jpg')
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'V472S3', N'Парфюмерная вода', 2640, 30, N'LACOSTE', N'Рив Гош', N'Мужской парфюм', 4, 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'V493E3', N'Туалетная вода', 3200, 10, N'DOLCE & GABBANA', N'Летуаль', N'Женский парфюм', 2, 8, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', NULL)
INSERT [dbo].[Product] ([Articul], [Name], [Price], [DiscountMax], [Developer], [Provider], [Category], [DiscountCurrent], [Amount], [Description], [Image]) VALUES (N'А112Т4', N'Одеколон', 660, 30, N'Dragon', N'Летуаль', N'Мужской парфюм', 5, 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', N'А112Т4.jpg')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (1, N'Администратор', N'Федоров Глеб Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (2, N'Администратор', N'Семенова Софья Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (3, N'Администратор', N'Васильев Егор Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (4, N'Менеджер', N'Смирнова Ирина Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (5, N'Менеджер', N'Петров Андрей Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (6, N'Менеджер', N'Егоров Максим Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (7, N'Клиент', N'Никитин Артур Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (8, N'Клиент', N'Киселев Максим Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (9, N'Клиент', N'Борисов Тимур Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (10, N'Клиент', N'Климов Арсений Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Point_Of_Issue] FOREIGN KEY([Point_Of_Issue])
REFERENCES [dbo].[Point_Of_Issue] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Point_Of_Issue]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
USE [master]
GO
ALTER DATABASE [Parfumer] SET  READ_WRITE 
GO
