USE [Exam1SSMDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[InvoiceNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[LineDetailId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[InvoiceNumber] ASC,
	[LineDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceNumber] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Notes] [nvarchar](800) NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (1, N'Schneider')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (2, N'CKKC Food')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (3, N'CMG Information Services')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (4, N'Scheider')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (5, N'KMDesign')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (6, N'Setto Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (7, N'Van Dijk Boeken')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (8, N'Hill Worx bv')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (9, N'RS Tech')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (10, N'BVDS Software')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (11, N'Intuit')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (12, N'Infoseek')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (13, N'Compuserve')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (14, N'Infoseek')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (15, N'Ikea')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (16, N'Netscape Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (17, N'SwissAero')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (18, N'MetLife')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (19, N'HGMM Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (20, N'BlackConsult')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (21, N'Van Dijk Boeken')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (22, N'Lennon and Lewis Technology')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (23, N'Alani Computers')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (24, N'Excalibur Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (25, N'Kwantum')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (26, N'MONY')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (27, N'Lycos')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (28, N'Setto Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (29, N'Cobb and Ferry Training')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (30, N'FinlandAir')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (31, N'PerfectTraining')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (32, N'Rabobank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (33, N'Ascend Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (34, N'Laterna Corp.')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (35, N'Van Ooyen Taxi')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (36, N'Sandoz')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (37, N'Ebana Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (38, N'Minsk Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (39, N'MossTech')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (40, N'IMAX')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (41, N'RTI Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (42, N'Leo')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (43, N'HJWebDesign')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (44, N'MONY')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (45, N'Bank Labouchere')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (46, N'Van Houweningen Ass.')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (47, N'Mongo Informatics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (48, N'Edify')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (49, N'Open Text')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (50, N'BASE')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (51, N'Roghuis Consultancy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (52, N'Check Point Software Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (53, N'Van Ooyen Taxi')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (54, N'Brierman Consultancy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (55, N'BASE')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (56, N'HJArchitecture')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (57, N'PSINet')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (58, N'AK Group')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (59, N'System U')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (60, N'Unilever')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (61, N'Ylinca Systems')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (62, N'NIBC Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (63, N'Cszerwinski Informatics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (64, N'Innovate Services')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (65, N'Leo')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (66, N'BCC')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (67, N'Nemenens')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (68, N'Michelin')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (69, N'Cascade Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (70, N'Sapanda.com')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (71, N'Ning Steel')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (72, N'Grolsch')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (73, N'Sandoz')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (74, N'Njong Services')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (75, N'ParkeDavis')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (76, N'ER Data')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (77, N'Njongy Informatix')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (78, N'Jagger and Jagger Finance')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (79, N'Serono')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (80, N'Spectradat')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (81, N'KV Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (82, N'Euroderma')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (83, N'TaiwanAir')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (84, N'Wang Computers')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (85, N'KZM Works')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (86, N'Zaal Buxus')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (87, N'Geigy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (88, N'BestWorx co')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (89, N'Carey and Pitt Consultancy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (90, N'HNG Consult')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (91, N'Lycos')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (92, N'Lycos')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (93, N'Sterling Software')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (94, N'UniqueVision')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (95, N'Nokia')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (96, N'HZG Food')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (97, N'Seven Days Center')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (98, N'Van Dijk Uitzendbureau')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (99, N'UPC')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (100, N'Verity')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (101, N'Kwantum')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (102, N'Seven Days Center')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (103, N'Sure Training')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (104, N'HJArchitecture')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (105, N'Netscape Communications')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (106, N'UStep')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (107, N'Vardisio')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (108, N'Devote Informatics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (109, N'Michelin')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (110, N'Unilever')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (111, N'MisterTech')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (112, N'Ming Media')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (113, N'NovoNordisk')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (114, N'Zjongo Media')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (115, N'Mongy Services')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (116, N'Casco')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (117, N'DenmarkAir')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (118, N'Cszerwinski Informatics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (119, N'Njong Stores')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (120, N'Allen&Hanburys Ltd')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (121, N'Van Ooyen Taxi')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (122, N'Evans')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (123, N'PTT Telecom')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (124, N'StepStone')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (125, N'CanadaAir')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (126, N'Able Data')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (127, N'BetterOffice')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (128, N'Wyeth')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (129, N'Astra')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (130, N'KM Computers')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (131, N'MONY')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (132, N'VocalTec')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (133, N'Ubonso Systems')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (134, N'Weekamp Deuren')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (135, N'Ulena Computers')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (136, N'EMI Music')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (137, N'Dotser')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (138, N'Credit Suisse')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (139, N'Notalya Consultancy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (140, N'GreatWorx gmbh')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (141, N'GoldSoft')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (142, N'Bolt Bretanek & Newman')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (143, N'Elana Tech')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (144, N'Schneider')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (145, N'OnlineWorks ltd')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (146, N'SunRiver')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (147, N'Wehkamp BV')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (148, N'Zeneca')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (149, N'Serono')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (150, N'ShopAndGo')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (151, N'Spectradat')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (152, N'Silicon Graphics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (153, N'Rogers and Cobb Consultancy')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (154, N'Merck and Dalton Finance')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (155, N'Laterna Corp.')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (156, N'Euroderma')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (157, N'Sparta Cycle')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (158, N'Symantec')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (159, N'Sterling Software')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (160, N'DotNet')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (161, N'Cnet')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (162, N'EMI Music')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (163, N'Getronics')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (164, N'Nongy Informatix')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (165, N'CEAM Tools')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (166, N'GoldPoint')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (167, N'Ten Solutions')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (168, N'Sapanda.com')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (169, N'Gandalf Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (170, N'C&A')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (171, N'InnovateData')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (172, N'Fortis')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (173, N'BCC')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (174, N'America Online')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (175, N'OnlineTools co')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (176, N'PT Media')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (177, N'Marion Merrell')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (178, N'Numican')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (179, N'Check Point Software Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (180, N'Casba')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (181, N'Achat')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (182, N'Mucom')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (183, N'CreativeIT')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (184, N'LBR Shoes')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (185, N'Broadband Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (186, N'OrangeShopToGo')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (187, N'Van Walen Bouw')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (188, N'VVMedia')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (189, N'Zaal Buxus')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (190, N'Takita')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (191, N'Mingy Informatix')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (192, N'GUO')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (193, N'Satimos')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (194, N'Fulcrum Technologies')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (195, N'NBBS Bank')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (196, N'Bayer')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (197, N'BBTraining')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (198, N'RedStone')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (199, N'Waltman Tools gmbh')
GO
INSERT [dbo].[Customers] ([CustomerId], [Name]) VALUES (200, N'RQ Group')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON 

GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (1, 79, CAST(90.95 AS Decimal(18, 2)), CAST(791.35 AS Decimal(18, 2)), 396)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (1, 55, CAST(8.90 AS Decimal(18, 2)), CAST(57540.45 AS Decimal(18, 2)), 448)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (1, 84, CAST(67.28 AS Decimal(18, 2)), CAST(2865.79 AS Decimal(18, 2)), 620)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (2, 51, CAST(74.18 AS Decimal(18, 2)), CAST(14873.98 AS Decimal(18, 2)), 229)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (2, 54, CAST(6.96 AS Decimal(18, 2)), CAST(47.80 AS Decimal(18, 2)), 981)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (3, 30, CAST(5.40 AS Decimal(18, 2)), CAST(95.42 AS Decimal(18, 2)), 341)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (3, 38, CAST(71.13 AS Decimal(18, 2)), CAST(8782.32 AS Decimal(18, 2)), 567)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (3, 54, CAST(49.39 AS Decimal(18, 2)), CAST(0.53 AS Decimal(18, 2)), 982)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (4, 86, CAST(93.65 AS Decimal(18, 2)), CAST(645.58 AS Decimal(18, 2)), 112)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (4, 100, CAST(6.06 AS Decimal(18, 2)), CAST(1880.77 AS Decimal(18, 2)), 288)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (4, 88, CAST(52.08 AS Decimal(18, 2)), CAST(34982.85 AS Decimal(18, 2)), 397)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (4, 60, CAST(5.44 AS Decimal(18, 2)), CAST(4550.21 AS Decimal(18, 2)), 503)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (4, 67, CAST(80.64 AS Decimal(18, 2)), CAST(61795.06 AS Decimal(18, 2)), 880)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (5, 51, CAST(18.60 AS Decimal(18, 2)), CAST(1908.54 AS Decimal(18, 2)), 230)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (5, 91, CAST(76.16 AS Decimal(18, 2)), CAST(7.72 AS Decimal(18, 2)), 726)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (6, 55, CAST(71.48 AS Decimal(18, 2)), CAST(36.91 AS Decimal(18, 2)), 449)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (6, 84, CAST(99.30 AS Decimal(18, 2)), CAST(61.97 AS Decimal(18, 2)), 621)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (6, 21, CAST(5.10 AS Decimal(18, 2)), CAST(39300.75 AS Decimal(18, 2)), 674)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (6, 91, CAST(8.23 AS Decimal(18, 2)), CAST(32.58 AS Decimal(18, 2)), 727)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 25, CAST(1.88 AS Decimal(18, 2)), CAST(75.21 AS Decimal(18, 2)), 57)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 86, CAST(7.83 AS Decimal(18, 2)), CAST(3.93 AS Decimal(18, 2)), 113)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 82, CAST(59.01 AS Decimal(18, 2)), CAST(51.54 AS Decimal(18, 2)), 171)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 84, CAST(4.42 AS Decimal(18, 2)), CAST(4916.41 AS Decimal(18, 2)), 622)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 97, CAST(74.04 AS Decimal(18, 2)), CAST(1.34 AS Decimal(18, 2)), 728)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (7, 8, CAST(4.76 AS Decimal(18, 2)), CAST(90.54 AS Decimal(18, 2)), 776)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (8, 7, CAST(39.71 AS Decimal(18, 2)), CAST(746.87 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (8, 57, CAST(37.98 AS Decimal(18, 2)), CAST(9089.98 AS Decimal(18, 2)), 450)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (8, 87, CAST(1.56 AS Decimal(18, 2)), CAST(7.31 AS Decimal(18, 2)), 623)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (8, 3, CAST(9.33 AS Decimal(18, 2)), CAST(16018.46 AS Decimal(18, 2)), 932)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (9, 88, CAST(24.50 AS Decimal(18, 2)), CAST(40.45 AS Decimal(18, 2)), 398)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (9, 68, CAST(7.97 AS Decimal(18, 2)), CAST(2.41 AS Decimal(18, 2)), 881)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (9, 4, CAST(4.21 AS Decimal(18, 2)), CAST(12.73 AS Decimal(18, 2)), 933)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (9, 54, CAST(5.02 AS Decimal(18, 2)), CAST(87.08 AS Decimal(18, 2)), 983)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (10, 51, CAST(7.47 AS Decimal(18, 2)), CAST(66188.43 AS Decimal(18, 2)), 231)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (10, 40, CAST(6.08 AS Decimal(18, 2)), CAST(9110.41 AS Decimal(18, 2)), 342)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (10, 38, CAST(6.49 AS Decimal(18, 2)), CAST(82297.42 AS Decimal(18, 2)), 568)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (10, 25, CAST(2.05 AS Decimal(18, 2)), CAST(31.45 AS Decimal(18, 2)), 826)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (11, 41, CAST(3.26 AS Decimal(18, 2)), CAST(31180.10 AS Decimal(18, 2)), 343)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (11, 39, CAST(5.23 AS Decimal(18, 2)), CAST(88622.47 AS Decimal(18, 2)), 569)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (12, 1, CAST(9.38 AS Decimal(18, 2)), CAST(68044.33 AS Decimal(18, 2)), 289)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (12, 57, CAST(67.11 AS Decimal(18, 2)), CAST(7096.49 AS Decimal(18, 2)), 451)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (12, 61, CAST(1.86 AS Decimal(18, 2)), CAST(3.14 AS Decimal(18, 2)), 504)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (12, 91, CAST(38.24 AS Decimal(18, 2)), CAST(2603.72 AS Decimal(18, 2)), 624)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (13, 53, CAST(4.60 AS Decimal(18, 2)), CAST(12.36 AS Decimal(18, 2)), 232)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (13, 68, CAST(7.52 AS Decimal(18, 2)), CAST(106.94 AS Decimal(18, 2)), 882)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (14, 95, CAST(8.00 AS Decimal(18, 2)), CAST(80.71 AS Decimal(18, 2)), 114)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (14, 82, CAST(51.69 AS Decimal(18, 2)), CAST(8.08 AS Decimal(18, 2)), 172)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (14, 8, CAST(3.74 AS Decimal(18, 2)), CAST(9802.23 AS Decimal(18, 2)), 777)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (15, 47, CAST(35.73 AS Decimal(18, 2)), CAST(2.16 AS Decimal(18, 2)), 570)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (15, 21, CAST(3.95 AS Decimal(18, 2)), CAST(5.63 AS Decimal(18, 2)), 675)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (15, 30, CAST(6.62 AS Decimal(18, 2)), CAST(59.75 AS Decimal(18, 2)), 827)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 15, CAST(7.10 AS Decimal(18, 2)), CAST(2888.51 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 25, CAST(2.52 AS Decimal(18, 2)), CAST(654.27 AS Decimal(18, 2)), 58)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 82, CAST(3.27 AS Decimal(18, 2)), CAST(1.95 AS Decimal(18, 2)), 173)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 53, CAST(39.75 AS Decimal(18, 2)), CAST(793.31 AS Decimal(18, 2)), 233)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 45, CAST(55.26 AS Decimal(18, 2)), CAST(5.43 AS Decimal(18, 2)), 344)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 88, CAST(48.08 AS Decimal(18, 2)), CAST(33.62 AS Decimal(18, 2)), 399)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (16, 1, CAST(2.73 AS Decimal(18, 2)), CAST(15006.49 AS Decimal(18, 2)), 729)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (17, 53, CAST(4.43 AS Decimal(18, 2)), CAST(1.12 AS Decimal(18, 2)), 571)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (17, 4, CAST(3.60 AS Decimal(18, 2)), CAST(218.63 AS Decimal(18, 2)), 934)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (18, 23, CAST(6.69 AS Decimal(18, 2)), CAST(3376.03 AS Decimal(18, 2)), 676)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (18, 38, CAST(4.68 AS Decimal(18, 2)), CAST(14213.63 AS Decimal(18, 2)), 828)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (18, 68, CAST(7.92 AS Decimal(18, 2)), CAST(586.57 AS Decimal(18, 2)), 883)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (19, 1, CAST(83.50 AS Decimal(18, 2)), CAST(8976.05 AS Decimal(18, 2)), 290)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (19, 53, CAST(20.80 AS Decimal(18, 2)), CAST(532.44 AS Decimal(18, 2)), 572)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (19, 91, CAST(6.56 AS Decimal(18, 2)), CAST(8550.91 AS Decimal(18, 2)), 625)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (19, 63, CAST(52.35 AS Decimal(18, 2)), CAST(1.78 AS Decimal(18, 2)), 984)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (20, 57, CAST(8.12 AS Decimal(18, 2)), CAST(35.96 AS Decimal(18, 2)), 234)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (20, 62, CAST(69.55 AS Decimal(18, 2)), CAST(0.15 AS Decimal(18, 2)), 452)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (20, 53, CAST(4.84 AS Decimal(18, 2)), CAST(94.65 AS Decimal(18, 2)), 573)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (20, 4, CAST(9.11 AS Decimal(18, 2)), CAST(51.97 AS Decimal(18, 2)), 935)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (21, 15, CAST(86.33 AS Decimal(18, 2)), CAST(6570.77 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (21, 94, CAST(60.16 AS Decimal(18, 2)), CAST(30.32 AS Decimal(18, 2)), 626)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (21, 69, CAST(46.00 AS Decimal(18, 2)), CAST(1.98 AS Decimal(18, 2)), 884)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (22, 95, CAST(9.34 AS Decimal(18, 2)), CAST(26.81 AS Decimal(18, 2)), 115)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (22, 98, CAST(70.61 AS Decimal(18, 2)), CAST(1.03 AS Decimal(18, 2)), 400)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (22, 62, CAST(28.91 AS Decimal(18, 2)), CAST(96640.96 AS Decimal(18, 2)), 453)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (22, 61, CAST(3.79 AS Decimal(18, 2)), CAST(485.55 AS Decimal(18, 2)), 505)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (22, 46, CAST(6.98 AS Decimal(18, 2)), CAST(88278.03 AS Decimal(18, 2)), 829)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (23, 15, CAST(65.64 AS Decimal(18, 2)), CAST(65.10 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (23, 90, CAST(5.41 AS Decimal(18, 2)), CAST(3.24 AS Decimal(18, 2)), 174)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (23, 45, CAST(2.43 AS Decimal(18, 2)), CAST(9720.23 AS Decimal(18, 2)), 345)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (23, 62, CAST(79.45 AS Decimal(18, 2)), CAST(5985.44 AS Decimal(18, 2)), 506)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (23, 8, CAST(7.21 AS Decimal(18, 2)), CAST(79.25 AS Decimal(18, 2)), 778)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (24, 90, CAST(8.22 AS Decimal(18, 2)), CAST(29069.93 AS Decimal(18, 2)), 175)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (24, 57, CAST(63.52 AS Decimal(18, 2)), CAST(2812.15 AS Decimal(18, 2)), 235)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 16, CAST(85.07 AS Decimal(18, 2)), CAST(2052.79 AS Decimal(18, 2)), 5)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 25, CAST(2.91 AS Decimal(18, 2)), CAST(0.32 AS Decimal(18, 2)), 59)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 95, CAST(4.72 AS Decimal(18, 2)), CAST(85511.38 AS Decimal(18, 2)), 116)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 1, CAST(9.85 AS Decimal(18, 2)), CAST(4.05 AS Decimal(18, 2)), 291)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 98, CAST(6.06 AS Decimal(18, 2)), CAST(4.65 AS Decimal(18, 2)), 401)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 57, CAST(91.08 AS Decimal(18, 2)), CAST(512.10 AS Decimal(18, 2)), 574)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (26, 1, CAST(20.13 AS Decimal(18, 2)), CAST(2144.05 AS Decimal(18, 2)), 730)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (27, 23, CAST(5.46 AS Decimal(18, 2)), CAST(7.55 AS Decimal(18, 2)), 677)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (27, 46, CAST(9.35 AS Decimal(18, 2)), CAST(56.65 AS Decimal(18, 2)), 830)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (27, 12, CAST(67.57 AS Decimal(18, 2)), CAST(5579.63 AS Decimal(18, 2)), 936)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (28, 94, CAST(8.70 AS Decimal(18, 2)), CAST(345.54 AS Decimal(18, 2)), 627)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (29, 95, CAST(1.96 AS Decimal(18, 2)), CAST(85775.33 AS Decimal(18, 2)), 176)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (29, 45, CAST(69.91 AS Decimal(18, 2)), CAST(2.02 AS Decimal(18, 2)), 346)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (29, 62, CAST(5.05 AS Decimal(18, 2)), CAST(32.76 AS Decimal(18, 2)), 507)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (29, 1, CAST(3.89 AS Decimal(18, 2)), CAST(2700.47 AS Decimal(18, 2)), 731)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (29, 66, CAST(39.27 AS Decimal(18, 2)), CAST(502.04 AS Decimal(18, 2)), 985)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (30, 76, CAST(2.41 AS Decimal(18, 2)), CAST(24.21 AS Decimal(18, 2)), 885)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (31, 49, CAST(70.72 AS Decimal(18, 2)), CAST(61.84 AS Decimal(18, 2)), 347)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (31, 68, CAST(46.24 AS Decimal(18, 2)), CAST(8761.25 AS Decimal(18, 2)), 454)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (31, 12, CAST(88.14 AS Decimal(18, 2)), CAST(17227.40 AS Decimal(18, 2)), 779)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (32, 100, CAST(8.45 AS Decimal(18, 2)), CAST(192.52 AS Decimal(18, 2)), 117)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (32, 75, CAST(25.17 AS Decimal(18, 2)), CAST(8.49 AS Decimal(18, 2)), 455)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (32, 67, CAST(6.45 AS Decimal(18, 2)), CAST(68.66 AS Decimal(18, 2)), 508)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (32, 12, CAST(7.67 AS Decimal(18, 2)), CAST(3382.27 AS Decimal(18, 2)), 937)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (33, 3, CAST(70.97 AS Decimal(18, 2)), CAST(6263.88 AS Decimal(18, 2)), 402)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (34, 62, CAST(8.39 AS Decimal(18, 2)), CAST(52.65 AS Decimal(18, 2)), 236)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (34, 49, CAST(85.11 AS Decimal(18, 2)), CAST(36.21 AS Decimal(18, 2)), 348)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (34, 7, CAST(8.52 AS Decimal(18, 2)), CAST(8749.12 AS Decimal(18, 2)), 732)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (35, 16, CAST(37.51 AS Decimal(18, 2)), CAST(65544.83 AS Decimal(18, 2)), 6)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (35, 31, CAST(6.44 AS Decimal(18, 2)), CAST(857.09 AS Decimal(18, 2)), 60)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (35, 6, CAST(20.67 AS Decimal(18, 2)), CAST(587.87 AS Decimal(18, 2)), 292)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (36, 2, CAST(13.75 AS Decimal(18, 2)), CAST(8857.75 AS Decimal(18, 2)), 118)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (36, 57, CAST(6.12 AS Decimal(18, 2)), CAST(136.90 AS Decimal(18, 2)), 575)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (36, 12, CAST(1.39 AS Decimal(18, 2)), CAST(573.02 AS Decimal(18, 2)), 938)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 95, CAST(3.24 AS Decimal(18, 2)), CAST(5108.75 AS Decimal(18, 2)), 177)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 10, CAST(1.09 AS Decimal(18, 2)), CAST(8118.46 AS Decimal(18, 2)), 293)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 3, CAST(32.43 AS Decimal(18, 2)), CAST(415.54 AS Decimal(18, 2)), 403)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 25, CAST(25.71 AS Decimal(18, 2)), CAST(18561.60 AS Decimal(18, 2)), 678)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 51, CAST(18.19 AS Decimal(18, 2)), CAST(125.39 AS Decimal(18, 2)), 831)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (37, 66, CAST(88.40 AS Decimal(18, 2)), CAST(776.13 AS Decimal(18, 2)), 986)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (38, 65, CAST(4.42 AS Decimal(18, 2)), CAST(476.72 AS Decimal(18, 2)), 237)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (38, 54, CAST(85.95 AS Decimal(18, 2)), CAST(1861.96 AS Decimal(18, 2)), 349)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (38, 2, CAST(25.99 AS Decimal(18, 2)), CAST(5.91 AS Decimal(18, 2)), 628)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (38, 7, CAST(8.23 AS Decimal(18, 2)), CAST(63.43 AS Decimal(18, 2)), 733)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (39, 81, CAST(27.45 AS Decimal(18, 2)), CAST(76.26 AS Decimal(18, 2)), 886)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (40, 16, CAST(9.32 AS Decimal(18, 2)), CAST(5.73 AS Decimal(18, 2)), 7)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (40, 2, CAST(19.04 AS Decimal(18, 2)), CAST(38729.77 AS Decimal(18, 2)), 119)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (40, 18, CAST(29.72 AS Decimal(18, 2)), CAST(9071.58 AS Decimal(18, 2)), 780)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (41, 67, CAST(8.78 AS Decimal(18, 2)), CAST(36877.27 AS Decimal(18, 2)), 509)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (41, 69, CAST(4.10 AS Decimal(18, 2)), CAST(81633.53 AS Decimal(18, 2)), 987)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (42, 95, CAST(1.51 AS Decimal(18, 2)), CAST(3770.75 AS Decimal(18, 2)), 178)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (42, 75, CAST(9.80 AS Decimal(18, 2)), CAST(98.57 AS Decimal(18, 2)), 456)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (43, 66, CAST(4.31 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), 238)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (43, 7, CAST(85.80 AS Decimal(18, 2)), CAST(37.05 AS Decimal(18, 2)), 734)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (43, 14, CAST(1.28 AS Decimal(18, 2)), CAST(1946.27 AS Decimal(18, 2)), 939)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (44, 5, CAST(1.70 AS Decimal(18, 2)), CAST(259.95 AS Decimal(18, 2)), 179)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (45, 31, CAST(1.97 AS Decimal(18, 2)), CAST(42009.08 AS Decimal(18, 2)), 61)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (45, 10, CAST(5.47 AS Decimal(18, 2)), CAST(18.05 AS Decimal(18, 2)), 120)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 39, CAST(71.58 AS Decimal(18, 2)), CAST(4.90 AS Decimal(18, 2)), 62)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 54, CAST(16.35 AS Decimal(18, 2)), CAST(65052.30 AS Decimal(18, 2)), 350)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 83, CAST(32.60 AS Decimal(18, 2)), CAST(7.16 AS Decimal(18, 2)), 457)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 75, CAST(6.50 AS Decimal(18, 2)), CAST(240.75 AS Decimal(18, 2)), 510)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 61, CAST(13.43 AS Decimal(18, 2)), CAST(7.41 AS Decimal(18, 2)), 576)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 2, CAST(59.64 AS Decimal(18, 2)), CAST(0.74 AS Decimal(18, 2)), 629)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (46, 81, CAST(4.94 AS Decimal(18, 2)), CAST(49.74 AS Decimal(18, 2)), 887)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (47, 10, CAST(9.70 AS Decimal(18, 2)), CAST(867.25 AS Decimal(18, 2)), 294)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (47, 12, CAST(5.70 AS Decimal(18, 2)), CAST(6695.34 AS Decimal(18, 2)), 404)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (47, 80, CAST(56.44 AS Decimal(18, 2)), CAST(9510.46 AS Decimal(18, 2)), 511)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (47, 34, CAST(33.18 AS Decimal(18, 2)), CAST(3.35 AS Decimal(18, 2)), 679)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (47, 51, CAST(3.31 AS Decimal(18, 2)), CAST(895.56 AS Decimal(18, 2)), 832)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (48, 39, CAST(45.55 AS Decimal(18, 2)), CAST(12064.06 AS Decimal(18, 2)), 63)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (48, 19, CAST(3.77 AS Decimal(18, 2)), CAST(962.47 AS Decimal(18, 2)), 781)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (48, 55, CAST(25.81 AS Decimal(18, 2)), CAST(4477.28 AS Decimal(18, 2)), 833)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (49, 21, CAST(6.66 AS Decimal(18, 2)), CAST(493.39 AS Decimal(18, 2)), 8)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (49, 83, CAST(9.87 AS Decimal(18, 2)), CAST(89.49 AS Decimal(18, 2)), 458)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (49, 19, CAST(6.07 AS Decimal(18, 2)), CAST(477.07 AS Decimal(18, 2)), 782)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (49, 14, CAST(49.91 AS Decimal(18, 2)), CAST(42702.32 AS Decimal(18, 2)), 940)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 10, CAST(87.10 AS Decimal(18, 2)), CAST(5310.59 AS Decimal(18, 2)), 121)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 66, CAST(16.57 AS Decimal(18, 2)), CAST(5.98 AS Decimal(18, 2)), 239)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 56, CAST(3.71 AS Decimal(18, 2)), CAST(6172.02 AS Decimal(18, 2)), 351)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 18, CAST(3.54 AS Decimal(18, 2)), CAST(6.60 AS Decimal(18, 2)), 405)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 80, CAST(98.01 AS Decimal(18, 2)), CAST(20.23 AS Decimal(18, 2)), 512)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 61, CAST(64.44 AS Decimal(18, 2)), CAST(987.41 AS Decimal(18, 2)), 577)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 35, CAST(52.75 AS Decimal(18, 2)), CAST(81.71 AS Decimal(18, 2)), 680)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (50, 69, CAST(8.10 AS Decimal(18, 2)), CAST(79758.35 AS Decimal(18, 2)), 988)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (51, 55, CAST(9.30 AS Decimal(18, 2)), CAST(7.17 AS Decimal(18, 2)), 834)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 15, CAST(25.18 AS Decimal(18, 2)), CAST(7534.23 AS Decimal(18, 2)), 180)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 19, CAST(6.17 AS Decimal(18, 2)), CAST(655.50 AS Decimal(18, 2)), 295)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 56, CAST(55.87 AS Decimal(18, 2)), CAST(41.85 AS Decimal(18, 2)), 352)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 35, CAST(48.63 AS Decimal(18, 2)), CAST(274.57 AS Decimal(18, 2)), 681)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 59, CAST(9.84 AS Decimal(18, 2)), CAST(3687.39 AS Decimal(18, 2)), 835)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (52, 82, CAST(31.72 AS Decimal(18, 2)), CAST(1469.67 AS Decimal(18, 2)), 888)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (53, 21, CAST(4.68 AS Decimal(18, 2)), CAST(19470.50 AS Decimal(18, 2)), 9)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (53, 19, CAST(36.64 AS Decimal(18, 2)), CAST(2661.95 AS Decimal(18, 2)), 296)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (53, 10, CAST(8.35 AS Decimal(18, 2)), CAST(1297.65 AS Decimal(18, 2)), 735)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (54, 18, CAST(9.31 AS Decimal(18, 2)), CAST(2.69 AS Decimal(18, 2)), 122)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (54, 35, CAST(72.97 AS Decimal(18, 2)), CAST(17.52 AS Decimal(18, 2)), 682)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (55, 23, CAST(6.81 AS Decimal(18, 2)), CAST(14606.94 AS Decimal(18, 2)), 406)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (56, 25, CAST(51.15 AS Decimal(18, 2)), CAST(784.67 AS Decimal(18, 2)), 10)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (56, 60, CAST(6.80 AS Decimal(18, 2)), CAST(9784.85 AS Decimal(18, 2)), 353)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (56, 87, CAST(6.51 AS Decimal(18, 2)), CAST(7.33 AS Decimal(18, 2)), 513)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (56, 12, CAST(84.72 AS Decimal(18, 2)), CAST(256.00 AS Decimal(18, 2)), 630)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 39, CAST(15.62 AS Decimal(18, 2)), CAST(1023.78 AS Decimal(18, 2)), 64)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 60, CAST(3.68 AS Decimal(18, 2)), CAST(18128.83 AS Decimal(18, 2)), 354)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 12, CAST(92.11 AS Decimal(18, 2)), CAST(822.16 AS Decimal(18, 2)), 631)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 42, CAST(5.98 AS Decimal(18, 2)), CAST(0.63 AS Decimal(18, 2)), 683)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 10, CAST(84.71 AS Decimal(18, 2)), CAST(23.41 AS Decimal(18, 2)), 736)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (57, 20, CAST(2.28 AS Decimal(18, 2)), CAST(6973.43 AS Decimal(18, 2)), 783)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (58, 26, CAST(36.73 AS Decimal(18, 2)), CAST(131.45 AS Decimal(18, 2)), 297)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (58, 85, CAST(47.46 AS Decimal(18, 2)), CAST(572.14 AS Decimal(18, 2)), 459)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (58, 69, CAST(98.19 AS Decimal(18, 2)), CAST(6.11 AS Decimal(18, 2)), 578)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (58, 22, CAST(2.00 AS Decimal(18, 2)), CAST(477.20 AS Decimal(18, 2)), 941)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (58, 76, CAST(9.79 AS Decimal(18, 2)), CAST(99.90 AS Decimal(18, 2)), 989)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (59, 25, CAST(1.17 AS Decimal(18, 2)), CAST(667.08 AS Decimal(18, 2)), 123)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (59, 35, CAST(81.23 AS Decimal(18, 2)), CAST(3.68 AS Decimal(18, 2)), 298)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (59, 66, CAST(37.48 AS Decimal(18, 2)), CAST(1.46 AS Decimal(18, 2)), 355)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (59, 42, CAST(81.69 AS Decimal(18, 2)), CAST(11.34 AS Decimal(18, 2)), 684)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (59, 59, CAST(46.83 AS Decimal(18, 2)), CAST(456.69 AS Decimal(18, 2)), 836)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (60, 25, CAST(27.88 AS Decimal(18, 2)), CAST(826.96 AS Decimal(18, 2)), 124)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (60, 15, CAST(38.86 AS Decimal(18, 2)), CAST(5.84 AS Decimal(18, 2)), 181)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (60, 72, CAST(20.65 AS Decimal(18, 2)), CAST(38.54 AS Decimal(18, 2)), 240)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (60, 19, CAST(55.70 AS Decimal(18, 2)), CAST(56.51 AS Decimal(18, 2)), 632)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (60, 82, CAST(92.19 AS Decimal(18, 2)), CAST(263.57 AS Decimal(18, 2)), 889)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (61, 45, CAST(43.24 AS Decimal(18, 2)), CAST(98.80 AS Decimal(18, 2)), 65)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (61, 79, CAST(4.99 AS Decimal(18, 2)), CAST(76.24 AS Decimal(18, 2)), 241)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (63, 25, CAST(28.32 AS Decimal(18, 2)), CAST(60.52 AS Decimal(18, 2)), 11)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (63, 21, CAST(1.68 AS Decimal(18, 2)), CAST(9853.96 AS Decimal(18, 2)), 182)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (63, 79, CAST(1.67 AS Decimal(18, 2)), CAST(4.13 AS Decimal(18, 2)), 242)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (63, 29, CAST(63.57 AS Decimal(18, 2)), CAST(905.87 AS Decimal(18, 2)), 407)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (63, 85, CAST(63.75 AS Decimal(18, 2)), CAST(586.74 AS Decimal(18, 2)), 460)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (64, 72, CAST(8.04 AS Decimal(18, 2)), CAST(12.34 AS Decimal(18, 2)), 356)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (64, 69, CAST(99.37 AS Decimal(18, 2)), CAST(5.35 AS Decimal(18, 2)), 579)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (65, 34, CAST(40.72 AS Decimal(18, 2)), CAST(44.50 AS Decimal(18, 2)), 125)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (65, 87, CAST(7.01 AS Decimal(18, 2)), CAST(8.31 AS Decimal(18, 2)), 514)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (65, 82, CAST(50.52 AS Decimal(18, 2)), CAST(8139.35 AS Decimal(18, 2)), 890)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (65, 81, CAST(7.91 AS Decimal(18, 2)), CAST(93.12 AS Decimal(18, 2)), 990)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (66, 25, CAST(90.41 AS Decimal(18, 2)), CAST(59795.80 AS Decimal(18, 2)), 12)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (66, 87, CAST(20.93 AS Decimal(18, 2)), CAST(2555.41 AS Decimal(18, 2)), 515)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (66, 19, CAST(2.83 AS Decimal(18, 2)), CAST(701.43 AS Decimal(18, 2)), 737)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (67, 21, CAST(35.45 AS Decimal(18, 2)), CAST(922.59 AS Decimal(18, 2)), 183)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (67, 51, CAST(97.58 AS Decimal(18, 2)), CAST(98.78 AS Decimal(18, 2)), 685)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (67, 22, CAST(28.63 AS Decimal(18, 2)), CAST(52094.18 AS Decimal(18, 2)), 784)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (68, 79, CAST(85.41 AS Decimal(18, 2)), CAST(1.98 AS Decimal(18, 2)), 243)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (68, 59, CAST(96.42 AS Decimal(18, 2)), CAST(488.33 AS Decimal(18, 2)), 837)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (68, 32, CAST(1.52 AS Decimal(18, 2)), CAST(8.54 AS Decimal(18, 2)), 942)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (69, 45, CAST(7.15 AS Decimal(18, 2)), CAST(7.86 AS Decimal(18, 2)), 66)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (69, 35, CAST(89.42 AS Decimal(18, 2)), CAST(1838.46 AS Decimal(18, 2)), 299)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (69, 89, CAST(53.00 AS Decimal(18, 2)), CAST(275.21 AS Decimal(18, 2)), 516)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (69, 19, CAST(59.17 AS Decimal(18, 2)), CAST(2589.59 AS Decimal(18, 2)), 633)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (70, 33, CAST(92.69 AS Decimal(18, 2)), CAST(5.18 AS Decimal(18, 2)), 13)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (70, 21, CAST(33.50 AS Decimal(18, 2)), CAST(201.31 AS Decimal(18, 2)), 184)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (70, 72, CAST(2.24 AS Decimal(18, 2)), CAST(673.47 AS Decimal(18, 2)), 357)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (70, 82, CAST(13.47 AS Decimal(18, 2)), CAST(7681.19 AS Decimal(18, 2)), 991)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (71, 89, CAST(68.82 AS Decimal(18, 2)), CAST(77184.41 AS Decimal(18, 2)), 891)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (72, 34, CAST(3.49 AS Decimal(18, 2)), CAST(3309.63 AS Decimal(18, 2)), 126)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (72, 29, CAST(69.03 AS Decimal(18, 2)), CAST(521.38 AS Decimal(18, 2)), 408)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (72, 89, CAST(26.35 AS Decimal(18, 2)), CAST(31111.37 AS Decimal(18, 2)), 461)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (72, 95, CAST(8.41 AS Decimal(18, 2)), CAST(86.63 AS Decimal(18, 2)), 892)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (72, 32, CAST(4.15 AS Decimal(18, 2)), CAST(68709.31 AS Decimal(18, 2)), 943)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (73, 36, CAST(8.41 AS Decimal(18, 2)), CAST(4.67 AS Decimal(18, 2)), 14)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (73, 81, CAST(12.14 AS Decimal(18, 2)), CAST(11.83 AS Decimal(18, 2)), 244)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (73, 19, CAST(82.87 AS Decimal(18, 2)), CAST(61.76 AS Decimal(18, 2)), 738)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (74, 36, CAST(4.87 AS Decimal(18, 2)), CAST(40.49 AS Decimal(18, 2)), 15)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (74, 69, CAST(9.11 AS Decimal(18, 2)), CAST(5868.57 AS Decimal(18, 2)), 580)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (74, 55, CAST(20.12 AS Decimal(18, 2)), CAST(4.34 AS Decimal(18, 2)), 686)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (75, 45, CAST(8.53 AS Decimal(18, 2)), CAST(31.79 AS Decimal(18, 2)), 67)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (75, 22, CAST(19.40 AS Decimal(18, 2)), CAST(2.07 AS Decimal(18, 2)), 785)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (76, 66, CAST(6.22 AS Decimal(18, 2)), CAST(96.01 AS Decimal(18, 2)), 838)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (76, 40, CAST(32.56 AS Decimal(18, 2)), CAST(9196.30 AS Decimal(18, 2)), 944)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (77, 29, CAST(7.50 AS Decimal(18, 2)), CAST(536.24 AS Decimal(18, 2)), 409)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (77, 66, CAST(69.43 AS Decimal(18, 2)), CAST(262.99 AS Decimal(18, 2)), 839)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (77, 99, CAST(2.20 AS Decimal(18, 2)), CAST(436.65 AS Decimal(18, 2)), 893)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (78, 35, CAST(31.31 AS Decimal(18, 2)), CAST(8.56 AS Decimal(18, 2)), 300)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (78, 33, CAST(1.95 AS Decimal(18, 2)), CAST(68.49 AS Decimal(18, 2)), 410)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (78, 92, CAST(9.40 AS Decimal(18, 2)), CAST(7227.97 AS Decimal(18, 2)), 462)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (78, 91, CAST(12.47 AS Decimal(18, 2)), CAST(6317.03 AS Decimal(18, 2)), 517)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (78, 91, CAST(6.35 AS Decimal(18, 2)), CAST(8992.76 AS Decimal(18, 2)), 992)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (79, 76, CAST(7.90 AS Decimal(18, 2)), CAST(428.08 AS Decimal(18, 2)), 581)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (79, 19, CAST(52.77 AS Decimal(18, 2)), CAST(45.09 AS Decimal(18, 2)), 634)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (79, 55, CAST(44.19 AS Decimal(18, 2)), CAST(82162.08 AS Decimal(18, 2)), 687)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (80, 26, CAST(7.83 AS Decimal(18, 2)), CAST(6.64 AS Decimal(18, 2)), 185)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (80, 81, CAST(5.34 AS Decimal(18, 2)), CAST(1.56 AS Decimal(18, 2)), 245)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (80, 78, CAST(7.82 AS Decimal(18, 2)), CAST(6.26 AS Decimal(18, 2)), 358)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (80, 33, CAST(3.02 AS Decimal(18, 2)), CAST(67594.14 AS Decimal(18, 2)), 411)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (80, 100, CAST(81.16 AS Decimal(18, 2)), CAST(5.86 AS Decimal(18, 2)), 518)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (81, 48, CAST(15.06 AS Decimal(18, 2)), CAST(6701.51 AS Decimal(18, 2)), 68)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (81, 34, CAST(81.71 AS Decimal(18, 2)), CAST(10882.68 AS Decimal(18, 2)), 127)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (81, 100, CAST(9.57 AS Decimal(18, 2)), CAST(150.83 AS Decimal(18, 2)), 519)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (82, 21, CAST(52.94 AS Decimal(18, 2)), CAST(2.78 AS Decimal(18, 2)), 739)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (83, 26, CAST(7.03 AS Decimal(18, 2)), CAST(6.75 AS Decimal(18, 2)), 186)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (83, 23, CAST(43.65 AS Decimal(18, 2)), CAST(12415.34 AS Decimal(18, 2)), 786)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (83, 72, CAST(19.05 AS Decimal(18, 2)), CAST(96.59 AS Decimal(18, 2)), 840)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (84, 37, CAST(7.76 AS Decimal(18, 2)), CAST(69.96 AS Decimal(18, 2)), 16)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (84, 65, CAST(3.25 AS Decimal(18, 2)), CAST(6.46 AS Decimal(18, 2)), 688)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (85, 40, CAST(87.57 AS Decimal(18, 2)), CAST(8519.90 AS Decimal(18, 2)), 128)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (85, 33, CAST(56.05 AS Decimal(18, 2)), CAST(32210.50 AS Decimal(18, 2)), 187)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (85, 35, CAST(6.26 AS Decimal(18, 2)), CAST(84011.97 AS Decimal(18, 2)), 412)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (85, 73, CAST(3.44 AS Decimal(18, 2)), CAST(602.45 AS Decimal(18, 2)), 841)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (85, 1, CAST(3.10 AS Decimal(18, 2)), CAST(75768.90 AS Decimal(18, 2)), 993)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (86, 48, CAST(24.43 AS Decimal(18, 2)), CAST(35647.47 AS Decimal(18, 2)), 69)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (86, 36, CAST(38.96 AS Decimal(18, 2)), CAST(8681.89 AS Decimal(18, 2)), 301)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (86, 25, CAST(34.88 AS Decimal(18, 2)), CAST(885.22 AS Decimal(18, 2)), 635)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (86, 48, CAST(9.07 AS Decimal(18, 2)), CAST(516.96 AS Decimal(18, 2)), 945)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (87, 48, CAST(8.09 AS Decimal(18, 2)), CAST(179.89 AS Decimal(18, 2)), 70)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (87, 73, CAST(4.82 AS Decimal(18, 2)), CAST(24.45 AS Decimal(18, 2)), 842)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (87, 99, CAST(84.92 AS Decimal(18, 2)), CAST(5353.06 AS Decimal(18, 2)), 894)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (88, 81, CAST(1.15 AS Decimal(18, 2)), CAST(3.92 AS Decimal(18, 2)), 246)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (88, 92, CAST(9.74 AS Decimal(18, 2)), CAST(9914.83 AS Decimal(18, 2)), 463)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (88, 81, CAST(70.42 AS Decimal(18, 2)), CAST(96.08 AS Decimal(18, 2)), 582)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (89, 91, CAST(25.84 AS Decimal(18, 2)), CAST(423.18 AS Decimal(18, 2)), 247)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (89, 4, CAST(70.78 AS Decimal(18, 2)), CAST(0.54 AS Decimal(18, 2)), 520)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (89, 4, CAST(7.81 AS Decimal(18, 2)), CAST(4741.08 AS Decimal(18, 2)), 895)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 43, CAST(4.36 AS Decimal(18, 2)), CAST(83.09 AS Decimal(18, 2)), 17)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 49, CAST(15.29 AS Decimal(18, 2)), CAST(88.40 AS Decimal(18, 2)), 129)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 78, CAST(8.35 AS Decimal(18, 2)), CAST(18167.80 AS Decimal(18, 2)), 359)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 90, CAST(7.88 AS Decimal(18, 2)), CAST(63.02 AS Decimal(18, 2)), 583)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 30, CAST(4.87 AS Decimal(18, 2)), CAST(4.94 AS Decimal(18, 2)), 636)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (90, 23, CAST(3.11 AS Decimal(18, 2)), CAST(606.14 AS Decimal(18, 2)), 787)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (91, 49, CAST(59.85 AS Decimal(18, 2)), CAST(3.44 AS Decimal(18, 2)), 130)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (91, 33, CAST(2.54 AS Decimal(18, 2)), CAST(798.66 AS Decimal(18, 2)), 188)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (91, 98, CAST(2.87 AS Decimal(18, 2)), CAST(30.46 AS Decimal(18, 2)), 248)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (91, 4, CAST(9.20 AS Decimal(18, 2)), CAST(31.04 AS Decimal(18, 2)), 521)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (92, 35, CAST(67.97 AS Decimal(18, 2)), CAST(56.32 AS Decimal(18, 2)), 413)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (92, 21, CAST(5.22 AS Decimal(18, 2)), CAST(73402.52 AS Decimal(18, 2)), 740)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (93, 53, CAST(7.33 AS Decimal(18, 2)), CAST(91381.13 AS Decimal(18, 2)), 71)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (93, 38, CAST(17.22 AS Decimal(18, 2)), CAST(6.51 AS Decimal(18, 2)), 414)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (93, 23, CAST(2.21 AS Decimal(18, 2)), CAST(96.15 AS Decimal(18, 2)), 788)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (94, 48, CAST(68.48 AS Decimal(18, 2)), CAST(2.79 AS Decimal(18, 2)), 18)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (94, 90, CAST(3.10 AS Decimal(18, 2)), CAST(55191.79 AS Decimal(18, 2)), 584)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (94, 71, CAST(4.37 AS Decimal(18, 2)), CAST(687.07 AS Decimal(18, 2)), 689)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (94, 56, CAST(15.44 AS Decimal(18, 2)), CAST(350.89 AS Decimal(18, 2)), 946)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (95, 84, CAST(4.69 AS Decimal(18, 2)), CAST(297.87 AS Decimal(18, 2)), 360)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (95, 30, CAST(81.46 AS Decimal(18, 2)), CAST(91.68 AS Decimal(18, 2)), 637)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (95, 71, CAST(3.94 AS Decimal(18, 2)), CAST(73638.62 AS Decimal(18, 2)), 690)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (95, 1, CAST(88.73 AS Decimal(18, 2)), CAST(6.22 AS Decimal(18, 2)), 994)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (96, 48, CAST(87.69 AS Decimal(18, 2)), CAST(98898.96 AS Decimal(18, 2)), 19)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (96, 36, CAST(70.86 AS Decimal(18, 2)), CAST(37.15 AS Decimal(18, 2)), 302)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (96, 78, CAST(14.97 AS Decimal(18, 2)), CAST(84.81 AS Decimal(18, 2)), 843)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (97, 4, CAST(39.03 AS Decimal(18, 2)), CAST(45393.42 AS Decimal(18, 2)), 896)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (98, 92, CAST(4.01 AS Decimal(18, 2)), CAST(27.02 AS Decimal(18, 2)), 464)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (99, 30, CAST(3.92 AS Decimal(18, 2)), CAST(5.79 AS Decimal(18, 2)), 638)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (100, 48, CAST(4.90 AS Decimal(18, 2)), CAST(2376.40 AS Decimal(18, 2)), 20)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (100, 49, CAST(1.56 AS Decimal(18, 2)), CAST(1816.83 AS Decimal(18, 2)), 131)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (100, 86, CAST(8.50 AS Decimal(18, 2)), CAST(10.85 AS Decimal(18, 2)), 361)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (100, 11, CAST(76.04 AS Decimal(18, 2)), CAST(98.44 AS Decimal(18, 2)), 522)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 33, CAST(50.56 AS Decimal(18, 2)), CAST(98749.25 AS Decimal(18, 2)), 189)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 98, CAST(2.35 AS Decimal(18, 2)), CAST(434.14 AS Decimal(18, 2)), 249)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 37, CAST(67.36 AS Decimal(18, 2)), CAST(5.65 AS Decimal(18, 2)), 303)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 38, CAST(20.29 AS Decimal(18, 2)), CAST(3.51 AS Decimal(18, 2)), 415)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 21, CAST(97.51 AS Decimal(18, 2)), CAST(812.61 AS Decimal(18, 2)), 741)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 28, CAST(2.89 AS Decimal(18, 2)), CAST(81.98 AS Decimal(18, 2)), 789)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 56, CAST(1.28 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 947)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (101, 11, CAST(3.47 AS Decimal(18, 2)), CAST(828.60 AS Decimal(18, 2)), 995)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 53, CAST(9.43 AS Decimal(18, 2)), CAST(59.27 AS Decimal(18, 2)), 72)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 52, CAST(1.06 AS Decimal(18, 2)), CAST(877.22 AS Decimal(18, 2)), 132)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 90, CAST(86.12 AS Decimal(18, 2)), CAST(5450.58 AS Decimal(18, 2)), 362)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 96, CAST(71.16 AS Decimal(18, 2)), CAST(7.69 AS Decimal(18, 2)), 465)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 33, CAST(4.03 AS Decimal(18, 2)), CAST(423.60 AS Decimal(18, 2)), 639)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (102, 72, CAST(59.01 AS Decimal(18, 2)), CAST(30.52 AS Decimal(18, 2)), 691)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (103, 90, CAST(39.15 AS Decimal(18, 2)), CAST(25.18 AS Decimal(18, 2)), 585)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (103, 12, CAST(8.16 AS Decimal(18, 2)), CAST(5.64 AS Decimal(18, 2)), 996)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (104, 4, CAST(9.26 AS Decimal(18, 2)), CAST(45.17 AS Decimal(18, 2)), 897)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (105, 52, CAST(4.78 AS Decimal(18, 2)), CAST(2751.93 AS Decimal(18, 2)), 133)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (105, 13, CAST(8.68 AS Decimal(18, 2)), CAST(8805.81 AS Decimal(18, 2)), 523)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (105, 78, CAST(4.28 AS Decimal(18, 2)), CAST(6.71 AS Decimal(18, 2)), 844)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (106, 82, CAST(8.75 AS Decimal(18, 2)), CAST(1798.25 AS Decimal(18, 2)), 692)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (106, 78, CAST(72.46 AS Decimal(18, 2)), CAST(80.23 AS Decimal(18, 2)), 845)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (106, 56, CAST(37.43 AS Decimal(18, 2)), CAST(32.31 AS Decimal(18, 2)), 948)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (107, 52, CAST(68.96 AS Decimal(18, 2)), CAST(8672.69 AS Decimal(18, 2)), 134)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (107, 37, CAST(9.31 AS Decimal(18, 2)), CAST(9749.43 AS Decimal(18, 2)), 304)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (107, 25, CAST(61.02 AS Decimal(18, 2)), CAST(728.78 AS Decimal(18, 2)), 742)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (107, 33, CAST(5.42 AS Decimal(18, 2)), CAST(0.71 AS Decimal(18, 2)), 790)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (107, 64, CAST(49.36 AS Decimal(18, 2)), CAST(48.99 AS Decimal(18, 2)), 949)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (108, 52, CAST(1.71 AS Decimal(18, 2)), CAST(177.68 AS Decimal(18, 2)), 21)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (108, 53, CAST(62.21 AS Decimal(18, 2)), CAST(2527.73 AS Decimal(18, 2)), 73)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (109, 4, CAST(59.75 AS Decimal(18, 2)), CAST(36712.71 AS Decimal(18, 2)), 250)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (109, 90, CAST(3.09 AS Decimal(18, 2)), CAST(999.85 AS Decimal(18, 2)), 363)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (109, 9, CAST(4.39 AS Decimal(18, 2)), CAST(144.68 AS Decimal(18, 2)), 898)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (109, 64, CAST(60.05 AS Decimal(18, 2)), CAST(899.61 AS Decimal(18, 2)), 950)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (110, 96, CAST(4.58 AS Decimal(18, 2)), CAST(771.17 AS Decimal(18, 2)), 466)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (110, 33, CAST(39.13 AS Decimal(18, 2)), CAST(377.58 AS Decimal(18, 2)), 640)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 42, CAST(2.19 AS Decimal(18, 2)), CAST(0.33 AS Decimal(18, 2)), 190)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 9, CAST(77.84 AS Decimal(18, 2)), CAST(572.93 AS Decimal(18, 2)), 251)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 41, CAST(37.79 AS Decimal(18, 2)), CAST(663.15 AS Decimal(18, 2)), 305)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 38, CAST(63.99 AS Decimal(18, 2)), CAST(13496.30 AS Decimal(18, 2)), 416)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 93, CAST(95.47 AS Decimal(18, 2)), CAST(13.12 AS Decimal(18, 2)), 586)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 37, CAST(2.44 AS Decimal(18, 2)), CAST(5952.22 AS Decimal(18, 2)), 791)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (111, 65, CAST(9.69 AS Decimal(18, 2)), CAST(34222.05 AS Decimal(18, 2)), 951)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (112, 88, CAST(3.64 AS Decimal(18, 2)), CAST(744.74 AS Decimal(18, 2)), 693)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (112, 21, CAST(8.59 AS Decimal(18, 2)), CAST(403.31 AS Decimal(18, 2)), 997)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (113, 9, CAST(8.49 AS Decimal(18, 2)), CAST(83466.88 AS Decimal(18, 2)), 899)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (114, 57, CAST(3.17 AS Decimal(18, 2)), CAST(29918.19 AS Decimal(18, 2)), 74)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (114, 41, CAST(80.41 AS Decimal(18, 2)), CAST(49402.29 AS Decimal(18, 2)), 306)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (114, 13, CAST(1.40 AS Decimal(18, 2)), CAST(414.88 AS Decimal(18, 2)), 524)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (115, 57, CAST(3.38 AS Decimal(18, 2)), CAST(8712.59 AS Decimal(18, 2)), 75)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (115, 42, CAST(84.88 AS Decimal(18, 2)), CAST(77.58 AS Decimal(18, 2)), 191)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (115, 98, CAST(3.95 AS Decimal(18, 2)), CAST(440.20 AS Decimal(18, 2)), 467)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (115, 21, CAST(91.77 AS Decimal(18, 2)), CAST(14.53 AS Decimal(18, 2)), 998)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 90, CAST(6.72 AS Decimal(18, 2)), CAST(62.02 AS Decimal(18, 2)), 364)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 93, CAST(4.34 AS Decimal(18, 2)), CAST(15746.03 AS Decimal(18, 2)), 587)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 36, CAST(4.91 AS Decimal(18, 2)), CAST(6.07 AS Decimal(18, 2)), 641)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 25, CAST(5.20 AS Decimal(18, 2)), CAST(2312.76 AS Decimal(18, 2)), 743)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 84, CAST(6.51 AS Decimal(18, 2)), CAST(6439.19 AS Decimal(18, 2)), 846)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 65, CAST(5.81 AS Decimal(18, 2)), CAST(1.51 AS Decimal(18, 2)), 952)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (116, 21, CAST(4.34 AS Decimal(18, 2)), CAST(99.69 AS Decimal(18, 2)), 999)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 53, CAST(6.92 AS Decimal(18, 2)), CAST(3.08 AS Decimal(18, 2)), 22)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 60, CAST(2.88 AS Decimal(18, 2)), CAST(71.45 AS Decimal(18, 2)), 135)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 9, CAST(3.89 AS Decimal(18, 2)), CAST(689.54 AS Decimal(18, 2)), 252)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 46, CAST(33.86 AS Decimal(18, 2)), CAST(57.73 AS Decimal(18, 2)), 307)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 98, CAST(24.59 AS Decimal(18, 2)), CAST(636.19 AS Decimal(18, 2)), 468)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 96, CAST(1.49 AS Decimal(18, 2)), CAST(895.28 AS Decimal(18, 2)), 588)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 91, CAST(5.48 AS Decimal(18, 2)), CAST(8.51 AS Decimal(18, 2)), 847)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (117, 9, CAST(83.06 AS Decimal(18, 2)), CAST(120.78 AS Decimal(18, 2)), 900)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (118, 96, CAST(8.12 AS Decimal(18, 2)), CAST(7659.62 AS Decimal(18, 2)), 589)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (118, 41, CAST(87.63 AS Decimal(18, 2)), CAST(1561.04 AS Decimal(18, 2)), 642)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (118, 14, CAST(4.29 AS Decimal(18, 2)), CAST(293.63 AS Decimal(18, 2)), 901)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (119, 46, CAST(4.47 AS Decimal(18, 2)), CAST(14.55 AS Decimal(18, 2)), 417)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (120, 97, CAST(4.54 AS Decimal(18, 2)), CAST(77344.14 AS Decimal(18, 2)), 590)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (120, 88, CAST(75.53 AS Decimal(18, 2)), CAST(261.62 AS Decimal(18, 2)), 694)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (121, 62, CAST(7.20 AS Decimal(18, 2)), CAST(2.46 AS Decimal(18, 2)), 76)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (121, 17, CAST(4.77 AS Decimal(18, 2)), CAST(5574.95 AS Decimal(18, 2)), 525)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (121, 28, CAST(89.70 AS Decimal(18, 2)), CAST(24989.14 AS Decimal(18, 2)), 744)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (121, 37, CAST(5.14 AS Decimal(18, 2)), CAST(6538.22 AS Decimal(18, 2)), 792)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (122, 46, CAST(7.40 AS Decimal(18, 2)), CAST(433.67 AS Decimal(18, 2)), 308)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (122, 97, CAST(21.63 AS Decimal(18, 2)), CAST(771.73 AS Decimal(18, 2)), 365)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (122, 91, CAST(17.14 AS Decimal(18, 2)), CAST(456.65 AS Decimal(18, 2)), 848)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (123, 53, CAST(34.92 AS Decimal(18, 2)), CAST(2572.98 AS Decimal(18, 2)), 23)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (123, 43, CAST(8.01 AS Decimal(18, 2)), CAST(14.74 AS Decimal(18, 2)), 192)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (123, 2, CAST(3.25 AS Decimal(18, 2)), CAST(61.39 AS Decimal(18, 2)), 469)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (124, 53, CAST(5.61 AS Decimal(18, 2)), CAST(2875.45 AS Decimal(18, 2)), 24)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (124, 70, CAST(9.51 AS Decimal(18, 2)), CAST(16567.36 AS Decimal(18, 2)), 136)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (124, 17, CAST(67.88 AS Decimal(18, 2)), CAST(64642.78 AS Decimal(18, 2)), 526)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (124, 44, CAST(6.36 AS Decimal(18, 2)), CAST(716.40 AS Decimal(18, 2)), 793)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (124, 91, CAST(40.82 AS Decimal(18, 2)), CAST(8.12 AS Decimal(18, 2)), 849)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (125, 15, CAST(78.24 AS Decimal(18, 2)), CAST(1.04 AS Decimal(18, 2)), 253)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (125, 14, CAST(4.86 AS Decimal(18, 2)), CAST(3.09 AS Decimal(18, 2)), 902)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (125, 65, CAST(89.53 AS Decimal(18, 2)), CAST(53549.99 AS Decimal(18, 2)), 953)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (125, 27, CAST(3.89 AS Decimal(18, 2)), CAST(31878.49 AS Decimal(18, 2)), 1000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (126, 97, CAST(36.68 AS Decimal(18, 2)), CAST(6417.62 AS Decimal(18, 2)), 366)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (126, 46, CAST(6.68 AS Decimal(18, 2)), CAST(2.57 AS Decimal(18, 2)), 418)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (126, 97, CAST(55.38 AS Decimal(18, 2)), CAST(905.27 AS Decimal(18, 2)), 695)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (127, 59, CAST(86.02 AS Decimal(18, 2)), CAST(3.65 AS Decimal(18, 2)), 25)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (127, 2, CAST(68.81 AS Decimal(18, 2)), CAST(7.14 AS Decimal(18, 2)), 470)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (127, 41, CAST(99.36 AS Decimal(18, 2)), CAST(9655.89 AS Decimal(18, 2)), 643)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (128, 80, CAST(8.45 AS Decimal(18, 2)), CAST(61.58 AS Decimal(18, 2)), 137)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (128, 17, CAST(12.01 AS Decimal(18, 2)), CAST(49993.02 AS Decimal(18, 2)), 527)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (128, 28, CAST(52.76 AS Decimal(18, 2)), CAST(46780.51 AS Decimal(18, 2)), 745)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (128, 44, CAST(89.13 AS Decimal(18, 2)), CAST(58.54 AS Decimal(18, 2)), 794)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (129, 62, CAST(1.37 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)), 77)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (129, 98, CAST(72.45 AS Decimal(18, 2)), CAST(44.55 AS Decimal(18, 2)), 850)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (130, 25, CAST(43.02 AS Decimal(18, 2)), CAST(909.73 AS Decimal(18, 2)), 254)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (130, 46, CAST(6.59 AS Decimal(18, 2)), CAST(6128.74 AS Decimal(18, 2)), 309)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (130, 97, CAST(61.59 AS Decimal(18, 2)), CAST(9.25 AS Decimal(18, 2)), 591)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (131, 43, CAST(74.00 AS Decimal(18, 2)), CAST(8175.18 AS Decimal(18, 2)), 193)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (131, 53, CAST(70.62 AS Decimal(18, 2)), CAST(440.70 AS Decimal(18, 2)), 310)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (132, 25, CAST(80.70 AS Decimal(18, 2)), CAST(2218.16 AS Decimal(18, 2)), 255)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (132, 56, CAST(96.29 AS Decimal(18, 2)), CAST(9485.67 AS Decimal(18, 2)), 311)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (132, 97, CAST(28.67 AS Decimal(18, 2)), CAST(88241.52 AS Decimal(18, 2)), 592)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (133, 97, CAST(1.21 AS Decimal(18, 2)), CAST(2493.61 AS Decimal(18, 2)), 367)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (133, 18, CAST(24.27 AS Decimal(18, 2)), CAST(86.02 AS Decimal(18, 2)), 528)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (133, 98, CAST(74.71 AS Decimal(18, 2)), CAST(242.12 AS Decimal(18, 2)), 851)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 62, CAST(85.90 AS Decimal(18, 2)), CAST(2421.63 AS Decimal(18, 2)), 26)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 56, CAST(2.54 AS Decimal(18, 2)), CAST(5.35 AS Decimal(18, 2)), 312)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 56, CAST(6.02 AS Decimal(18, 2)), CAST(401.16 AS Decimal(18, 2)), 419)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 2, CAST(34.54 AS Decimal(18, 2)), CAST(9869.71 AS Decimal(18, 2)), 471)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 98, CAST(8.43 AS Decimal(18, 2)), CAST(659.72 AS Decimal(18, 2)), 593)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (134, 7, CAST(11.68 AS Decimal(18, 2)), CAST(46.30 AS Decimal(18, 2)), 696)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (135, 80, CAST(8.81 AS Decimal(18, 2)), CAST(476.26 AS Decimal(18, 2)), 138)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (135, 18, CAST(13.48 AS Decimal(18, 2)), CAST(676.31 AS Decimal(18, 2)), 529)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (135, 10, CAST(88.11 AS Decimal(18, 2)), CAST(52374.64 AS Decimal(18, 2)), 697)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (135, 14, CAST(12.41 AS Decimal(18, 2)), CAST(6207.70 AS Decimal(18, 2)), 903)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (135, 73, CAST(1.08 AS Decimal(18, 2)), CAST(6.17 AS Decimal(18, 2)), 954)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (136, 48, CAST(98.46 AS Decimal(18, 2)), CAST(94369.46 AS Decimal(18, 2)), 644)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (136, 34, CAST(8.09 AS Decimal(18, 2)), CAST(92.78 AS Decimal(18, 2)), 746)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (137, 62, CAST(8.47 AS Decimal(18, 2)), CAST(791.33 AS Decimal(18, 2)), 27)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (137, 63, CAST(18.86 AS Decimal(18, 2)), CAST(9484.85 AS Decimal(18, 2)), 78)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (137, 53, CAST(4.08 AS Decimal(18, 2)), CAST(25.78 AS Decimal(18, 2)), 795)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (137, 4, CAST(54.47 AS Decimal(18, 2)), CAST(8007.74 AS Decimal(18, 2)), 852)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (137, 73, CAST(70.42 AS Decimal(18, 2)), CAST(76133.39 AS Decimal(18, 2)), 955)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (138, 34, CAST(4.85 AS Decimal(18, 2)), CAST(7067.55 AS Decimal(18, 2)), 256)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (138, 11, CAST(5.09 AS Decimal(18, 2)), CAST(50.61 AS Decimal(18, 2)), 472)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (139, 23, CAST(84.11 AS Decimal(18, 2)), CAST(1874.17 AS Decimal(18, 2)), 904)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (140, 46, CAST(98.69 AS Decimal(18, 2)), CAST(70.33 AS Decimal(18, 2)), 194)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (140, 7, CAST(24.13 AS Decimal(18, 2)), CAST(575.40 AS Decimal(18, 2)), 368)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (140, 34, CAST(13.64 AS Decimal(18, 2)), CAST(46880.26 AS Decimal(18, 2)), 747)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (140, 4, CAST(6.53 AS Decimal(18, 2)), CAST(354.70 AS Decimal(18, 2)), 853)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 84, CAST(18.06 AS Decimal(18, 2)), CAST(14.58 AS Decimal(18, 2)), 139)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 56, CAST(8.98 AS Decimal(18, 2)), CAST(7.18 AS Decimal(18, 2)), 195)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 64, CAST(2.34 AS Decimal(18, 2)), CAST(314.05 AS Decimal(18, 2)), 420)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 11, CAST(59.26 AS Decimal(18, 2)), CAST(2088.73 AS Decimal(18, 2)), 473)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 26, CAST(9.30 AS Decimal(18, 2)), CAST(597.97 AS Decimal(18, 2)), 530)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (142, 38, CAST(30.63 AS Decimal(18, 2)), CAST(56.44 AS Decimal(18, 2)), 748)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 62, CAST(17.31 AS Decimal(18, 2)), CAST(3365.12 AS Decimal(18, 2)), 28)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 56, CAST(7.36 AS Decimal(18, 2)), CAST(2.99 AS Decimal(18, 2)), 196)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 10, CAST(9.21 AS Decimal(18, 2)), CAST(1917.53 AS Decimal(18, 2)), 698)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 45, CAST(1.84 AS Decimal(18, 2)), CAST(27264.25 AS Decimal(18, 2)), 749)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 63, CAST(30.97 AS Decimal(18, 2)), CAST(3641.38 AS Decimal(18, 2)), 796)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (143, 9, CAST(1.68 AS Decimal(18, 2)), CAST(22635.89 AS Decimal(18, 2)), 854)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 68, CAST(6.65 AS Decimal(18, 2)), CAST(62.98 AS Decimal(18, 2)), 79)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 56, CAST(55.63 AS Decimal(18, 2)), CAST(7499.64 AS Decimal(18, 2)), 197)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 34, CAST(19.87 AS Decimal(18, 2)), CAST(717.00 AS Decimal(18, 2)), 257)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 66, CAST(8.00 AS Decimal(18, 2)), CAST(41669.98 AS Decimal(18, 2)), 313)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 3, CAST(6.23 AS Decimal(18, 2)), CAST(7.34 AS Decimal(18, 2)), 594)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (144, 28, CAST(9.82 AS Decimal(18, 2)), CAST(163.77 AS Decimal(18, 2)), 905)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (145, 8, CAST(8.79 AS Decimal(18, 2)), CAST(7.28 AS Decimal(18, 2)), 595)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (146, 71, CAST(8.66 AS Decimal(18, 2)), CAST(630.77 AS Decimal(18, 2)), 80)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (146, 48, CAST(9.51 AS Decimal(18, 2)), CAST(45.84 AS Decimal(18, 2)), 645)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (146, 73, CAST(4.96 AS Decimal(18, 2)), CAST(24.38 AS Decimal(18, 2)), 956)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (147, 66, CAST(3.77 AS Decimal(18, 2)), CAST(719.84 AS Decimal(18, 2)), 314)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (147, 83, CAST(6.37 AS Decimal(18, 2)), CAST(24.94 AS Decimal(18, 2)), 957)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (148, 63, CAST(4.37 AS Decimal(18, 2)), CAST(4.99 AS Decimal(18, 2)), 29)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (148, 80, CAST(9.86 AS Decimal(18, 2)), CAST(77401.97 AS Decimal(18, 2)), 81)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (148, 87, CAST(55.96 AS Decimal(18, 2)), CAST(2724.57 AS Decimal(18, 2)), 140)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (148, 61, CAST(11.23 AS Decimal(18, 2)), CAST(0.47 AS Decimal(18, 2)), 198)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (148, 10, CAST(2.68 AS Decimal(18, 2)), CAST(45.27 AS Decimal(18, 2)), 699)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (149, 26, CAST(9.35 AS Decimal(18, 2)), CAST(361.85 AS Decimal(18, 2)), 531)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (149, 11, CAST(2.50 AS Decimal(18, 2)), CAST(5435.90 AS Decimal(18, 2)), 700)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (150, 38, CAST(5.60 AS Decimal(18, 2)), CAST(4540.02 AS Decimal(18, 2)), 258)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (150, 7, CAST(5.35 AS Decimal(18, 2)), CAST(22.82 AS Decimal(18, 2)), 369)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (150, 64, CAST(34.37 AS Decimal(18, 2)), CAST(9.63 AS Decimal(18, 2)), 421)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (150, 8, CAST(9.22 AS Decimal(18, 2)), CAST(8.78 AS Decimal(18, 2)), 596)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (150, 28, CAST(1.98 AS Decimal(18, 2)), CAST(995.85 AS Decimal(18, 2)), 906)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (151, 26, CAST(7.97 AS Decimal(18, 2)), CAST(62.40 AS Decimal(18, 2)), 532)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (151, 63, CAST(9.85 AS Decimal(18, 2)), CAST(2917.32 AS Decimal(18, 2)), 797)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (152, 12, CAST(7.69 AS Decimal(18, 2)), CAST(70.28 AS Decimal(18, 2)), 474)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (152, 53, CAST(5.25 AS Decimal(18, 2)), CAST(4353.20 AS Decimal(18, 2)), 750)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (152, 83, CAST(18.04 AS Decimal(18, 2)), CAST(4923.82 AS Decimal(18, 2)), 958)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 86, CAST(74.98 AS Decimal(18, 2)), CAST(3152.95 AS Decimal(18, 2)), 82)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 94, CAST(2.81 AS Decimal(18, 2)), CAST(22893.62 AS Decimal(18, 2)), 141)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 61, CAST(9.95 AS Decimal(18, 2)), CAST(67667.31 AS Decimal(18, 2)), 199)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 66, CAST(2.27 AS Decimal(18, 2)), CAST(14.08 AS Decimal(18, 2)), 315)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 19, CAST(84.38 AS Decimal(18, 2)), CAST(70.49 AS Decimal(18, 2)), 701)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 53, CAST(7.50 AS Decimal(18, 2)), CAST(6.20 AS Decimal(18, 2)), 751)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (153, 9, CAST(8.51 AS Decimal(18, 2)), CAST(759.47 AS Decimal(18, 2)), 855)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (154, 38, CAST(6.25 AS Decimal(18, 2)), CAST(58514.07 AS Decimal(18, 2)), 259)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (154, 74, CAST(1.49 AS Decimal(18, 2)), CAST(16.69 AS Decimal(18, 2)), 316)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (154, 69, CAST(62.16 AS Decimal(18, 2)), CAST(2327.07 AS Decimal(18, 2)), 422)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (155, 63, CAST(76.58 AS Decimal(18, 2)), CAST(549.06 AS Decimal(18, 2)), 798)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 86, CAST(78.94 AS Decimal(18, 2)), CAST(8.27 AS Decimal(18, 2)), 83)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 94, CAST(3.94 AS Decimal(18, 2)), CAST(953.88 AS Decimal(18, 2)), 142)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 12, CAST(75.93 AS Decimal(18, 2)), CAST(25.79 AS Decimal(18, 2)), 475)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 35, CAST(90.01 AS Decimal(18, 2)), CAST(3766.48 AS Decimal(18, 2)), 533)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 53, CAST(37.50 AS Decimal(18, 2)), CAST(8485.86 AS Decimal(18, 2)), 646)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 69, CAST(4.70 AS Decimal(18, 2)), CAST(1.39 AS Decimal(18, 2)), 799)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 10, CAST(5.88 AS Decimal(18, 2)), CAST(50.96 AS Decimal(18, 2)), 856)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (156, 38, CAST(95.09 AS Decimal(18, 2)), CAST(736.30 AS Decimal(18, 2)), 907)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (157, 13, CAST(12.02 AS Decimal(18, 2)), CAST(5852.92 AS Decimal(18, 2)), 370)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (158, 70, CAST(13.63 AS Decimal(18, 2)), CAST(750.50 AS Decimal(18, 2)), 30)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (158, 40, CAST(8.96 AS Decimal(18, 2)), CAST(436.14 AS Decimal(18, 2)), 260)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (158, 57, CAST(9.79 AS Decimal(18, 2)), CAST(482.37 AS Decimal(18, 2)), 752)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (159, 40, CAST(5.50 AS Decimal(18, 2)), CAST(544.57 AS Decimal(18, 2)), 261)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (159, 69, CAST(8.51 AS Decimal(18, 2)), CAST(5.97 AS Decimal(18, 2)), 800)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (160, 61, CAST(81.34 AS Decimal(18, 2)), CAST(0.97 AS Decimal(18, 2)), 200)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (160, 69, CAST(5.28 AS Decimal(18, 2)), CAST(6026.22 AS Decimal(18, 2)), 423)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (160, 10, CAST(42.78 AS Decimal(18, 2)), CAST(51272.56 AS Decimal(18, 2)), 597)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (161, 19, CAST(63.76 AS Decimal(18, 2)), CAST(9921.54 AS Decimal(18, 2)), 371)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (162, 78, CAST(2.43 AS Decimal(18, 2)), CAST(8.06 AS Decimal(18, 2)), 31)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (162, 16, CAST(37.38 AS Decimal(18, 2)), CAST(23943.60 AS Decimal(18, 2)), 476)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (162, 18, CAST(9.70 AS Decimal(18, 2)), CAST(6845.40 AS Decimal(18, 2)), 598)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (162, 26, CAST(2.52 AS Decimal(18, 2)), CAST(7305.92 AS Decimal(18, 2)), 702)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (162, 83, CAST(5.68 AS Decimal(18, 2)), CAST(98799.50 AS Decimal(18, 2)), 959)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (163, 69, CAST(2.81 AS Decimal(18, 2)), CAST(4.06 AS Decimal(18, 2)), 424)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (163, 69, CAST(5.82 AS Decimal(18, 2)), CAST(175.12 AS Decimal(18, 2)), 801)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (164, 95, CAST(6.49 AS Decimal(18, 2)), CAST(57.30 AS Decimal(18, 2)), 143)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (164, 74, CAST(6.02 AS Decimal(18, 2)), CAST(7.29 AS Decimal(18, 2)), 317)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (164, 56, CAST(2.29 AS Decimal(18, 2)), CAST(8885.52 AS Decimal(18, 2)), 647)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (164, 38, CAST(1.75 AS Decimal(18, 2)), CAST(767.80 AS Decimal(18, 2)), 908)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (165, 94, CAST(26.51 AS Decimal(18, 2)), CAST(7.19 AS Decimal(18, 2)), 84)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (165, 57, CAST(9.67 AS Decimal(18, 2)), CAST(5451.54 AS Decimal(18, 2)), 753)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (166, 16, CAST(60.32 AS Decimal(18, 2)), CAST(89.40 AS Decimal(18, 2)), 477)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (166, 35, CAST(1.59 AS Decimal(18, 2)), CAST(18543.56 AS Decimal(18, 2)), 534)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (166, 17, CAST(2.25 AS Decimal(18, 2)), CAST(5799.30 AS Decimal(18, 2)), 857)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (167, 56, CAST(12.29 AS Decimal(18, 2)), CAST(3243.94 AS Decimal(18, 2)), 648)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (167, 26, CAST(3.22 AS Decimal(18, 2)), CAST(2.06 AS Decimal(18, 2)), 703)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (168, 94, CAST(5.44 AS Decimal(18, 2)), CAST(47397.36 AS Decimal(18, 2)), 85)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (168, 26, CAST(28.82 AS Decimal(18, 2)), CAST(956.19 AS Decimal(18, 2)), 704)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (168, 57, CAST(17.19 AS Decimal(18, 2)), CAST(238.04 AS Decimal(18, 2)), 754)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (168, 45, CAST(7.94 AS Decimal(18, 2)), CAST(20.09 AS Decimal(18, 2)), 909)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (169, 46, CAST(7.55 AS Decimal(18, 2)), CAST(6.68 AS Decimal(18, 2)), 262)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (169, 35, CAST(3.22 AS Decimal(18, 2)), CAST(818.67 AS Decimal(18, 2)), 535)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (169, 75, CAST(63.51 AS Decimal(18, 2)), CAST(38429.90 AS Decimal(18, 2)), 802)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (169, 45, CAST(7.38 AS Decimal(18, 2)), CAST(520.39 AS Decimal(18, 2)), 910)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (170, 70, CAST(8.34 AS Decimal(18, 2)), CAST(4.98 AS Decimal(18, 2)), 201)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (170, 92, CAST(6.75 AS Decimal(18, 2)), CAST(8887.40 AS Decimal(18, 2)), 960)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (171, 78, CAST(1.49 AS Decimal(18, 2)), CAST(9.09 AS Decimal(18, 2)), 32)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (171, 19, CAST(46.32 AS Decimal(18, 2)), CAST(570.73 AS Decimal(18, 2)), 372)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (171, 40, CAST(8.18 AS Decimal(18, 2)), CAST(68.17 AS Decimal(18, 2)), 536)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (171, 56, CAST(6.79 AS Decimal(18, 2)), CAST(2202.25 AS Decimal(18, 2)), 649)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (172, 16, CAST(54.27 AS Decimal(18, 2)), CAST(66.22 AS Decimal(18, 2)), 478)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (172, 18, CAST(2.95 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), 599)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (172, 25, CAST(45.08 AS Decimal(18, 2)), CAST(1.69 AS Decimal(18, 2)), 858)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (172, 92, CAST(34.48 AS Decimal(18, 2)), CAST(7.26 AS Decimal(18, 2)), 961)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (173, 78, CAST(51.55 AS Decimal(18, 2)), CAST(90759.88 AS Decimal(18, 2)), 33)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (173, 70, CAST(56.33 AS Decimal(18, 2)), CAST(6209.18 AS Decimal(18, 2)), 202)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (173, 78, CAST(6.90 AS Decimal(18, 2)), CAST(49512.48 AS Decimal(18, 2)), 425)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (174, 99, CAST(8.96 AS Decimal(18, 2)), CAST(31.66 AS Decimal(18, 2)), 86)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (174, 95, CAST(89.04 AS Decimal(18, 2)), CAST(8.17 AS Decimal(18, 2)), 144)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (174, 75, CAST(9.70 AS Decimal(18, 2)), CAST(3284.37 AS Decimal(18, 2)), 318)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (175, 99, CAST(45.44 AS Decimal(18, 2)), CAST(754.18 AS Decimal(18, 2)), 87)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (175, 27, CAST(38.49 AS Decimal(18, 2)), CAST(975.96 AS Decimal(18, 2)), 600)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (176, 40, CAST(1.03 AS Decimal(18, 2)), CAST(87.46 AS Decimal(18, 2)), 537)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (176, 75, CAST(18.81 AS Decimal(18, 2)), CAST(2.61 AS Decimal(18, 2)), 803)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 70, CAST(35.87 AS Decimal(18, 2)), CAST(5.03 AS Decimal(18, 2)), 203)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 75, CAST(2.00 AS Decimal(18, 2)), CAST(506.09 AS Decimal(18, 2)), 319)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 20, CAST(64.56 AS Decimal(18, 2)), CAST(955.74 AS Decimal(18, 2)), 373)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 28, CAST(49.74 AS Decimal(18, 2)), CAST(255.90 AS Decimal(18, 2)), 705)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 66, CAST(55.17 AS Decimal(18, 2)), CAST(49.22 AS Decimal(18, 2)), 755)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (177, 25, CAST(83.98 AS Decimal(18, 2)), CAST(59437.87 AS Decimal(18, 2)), 859)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (178, 47, CAST(8.15 AS Decimal(18, 2)), CAST(473.15 AS Decimal(18, 2)), 263)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (178, 65, CAST(11.98 AS Decimal(18, 2)), CAST(2.48 AS Decimal(18, 2)), 650)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (178, 45, CAST(3.89 AS Decimal(18, 2)), CAST(2.43 AS Decimal(18, 2)), 911)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (178, 92, CAST(29.48 AS Decimal(18, 2)), CAST(52302.78 AS Decimal(18, 2)), 962)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (179, 76, CAST(7.78 AS Decimal(18, 2)), CAST(1.86 AS Decimal(18, 2)), 204)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (179, 17, CAST(66.45 AS Decimal(18, 2)), CAST(4093.01 AS Decimal(18, 2)), 479)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (179, 28, CAST(33.68 AS Decimal(18, 2)), CAST(49297.72 AS Decimal(18, 2)), 706)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (180, 1, CAST(7.57 AS Decimal(18, 2)), CAST(21.92 AS Decimal(18, 2)), 145)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (180, 22, CAST(3.30 AS Decimal(18, 2)), CAST(773.91 AS Decimal(18, 2)), 374)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (180, 40, CAST(63.93 AS Decimal(18, 2)), CAST(22.83 AS Decimal(18, 2)), 538)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (180, 65, CAST(8.34 AS Decimal(18, 2)), CAST(3.18 AS Decimal(18, 2)), 651)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (180, 27, CAST(6.08 AS Decimal(18, 2)), CAST(931.46 AS Decimal(18, 2)), 860)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (181, 99, CAST(92.67 AS Decimal(18, 2)), CAST(0.28 AS Decimal(18, 2)), 88)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (181, 75, CAST(98.14 AS Decimal(18, 2)), CAST(116.14 AS Decimal(18, 2)), 320)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (181, 75, CAST(88.36 AS Decimal(18, 2)), CAST(83.93 AS Decimal(18, 2)), 804)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (182, 83, CAST(9.33 AS Decimal(18, 2)), CAST(2596.78 AS Decimal(18, 2)), 34)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (182, 22, CAST(7.60 AS Decimal(18, 2)), CAST(91673.57 AS Decimal(18, 2)), 375)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (182, 78, CAST(50.36 AS Decimal(18, 2)), CAST(6881.02 AS Decimal(18, 2)), 426)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (182, 66, CAST(3.13 AS Decimal(18, 2)), CAST(2.29 AS Decimal(18, 2)), 756)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (182, 48, CAST(99.54 AS Decimal(18, 2)), CAST(502.80 AS Decimal(18, 2)), 912)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (183, 41, CAST(5.87 AS Decimal(18, 2)), CAST(3335.87 AS Decimal(18, 2)), 539)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (184, 7, CAST(2.76 AS Decimal(18, 2)), CAST(32752.01 AS Decimal(18, 2)), 89)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (185, 1, CAST(8.34 AS Decimal(18, 2)), CAST(81.78 AS Decimal(18, 2)), 146)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (185, 27, CAST(1.95 AS Decimal(18, 2)), CAST(793.09 AS Decimal(18, 2)), 601)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (186, 80, CAST(1.00 AS Decimal(18, 2)), CAST(99141.03 AS Decimal(18, 2)), 321)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (186, 46, CAST(5.63 AS Decimal(18, 2)), CAST(19458.45 AS Decimal(18, 2)), 540)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (186, 34, CAST(3.93 AS Decimal(18, 2)), CAST(66684.40 AS Decimal(18, 2)), 707)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (187, 47, CAST(14.26 AS Decimal(18, 2)), CAST(7742.91 AS Decimal(18, 2)), 264)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (187, 78, CAST(38.59 AS Decimal(18, 2)), CAST(3.64 AS Decimal(18, 2)), 427)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (187, 76, CAST(3.57 AS Decimal(18, 2)), CAST(32160.87 AS Decimal(18, 2)), 805)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (187, 27, CAST(2.01 AS Decimal(18, 2)), CAST(3110.60 AS Decimal(18, 2)), 861)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (188, 83, CAST(32.44 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), 35)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (188, 9, CAST(9.55 AS Decimal(18, 2)), CAST(4586.72 AS Decimal(18, 2)), 90)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (188, 1, CAST(94.98 AS Decimal(18, 2)), CAST(66.94 AS Decimal(18, 2)), 147)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (188, 93, CAST(3.70 AS Decimal(18, 2)), CAST(91.32 AS Decimal(18, 2)), 963)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (189, 76, CAST(50.98 AS Decimal(18, 2)), CAST(294.65 AS Decimal(18, 2)), 205)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (189, 47, CAST(3.18 AS Decimal(18, 2)), CAST(8728.33 AS Decimal(18, 2)), 265)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (189, 17, CAST(19.97 AS Decimal(18, 2)), CAST(49451.81 AS Decimal(18, 2)), 480)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (189, 71, CAST(98.74 AS Decimal(18, 2)), CAST(2.22 AS Decimal(18, 2)), 652)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (190, 32, CAST(6.66 AS Decimal(18, 2)), CAST(41.98 AS Decimal(18, 2)), 376)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (190, 19, CAST(8.20 AS Decimal(18, 2)), CAST(40.89 AS Decimal(18, 2)), 481)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (190, 76, CAST(3.54 AS Decimal(18, 2)), CAST(34841.26 AS Decimal(18, 2)), 806)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (190, 48, CAST(2.86 AS Decimal(18, 2)), CAST(551.76 AS Decimal(18, 2)), 913)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (191, 3, CAST(5.49 AS Decimal(18, 2)), CAST(64.37 AS Decimal(18, 2)), 148)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (191, 66, CAST(7.27 AS Decimal(18, 2)), CAST(5211.23 AS Decimal(18, 2)), 757)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (192, 30, CAST(6.68 AS Decimal(18, 2)), CAST(54.47 AS Decimal(18, 2)), 602)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (193, 46, CAST(3.25 AS Decimal(18, 2)), CAST(4.95 AS Decimal(18, 2)), 541)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (193, 30, CAST(2.95 AS Decimal(18, 2)), CAST(4648.41 AS Decimal(18, 2)), 603)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (194, 91, CAST(22.25 AS Decimal(18, 2)), CAST(75.38 AS Decimal(18, 2)), 36)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (194, 9, CAST(5.61 AS Decimal(18, 2)), CAST(8.50 AS Decimal(18, 2)), 91)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (195, 34, CAST(9.18 AS Decimal(18, 2)), CAST(598.71 AS Decimal(18, 2)), 708)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (195, 80, CAST(6.41 AS Decimal(18, 2)), CAST(96.97 AS Decimal(18, 2)), 807)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (195, 27, CAST(6.88 AS Decimal(18, 2)), CAST(66.45 AS Decimal(18, 2)), 862)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 12, CAST(80.32 AS Decimal(18, 2)), CAST(16372.51 AS Decimal(18, 2)), 149)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 76, CAST(6.95 AS Decimal(18, 2)), CAST(8593.73 AS Decimal(18, 2)), 206)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 55, CAST(5.07 AS Decimal(18, 2)), CAST(56693.71 AS Decimal(18, 2)), 266)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 80, CAST(8.55 AS Decimal(18, 2)), CAST(864.17 AS Decimal(18, 2)), 322)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 32, CAST(2.13 AS Decimal(18, 2)), CAST(793.18 AS Decimal(18, 2)), 377)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (196, 85, CAST(32.20 AS Decimal(18, 2)), CAST(19.84 AS Decimal(18, 2)), 428)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (197, 19, CAST(5.78 AS Decimal(18, 2)), CAST(5.96 AS Decimal(18, 2)), 482)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (197, 77, CAST(7.13 AS Decimal(18, 2)), CAST(23.18 AS Decimal(18, 2)), 653)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (197, 48, CAST(89.18 AS Decimal(18, 2)), CAST(594.62 AS Decimal(18, 2)), 914)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (198, 9, CAST(4.74 AS Decimal(18, 2)), CAST(803.54 AS Decimal(18, 2)), 92)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (198, 93, CAST(5.65 AS Decimal(18, 2)), CAST(1.18 AS Decimal(18, 2)), 964)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (199, 50, CAST(69.70 AS Decimal(18, 2)), CAST(7037.67 AS Decimal(18, 2)), 542)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (199, 70, CAST(7.52 AS Decimal(18, 2)), CAST(74239.18 AS Decimal(18, 2)), 758)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 91, CAST(84.34 AS Decimal(18, 2)), CAST(4647.89 AS Decimal(18, 2)), 37)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 19, CAST(1.15 AS Decimal(18, 2)), CAST(30277.28 AS Decimal(18, 2)), 150)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 85, CAST(7.72 AS Decimal(18, 2)), CAST(16.59 AS Decimal(18, 2)), 429)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 19, CAST(36.88 AS Decimal(18, 2)), CAST(68404.14 AS Decimal(18, 2)), 483)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 36, CAST(2.28 AS Decimal(18, 2)), CAST(77.02 AS Decimal(18, 2)), 604)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (200, 40, CAST(1.59 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), 709)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (201, 91, CAST(1.85 AS Decimal(18, 2)), CAST(1683.69 AS Decimal(18, 2)), 38)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (201, 34, CAST(56.05 AS Decimal(18, 2)), CAST(8.81 AS Decimal(18, 2)), 378)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (201, 43, CAST(60.21 AS Decimal(18, 2)), CAST(97.16 AS Decimal(18, 2)), 605)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (201, 50, CAST(8.90 AS Decimal(18, 2)), CAST(45.71 AS Decimal(18, 2)), 915)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (202, 19, CAST(64.56 AS Decimal(18, 2)), CAST(2.65 AS Decimal(18, 2)), 93)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (202, 80, CAST(4.85 AS Decimal(18, 2)), CAST(82074.64 AS Decimal(18, 2)), 207)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (202, 55, CAST(9.59 AS Decimal(18, 2)), CAST(354.67 AS Decimal(18, 2)), 267)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (202, 53, CAST(10.66 AS Decimal(18, 2)), CAST(120.97 AS Decimal(18, 2)), 606)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (202, 73, CAST(3.74 AS Decimal(18, 2)), CAST(412.67 AS Decimal(18, 2)), 759)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (203, 19, CAST(1.39 AS Decimal(18, 2)), CAST(631.34 AS Decimal(18, 2)), 151)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (203, 23, CAST(83.47 AS Decimal(18, 2)), CAST(70.56 AS Decimal(18, 2)), 484)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (203, 50, CAST(78.47 AS Decimal(18, 2)), CAST(362.38 AS Decimal(18, 2)), 543)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (203, 87, CAST(34.46 AS Decimal(18, 2)), CAST(688.30 AS Decimal(18, 2)), 808)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (203, 59, CAST(2.25 AS Decimal(18, 2)), CAST(49839.30 AS Decimal(18, 2)), 916)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (204, 98, CAST(8.77 AS Decimal(18, 2)), CAST(330.48 AS Decimal(18, 2)), 39)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (205, 59, CAST(52.83 AS Decimal(18, 2)), CAST(517.53 AS Decimal(18, 2)), 268)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (205, 89, CAST(9.68 AS Decimal(18, 2)), CAST(65.43 AS Decimal(18, 2)), 323)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (205, 87, CAST(32.61 AS Decimal(18, 2)), CAST(3023.98 AS Decimal(18, 2)), 809)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (205, 29, CAST(1.33 AS Decimal(18, 2)), CAST(52.90 AS Decimal(18, 2)), 863)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (206, 22, CAST(97.96 AS Decimal(18, 2)), CAST(885.15 AS Decimal(18, 2)), 94)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (206, 80, CAST(8.50 AS Decimal(18, 2)), CAST(5457.16 AS Decimal(18, 2)), 208)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (206, 26, CAST(20.44 AS Decimal(18, 2)), CAST(88063.00 AS Decimal(18, 2)), 485)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (206, 77, CAST(23.56 AS Decimal(18, 2)), CAST(109.24 AS Decimal(18, 2)), 654)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (206, 99, CAST(1.80 AS Decimal(18, 2)), CAST(28230.19 AS Decimal(18, 2)), 965)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (208, 59, CAST(4.10 AS Decimal(18, 2)), CAST(4593.38 AS Decimal(18, 2)), 269)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (208, 50, CAST(7.44 AS Decimal(18, 2)), CAST(4394.11 AS Decimal(18, 2)), 710)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (208, 29, CAST(74.32 AS Decimal(18, 2)), CAST(51922.26 AS Decimal(18, 2)), 864)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (209, 89, CAST(60.25 AS Decimal(18, 2)), CAST(8774.22 AS Decimal(18, 2)), 209)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (209, 85, CAST(8.78 AS Decimal(18, 2)), CAST(8832.82 AS Decimal(18, 2)), 430)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (209, 68, CAST(28.09 AS Decimal(18, 2)), CAST(55.69 AS Decimal(18, 2)), 917)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (210, 34, CAST(6.30 AS Decimal(18, 2)), CAST(2427.64 AS Decimal(18, 2)), 379)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (210, 53, CAST(81.72 AS Decimal(18, 2)), CAST(5.78 AS Decimal(18, 2)), 607)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 22, CAST(33.22 AS Decimal(18, 2)), CAST(81.19 AS Decimal(18, 2)), 152)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 97, CAST(63.49 AS Decimal(18, 2)), CAST(59874.49 AS Decimal(18, 2)), 210)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 34, CAST(2.32 AS Decimal(18, 2)), CAST(9461.86 AS Decimal(18, 2)), 380)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 58, CAST(2.77 AS Decimal(18, 2)), CAST(51.21 AS Decimal(18, 2)), 544)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 50, CAST(5.35 AS Decimal(18, 2)), CAST(9.37 AS Decimal(18, 2)), 711)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (211, 73, CAST(4.17 AS Decimal(18, 2)), CAST(4791.99 AS Decimal(18, 2)), 760)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (212, 27, CAST(7.25 AS Decimal(18, 2)), CAST(3.17 AS Decimal(18, 2)), 95)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (212, 58, CAST(3.26 AS Decimal(18, 2)), CAST(9.62 AS Decimal(18, 2)), 545)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (212, 83, CAST(5.23 AS Decimal(18, 2)), CAST(9445.71 AS Decimal(18, 2)), 761)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (213, 5, CAST(7.09 AS Decimal(18, 2)), CAST(2.09 AS Decimal(18, 2)), 40)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (213, 89, CAST(1.32 AS Decimal(18, 2)), CAST(60.36 AS Decimal(18, 2)), 324)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (213, 54, CAST(65.99 AS Decimal(18, 2)), CAST(3.96 AS Decimal(18, 2)), 712)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (213, 4, CAST(3.14 AS Decimal(18, 2)), CAST(86.41 AS Decimal(18, 2)), 966)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (214, 22, CAST(80.92 AS Decimal(18, 2)), CAST(54087.14 AS Decimal(18, 2)), 153)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (214, 91, CAST(1.55 AS Decimal(18, 2)), CAST(72677.77 AS Decimal(18, 2)), 325)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (214, 26, CAST(3.32 AS Decimal(18, 2)), CAST(76.85 AS Decimal(18, 2)), 486)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (214, 77, CAST(8.56 AS Decimal(18, 2)), CAST(1.91 AS Decimal(18, 2)), 655)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (214, 93, CAST(55.58 AS Decimal(18, 2)), CAST(26921.08 AS Decimal(18, 2)), 810)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (215, 27, CAST(49.07 AS Decimal(18, 2)), CAST(4674.01 AS Decimal(18, 2)), 96)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (215, 4, CAST(86.09 AS Decimal(18, 2)), CAST(330.51 AS Decimal(18, 2)), 211)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (215, 67, CAST(53.38 AS Decimal(18, 2)), CAST(4.49 AS Decimal(18, 2)), 270)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (216, 88, CAST(89.77 AS Decimal(18, 2)), CAST(57.33 AS Decimal(18, 2)), 431)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (216, 35, CAST(1.95 AS Decimal(18, 2)), CAST(95.68 AS Decimal(18, 2)), 865)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (217, 88, CAST(35.96 AS Decimal(18, 2)), CAST(9.17 AS Decimal(18, 2)), 432)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (217, 68, CAST(7.80 AS Decimal(18, 2)), CAST(256.69 AS Decimal(18, 2)), 918)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (218, 5, CAST(6.18 AS Decimal(18, 2)), CAST(94975.08 AS Decimal(18, 2)), 41)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (218, 68, CAST(3.39 AS Decimal(18, 2)), CAST(51843.11 AS Decimal(18, 2)), 546)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (218, 84, CAST(54.27 AS Decimal(18, 2)), CAST(50.67 AS Decimal(18, 2)), 656)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (218, 85, CAST(46.43 AS Decimal(18, 2)), CAST(8.11 AS Decimal(18, 2)), 762)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (219, 5, CAST(57.84 AS Decimal(18, 2)), CAST(8056.58 AS Decimal(18, 2)), 42)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (219, 29, CAST(18.29 AS Decimal(18, 2)), CAST(3833.86 AS Decimal(18, 2)), 154)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (219, 4, CAST(23.17 AS Decimal(18, 2)), CAST(3405.65 AS Decimal(18, 2)), 212)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (219, 98, CAST(35.27 AS Decimal(18, 2)), CAST(378.21 AS Decimal(18, 2)), 433)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (220, 6, CAST(9.93 AS Decimal(18, 2)), CAST(45.77 AS Decimal(18, 2)), 43)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (220, 37, CAST(91.39 AS Decimal(18, 2)), CAST(1099.33 AS Decimal(18, 2)), 97)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (220, 35, CAST(8.38 AS Decimal(18, 2)), CAST(7377.15 AS Decimal(18, 2)), 381)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (220, 57, CAST(6.94 AS Decimal(18, 2)), CAST(1.03 AS Decimal(18, 2)), 608)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (221, 99, CAST(65.14 AS Decimal(18, 2)), CAST(78.08 AS Decimal(18, 2)), 811)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (221, 68, CAST(50.20 AS Decimal(18, 2)), CAST(55820.91 AS Decimal(18, 2)), 919)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (222, 26, CAST(5.21 AS Decimal(18, 2)), CAST(257.83 AS Decimal(18, 2)), 487)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (223, 45, CAST(6.13 AS Decimal(18, 2)), CAST(913.10 AS Decimal(18, 2)), 98)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (223, 84, CAST(88.69 AS Decimal(18, 2)), CAST(24016.19 AS Decimal(18, 2)), 657)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (223, 54, CAST(18.02 AS Decimal(18, 2)), CAST(28.72 AS Decimal(18, 2)), 713)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (223, 4, CAST(94.38 AS Decimal(18, 2)), CAST(913.05 AS Decimal(18, 2)), 967)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (224, 91, CAST(46.38 AS Decimal(18, 2)), CAST(40.79 AS Decimal(18, 2)), 326)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (224, 75, CAST(96.38 AS Decimal(18, 2)), CAST(646.36 AS Decimal(18, 2)), 547)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (225, 5, CAST(7.59 AS Decimal(18, 2)), CAST(29118.50 AS Decimal(18, 2)), 213)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (225, 67, CAST(8.90 AS Decimal(18, 2)), CAST(2380.77 AS Decimal(18, 2)), 271)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (225, 28, CAST(12.00 AS Decimal(18, 2)), CAST(46.75 AS Decimal(18, 2)), 488)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (225, 85, CAST(5.50 AS Decimal(18, 2)), CAST(8471.59 AS Decimal(18, 2)), 763)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (225, 35, CAST(7.65 AS Decimal(18, 2)), CAST(11378.12 AS Decimal(18, 2)), 866)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (226, 29, CAST(89.00 AS Decimal(18, 2)), CAST(61867.44 AS Decimal(18, 2)), 155)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (226, 5, CAST(2.34 AS Decimal(18, 2)), CAST(58015.68 AS Decimal(18, 2)), 214)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (226, 67, CAST(95.88 AS Decimal(18, 2)), CAST(6.98 AS Decimal(18, 2)), 272)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (226, 75, CAST(5.99 AS Decimal(18, 2)), CAST(8.20 AS Decimal(18, 2)), 548)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (226, 87, CAST(64.60 AS Decimal(18, 2)), CAST(19195.68 AS Decimal(18, 2)), 658)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (227, 6, CAST(2.25 AS Decimal(18, 2)), CAST(2645.26 AS Decimal(18, 2)), 44)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (227, 35, CAST(8.14 AS Decimal(18, 2)), CAST(70.70 AS Decimal(18, 2)), 382)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (227, 98, CAST(82.04 AS Decimal(18, 2)), CAST(9578.05 AS Decimal(18, 2)), 434)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (227, 8, CAST(3.20 AS Decimal(18, 2)), CAST(648.78 AS Decimal(18, 2)), 812)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (227, 74, CAST(38.41 AS Decimal(18, 2)), CAST(40841.05 AS Decimal(18, 2)), 920)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (228, 48, CAST(42.07 AS Decimal(18, 2)), CAST(66901.48 AS Decimal(18, 2)), 99)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (228, 29, CAST(45.04 AS Decimal(18, 2)), CAST(9515.74 AS Decimal(18, 2)), 156)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (228, 81, CAST(65.16 AS Decimal(18, 2)), CAST(759.21 AS Decimal(18, 2)), 549)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (229, 38, CAST(1.43 AS Decimal(18, 2)), CAST(710.35 AS Decimal(18, 2)), 157)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (229, 12, CAST(49.40 AS Decimal(18, 2)), CAST(137.36 AS Decimal(18, 2)), 215)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (229, 73, CAST(1.10 AS Decimal(18, 2)), CAST(3494.93 AS Decimal(18, 2)), 273)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (229, 81, CAST(7.33 AS Decimal(18, 2)), CAST(6.04 AS Decimal(18, 2)), 550)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (230, 57, CAST(3.07 AS Decimal(18, 2)), CAST(8.62 AS Decimal(18, 2)), 609)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (230, 40, CAST(3.25 AS Decimal(18, 2)), CAST(730.51 AS Decimal(18, 2)), 867)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 56, CAST(38.15 AS Decimal(18, 2)), CAST(6.05 AS Decimal(18, 2)), 100)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 91, CAST(33.46 AS Decimal(18, 2)), CAST(265.39 AS Decimal(18, 2)), 327)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 86, CAST(92.67 AS Decimal(18, 2)), CAST(29497.86 AS Decimal(18, 2)), 551)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 85, CAST(6.41 AS Decimal(18, 2)), CAST(7.09 AS Decimal(18, 2)), 764)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 40, CAST(52.50 AS Decimal(18, 2)), CAST(63.95 AS Decimal(18, 2)), 868)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (231, 11, CAST(7.71 AS Decimal(18, 2)), CAST(693.07 AS Decimal(18, 2)), 968)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (232, 43, CAST(8.40 AS Decimal(18, 2)), CAST(7.32 AS Decimal(18, 2)), 158)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (232, 12, CAST(7.18 AS Decimal(18, 2)), CAST(20.64 AS Decimal(18, 2)), 216)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (232, 4, CAST(33.73 AS Decimal(18, 2)), CAST(6.29 AS Decimal(18, 2)), 435)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (232, 28, CAST(7.27 AS Decimal(18, 2)), CAST(76.41 AS Decimal(18, 2)), 489)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (233, 73, CAST(60.90 AS Decimal(18, 2)), CAST(7396.91 AS Decimal(18, 2)), 274)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (233, 55, CAST(95.46 AS Decimal(18, 2)), CAST(59985.09 AS Decimal(18, 2)), 714)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (234, 73, CAST(3.42 AS Decimal(18, 2)), CAST(504.61 AS Decimal(18, 2)), 275)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (235, 6, CAST(8.75 AS Decimal(18, 2)), CAST(25610.19 AS Decimal(18, 2)), 45)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (235, 66, CAST(8.07 AS Decimal(18, 2)), CAST(1.42 AS Decimal(18, 2)), 610)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (235, 87, CAST(38.99 AS Decimal(18, 2)), CAST(9463.88 AS Decimal(18, 2)), 659)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (235, 45, CAST(4.61 AS Decimal(18, 2)), CAST(12.21 AS Decimal(18, 2)), 869)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (235, 19, CAST(9.28 AS Decimal(18, 2)), CAST(43735.23 AS Decimal(18, 2)), 969)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (236, 12, CAST(1.65 AS Decimal(18, 2)), CAST(81.87 AS Decimal(18, 2)), 217)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (236, 88, CAST(3.33 AS Decimal(18, 2)), CAST(73116.82 AS Decimal(18, 2)), 765)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (236, 9, CAST(4.84 AS Decimal(18, 2)), CAST(4734.52 AS Decimal(18, 2)), 813)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (237, 98, CAST(40.75 AS Decimal(18, 2)), CAST(4.84 AS Decimal(18, 2)), 328)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (237, 35, CAST(10.87 AS Decimal(18, 2)), CAST(8.44 AS Decimal(18, 2)), 383)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (237, 86, CAST(33.59 AS Decimal(18, 2)), CAST(425.31 AS Decimal(18, 2)), 552)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (237, 74, CAST(10.04 AS Decimal(18, 2)), CAST(8.76 AS Decimal(18, 2)), 921)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (238, 4, CAST(2.56 AS Decimal(18, 2)), CAST(23794.16 AS Decimal(18, 2)), 436)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (238, 90, CAST(49.11 AS Decimal(18, 2)), CAST(85.65 AS Decimal(18, 2)), 553)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (238, 65, CAST(22.58 AS Decimal(18, 2)), CAST(4388.15 AS Decimal(18, 2)), 715)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (239, 9, CAST(37.23 AS Decimal(18, 2)), CAST(82789.91 AS Decimal(18, 2)), 46)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (239, 28, CAST(3.08 AS Decimal(18, 2)), CAST(3558.32 AS Decimal(18, 2)), 490)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (239, 88, CAST(31.78 AS Decimal(18, 2)), CAST(32.56 AS Decimal(18, 2)), 766)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (239, 9, CAST(32.71 AS Decimal(18, 2)), CAST(71696.85 AS Decimal(18, 2)), 814)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (239, 74, CAST(7.49 AS Decimal(18, 2)), CAST(408.01 AS Decimal(18, 2)), 922)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (240, 43, CAST(1.26 AS Decimal(18, 2)), CAST(79.67 AS Decimal(18, 2)), 159)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (240, 34, CAST(3.94 AS Decimal(18, 2)), CAST(1.53 AS Decimal(18, 2)), 491)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (240, 87, CAST(6.49 AS Decimal(18, 2)), CAST(41.46 AS Decimal(18, 2)), 660)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (241, 56, CAST(14.59 AS Decimal(18, 2)), CAST(5628.85 AS Decimal(18, 2)), 101)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (241, 43, CAST(51.94 AS Decimal(18, 2)), CAST(86.78 AS Decimal(18, 2)), 160)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (241, 38, CAST(2.44 AS Decimal(18, 2)), CAST(5.12 AS Decimal(18, 2)), 384)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (241, 90, CAST(57.09 AS Decimal(18, 2)), CAST(27605.72 AS Decimal(18, 2)), 661)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (242, 78, CAST(30.96 AS Decimal(18, 2)), CAST(1919.18 AS Decimal(18, 2)), 276)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (242, 98, CAST(48.44 AS Decimal(18, 2)), CAST(2.37 AS Decimal(18, 2)), 329)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (242, 34, CAST(50.57 AS Decimal(18, 2)), CAST(29170.46 AS Decimal(18, 2)), 492)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (244, 16, CAST(58.83 AS Decimal(18, 2)), CAST(7.01 AS Decimal(18, 2)), 218)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (244, 98, CAST(56.27 AS Decimal(18, 2)), CAST(5.81 AS Decimal(18, 2)), 330)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (244, 66, CAST(42.24 AS Decimal(18, 2)), CAST(72.65 AS Decimal(18, 2)), 611)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (244, 49, CAST(2.89 AS Decimal(18, 2)), CAST(74375.51 AS Decimal(18, 2)), 870)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (245, 23, CAST(2.81 AS Decimal(18, 2)), CAST(7779.48 AS Decimal(18, 2)), 219)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (245, 90, CAST(7.65 AS Decimal(18, 2)), CAST(85.30 AS Decimal(18, 2)), 554)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (245, 72, CAST(4.14 AS Decimal(18, 2)), CAST(68.46 AS Decimal(18, 2)), 716)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (245, 91, CAST(43.84 AS Decimal(18, 2)), CAST(256.92 AS Decimal(18, 2)), 767)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (245, 19, CAST(2.38 AS Decimal(18, 2)), CAST(62.95 AS Decimal(18, 2)), 970)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (246, 34, CAST(8.15 AS Decimal(18, 2)), CAST(0.56 AS Decimal(18, 2)), 493)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (247, 56, CAST(2.20 AS Decimal(18, 2)), CAST(16.46 AS Decimal(18, 2)), 102)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (247, 51, CAST(8.92 AS Decimal(18, 2)), CAST(9.82 AS Decimal(18, 2)), 161)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (247, 12, CAST(5.88 AS Decimal(18, 2)), CAST(5463.43 AS Decimal(18, 2)), 437)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (247, 10, CAST(9.25 AS Decimal(18, 2)), CAST(756.89 AS Decimal(18, 2)), 815)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (248, 74, CAST(86.94 AS Decimal(18, 2)), CAST(5863.51 AS Decimal(18, 2)), 612)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (248, 49, CAST(8.83 AS Decimal(18, 2)), CAST(42057.63 AS Decimal(18, 2)), 871)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (248, 82, CAST(75.85 AS Decimal(18, 2)), CAST(613.55 AS Decimal(18, 2)), 923)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (249, 12, CAST(9.49 AS Decimal(18, 2)), CAST(80.62 AS Decimal(18, 2)), 47)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (249, 83, CAST(7.87 AS Decimal(18, 2)), CAST(923.37 AS Decimal(18, 2)), 277)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (249, 38, CAST(9.20 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)), 385)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (250, 99, CAST(57.43 AS Decimal(18, 2)), CAST(5406.26 AS Decimal(18, 2)), 555)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (251, 83, CAST(61.52 AS Decimal(18, 2)), CAST(858.14 AS Decimal(18, 2)), 278)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (251, 99, CAST(9.11 AS Decimal(18, 2)), CAST(1755.28 AS Decimal(18, 2)), 556)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (251, 91, CAST(1.01 AS Decimal(18, 2)), CAST(425.89 AS Decimal(18, 2)), 662)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (252, 19, CAST(72.76 AS Decimal(18, 2)), CAST(9955.01 AS Decimal(18, 2)), 438)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (253, 23, CAST(54.29 AS Decimal(18, 2)), CAST(6541.99 AS Decimal(18, 2)), 220)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (253, 82, CAST(5.92 AS Decimal(18, 2)), CAST(61856.53 AS Decimal(18, 2)), 924)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (253, 23, CAST(92.98 AS Decimal(18, 2)), CAST(7380.88 AS Decimal(18, 2)), 971)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (254, 83, CAST(6.97 AS Decimal(18, 2)), CAST(580.39 AS Decimal(18, 2)), 279)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (254, 2, CAST(36.69 AS Decimal(18, 2)), CAST(48.39 AS Decimal(18, 2)), 331)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (254, 96, CAST(4.41 AS Decimal(18, 2)), CAST(5.72 AS Decimal(18, 2)), 768)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 87, CAST(1.55 AS Decimal(18, 2)), CAST(66.33 AS Decimal(18, 2)), 280)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 39, CAST(71.96 AS Decimal(18, 2)), CAST(56.93 AS Decimal(18, 2)), 494)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 91, CAST(1.43 AS Decimal(18, 2)), CAST(58.86 AS Decimal(18, 2)), 663)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 72, CAST(7.01 AS Decimal(18, 2)), CAST(511.46 AS Decimal(18, 2)), 717)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 10, CAST(3.60 AS Decimal(18, 2)), CAST(5854.97 AS Decimal(18, 2)), 816)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (255, 49, CAST(95.65 AS Decimal(18, 2)), CAST(5939.20 AS Decimal(18, 2)), 872)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (256, 12, CAST(26.69 AS Decimal(18, 2)), CAST(9823.54 AS Decimal(18, 2)), 48)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (256, 65, CAST(61.12 AS Decimal(18, 2)), CAST(6721.29 AS Decimal(18, 2)), 103)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (256, 23, CAST(72.72 AS Decimal(18, 2)), CAST(23.85 AS Decimal(18, 2)), 221)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (256, 53, CAST(1.79 AS Decimal(18, 2)), CAST(142.54 AS Decimal(18, 2)), 873)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (257, 51, CAST(54.95 AS Decimal(18, 2)), CAST(721.93 AS Decimal(18, 2)), 162)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (257, 10, CAST(3.69 AS Decimal(18, 2)), CAST(2008.88 AS Decimal(18, 2)), 817)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (258, 99, CAST(10.66 AS Decimal(18, 2)), CAST(25.41 AS Decimal(18, 2)), 557)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (258, 75, CAST(6.03 AS Decimal(18, 2)), CAST(50793.30 AS Decimal(18, 2)), 613)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (258, 15, CAST(9.48 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)), 818)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (259, 16, CAST(64.35 AS Decimal(18, 2)), CAST(5420.55 AS Decimal(18, 2)), 49)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (259, 43, CAST(61.21 AS Decimal(18, 2)), CAST(853.22 AS Decimal(18, 2)), 386)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (259, 19, CAST(74.54 AS Decimal(18, 2)), CAST(457.08 AS Decimal(18, 2)), 439)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (259, 96, CAST(9.37 AS Decimal(18, 2)), CAST(2977.82 AS Decimal(18, 2)), 664)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (259, 97, CAST(2.77 AS Decimal(18, 2)), CAST(556.95 AS Decimal(18, 2)), 769)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (260, 11, CAST(45.19 AS Decimal(18, 2)), CAST(96754.85 AS Decimal(18, 2)), 332)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (260, 43, CAST(2.33 AS Decimal(18, 2)), CAST(2111.00 AS Decimal(18, 2)), 387)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (260, 56, CAST(6.13 AS Decimal(18, 2)), CAST(49950.56 AS Decimal(18, 2)), 874)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (260, 23, CAST(7.53 AS Decimal(18, 2)), CAST(16.22 AS Decimal(18, 2)), 972)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (261, 25, CAST(5.78 AS Decimal(18, 2)), CAST(23410.28 AS Decimal(18, 2)), 440)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (261, 75, CAST(3.05 AS Decimal(18, 2)), CAST(7973.43 AS Decimal(18, 2)), 718)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (262, 33, CAST(62.85 AS Decimal(18, 2)), CAST(2.87 AS Decimal(18, 2)), 222)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (262, 75, CAST(4.34 AS Decimal(18, 2)), CAST(70.47 AS Decimal(18, 2)), 614)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (262, 23, CAST(7.80 AS Decimal(18, 2)), CAST(33.53 AS Decimal(18, 2)), 973)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (263, 51, CAST(5.46 AS Decimal(18, 2)), CAST(1566.44 AS Decimal(18, 2)), 163)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (263, 87, CAST(4.89 AS Decimal(18, 2)), CAST(85.52 AS Decimal(18, 2)), 281)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (263, 39, CAST(78.90 AS Decimal(18, 2)), CAST(6.57 AS Decimal(18, 2)), 495)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (263, 4, CAST(15.48 AS Decimal(18, 2)), CAST(18312.61 AS Decimal(18, 2)), 558)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (263, 82, CAST(6.51 AS Decimal(18, 2)), CAST(75173.83 AS Decimal(18, 2)), 925)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (264, 75, CAST(8.20 AS Decimal(18, 2)), CAST(99.82 AS Decimal(18, 2)), 719)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (264, 56, CAST(73.31 AS Decimal(18, 2)), CAST(81361.77 AS Decimal(18, 2)), 875)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (265, 14, CAST(18.51 AS Decimal(18, 2)), CAST(619.37 AS Decimal(18, 2)), 559)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (266, 16, CAST(39.85 AS Decimal(18, 2)), CAST(20.13 AS Decimal(18, 2)), 50)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (266, 65, CAST(23.35 AS Decimal(18, 2)), CAST(48.49 AS Decimal(18, 2)), 104)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (266, 43, CAST(97.06 AS Decimal(18, 2)), CAST(57.97 AS Decimal(18, 2)), 388)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (266, 14, CAST(8.40 AS Decimal(18, 2)), CAST(0.32 AS Decimal(18, 2)), 560)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (266, 24, CAST(26.24 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)), 974)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (267, 27, CAST(33.39 AS Decimal(18, 2)), CAST(736.66 AS Decimal(18, 2)), 441)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (267, 39, CAST(93.99 AS Decimal(18, 2)), CAST(643.19 AS Decimal(18, 2)), 496)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (267, 24, CAST(2.71 AS Decimal(18, 2)), CAST(19387.14 AS Decimal(18, 2)), 975)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (268, 33, CAST(2.05 AS Decimal(18, 2)), CAST(28.15 AS Decimal(18, 2)), 223)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (268, 75, CAST(80.72 AS Decimal(18, 2)), CAST(920.04 AS Decimal(18, 2)), 720)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (268, 97, CAST(2.45 AS Decimal(18, 2)), CAST(4.95 AS Decimal(18, 2)), 770)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (268, 15, CAST(5.18 AS Decimal(18, 2)), CAST(83.53 AS Decimal(18, 2)), 819)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (269, 65, CAST(4.06 AS Decimal(18, 2)), CAST(1740.20 AS Decimal(18, 2)), 105)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (269, 11, CAST(38.78 AS Decimal(18, 2)), CAST(2542.77 AS Decimal(18, 2)), 333)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (269, 96, CAST(3.74 AS Decimal(18, 2)), CAST(4.68 AS Decimal(18, 2)), 665)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (269, 15, CAST(14.00 AS Decimal(18, 2)), CAST(75.86 AS Decimal(18, 2)), 820)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (270, 36, CAST(3.97 AS Decimal(18, 2)), CAST(28113.82 AS Decimal(18, 2)), 442)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (271, 59, CAST(66.20 AS Decimal(18, 2)), CAST(32024.09 AS Decimal(18, 2)), 164)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (271, 97, CAST(94.57 AS Decimal(18, 2)), CAST(593.21 AS Decimal(18, 2)), 771)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (272, 45, CAST(2.84 AS Decimal(18, 2)), CAST(6.66 AS Decimal(18, 2)), 497)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (272, 79, CAST(3.66 AS Decimal(18, 2)), CAST(7602.13 AS Decimal(18, 2)), 615)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (272, 96, CAST(50.63 AS Decimal(18, 2)), CAST(39.42 AS Decimal(18, 2)), 666)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (272, 56, CAST(6.52 AS Decimal(18, 2)), CAST(47.20 AS Decimal(18, 2)), 876)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (273, 68, CAST(92.72 AS Decimal(18, 2)), CAST(35.85 AS Decimal(18, 2)), 106)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (273, 87, CAST(8.04 AS Decimal(18, 2)), CAST(15793.77 AS Decimal(18, 2)), 282)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (273, 91, CAST(8.32 AS Decimal(18, 2)), CAST(115.37 AS Decimal(18, 2)), 926)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (274, 11, CAST(82.38 AS Decimal(18, 2)), CAST(96147.94 AS Decimal(18, 2)), 334)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (274, 50, CAST(13.68 AS Decimal(18, 2)), CAST(5913.23 AS Decimal(18, 2)), 389)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (274, 23, CAST(89.11 AS Decimal(18, 2)), CAST(159.02 AS Decimal(18, 2)), 561)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 16, CAST(3.71 AS Decimal(18, 2)), CAST(34.17 AS Decimal(18, 2)), 51)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 73, CAST(3.57 AS Decimal(18, 2)), CAST(6.79 AS Decimal(18, 2)), 107)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 33, CAST(5.17 AS Decimal(18, 2)), CAST(60.11 AS Decimal(18, 2)), 224)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 47, CAST(57.84 AS Decimal(18, 2)), CAST(26659.20 AS Decimal(18, 2)), 498)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 91, CAST(9.00 AS Decimal(18, 2)), CAST(190.32 AS Decimal(18, 2)), 927)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (275, 24, CAST(62.88 AS Decimal(18, 2)), CAST(2791.52 AS Decimal(18, 2)), 976)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (276, 79, CAST(14.83 AS Decimal(18, 2)), CAST(13.21 AS Decimal(18, 2)), 721)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (276, 22, CAST(89.69 AS Decimal(18, 2)), CAST(2327.10 AS Decimal(18, 2)), 821)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (277, 23, CAST(7.27 AS Decimal(18, 2)), CAST(949.59 AS Decimal(18, 2)), 562)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (277, 22, CAST(68.97 AS Decimal(18, 2)), CAST(138.08 AS Decimal(18, 2)), 822)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (278, 18, CAST(76.98 AS Decimal(18, 2)), CAST(11.80 AS Decimal(18, 2)), 52)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (278, 59, CAST(55.79 AS Decimal(18, 2)), CAST(7.58 AS Decimal(18, 2)), 165)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (278, 18, CAST(3.28 AS Decimal(18, 2)), CAST(2.03 AS Decimal(18, 2)), 335)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (278, 79, CAST(39.86 AS Decimal(18, 2)), CAST(4809.83 AS Decimal(18, 2)), 722)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (278, 98, CAST(6.41 AS Decimal(18, 2)), CAST(17636.94 AS Decimal(18, 2)), 928)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (279, 39, CAST(16.86 AS Decimal(18, 2)), CAST(5704.68 AS Decimal(18, 2)), 225)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (279, 36, CAST(57.55 AS Decimal(18, 2)), CAST(385.07 AS Decimal(18, 2)), 443)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (279, 79, CAST(2.51 AS Decimal(18, 2)), CAST(69527.51 AS Decimal(18, 2)), 616)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (279, 32, CAST(47.13 AS Decimal(18, 2)), CAST(21893.83 AS Decimal(18, 2)), 977)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (280, 94, CAST(8.61 AS Decimal(18, 2)), CAST(342.01 AS Decimal(18, 2)), 283)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (280, 4, CAST(66.10 AS Decimal(18, 2)), CAST(2614.69 AS Decimal(18, 2)), 772)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (280, 58, CAST(76.54 AS Decimal(18, 2)), CAST(8499.47 AS Decimal(18, 2)), 877)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (281, 39, CAST(41.35 AS Decimal(18, 2)), CAST(21.91 AS Decimal(18, 2)), 226)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (281, 18, CAST(20.46 AS Decimal(18, 2)), CAST(69.61 AS Decimal(18, 2)), 336)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (281, 56, CAST(79.85 AS Decimal(18, 2)), CAST(98773.22 AS Decimal(18, 2)), 390)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (281, 4, CAST(15.80 AS Decimal(18, 2)), CAST(57451.14 AS Decimal(18, 2)), 667)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (282, 64, CAST(6.88 AS Decimal(18, 2)), CAST(70187.10 AS Decimal(18, 2)), 166)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (282, 56, CAST(28.45 AS Decimal(18, 2)), CAST(2.02 AS Decimal(18, 2)), 391)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (282, 44, CAST(63.97 AS Decimal(18, 2)), CAST(553.10 AS Decimal(18, 2)), 444)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (282, 4, CAST(4.03 AS Decimal(18, 2)), CAST(41509.95 AS Decimal(18, 2)), 668)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (282, 98, CAST(48.26 AS Decimal(18, 2)), CAST(166.47 AS Decimal(18, 2)), 929)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (283, 73, CAST(39.75 AS Decimal(18, 2)), CAST(38640.38 AS Decimal(18, 2)), 108)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (283, 18, CAST(6.47 AS Decimal(18, 2)), CAST(580.45 AS Decimal(18, 2)), 337)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (283, 47, CAST(36.38 AS Decimal(18, 2)), CAST(1.02 AS Decimal(18, 2)), 499)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (283, 4, CAST(33.55 AS Decimal(18, 2)), CAST(82.48 AS Decimal(18, 2)), 669)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (283, 37, CAST(6.28 AS Decimal(18, 2)), CAST(64.03 AS Decimal(18, 2)), 978)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (284, 18, CAST(7.75 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 53)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (284, 5, CAST(20.87 AS Decimal(18, 2)), CAST(14691.74 AS Decimal(18, 2)), 773)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (284, 46, CAST(18.29 AS Decimal(18, 2)), CAST(5.37 AS Decimal(18, 2)), 979)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (285, 98, CAST(6.79 AS Decimal(18, 2)), CAST(29.83 AS Decimal(18, 2)), 284)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (285, 44, CAST(57.40 AS Decimal(18, 2)), CAST(7100.10 AS Decimal(18, 2)), 445)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (285, 53, CAST(1.33 AS Decimal(18, 2)), CAST(1.31 AS Decimal(18, 2)), 500)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (286, 56, CAST(47.01 AS Decimal(18, 2)), CAST(20530.38 AS Decimal(18, 2)), 392)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (286, 9, CAST(25.45 AS Decimal(18, 2)), CAST(1779.46 AS Decimal(18, 2)), 670)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (286, 22, CAST(17.98 AS Decimal(18, 2)), CAST(8.48 AS Decimal(18, 2)), 823)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (287, 31, CAST(37.67 AS Decimal(18, 2)), CAST(5.50 AS Decimal(18, 2)), 563)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (287, 80, CAST(93.09 AS Decimal(18, 2)), CAST(8.51 AS Decimal(18, 2)), 617)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (288, 66, CAST(7.03 AS Decimal(18, 2)), CAST(8948.26 AS Decimal(18, 2)), 167)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (288, 45, CAST(3.83 AS Decimal(18, 2)), CAST(840.39 AS Decimal(18, 2)), 227)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (288, 31, CAST(3.88 AS Decimal(18, 2)), CAST(31.33 AS Decimal(18, 2)), 564)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (288, 79, CAST(5.43 AS Decimal(18, 2)), CAST(3.73 AS Decimal(18, 2)), 723)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (288, 3, CAST(26.25 AS Decimal(18, 2)), CAST(532.99 AS Decimal(18, 2)), 930)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (289, 66, CAST(37.39 AS Decimal(18, 2)), CAST(144.91 AS Decimal(18, 2)), 168)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (289, 80, CAST(47.79 AS Decimal(18, 2)), CAST(11.47 AS Decimal(18, 2)), 618)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (289, 65, CAST(81.27 AS Decimal(18, 2)), CAST(0.84 AS Decimal(18, 2)), 878)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (290, 73, CAST(67.45 AS Decimal(18, 2)), CAST(39.25 AS Decimal(18, 2)), 109)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (290, 22, CAST(7.68 AS Decimal(18, 2)), CAST(1.99 AS Decimal(18, 2)), 338)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (291, 18, CAST(70.36 AS Decimal(18, 2)), CAST(5491.13 AS Decimal(18, 2)), 54)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (291, 98, CAST(51.47 AS Decimal(18, 2)), CAST(94.55 AS Decimal(18, 2)), 285)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (291, 85, CAST(11.08 AS Decimal(18, 2)), CAST(13.27 AS Decimal(18, 2)), 724)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (291, 25, CAST(13.62 AS Decimal(18, 2)), CAST(92110.22 AS Decimal(18, 2)), 824)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (292, 64, CAST(5.90 AS Decimal(18, 2)), CAST(99.21 AS Decimal(18, 2)), 393)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (292, 48, CAST(2.40 AS Decimal(18, 2)), CAST(694.91 AS Decimal(18, 2)), 446)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (292, 53, CAST(58.72 AS Decimal(18, 2)), CAST(96.66 AS Decimal(18, 2)), 501)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (292, 5, CAST(5.06 AS Decimal(18, 2)), CAST(27320.20 AS Decimal(18, 2)), 774)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (293, 19, CAST(1.16 AS Decimal(18, 2)), CAST(35820.04 AS Decimal(18, 2)), 55)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (293, 54, CAST(3.38 AS Decimal(18, 2)), CAST(3080.22 AS Decimal(18, 2)), 447)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (293, 80, CAST(4.70 AS Decimal(18, 2)), CAST(98487.66 AS Decimal(18, 2)), 619)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (293, 51, CAST(1.19 AS Decimal(18, 2)), CAST(9.03 AS Decimal(18, 2)), 980)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (294, 98, CAST(15.97 AS Decimal(18, 2)), CAST(654.32 AS Decimal(18, 2)), 286)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (294, 73, CAST(8.61 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)), 394)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (294, 13, CAST(9.31 AS Decimal(18, 2)), CAST(55.14 AS Decimal(18, 2)), 671)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (295, 66, CAST(2.42 AS Decimal(18, 2)), CAST(6.42 AS Decimal(18, 2)), 169)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (295, 100, CAST(8.96 AS Decimal(18, 2)), CAST(60.44 AS Decimal(18, 2)), 287)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (295, 22, CAST(6.90 AS Decimal(18, 2)), CAST(6.47 AS Decimal(18, 2)), 339)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (295, 73, CAST(4.80 AS Decimal(18, 2)), CAST(4.33 AS Decimal(18, 2)), 395)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (296, 13, CAST(18.62 AS Decimal(18, 2)), CAST(35.35 AS Decimal(18, 2)), 672)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (297, 19, CAST(96.55 AS Decimal(18, 2)), CAST(8.91 AS Decimal(18, 2)), 56)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (297, 55, CAST(34.61 AS Decimal(18, 2)), CAST(4625.25 AS Decimal(18, 2)), 502)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (297, 21, CAST(1.32 AS Decimal(18, 2)), CAST(16.10 AS Decimal(18, 2)), 673)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (298, 45, CAST(98.41 AS Decimal(18, 2)), CAST(5888.33 AS Decimal(18, 2)), 228)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (298, 36, CAST(32.74 AS Decimal(18, 2)), CAST(5611.62 AS Decimal(18, 2)), 565)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (298, 67, CAST(23.70 AS Decimal(18, 2)), CAST(301.18 AS Decimal(18, 2)), 879)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (298, 3, CAST(6.69 AS Decimal(18, 2)), CAST(220.90 AS Decimal(18, 2)), 931)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (299, 78, CAST(1.29 AS Decimal(18, 2)), CAST(52.55 AS Decimal(18, 2)), 110)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (299, 72, CAST(38.67 AS Decimal(18, 2)), CAST(2602.96 AS Decimal(18, 2)), 170)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (299, 30, CAST(4.72 AS Decimal(18, 2)), CAST(928.16 AS Decimal(18, 2)), 340)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (299, 5, CAST(2.28 AS Decimal(18, 2)), CAST(5.38 AS Decimal(18, 2)), 775)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (300, 78, CAST(57.96 AS Decimal(18, 2)), CAST(0.34 AS Decimal(18, 2)), 111)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (300, 36, CAST(14.30 AS Decimal(18, 2)), CAST(11.35 AS Decimal(18, 2)), 566)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (300, 85, CAST(2.84 AS Decimal(18, 2)), CAST(30344.79 AS Decimal(18, 2)), 725)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceNumber], [ProductId], [Quantity], [UnitPrice], [LineDetailId]) VALUES (300, 25, CAST(60.67 AS Decimal(18, 2)), CAST(80.73 AS Decimal(18, 2)), 825)
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (1, CAST(N'2014-09-16 01:17:00.000' AS DateTime), 10, N'9871')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (2, CAST(N'2014-11-06 10:45:00.000' AS DateTime), 10, N'Single mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (3, CAST(N'2014-01-22 05:09:00.000' AS DateTime), 10, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (4, CAST(N'2014-05-24 01:46:00.000' AS DateTime), 18, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (5, CAST(N'2014-07-26 05:28:00.000' AS DateTime), 18, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (6, CAST(N'2014-03-10 09:10:00.000' AS DateTime), 21, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (7, CAST(N'2014-11-29 01:22:00.000' AS DateTime), 22, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (8, CAST(N'2014-03-09 03:54:00.000' AS DateTime), 27, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (9, CAST(N'2014-09-15 03:56:00.000' AS DateTime), 27, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (10, CAST(N'2014-12-01 02:50:00.000' AS DateTime), 27, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (11, CAST(N'2014-12-25 00:33:00.000' AS DateTime), 34, N'Called 42 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (12, CAST(N'2014-03-04 10:31:00.000' AS DateTime), 34, N'4834')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (13, CAST(N'2014-02-10 10:34:00.000' AS DateTime), 34, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (14, CAST(N'2015-01-17 08:20:00.000' AS DateTime), 42, N'Not sure if this is correct.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (15, CAST(N'2014-04-25 04:24:00.000' AS DateTime), 42, N'All modifications are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (16, CAST(N'2015-01-31 02:06:00.000' AS DateTime), 43, N'7037')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (17, CAST(N'2014-05-19 06:25:00.000' AS DateTime), 43, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (18, CAST(N'2014-11-24 09:13:00.000' AS DateTime), 49, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (19, CAST(N'2014-07-12 06:33:00.000' AS DateTime), 52, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (20, CAST(N'2014-10-14 04:30:00.000' AS DateTime), 52, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (21, CAST(N'2014-08-01 08:31:00.000' AS DateTime), 52, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (22, CAST(N'2014-09-28 10:19:00.000' AS DateTime), 54, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (23, CAST(N'2014-06-15 00:22:00.000' AS DateTime), 54, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (24, CAST(N'2014-02-13 02:34:00.000' AS DateTime), 59, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (25, CAST(N'2014-07-27 10:15:00.000' AS DateTime), 59, N'Not sure if this is correct.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (26, CAST(N'2014-07-30 03:29:00.000' AS DateTime), 60, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (27, CAST(N'2015-01-09 08:13:00.000' AS DateTime), 60, N'Single mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (28, CAST(N'2015-03-07 09:55:00.000' AS DateTime), 60, N'This is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (29, CAST(N'2014-12-31 01:07:00.000' AS DateTime), 67, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (30, CAST(N'2014-06-02 04:53:00.000' AS DateTime), 67, N'All updates are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (31, CAST(N'2014-01-15 10:39:00.000' AS DateTime), 67, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (32, CAST(N'2015-04-04 05:11:00.000' AS DateTime), 75, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (33, CAST(N'2014-02-04 03:13:00.000' AS DateTime), 75, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (34, CAST(N'2014-01-25 10:34:00.000' AS DateTime), 83, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (35, CAST(N'2014-08-25 05:29:00.000' AS DateTime), 83, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (36, CAST(N'2014-12-01 04:08:00.000' AS DateTime), 83, N'3056')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (37, CAST(N'2014-06-12 00:32:00.000' AS DateTime), 87, N'Find more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (38, CAST(N'2014-03-30 03:56:00.000' AS DateTime), 87, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (39, CAST(N'2014-01-28 01:00:00.000' AS DateTime), 89, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (40, CAST(N'2015-02-23 01:56:00.000' AS DateTime), 95, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (41, CAST(N'2014-04-28 07:14:00.000' AS DateTime), 95, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (42, CAST(N'2014-06-18 08:52:00.000' AS DateTime), 95, N'All modifications are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (43, CAST(N'2014-06-24 07:34:00.000' AS DateTime), 102, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (44, CAST(N'2014-01-29 02:15:00.000' AS DateTime), 102, N'Not sure if this is correct.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (45, CAST(N'2014-02-28 09:27:00.000' AS DateTime), 104, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (46, CAST(N'2015-01-28 04:11:00.000' AS DateTime), 104, N'This is a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (47, CAST(N'2014-05-16 00:35:00.000' AS DateTime), 104, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (48, CAST(N'2015-04-14 02:38:00.000' AS DateTime), 114, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (49, CAST(N'2014-02-09 07:45:00.000' AS DateTime), 114, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (50, CAST(N'2015-02-06 04:00:00.000' AS DateTime), 114, N'Read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (51, CAST(N'2014-06-29 07:06:00.000' AS DateTime), 117, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (52, CAST(N'2014-02-04 02:20:00.000' AS DateTime), 118, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (53, CAST(N'2014-05-06 04:36:00.000' AS DateTime), 128, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (54, CAST(N'2015-03-26 10:30:00.000' AS DateTime), 128, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (55, CAST(N'2014-12-31 00:15:00.000' AS DateTime), 138, N'We need to investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (56, CAST(N'2014-01-18 00:29:00.000' AS DateTime), 142, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (57, CAST(N'2014-05-06 10:16:00.000' AS DateTime), 142, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (58, CAST(N'2015-04-22 05:43:00.000' AS DateTime), 152, N'0564')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (59, CAST(N'2014-06-20 01:46:00.000' AS DateTime), 162, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (60, CAST(N'2014-05-25 09:56:00.000' AS DateTime), 162, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (61, CAST(N'2015-03-07 08:21:00.000' AS DateTime), 162, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (62, CAST(N'2014-09-04 05:22:00.000' AS DateTime), 171, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (63, CAST(N'2014-03-18 07:28:00.000' AS DateTime), 172, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (64, CAST(N'2015-03-15 05:48:00.000' AS DateTime), 172, N'Single mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (65, CAST(N'2014-02-19 10:55:00.000' AS DateTime), 178, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (66, CAST(N'2014-10-02 00:53:00.000' AS DateTime), 178, N'0308')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (67, CAST(N'2014-05-03 01:20:00.000' AS DateTime), 181, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (68, CAST(N'2015-02-02 03:48:00.000' AS DateTime), 191, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (69, CAST(N'2014-02-02 01:34:00.000' AS DateTime), 191, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (70, CAST(N'2015-02-15 02:37:00.000' AS DateTime), 198, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (71, CAST(N'2014-05-22 08:08:00.000' AS DateTime), 2, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (72, CAST(N'2014-11-12 10:03:00.000' AS DateTime), 9, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (73, CAST(N'2014-12-09 01:42:00.000' AS DateTime), 9, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (74, CAST(N'2015-02-26 04:52:00.000' AS DateTime), 9, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (75, CAST(N'2014-10-06 01:35:00.000' AS DateTime), 15, N'On vacation.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (76, CAST(N'2014-01-10 01:03:00.000' AS DateTime), 23, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (77, CAST(N'2014-04-15 09:26:00.000' AS DateTime), 23, N'Missed his call.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (78, CAST(N'2014-05-04 09:05:00.000' AS DateTime), 23, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (79, CAST(N'2014-06-29 06:14:00.000' AS DateTime), 24, N'Single mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (80, CAST(N'2014-02-07 04:00:00.000' AS DateTime), 24, N'5816')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (81, CAST(N'2014-12-23 07:08:00.000' AS DateTime), 24, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (82, CAST(N'2014-05-30 10:08:00.000' AS DateTime), 26, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (83, CAST(N'2014-01-27 00:49:00.000' AS DateTime), 26, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (84, CAST(N'2014-10-24 05:43:00.000' AS DateTime), 26, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (85, CAST(N'2014-08-12 08:01:00.000' AS DateTime), 35, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (86, CAST(N'2014-04-12 03:42:00.000' AS DateTime), 35, N'This is a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (87, CAST(N'2014-10-28 07:26:00.000' AS DateTime), 40, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (88, CAST(N'2014-01-28 02:17:00.000' AS DateTime), 49, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (89, CAST(N'2014-04-09 04:10:00.000' AS DateTime), 49, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (90, CAST(N'2014-03-20 04:42:00.000' AS DateTime), 58, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (91, CAST(N'2014-06-18 07:34:00.000' AS DateTime), 68, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (92, CAST(N'2014-05-24 01:58:00.000' AS DateTime), 68, N'No longer used.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (93, CAST(N'2014-08-17 00:03:00.000' AS DateTime), 73, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (94, CAST(N'2014-09-14 01:11:00.000' AS DateTime), 73, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (95, CAST(N'2014-06-13 06:43:00.000' AS DateTime), 73, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (96, CAST(N'2015-01-24 05:13:00.000' AS DateTime), 79, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (97, CAST(N'2014-11-09 05:13:00.000' AS DateTime), 89, N'Must verify this entry.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (98, CAST(N'2014-10-04 01:37:00.000' AS DateTime), 94, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (99, CAST(N'2015-03-21 08:55:00.000' AS DateTime), 94, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (100, CAST(N'2015-02-04 01:19:00.000' AS DateTime), 103, N'No longer used.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (101, CAST(N'2015-01-08 03:05:00.000' AS DateTime), 103, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (102, CAST(N'2014-02-23 06:45:00.000' AS DateTime), 103, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (103, CAST(N'2015-03-22 02:24:00.000' AS DateTime), 108, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (104, CAST(N'2014-01-12 04:13:00.000' AS DateTime), 110, N'We need to investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (105, CAST(N'2014-02-25 02:00:00.000' AS DateTime), 110, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (106, CAST(N'2014-08-13 07:57:00.000' AS DateTime), 110, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (107, CAST(N'2014-04-18 04:36:00.000' AS DateTime), 114, N'This is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (108, CAST(N'2015-01-08 10:09:00.000' AS DateTime), 114, N'Not sure if this is correct.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (109, CAST(N'2015-01-17 04:17:00.000' AS DateTime), 114, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (110, CAST(N'2014-03-17 00:45:00.000' AS DateTime), 115, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (111, CAST(N'2014-09-26 03:15:00.000' AS DateTime), 115, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (112, CAST(N'2014-07-23 02:36:00.000' AS DateTime), 115, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (113, CAST(N'2014-11-16 10:01:00.000' AS DateTime), 119, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (114, CAST(N'2014-08-28 03:30:00.000' AS DateTime), 119, N'All modifications are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (115, CAST(N'2014-09-24 05:57:00.000' AS DateTime), 127, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (116, CAST(N'2014-12-07 09:33:00.000' AS DateTime), 133, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (117, CAST(N'2015-01-05 06:51:00.000' AS DateTime), 133, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (118, CAST(N'2014-12-29 07:18:00.000' AS DateTime), 133, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (119, CAST(N'2014-08-15 10:10:00.000' AS DateTime), 139, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (120, CAST(N'2014-06-25 02:21:00.000' AS DateTime), 144, N'5240')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (121, CAST(N'2014-08-13 07:26:00.000' AS DateTime), 144, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (122, CAST(N'2015-03-02 03:58:00.000' AS DateTime), 144, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (123, CAST(N'2014-02-24 08:51:00.000' AS DateTime), 150, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (124, CAST(N'2014-05-14 02:07:00.000' AS DateTime), 150, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (125, CAST(N'2014-07-26 08:10:00.000' AS DateTime), 150, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (126, CAST(N'2015-02-17 08:09:00.000' AS DateTime), 158, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (127, CAST(N'2014-11-15 06:26:00.000' AS DateTime), 158, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (128, CAST(N'2014-04-07 07:40:00.000' AS DateTime), 158, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (129, CAST(N'2014-05-17 03:38:00.000' AS DateTime), 167, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (130, CAST(N'2014-06-08 09:35:00.000' AS DateTime), 167, N'Read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (131, CAST(N'2015-01-27 09:28:00.000' AS DateTime), 170, N'Single mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (132, CAST(N'2015-02-08 01:49:00.000' AS DateTime), 170, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (133, CAST(N'2014-02-26 09:55:00.000' AS DateTime), 170, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (134, CAST(N'2015-03-12 03:37:00.000' AS DateTime), 176, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (135, CAST(N'2015-03-28 08:21:00.000' AS DateTime), 176, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (136, CAST(N'2014-04-11 00:00:00.000' AS DateTime), 186, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (137, CAST(N'2014-07-13 02:29:00.000' AS DateTime), 192, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (138, CAST(N'2014-03-31 03:25:00.000' AS DateTime), 192, N'Read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (139, CAST(N'2014-10-10 00:22:00.000' AS DateTime), 192, N'JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (140, CAST(N'2014-10-20 08:23:00.000' AS DateTime), 196, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (141, CAST(N'2015-01-24 08:44:00.000' AS DateTime), 198, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (142, CAST(N'2014-05-06 06:23:00.000' AS DateTime), 198, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (143, CAST(N'2014-06-22 01:09:00.000' AS DateTime), 7, N'Single mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (144, CAST(N'2014-05-28 02:41:00.000' AS DateTime), 7, N'No response.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (145, CAST(N'2014-10-28 10:31:00.000' AS DateTime), 7, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (146, CAST(N'2015-04-18 04:41:00.000' AS DateTime), 17, N'Please read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (147, CAST(N'2014-03-16 09:50:00.000' AS DateTime), 17, N'Not sure if this is correct.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (148, CAST(N'2014-11-26 01:42:00.000' AS DateTime), 22, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (149, CAST(N'2014-02-21 01:13:00.000' AS DateTime), 27, N'Expert mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (150, CAST(N'2014-12-07 10:46:00.000' AS DateTime), 27, N'Expert mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (151, CAST(N'2014-05-06 02:11:00.000' AS DateTime), 27, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (152, CAST(N'2014-01-03 01:12:00.000' AS DateTime), 30, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (153, CAST(N'2014-12-20 07:14:00.000' AS DateTime), 30, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (154, CAST(N'2014-02-28 00:44:00.000' AS DateTime), 36, N'No longer used.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (155, CAST(N'2014-11-13 00:13:00.000' AS DateTime), 36, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (156, CAST(N'2015-02-22 07:44:00.000' AS DateTime), 36, N'Missed his call.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (157, CAST(N'2014-08-30 00:53:00.000' AS DateTime), 45, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (158, CAST(N'2015-02-23 06:07:00.000' AS DateTime), 45, N'Single mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (159, CAST(N'2015-02-22 05:28:00.000' AS DateTime), 52, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (160, CAST(N'2015-02-02 00:58:00.000' AS DateTime), 60, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (161, CAST(N'2014-05-17 09:11:00.000' AS DateTime), 67, N'Find more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (162, CAST(N'2014-10-15 08:12:00.000' AS DateTime), 67, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (163, CAST(N'2015-03-07 08:13:00.000' AS DateTime), 72, N'JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (164, CAST(N'2014-10-27 02:41:00.000' AS DateTime), 72, N'On vacation.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (165, CAST(N'2015-05-03 08:20:00.000' AS DateTime), 72, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (166, CAST(N'2015-01-10 09:46:00.000' AS DateTime), 79, N'Single mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (167, CAST(N'2014-06-13 10:47:00.000' AS DateTime), 79, N'Expert mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (168, CAST(N'2014-05-04 00:30:00.000' AS DateTime), 86, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (169, CAST(N'2014-07-24 08:16:00.000' AS DateTime), 86, N'This entry is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (170, CAST(N'2014-12-03 08:10:00.000' AS DateTime), 86, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (171, CAST(N'2014-06-09 07:41:00.000' AS DateTime), 90, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (172, CAST(N'2015-03-27 03:23:00.000' AS DateTime), 90, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (173, CAST(N'2015-01-30 08:15:00.000' AS DateTime), 90, N'We need to investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (174, CAST(N'2014-03-24 02:52:00.000' AS DateTime), 97, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (175, CAST(N'2014-06-11 02:02:00.000' AS DateTime), 105, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (176, CAST(N'2014-04-11 05:11:00.000' AS DateTime), 105, N'Missed his call.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (177, CAST(N'2014-11-26 00:17:00.000' AS DateTime), 105, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (178, CAST(N'2014-08-28 05:31:00.000' AS DateTime), 106, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (179, CAST(N'2015-01-02 01:22:00.000' AS DateTime), 116, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (180, CAST(N'2015-01-08 06:44:00.000' AS DateTime), 120, N'THIS IS JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (181, CAST(N'2014-08-30 09:44:00.000' AS DateTime), 120, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (182, CAST(N'2015-04-26 06:57:00.000' AS DateTime), 124, N'All updates are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (183, CAST(N'2014-07-06 01:33:00.000' AS DateTime), 124, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (184, CAST(N'2014-04-05 01:25:00.000' AS DateTime), 126, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (185, CAST(N'2015-01-20 05:26:00.000' AS DateTime), 126, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (186, CAST(N'2014-12-28 09:13:00.000' AS DateTime), 135, N'2788')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (187, CAST(N'2014-12-29 08:56:00.000' AS DateTime), 135, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (188, CAST(N'2014-01-25 08:03:00.000' AS DateTime), 140, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (189, CAST(N'2014-07-07 10:55:00.000' AS DateTime), 146, N'Missed his call.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (190, CAST(N'2014-10-09 02:00:00.000' AS DateTime), 152, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (191, CAST(N'2015-02-26 00:57:00.000' AS DateTime), 152, N'Note')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (192, CAST(N'2014-04-06 07:45:00.000' AS DateTime), 155, N'On vacation.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (193, CAST(N'2014-11-21 03:49:00.000' AS DateTime), 155, N'All modifications are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (194, CAST(N'2014-08-03 10:22:00.000' AS DateTime), 161, N'A QUICK NOTE.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (195, CAST(N'2014-07-18 07:20:00.000' AS DateTime), 170, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (196, CAST(N'2014-09-15 03:55:00.000' AS DateTime), 178, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (197, CAST(N'2014-01-30 04:03:00.000' AS DateTime), 178, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (198, CAST(N'2015-01-28 04:57:00.000' AS DateTime), 182, N'Single mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (199, CAST(N'2015-04-17 08:46:00.000' AS DateTime), 187, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (200, CAST(N'2014-05-07 04:57:00.000' AS DateTime), 188, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (201, CAST(N'2015-02-13 06:40:00.000' AS DateTime), 194, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (202, CAST(N'2015-03-01 07:06:00.000' AS DateTime), 194, N'1858')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (203, CAST(N'2014-04-16 10:05:00.000' AS DateTime), 194, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (204, CAST(N'2014-02-12 00:28:00.000' AS DateTime), 196, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (205, CAST(N'2014-05-30 07:19:00.000' AS DateTime), 196, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (206, CAST(N'2015-03-03 10:25:00.000' AS DateTime), 200, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (207, CAST(N'2014-08-02 07:27:00.000' AS DateTime), 200, N'Still must send an email.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (208, CAST(N'2015-02-06 02:58:00.000' AS DateTime), 200, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (209, CAST(N'2014-06-30 03:15:00.000' AS DateTime), 3, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (210, CAST(N'2014-09-06 04:31:00.000' AS DateTime), 3, N'Note')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (211, CAST(N'2014-12-21 04:19:00.000' AS DateTime), 12, N'All modifications are cancelled')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (212, CAST(N'2014-01-17 10:48:00.000' AS DateTime), 12, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (213, CAST(N'2014-11-27 00:27:00.000' AS DateTime), 12, N'JUST A NOTE')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (214, CAST(N'2014-06-15 07:34:00.000' AS DateTime), 20, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (215, CAST(N'2014-09-10 10:37:00.000' AS DateTime), 24, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (216, CAST(N'2014-05-25 07:41:00.000' AS DateTime), 24, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (217, CAST(N'2014-10-06 02:25:00.000' AS DateTime), 28, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (218, CAST(N'2015-03-05 00:21:00.000' AS DateTime), 28, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (219, CAST(N'2014-01-26 00:46:00.000' AS DateTime), 35, N'No longer in use.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (220, CAST(N'2014-02-13 05:52:00.000' AS DateTime), 35, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (221, CAST(N'2015-04-15 09:17:00.000' AS DateTime), 39, N'Read this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (222, CAST(N'2014-03-17 03:06:00.000' AS DateTime), 39, N'No response.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (223, CAST(N'2014-02-10 00:57:00.000' AS DateTime), 39, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (224, CAST(N'2014-04-27 00:49:00.000' AS DateTime), 43, N'Called 71 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (225, CAST(N'2014-10-13 03:04:00.000' AS DateTime), 43, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (226, CAST(N'2014-08-28 06:25:00.000' AS DateTime), 49, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (227, CAST(N'2014-01-06 09:03:00.000' AS DateTime), 56, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (228, CAST(N'2014-09-18 05:58:00.000' AS DateTime), 56, N'Called 79 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (229, CAST(N'2015-03-31 00:35:00.000' AS DateTime), 58, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (230, CAST(N'2014-09-21 08:42:00.000' AS DateTime), 62, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (231, CAST(N'2015-03-26 02:10:00.000' AS DateTime), 62, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (232, CAST(N'2014-05-12 03:25:00.000' AS DateTime), 68, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (233, CAST(N'2014-11-11 04:43:00.000' AS DateTime), 68, N'No response.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (234, CAST(N'2014-04-05 02:41:00.000' AS DateTime), 73, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (235, CAST(N'2015-02-02 09:58:00.000' AS DateTime), 81, N'No response.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (236, CAST(N'2015-03-24 01:58:00.000' AS DateTime), 81, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (237, CAST(N'2014-06-13 06:04:00.000' AS DateTime), 86, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (238, CAST(N'2014-03-07 02:10:00.000' AS DateTime), 93, N'Test this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (239, CAST(N'2014-02-26 08:54:00.000' AS DateTime), 93, N'Still must send an email.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (240, CAST(N'2014-02-20 00:35:00.000' AS DateTime), 93, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (241, CAST(N'2015-05-04 05:51:00.000' AS DateTime), 94, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (242, CAST(N'2015-04-03 04:29:00.000' AS DateTime), 97, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (243, CAST(N'2014-02-08 08:15:00.000' AS DateTime), 106, N'Called 04 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (244, CAST(N'2014-04-18 03:56:00.000' AS DateTime), 110, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (245, CAST(N'2014-08-06 03:06:00.000' AS DateTime), 110, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (246, CAST(N'2014-10-03 02:31:00.000' AS DateTime), 112, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (247, CAST(N'2014-01-14 10:34:00.000' AS DateTime), 112, N'This is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (248, CAST(N'2014-10-24 01:06:00.000' AS DateTime), 119, N'Called 49 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (249, CAST(N'2014-10-08 09:23:00.000' AS DateTime), 119, N'Out of the office.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (250, CAST(N'2015-04-17 02:29:00.000' AS DateTime), 119, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (251, CAST(N'2015-02-18 08:06:00.000' AS DateTime), 125, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (252, CAST(N'2014-10-19 06:20:00.000' AS DateTime), 125, N'This is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (253, CAST(N'2014-12-10 10:20:00.000' AS DateTime), 125, N'A quick note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (254, CAST(N'2014-10-14 03:54:00.000' AS DateTime), 131, N'Note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (255, CAST(N'2014-11-14 08:49:00.000' AS DateTime), 131, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (256, CAST(N'2014-06-07 06:37:00.000' AS DateTime), 134, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (257, CAST(N'2014-05-08 00:55:00.000' AS DateTime), 142, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (258, CAST(N'2014-01-04 08:24:00.000' AS DateTime), 145, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (259, CAST(N'2015-04-20 00:15:00.000' AS DateTime), 145, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (260, CAST(N'2014-04-11 10:15:00.000' AS DateTime), 145, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (261, CAST(N'2014-03-06 10:33:00.000' AS DateTime), 152, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (262, CAST(N'2014-07-30 10:00:00.000' AS DateTime), 152, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (263, CAST(N'2014-05-18 05:33:00.000' AS DateTime), 152, N'On vacation.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (264, CAST(N'2014-07-21 06:35:00.000' AS DateTime), 158, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (265, CAST(N'2014-10-28 08:22:00.000' AS DateTime), 158, N'We must investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (266, CAST(N'2015-03-09 09:05:00.000' AS DateTime), 161, N'Expert mode turned off.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (267, CAST(N'2014-07-04 07:44:00.000' AS DateTime), 161, N'Unable to contact.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (268, CAST(N'2014-04-04 10:58:00.000' AS DateTime), 161, N'Expert mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (269, CAST(N'2014-11-21 08:28:00.000' AS DateTime), 165, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (270, CAST(N'2014-04-30 06:53:00.000' AS DateTime), 165, N'Checked.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (271, CAST(N'2014-09-28 02:57:00.000' AS DateTime), 165, N'Check out their website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (272, CAST(N'2014-12-31 10:23:00.000' AS DateTime), 174, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (273, CAST(N'2014-07-03 08:23:00.000' AS DateTime), 174, N'Single mode turned on.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (274, CAST(N'2014-10-12 08:41:00.000' AS DateTime), 174, N'Find more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (275, CAST(N'2014-05-30 09:50:00.000' AS DateTime), 179, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (276, CAST(N'2014-04-30 08:58:00.000' AS DateTime), 187, N'Find more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (277, CAST(N'2014-06-12 09:21:00.000' AS DateTime), 187, N'Emailed.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (278, CAST(N'2014-08-02 08:34:00.000' AS DateTime), 195, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (279, CAST(N'2014-09-27 03:36:00.000' AS DateTime), 195, N'Read more on the website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (280, CAST(N'2015-02-04 01:42:00.000' AS DateTime), 195, N'Please note the new website.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (281, CAST(N'2014-07-21 02:56:00.000' AS DateTime), 3, N'Note')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (282, CAST(N'2014-12-13 08:15:00.000' AS DateTime), 3, N'Must send an email.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (283, CAST(N'2014-09-15 05:22:00.000' AS DateTime), 13, N'We need to investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (284, CAST(N'2014-09-20 01:56:00.000' AS DateTime), 13, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (285, CAST(N'2014-05-11 06:23:00.000' AS DateTime), 22, N'Still must send an email.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (286, CAST(N'2014-03-21 01:27:00.000' AS DateTime), 30, N'Missed his call.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (287, CAST(N'2014-02-22 10:11:00.000' AS DateTime), 36, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (288, CAST(N'2015-02-19 02:57:00.000' AS DateTime), 40, N'Called 66 times.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (289, CAST(N'2014-11-06 10:19:00.000' AS DateTime), 47, N'Just a note.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (290, CAST(N'2014-07-08 06:00:00.000' AS DateTime), 47, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (291, CAST(N'2014-06-12 08:53:00.000' AS DateTime), 55, N'This is not OK.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (292, CAST(N'2014-05-18 08:49:00.000' AS DateTime), 55, N'No longer used.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (293, CAST(N'2014-11-14 01:42:00.000' AS DateTime), 62, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (294, CAST(N'2014-09-15 00:28:00.000' AS DateTime), 62, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (295, CAST(N'2014-04-25 01:02:00.000' AS DateTime), 62, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (296, CAST(N'2015-01-22 08:58:00.000' AS DateTime), 66, N'Wating for reminder.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (297, CAST(N'2015-02-10 04:23:00.000' AS DateTime), 71, N'We need to investigate this.')
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (298, CAST(N'2014-07-01 03:28:00.000' AS DateTime), 75, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (299, CAST(N'2015-03-25 01:38:00.000' AS DateTime), 76, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceNumber], [Date], [CustomerId], [Notes]) VALUES (300, CAST(N'2014-12-07 08:37:00.000' AS DateTime), 76, N'Wating for reminder.')
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (1, N'ELBOW MACARONI')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (2, N'Blue-Green Algae')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (3, N'Shark Cartilage')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (4, N'ROCK CNDY SWIZZLE')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (5, N'Ornamental Wheat')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (6, N'Yucca Root')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (7, N'Barley Grass')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (8, N'Herbal Detox Program')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (9, N'BINS WATERMELON')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (10, N'PEAR HALVES')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (11, N'Okra')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (12, N'Lima Beans')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (13, N'Swiss Chard')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (14, N'ALMONDS RED COATED')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (15, N'Bi-Color Tomatoes')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (16, N'COATING CANDY APPLE')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (17, N'Clove Oil')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (18, N'HAMBURG DILL CHIPS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (19, N'Okra')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (20, N'Blue-Green Algae')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (21, N'Kohlrabi')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (22, N'HEINZ TARRAGON VINEGAR')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (23, N'BAMBOO SKEWERS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (24, N'Hybrid Sweet Corn')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (25, N'Open-Pollinated Sweet Corn')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (26, N'Eucalyptus Oil')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (27, N'Red Raspberry')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (28, N'Flower Bulbs')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (29, N'Gingko Plus 4')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (30, N'APPLE GRANNY SMITH')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (31, N'Shark Cartilage')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (32, N'Currant Tomatoes')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (33, N'DRIED MUSHROOMS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (34, N'Okra')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (35, N'Garlic')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (36, N'Acidophilus')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (37, N'COOKIE W/NUTS CHOC/DIP')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (38, N'Beets')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (39, N'Bilberry')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (40, N'Grape Seed')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (41, N'Brussels Sprouts')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (42, N'Parsley')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (43, N'SANITIZER STERA SHEEN')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (44, N'Super Herb Diet Formula')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (45, N'Snow Peas')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (46, N'FEATHER DUSTER OSTRICH')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (47, N'SANITIZER STERA SHEEN')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (48, N'Perennial Onions')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (49, N'Citrin')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (50, N'GRID CLAMP')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (51, N'Open-Pollinated Sweet Corn')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (52, N'JUICE GRAPEFRUIT')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (53, N'Leeks')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (54, N'OLIVES STFD W/ANCHOVIE')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (55, N'Yohimbe')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (56, N'Rosemary')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (57, N'COOKING WINE RED BURGUNDY')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (58, N'Bunching Onions')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (59, N'SWEETENER NATRA TASTE')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (60, N'Blue-Green Algae')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (61, N'Almond Oil')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (62, N'Hardneck Garlic')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (63, N'Cauliflower')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (64, N'Peas')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (65, N'Bi-Color Tomatoes')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (66, N'Parsnips')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (67, N'TABLE RED SMALL')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (68, N'Bilberry')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (69, N'TOPPING KRUNCH KOTE')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (70, N'PETRO GEL')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (71, N'TEA GREEN BAGS BOX')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (72, N'Chinese Cabbage')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (73, N'Red Raspberry')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (74, N'Cabbage')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (75, N'Feverfew')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (76, N'DRIED MUSHROOMS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (77, N'Cucumbers')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (78, N'Softneck (Braidable) Garlic')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (79, N'PUDDING VANILLA DEAN')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (80, N'Purple Tomatoes')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (81, N'BAG POLY FOR POTATOES')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (82, N'PETRO GEL')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (83, N'GATORADE LEMON LIME')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (84, N'Yohimbe')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (85, N'Swiss Chard')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (86, N'Acidophilus')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (87, N'ELBOW MACARONI')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (88, N'Shark Cartilage')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (89, N'Dent Corn')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (90, N'ELEPHANT GARLIC')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (91, N'Peas')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (92, N'PEACHES SLICED')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (93, N'Snap Bush Beans')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (94, N'Broccoli')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (95, N'Eggplant')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (96, N'GREEN LENTILS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (97, N'BAGS FOODSAVER 6-PACK')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (98, N'Gingko Plus 4')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (99, N'GREEN LENTILS')
GO
INSERT [dbo].[Products] ([ProductId], [Description]) VALUES (100, N'Devils Claw')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices] FOREIGN KEY([InvoiceNumber])
REFERENCES [dbo].[Invoices] ([InvoiceNumber])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Products]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Customers2] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Customers2]
GO
