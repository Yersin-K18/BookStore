USE [sales_shop]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footers](
	[ID] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuGroups]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuGroups](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_MenuGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[URL] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[GroupID] [int] NULL,
	[Targer] [varchar](10) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quanlity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[CustomerName] [nvarchar](250) NOT NULL,
	[CustomerAddress] [nvarchar](250) NOT NULL,
	[CustomerEmail] [nvarchar](250) NOT NULL,
	[CustomerMobile] [varchar](50) NOT NULL,
	[CustomerMassage] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[PaymentMethod] [nvarchar](250) NULL,
	[PaymenStatus] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[CategoryID] [int] NULL,
	[Image] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategories]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ParentID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[Images] [nvarchar](500) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdateBy] [varchar](250) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
 CONSTRAINT [PK_PostCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTags]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTags](
	[PostID] [int] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[CategoryID] [int] NULL,
	[Image] [nvarchar](500) NULL,
	[MoreImages] [xml] NULL,
	[Promotion] [decimal](18, 0) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Warranty] [int] NULL,
	[Decription] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsCategories]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsCategories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ParentID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[Images] [nvarchar](500) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdateBy] [varchar](250) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[ProductID] [int] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[URL] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportOnlines]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportOnlines](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Department] [nvarchar](250) NULL,
	[Skype] [nvarchar](250) NULL,
	[Mobile] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Yahoo] [nvarchar](250) NULL,
	[Facebook] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SupportOnlines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[ID] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[ValueString] [nvarchar](250) NULL,
	[ValueInt] [int] NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitorStatistics]    Script Date: 6/12/2023 9:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[VisitedDate] [datetime] NOT NULL,
	[IP Address] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MenuGroups]  WITH CHECK ADD  CONSTRAINT [FK_MenuGroups_Menus] FOREIGN KEY([ID])
REFERENCES [dbo].[Menus] ([ID])
GO
ALTER TABLE [dbo].[MenuGroups] CHECK CONSTRAINT [FK_MenuGroups_Menus]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductsCategories] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductsCategories] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductsCategories]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[PostCategories] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategories]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Post]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Tags]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductsCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductsCategories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductsCategories]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags]
GO
