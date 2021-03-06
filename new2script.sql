USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 11.04.2022 23:44:49 ******/
CREATE DATABASE [Trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade] SET RECOVERY FULL 
GO
ALTER DATABASE [Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Trade', N'ON'
GO
ALTER DATABASE [Trade] SET QUERY_STORE = OFF
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCreateDate] [datetime] NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [bigint] NOT NULL,
	[Client] [bigint] NULL,
	[OrderCode] [nvarchar](50) NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF61B9AE27] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662273AE028] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Index] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductUnit] [nvarchar](50) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductMaxDiscount] [decimal](19, 4) NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductSupplier] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductDiscountAmount] [decimal](19, 4) NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPhotoUri] [nvarchar](250) NULL,
 CONSTRAINT [PK__Product__2EA7DCD55D9C146D] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Role__8AFACE3A27444F91] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.04.2022 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [bigint] NOT NULL,
 CONSTRAINT [PK__User__1788CCAC97DF665F] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (1, CAST(N'2022-05-14T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 1, NULL, N'901', N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (2, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 11, 51, N'902', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (3, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 2, 52, N'903', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (4, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 11, 53, N'904', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (5, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 2, 54, N'905', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (6, CAST(N'2022-05-20T00:00:00.000' AS DateTime), CAST(N'2022-05-26T00:00:00.000' AS DateTime), 15, NULL, N'906', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (7, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 3, NULL, N'907', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (8, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 19, NULL, N'908', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (9, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 5, NULL, N'909', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [Client], [OrderCode], [OrderStatus]) VALUES (10, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 19, NULL, N'910', N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (1, 1, N'А112Т4', 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (2, 2, N'D325D4', 3)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (3, 3, N'F325D4', 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (4, 4, N'H542F5', 5)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (5, 5, N'G643F4', 5)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (6, 6, N'G634F5', 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (7, 7, N'G643F5', 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (8, 8, N'K532T5', 10)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (9, 9, N'C638J8', 5)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (10, 10, N'L732G6', 20)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (28, 1, N'G843H5', 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (29, 2, N'S432T5', 3)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (30, 3, N'G432G6', 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (31, 4, N'C346F5', 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (32, 5, N'J326V5', 5)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (33, 6, N'R635F5', 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (34, 7, N'G689G5', 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (35, 8, N'A357H6', 10)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (36, 9, N'F537H7', 4)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [ProductArticleNumber], [Count]) VALUES (37, 10, N'H346F5', 20)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (1, N'344288', N'г. Лесной, ул. Чехова, 1')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (2, N'614164', N'г.Лесной,  ул. Степная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (3, N'394242', N'г. Лесной, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (4, N'660540', N'г. Лесной, ул. Солнечная, 25')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (5, N'125837', N'г. Лесной, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (6, N'125703', N'г. Лесной, ул. Партизанская, 49')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (7, N'625283', N'г. Лесной, ул. Победы, 46')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (8, N'614611', N'г. Лесной, ул. Молодежная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (9, N'454311', N'г.Лесной, ул. Новая, 19')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (10, N'660007', N'г.Лесной, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (11, N'603036', N'г. Лесной, ул. Садовая, 4')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (12, N'450983', N'г.Лесной, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (13, N'394782', N'г. Лесной, ул. Чехова, 3')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (14, N'603002', N'г. Лесной, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (15, N'450558', N'г. Лесной, ул. Набережная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (16, N'394060', N'г.Лесной, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (17, N'410661', N'г. Лесной, ул. Школьная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (18, N'625590', N'г. Лесной, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (19, N'625683', N'г. Лесной, ул. 8 Марта')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (20, N'400562', N'г. Лесной, ул. Зеленая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (21, N'614510', N'г. Лесной, ул. Маяковского, 47')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (22, N'410542', N'г. Лесной, ул. Светлая, 46')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (23, N'620839', N'г. Лесной, ул. Цветочная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (24, N'443890', N'г. Лесной, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (25, N'603379', N'г. Лесной, ул. Спортивная, 46')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (26, N'603721', N'г. Лесной, ул. Гоголя, 41')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (27, N'410172', N'г. Лесной, ул. Северная, 13')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (28, N'420151', N'г. Лесной, ул. Вишневая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (29, N'125061', N'г. Лесной, ул. Подгорная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (30, N'630370', N'г. Лесной, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (31, N'614753', N'г. Лесной, ул. Полевая, 35')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (32, N'426030', N'г. Лесной, ул. Маяковского, 44')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (33, N'450375', N'г. Лесной ул. Клубная, 44')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (34, N'625560', N'г. Лесной, ул. Некрасова, 12')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (35, N'630201', N'г. Лесной, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoint] ([Id], [Index], [Address]) VALUES (36, N'190949', N'г. Лесной, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'A357H6', N'Цветок в горшке', N'шт.', CAST(222.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'InGreen', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 2, N'Суккулент микс 5х15см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'B653G6', N'Цветок в горшке', N'шт.', CAST(171.0000 AS Decimal(19, 4)), CAST(30.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'В горшке', CAST(2.0000 AS Decimal(19, 4)), 9, N'Пуансеттия микс 13 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'C346F5', N'Цветок в горшке', N'шт.', CAST(177.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'Santino', N'Цветовик', N'В горшке', CAST(5.0000 AS Decimal(19, 4)), 4, N'Хамедорея Бридбл 9х35 см', N'C346F5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'C638J8', N'Цветок в горшке', N'шт.', CAST(222.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'Gloria Garden', N'Цветовик', N'В горшке', CAST(2.0000 AS Decimal(19, 4)), 15, N'Многолетнее растение Пуансеттия микс', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'D325D4', N'Горшок', N'шт.', CAST(292.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'Santino', N'Мир цветов', N'Горшки', CAST(2.0000 AS Decimal(19, 4)), 12, N'Горшок Santino с автополивом Arte-dea 14.7 x 17 см бледно-зеленый', N'D325D4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'F256G6', N'Цветок в горшке', N'шт.', CAST(577.0000 AS Decimal(19, 4)), CAST(30.0000 AS Decimal(19, 4)), N'InGreen', N'Мир цветов', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 2, N'Орхидея Фаленопсис промо ø12 h40 - 55 см', N'F256G6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'F325D4', N'Горшок с поддоном', N'шт.', CAST(984.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'Gloria Garden', N'Цветовик', N'Горшки', CAST(4.0000 AS Decimal(19, 4)), 3, N'Gloria Garden Горшок с поддоном Гербера br59951 (Набор)', N'F325D4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'F537H7', N'Цветок в горшке', N'шт.', CAST(277.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 6, N'Многолетнее растение Пуансеттия микс Айс Пунш h20см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G432G6', N'Букет', N'шт.', CAST(910.0000 AS Decimal(19, 4)), CAST(6.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Цветовик', N'Букеты', CAST(3.0000 AS Decimal(19, 4)), 3, N'Букет из 9 красных роз длиной 50 см в крафте', N'G432G6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G543F5', N'Цветок в горшке', N'шт.', CAST(533.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'Gloria Garden', N'Мир цветов', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 6, N'Замиокулькас 12х30 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G632H6', N'Цветок в горшке', N'шт.', CAST(390.0000 AS Decimal(19, 4)), CAST(6.0000 AS Decimal(19, 4)), N'Santino', N'Мир цветов', N'В горшке', CAST(2.0000 AS Decimal(19, 4)), 8, N'Цикламен 15х35 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G634F5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'В горшке', CAST(2.0000 AS Decimal(19, 4)), 15, N'Пуансеттия Промо красная 10х30 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G643F4', N'Цветок в горшке', N'шт.', CAST(455.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'Santino', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 24, N'Орхидея Фаленопсис микс 1 стебель ø12 h50 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G643F5', N'Цветок в горшке', N'шт.', CAST(355.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'GardenPlast', N'Мир цветов', N'В горшке', CAST(5.0000 AS Decimal(19, 4)), 1, N'Фиттония микс 8х10 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G689G5', N'Цветок в горшке', N'шт.', CAST(145.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'GardenPlast', N'Мир цветов', N'В горшке', CAST(4.0000 AS Decimal(19, 4)), 3, N'Драцена маргината 11х50 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'G843H5', N'Кашпо', N'шт.', CAST(335.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'GardenPlast', N'Мир цветов', N'Горшки', CAST(3.0000 AS Decimal(19, 4)), 9, N'Кашпо «Орхидея», 1,6 л, 14 х 14 см', N'G843H5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'H346F5', N'Цветок в горшке', N'шт.', CAST(133.0000 AS Decimal(19, 4)), CAST(6.0000 AS Decimal(19, 4)), N'InGreen', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 5, N'Каланхое микс h11см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'H436H7', N'Цветок в горшке', N'шт.', CAST(298.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Цветовик', N'В горшке', CAST(4.0000 AS Decimal(19, 4)), 23, N'Пуансеттия, 15х35см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'H475R5', N'Цветок в горшке', N'шт.', CAST(398.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'InGreen', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 12, N'Орхидея Фаленопсис микро h20см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'H542F5', N'Искусственные цветы', N'шт.', CAST(400.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'Букеты', CAST(2.0000 AS Decimal(19, 4)), 5, N'Искусственные цветы подсолнух/Искусственные цветы для декора', N'H542F5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'J326V5', N'Цветок в горшке', N'шт.', CAST(211.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'GardenPlast', N'Цветовик', N'В горшке', CAST(4.0000 AS Decimal(19, 4)), 4, N'Плант микс 9х25 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'J532V5', N'Цветок в горшке', N'шт.', CAST(185.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'В горшке', CAST(2.0000 AS Decimal(19, 4)), 6, N'Пуансеттия, 30х12 см', N'J532V5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'J632F6', N'Цветок в горшке', N'шт.', CAST(288.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'GardenPlast', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 6, N'Спатифиллиум Чопин 9х35 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'J735J7', N'Цветок в горшке', N'шт.', CAST(262.0000 AS Decimal(19, 4)), CAST(15.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 4, N'Пуансеттия микс 15 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'K532T5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), CAST(30.0000 AS Decimal(19, 4)), N'Santino', N'Цветовик', N'В горшке', CAST(5.0000 AS Decimal(19, 4)), 7, N'Кактус грузони шаровидный микс 5х8 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'L732G6', N'Цветок в горшке', N'шт.', CAST(150.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Мир цветов', N'В горшке', CAST(4.0000 AS Decimal(19, 4)), 9, N'Каланхое "Каландива" микс', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'M642E5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), CAST(10.0000 AS Decimal(19, 4)), N'InGreen', N'Цветовик', N'В горшке', CAST(5.0000 AS Decimal(19, 4)), 2, N'Кактус микс 5х10 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'R635F5', N'Цветок в горшке', N'шт.', CAST(188.0000 AS Decimal(19, 4)), CAST(6.0000 AS Decimal(19, 4)), N'Цветочный сад', N'Цветовик', N'В горшке', CAST(3.0000 AS Decimal(19, 4)), 7, N'Кактус мамиллярия 5х14 см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'S432T5', N'Кашпо', N'шт.', CAST(309.0000 AS Decimal(19, 4)), CAST(5.0000 AS Decimal(19, 4)), N'InGreen', N'Цветовик', N'Горшки', CAST(3.0000 AS Decimal(19, 4)), 15, N'Кашпо InGreen Фиджи ING1555, 5 л, 23х20.8 см шоколадный', N'S432T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductManufacturer], [ProductSupplier], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhotoUri]) VALUES (N'А112Т4', N'Кашпо', N'шт.', CAST(300.0000 AS Decimal(19, 4)), CAST(30.0000 AS Decimal(19, 4)), N'GardenPlast', N'Цветовик', N'Горшки', CAST(5.0000 AS Decimal(19, 4)), 6, N'Кашпо GardenPlast Лаванда 14 х 26 см фиолетовый', N'А112Т4.jpg')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Ефремов
', N'Сергей', N'Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Родионова', N'Тамара', N'Валентиновна', N'loginDElqb2018', N'RNynil', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Миронова', N'Галина', N'Улебовна', N'loginDEydn2018', N'34I}X9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Сидоров', N'Роман', N'Иринеевич', N'loginDEijg2018', N'4QlKJW', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Ситников', N'Парфений', N'Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Никонов', N'Роман', N'Геласьевич', N'loginDEwdm2018', N'&PynqU', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Щербаков', N'Владимир', N'Матвеевич', N'loginDEdup2018', N'JM+2{s', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Кулаков', N'Мартын', N'Михаилович', N'loginDEhbm2018', N'9aObu4', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Сазонова', N'Оксана', N'Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Архипов', N'Варлам', N'Мэлорович', N'loginDErks2018', N'LQNSjo', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Устинова', N'Ираида', N'Мэлоровна', N'loginDErvb2018', N'ceAf&R', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Кононов', N'Эдуард', N'Валентинович', N'loginDEgfw2018', N'3c2Ic1', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Орехова', N'Клавдия', N'Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Яковлев', N'Яков', N'Эдуардович', N'loginDEgeq2018', N'&&Eim0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Воронов', N'Мэлс', N'Семёнович', N'loginDEkhj2018', N'Pbc0t{', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Вишнякова', N'Ия', N'Данииловна', N'loginDEliu2018', N'32FyTl', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Третьяков', N'Фёдор', N'Вадимович', N'loginDEsmf2018', N'{{O2QG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Макаров', N'Максим', N'Ильяович', N'loginDEutd2018', N'GbcJvC', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Шубина', N'Маргарита', N'Анатольевна', N'loginDEpgh2018', N'YV2lvh', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Блинова', N'Ангелина', N'Владленовна', N'loginDEvop2018', N'pBP8rO', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Воробьёв', N'Владлен', N'Фролович', N'loginDEwjo2018', N'EQaD|d', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Сорокина', N'Прасковья', N'Фёдоровна', N'loginDEbur2018', N'aZKGeI', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Давыдов', N'Яков', N'Антонович', N'loginDEszw2018', N'EGU{YE', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Рыбакова', N'Евдокия', N'Анатольевна', N'loginDExsu2018', N'*2RMsp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Маслов', N'Геннадий', N'Фролович', N'loginDEztn2018', N'nJBZpU', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Цветкова', N'Элеонора', N'Аристарховна', N'loginDEtmn2018', N'UObB}N', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Евдокимов', N'Ростислав', N'Александрович', N'loginDEhep2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Никонова', N'Венера', N'Станиславовна', N'loginDEevr2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Громов', N'Егор', N'Антонович', N'loginDEnpa2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Суворова', N'Валерия', N'Борисовна', N'loginDEgyt2018', N'Pav+GP', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Мишина', N'Елизавета', N'Романовна', N'loginDEbrr2018', N'Z7L|+i', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Зимина', N'Ольга', N'Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Игнатьев', N'Игнатий', N'Антонинович', N'loginDEaob2018', N'3fy+3I', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Пахомова', N'Зинаида', N'Витальевна', N'loginDEwtz2018', N'&GxSST', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Устинов', N'Владимир', N'Федосеевич', N'loginDEctf2018', N'sjt*3N', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Кулаков', N'Мэлор', N'Вячеславович', N'loginDEipm2018', N'MAZl6|', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Сазонов', N'Авксентий', N'Брониславович', N'loginDEjoi2018', N'o}C4jv', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Бурова', N'Наина', N'Брониславовна', N'loginDEwap2018', N'4hny7k', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Фадеев', N'Демьян', N'Федосеевич', N'loginDEaxm2018', N'BEc3xq', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Бобылёва', N'Дарья', N'Якуновна', N'loginDEsmq2018', N'ATVmM7', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Виноградов', N'Созон', N'Арсеньевич', N'loginDEeur2018', N'n4V{wP', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Гордеев', N'Владлен', N'Ефимович', N'loginDEvke2018', N'WQLXSl', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Иванова', N'Кто', N'Зинаида', N'loginDEvod2018', N'0EW93v', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Гусев', N'Руслан', N'Дамирович', N'loginDEjaw2018', N'h6z&Ky', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Маслов', N'Дмитрий', N'Иванович', N'loginDEpdp2018', N'8NvRfC', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Антонова', N'Ульяна', N'Семёновна', N'loginDEjpp2018', N'oMOQq3', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Орехова', N'Людмила', N'Владимировна', N'loginDEkiy2018', N'BQzsts', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Авдеева', N'Жанна', N'Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Кузнецов', N'Фрол', N'Варламович', N'loginDEfmn2018', N'cw3|03', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Лукин', N'Георгий', N'Альбертович', N'loginDEulo2018', N'#ИМЯ?', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (51, N'Николаев', N'Даниил', N'Денисович', N'loginDEaaa2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (52, N'Сазонов', N'Руслан', N'Германович', N'loginDEaab2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (53, N'Одинцов', N'Серафим', N'Артёмович', N'loginDEaac2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (54, N'Степанов', N'Михаил', N'Артёмович', N'loginDEaad2018', N'Pav+GP', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Client])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__267ABA7A] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__267ABA7A]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
