USE ИМЯ_БД
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCreateDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderClient] [int] NULL,
	[OrderCode] [nvarchar](max) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF2E8E6B01] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderProductID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[PickupPoints](
	[PointID] [int] IDENTITY(1,1) NOT NULL,
	[PointAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Points] PRIMARY KEY CLUSTERED 
(
	[PointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductUnit] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductProvider] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductDiscountAmount] [int] NOT NULL,
	[ProductCount] [int] NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPhoto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (1, CAST(N'2022-05-14T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 1, NULL, N'901', N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (2, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 11, 51, N'902', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (3, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 2, 52, N'903', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (4, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 11, 53, N'904', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (5, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 2, 54, N'905', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (6, CAST(N'2022-05-20T00:00:00.000' AS DateTime), CAST(N'2022-05-26T00:00:00.000' AS DateTime), 15, NULL, N'906', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (7, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 3, NULL, N'907', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (8, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 19, NULL, N'908', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (9, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 5, NULL, N'909', N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderClient], [OrderCode], [OrderStatus]) VALUES (10, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 19, NULL, N'910', N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (21, 1, 1, 2)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (22, 1, 2, 2)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (23, 2, 3, 3)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (24, 2, 4, 3)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (25, 3, 5, 1)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (26, 3, 6, 1)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (27, 4, 7, 5)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (28, 4, 8, 1)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (29, 5, 11, 5)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (30, 5, 12, 5)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (31, 6, 21, 2)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (32, 6, 22, 2)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (33, 7, 23, 1)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (34, 7, 24, 1)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (35, 8, 25, 10)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (36, 8, 26, 10)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (37, 9, 27, 5)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (38, 9, 28, 4)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (39, 10, 29, 20)
INSERT [dbo].[OrderProduct] ([OrderProductID], [OrderID], [ProductID], [Amount]) VALUES (40, 10, 30, 20)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoints] ON 

INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (1, N'344288, г. Лесной, ул. Чехова, 1')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (2, N'614164, г.Лесной,  ул. Степная, 30')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (3, N'394242, г. Лесной, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (4, N'660540, г. Лесной, ул. Солнечная, 25')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (5, N'125837, г. Лесной, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (6, N'125703, г. Лесной, ул. Партизанская, 49')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (7, N'625283, г. Лесной, ул. Победы, 46')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (8, N'614611, г. Лесной, ул. Молодежная, 50')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (9, N'454311, г.Лесной, ул. Новая, 19')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (10, N'660007, г.Лесной, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (11, N'603036, г. Лесной, ул. Садовая, 4')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (12, N'450983, г.Лесной, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (13, N'394782, г. Лесной, ул. Чехова, 3')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (14, N'603002, г. Лесной, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (15, N'450558, г. Лесной, ул. Набережная, 30')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (16, N'394060, г.Лесной, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (17, N'410661, г. Лесной, ул. Школьная, 50')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (18, N'625590, г. Лесной, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (19, N'625683, г. Лесной, ул. 8 Марта')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (20, N'400562, г. Лесной, ул. Зеленая, 32')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (21, N'614510, г. Лесной, ул. Маяковского, 47')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (22, N'410542, г. Лесной, ул. Светлая, 46')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (23, N'620839, г. Лесной, ул. Цветочная, 8')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (24, N'443890, г. Лесной, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (25, N'603379, г. Лесной, ул. Спортивная, 46')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (26, N'603721, г. Лесной, ул. Гоголя, 41')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (27, N'410172, г. Лесной, ул. Северная, 13')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (28, N'420151, г. Лесной, ул. Вишневая, 32')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (29, N'125061, г. Лесной, ул. Подгорная, 8')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (30, N'630370, г. Лесной, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (31, N'614753, г. Лесной, ул. Полевая, 35')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (32, N'426030, г. Лесной, ул. Маяковского, 44')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (33, N'450375, г. Лесной ул. Клубная, 44')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (34, N'625560, г. Лесной, ул. Некрасова, 12')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (35, N'630201, г. Лесной, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoints] ([PointID], [PointAddress]) VALUES (36, N'190949, г. Лесной, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PickupPoints] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (1, N'А112Т4', N'Кашпо', N'шт.', CAST(300.0000 AS Decimal(19, 4)), 30, N'GardenPlast', N'Цветовик', N'Горшки', 5, 6, N'Кашпо GardenPlast Лаванда 14 х 26 см фиолетовый', N'А112Т4.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (2, N'G843H5', N'Кашпо', N'шт.', CAST(335.0000 AS Decimal(19, 4)), 15, N'GardenPlast', N'Мир цветов', N'Горшки', 3, 9, N'Кашпо «Орхидея», 1,6 л, 14 х 14 см', N'G843H5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (3, N'D325D4', N'Горшок', N'шт.', CAST(292.0000 AS Decimal(19, 4)), 10, N'Santino', N'Мир цветов', N'Горшки', 2, 12, N'Горшок Santino с автополивом Arte-dea 14.7 x 17 см бледно-зеленый', N'D325D4.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (4, N'S432T5', N'Кашпо', N'шт.', CAST(309.0000 AS Decimal(19, 4)), 5, N'InGreen', N'Цветовик', N'Горшки', 3, 15, N'Кашпо InGreen Фиджи ING1555, 5 л, 23х20.8 см шоколадный', N'S432T5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (5, N'F325D4', N'Горшок с поддоном', N'шт.', CAST(984.0000 AS Decimal(19, 4)), 5, N'Gloria Garden', N'Цветовик', N'Горшки', 4, 3, N'Gloria Garden Горшок с поддоном Гербера br59951 (Набор)', N'F325D4.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (6, N'G432G6', N'Букет', N'шт.', CAST(910.0000 AS Decimal(19, 4)), 6, N'Цветочный сад', N'Цветовик', N'Букеты', 3, 3, N'Букет из 9 красных роз длиной 50 см в крафте', N'G432G6.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (7, N'H542F5', N'Искусственные цветы', N'шт.', CAST(400.0000 AS Decimal(19, 4)), 10, N'Цветочный сад', N'Мир цветов', N'Букеты', 2, 5, N'Искусственные цветы подсолнух/Искусственные цветы для декора', N'H542F5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (8, N'C346F5', N'Цветок в горшке', N'шт.', CAST(177.0000 AS Decimal(19, 4)), 15, N'Santino', N'Цветовик', N'В горшке', 5, 4, N'Хамедорея Бридбл 9х35 см', N'C346F5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (9, N'F256G6', N'Цветок в горшке', N'шт.', CAST(577.0000 AS Decimal(19, 4)), 30, N'InGreen', N'Мир цветов', N'В горшке', 3, 2, N'Орхидея Фаленопсис промо ø12 h40 - 55 см', N'F256G6.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (10, N'J532V5', N'Цветок в горшке', N'шт.', CAST(185.0000 AS Decimal(19, 4)), 15, N'Цветочный сад', N'Мир цветов', N'В горшке', 2, 6, N'Пуансеттия, 30х12 см', N'J532V5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (11, N'G643F4', N'Цветок в горшке', N'шт.', CAST(455.0000 AS Decimal(19, 4)), 10, N'Santino', N'Цветовик', N'В горшке', 3, 24, N'Орхидея Фаленопсис микс 1 стебель ø12 h50 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (12, N'J326V5', N'Цветок в горшке', N'шт.', CAST(211.0000 AS Decimal(19, 4)), 5, N'GardenPlast', N'Цветовик', N'В горшке', 4, 4, N'Плант микс 9х25 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (13, N'J632F6', N'Цветок в горшке', N'шт.', CAST(288.0000 AS Decimal(19, 4)), 5, N'GardenPlast', N'Цветовик', N'В горшке', 3, 6, N'Спатифиллиум Чопин 9х35 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (14, N'G632H6', N'Цветок в горшке', N'шт.', CAST(390.0000 AS Decimal(19, 4)), 6, N'Santino', N'Мир цветов', N'В горшке', 2, 8, N'Цикламен 15х35 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (15, N'M642E5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), 10, N'InGreen', N'Цветовик', N'В горшке', 5, 2, N'Кактус микс 5х10 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (16, N'G543F5', N'Цветок в горшке', N'шт.', CAST(533.0000 AS Decimal(19, 4)), 15, N'Gloria Garden', N'Мир цветов', N'В горшке', 3, 6, N'Замиокулькас 12х30 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (17, N'B653G6', N'Цветок в горшке', N'шт.', CAST(171.0000 AS Decimal(19, 4)), 30, N'Цветочный сад', N'Мир цветов', N'В горшке', 2, 9, N'Пуансеттия микс 13 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (18, N'J735J7', N'Цветок в горшке', N'шт.', CAST(262.0000 AS Decimal(19, 4)), 15, N'Цветочный сад', N'Цветовик', N'В горшке', 3, 4, N'Пуансеттия микс 15 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (19, N'H436H7', N'Цветок в горшке', N'шт.', CAST(298.0000 AS Decimal(19, 4)), 10, N'Цветочный сад', N'Цветовик', N'В горшке', 4, 23, N'Пуансеттия, 15х35см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (20, N'H475R5', N'Цветок в горшке', N'шт.', CAST(398.0000 AS Decimal(19, 4)), 5, N'InGreen', N'Цветовик', N'В горшке', 3, 12, N'Орхидея Фаленопсис микро h20см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (21, N'G634F5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), 5, N'Цветочный сад', N'Мир цветов', N'В горшке', 2, 15, N'Пуансеттия Промо красная 10х30 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (22, N'R635F5', N'Цветок в горшке', N'шт.', CAST(188.0000 AS Decimal(19, 4)), 6, N'Цветочный сад', N'Цветовик', N'В горшке', 3, 7, N'Кактус мамиллярия 5х14 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (23, N'G643F5', N'Цветок в горшке', N'шт.', CAST(355.0000 AS Decimal(19, 4)), 10, N'GardenPlast', N'Мир цветов', N'В горшке', 5, 1, N'Фиттония микс 8х10 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (24, N'G689G5', N'Цветок в горшке', N'шт.', CAST(145.0000 AS Decimal(19, 4)), 15, N'GardenPlast', N'Мир цветов', N'В горшке', 4, 3, N'Драцена маргината 11х50 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (25, N'K532T5', N'Цветок в горшке', N'шт.', CAST(111.0000 AS Decimal(19, 4)), 30, N'Santino', N'Цветовик', N'В горшке', 5, 7, N'Кактус грузони шаровидный микс 5х8 см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (26, N'A357H6', N'Цветок в горшке', N'шт.', CAST(222.0000 AS Decimal(19, 4)), 15, N'InGreen', N'Цветовик', N'В горшке', 3, 2, N'Суккулент микс 5х15см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (27, N'C638J8', N'Цветок в горшке', N'шт.', CAST(222.0000 AS Decimal(19, 4)), 10, N'Gloria Garden', N'Цветовик', N'В горшке', 2, 15, N'Многолетнее растение Пуансеттия микс', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (28, N'F537H7', N'Цветок в горшке', N'шт.', CAST(277.0000 AS Decimal(19, 4)), 5, N'Цветочный сад', N'Мир цветов', N'В горшке', 3, 6, N'Многолетнее растение Пуансеттия микс Айс Пунш h20см', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (29, N'L732G6', N'Цветок в горшке', N'шт.', CAST(150.0000 AS Decimal(19, 4)), 5, N'Цветочный сад', N'Мир цветов', N'В горшке', 4, 9, N'Каланхое "Каландива" микс', N'')
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductQuantityInStock], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto]) VALUES (30, N'H346F5', N'Цветок в горшке', N'шт.', CAST(133.0000 AS Decimal(19, 4)), 6, N'InGreen', N'Цветовик', N'В горшке', 3, 5, N'Каланхое микс h11см', N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Ефремов ', N'Сергей', N'Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Родионова ', N'Тамара', N'Валентиновна', N'loginDElqb2018', N'RNynil', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Миронова ', N'Галина', N'Улебовна', N'loginDEydn2018', N'34I}X9', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Сидоров ', N'Роман', N'Иринеевич', N'loginDEijg2018', N'4QlKJW', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Ситников ', N'Парфений', N'Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Никонов ', N'Роман', N'Геласьевич', N'loginDEwdm2018', N'&PynqU', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Щербаков ', N'Владимир', N'Матвеевич', N'loginDEdup2018', N'JM+2{s', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Кулаков ', N'Мартын', N'Михаилович', N'loginDEhbm2018', N'9aObu4', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Сазонова ', N'Оксана', N'Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Архипов ', N'Варлам', N'Мэлорович', N'loginDErks2018', N'LQNSjo', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Устинова ', N'Ираида', N'Мэлоровна', N'loginDErvb2018', N'ceAf&R', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Лукин ', N'Георгий', N'Альбертович', N'loginDEulo2018', N'#ИМЯ?', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Кононов ', N'Эдуард', N'Валентинович', N'loginDEgfw2018', N'3c2Ic1', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Орехова ', N'Клавдия', N'Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Яковлев ', N'Яков', N'Эдуардович', N'loginDEgeq2018', N'&&Eim0', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Воронов ', N'Мэлс', N'Семёнович', N'loginDEkhj2018', N'Pbc0t{', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Вишнякова ', N'Ия', N'Данииловна', N'loginDEliu2018', N'32FyTl', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Третьяков ', N'Фёдор', N'Вадимович', N'loginDEsmf2018', N'{{O2QG', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Макаров ', N'Максим', N'Ильяович', N'loginDEutd2018', N'GbcJvC', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Шубина ', N'Маргарита', N'Анатольевна', N'loginDEpgh2018', N'YV2lvh', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Блинова ', N'Ангелина', N'Владленовна', N'loginDEvop2018', N'pBP8rO', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Воробьёв ', N'Владлен', N'Фролович', N'loginDEwjo2018', N'EQaD|d', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Сорокина ', N'Прасковья', N'Фёдоровна', N'loginDEbur2018', N'aZKGeI', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Давыдов ', N'Яков', N'Антонович', N'loginDEszw2018', N'EGU{YE', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Рыбакова ', N'Евдокия', N'Анатольевна', N'loginDExsu2018', N'*2RMsp', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Маслов ', N'Геннадий', N'Фролович', N'loginDEztn2018', N'nJBZpU', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Цветкова ', N'Элеонора', N'Аристарховна', N'loginDEtmn2018', N'UObB}N', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Евдокимов ', N'Ростислав', N'Александрович', N'loginDEhep2018', N'SwRicr', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Никонова ', N'Венера', N'Станиславовна', N'loginDEevr2018', N'zO5l}l', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Громов ', N'Егор', N'Антонович', N'loginDEnpa2018', N'M*QLjf', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Суворова ', N'Валерия', N'Борисовна', N'loginDEgyt2018', N'Pav+GP', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Мишина ', N'Елизавета', N'Романовна', N'loginDEbrr2018', N'Z7L|+i', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Зимина ', N'Ольга', N'Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Игнатьев ', N'Игнатий', N'Антонинович', N'loginDEaob2018', N'3fy+3I', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Пахомова ', N'Зинаида', N'Витальевна', N'loginDEwtz2018', N'&GxSST', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Устинов ', N'Владимир', N'Федосеевич', N'loginDEctf2018', N'sjt*3N', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Кулаков ', N'Мэлор', N'Вячеславович', N'loginDEipm2018', N'MAZl6|', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Сазонов ', N'Авксентий', N'Брониславович', N'loginDEjoi2018', N'o}C4jv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Бурова ', N'Наина', N'Брониславовна', N'loginDEwap2018', N'4hny7k', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Фадеев ', N'Демьян', N'Федосеевич', N'loginDEaxm2018', N'BEc3xq', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Бобылёва ', N'Дарья', N'Якуновна', N'loginDEsmq2018', N'ATVmM7', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Виноградов ', N'Созон', N'Арсеньевич', N'loginDEeur2018', N'n4V{wP', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Гордеев ', N'Владлен', N'Ефимович', N'loginDEvke2018', N'WQLXSl', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Иванова ', N'Зинаида', N'Валерьевна', N'loginDEvod2018', N'0EW93v', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Гусев ', N'Руслан', N'Дамирович', N'loginDEjaw2018', N'h6z&Ky', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Маслов ', N'Дмитрий', N'Иванович', N'loginDEpdp2018', N'8NvRfC', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Антонова ', N'Ульяна', N'Семёновна', N'loginDEjpp2018', N'oMOQq3', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Орехова ', N'Людмила', N'Владимировна', N'loginDEkiy2018', N'BQzsts', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Авдеева ', N'Жанна', N'Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Кузнецов ', N'Фрол', N'Варламович', N'loginDEfmn2018', N'cw3|03', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (51, N'Николаев', N'Даниил', N'Денисович', N'loginDEzxc2018', N'D#d938', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (52, N'Сазонов', N'Руслан', N'Германович', N'loginDEqwe2018', N'FJ*d89', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (53, N'Одинцов', N'Серафим', N'Артёмович', N'loginDEasd2018', N'Fk90f03', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (54, N'Степанов', N'Михаил', N'Артёмович', N'loginDEqaz2018', N'MQW93', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoints] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoints] ([PointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoints]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OrderClient])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
