USE [master]
GO
/****** Object:  Database [ClothingDatabase]    Script Date: 5/16/2017 7:44:40 PM ******/
CREATE DATABASE [ClothingDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingDatabase.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClothingDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClothingDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClothingDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClothingDatabase]
GO
/****** Object:  Table [dbo].[AccessoryTypes]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessoryTypes](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BottomTypes]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BottomTypes](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BottomTypes] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyAccessories]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyAccessories](
	[MyAccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[AccessoryID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyAccessories] PRIMARY KEY CLUSTERED 
(
	[MyAccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyBottoms]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyBottoms](
	[MyBottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[BottomID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyBottoms] PRIMARY KEY CLUSTERED 
(
	[MyBottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyShoes]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyShoes](
	[MyShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[ShoeID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyShoes] PRIMARY KEY CLUSTERED 
(
	[MyShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyTops]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyTops](
	[MyTopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[TopID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyTops] PRIMARY KEY CLUSTERED 
(
	[MyTopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShoeTypes]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoeTypes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeTypes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TopTypes]    Script Date: 5/16/2017 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TopTypes](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TopTypes] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AccessoryTypes] ON 

INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (1, N'Belts')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (2, N'Hats')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (3, N'Scarves')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (4, N'Socks')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (5, N'Watches')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (6, N'Neckties')
SET IDENTITY_INSERT [dbo].[AccessoryTypes] OFF
SET IDENTITY_INSERT [dbo].[BottomTypes] ON 

INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (1, N'Dress Pants')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (2, N'Jeans')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (3, N'Khakis')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (4, N'Shorts')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (5, N'Swimming Trunks')
SET IDENTITY_INSERT [dbo].[BottomTypes] OFF
SET IDENTITY_INSERT [dbo].[MyAccessories] ON 

INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (3, N'checkered scarf', N'http://www.bluemaize.net/im/scarves/checkered-scarf-0.jpg', 3, N'red, black', N'fall, winter', N'casual')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (4, N'leather belt', N'http://moneyinc.com/wp-content/uploads/2016/10/Dark-Grey-Buckle-Belt-1.jpg', 1, N'black', N'spring, summer, fall, winter', N'formal')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (5, N'Rolex', N'https://www.bobswatches.com/images/rolex-watches/explorer.png', 5, N'silver', N'spring, summer, fall', N'formal')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (6, N'Red Sox baseball cap', N'http://images.footballfanatics.com/FFImage/thumb.aspx?i=/productImages/_2211000/ff_2211497_full.jpg&w=340', 2, N'navy blue, red', N'spring, summer', N'casual')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (7, N'turban beanie', N'http://g01.a.alicdn.com/kf/HTB1r3_ZKVXXXXc0XpXXq6xXFXXX3/Brand-hat-font-b-men-b-font-Winter-Beanies-women-Knitted-wool-bonnet-Plus-velvet-Soft.jpg', 2, N'blue, brown', N'fall, winter', N'casual')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (8, N'checkered socks', N'http://pixel.nymag.com/imgs/daily/strategist/2017/04/26/mens-socks/Uniqlo.w710.h473.2x.jpg', 4, N'blue, brown', N'fall, winter, spring', N'formal')
SET IDENTITY_INSERT [dbo].[MyAccessories] OFF
SET IDENTITY_INSERT [dbo].[MyBottoms] ON 

INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (1, N'Bragg jeans', N'http://images.firetrap.com/images/products/64001022_l.jpg', 2, N'dark blue', N'spring, summer, fall, winter', N'casual')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (2, N'work pants', N'http://images.cabelas.com/is/image/cabelas/s7_906996_renderset_03?wid=300&hei=230&op_sharpen=1', 3, N'brown', N'spring, summer, fall, winter', N'business-casual')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (3, N'gym shorts', N'https://cdn.shopify.com/s/files/1/1193/2354/products/7M7AFMK_NAV_columbia-blue_large.jpeg?v=1473861002', 4, N'blue', N'spring, summer, fall, winter', N'gym')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (4, N'black pants', N'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=15008842', 1, N'black', N'fall, winter', N'formal, business-casual')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (5, N'comfy jeans', N'http://images.sportsdirect.com/images/products/64819892_4pl.jpg', 2, N'light blue', N'spring, summer, fall', N'casual')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (6, N'pool shorts', N'https://cdn.shopify.com/s/files/1/0077/0432/products/untitled--29_720x720.jpg?v=1490202002', 5, N'blue, white, red', N'summer', N'casual')
SET IDENTITY_INSERT [dbo].[MyBottoms] OFF
SET IDENTITY_INSERT [dbo].[MyShoes] ON 

INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (1, N'Puma sneakers', N'http://pumaecom.scene7.com/is/image/PUMAECOM/185999_02_PNA?$PUMA_GRID$', 5, N'black, white, red', N'spring, summer', N'casual')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (2, N'beach flip-flops', N'http://thumbs2.ebaystatic.com/d/l225/m/muw8kcc72Btw58aRzZD8iqA.jpg', 3, N'brown', N'summer', N'casual')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (3, N'leather boots', N'https://s-media-cache-ak0.pinimg.com/originals/f0/e5/dc/f0e5dcb6be26a3d5c9650ae648cd2af8.jpg', 1, N'reddish', N'fall', N'casual')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (4, N'dress shoes', N'https://media.kohlsimg.com/is/image/kohls/1297010_Black?wid=240&hei=240&op_sharpen=1', 2, N'black', N'winter', N'formal')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (5, N'house shoes', N'https://images.hayneedle.com/mgen/master:LMO204.jpg', 4, N'grey', N'spring, summer, fall, winter', N'casual')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (6, N'Adidas sneakers', N'http://nord.imgix.net/Zoom/15/_11064575.jpg?fit=fill&bg=FFF&fm=jpg&trim=color&trimcolor=FFF&trimtol=20&w=670&h=720', 5, N'blue', N'summer, fall', N'casual')
SET IDENTITY_INSERT [dbo].[MyShoes] OFF
SET IDENTITY_INSERT [dbo].[MyTops] ON 

INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (1, N'LaCoste golf shirt', N'http://www.bluemaize.net/im/mens-clothing/lacoste-polo-2.jpg', 4, N'light blue', N'spring, summer, fall', N'casual, business-casual')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (2, N'striped shirt', N'http://rockstaracademy.co.uk/shop/Mens_t-shirt_white_black_BIG.jpg', 7, N'black, white', N'spring, summer, fall', N'casual')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (3, N'Puma hoodie', N'https://cdn.shopify.com/s/files/1/1119/4994/products/00_4f75a9df-0f45-4460-95a6-4d8a5e9f8f7c.jpg?v=1468925543', 5, N'red', N'fall, winter, spring', N'casual')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (4, N'work shirt', N'http://workingperson.com/media/catalog/product/cache/1/image/400x/9df78eab33525d08d6e5fb8d27136e95/w/r/wrangler-ws10-wh-f_01.jpg', 1, N'white', N'spring, summer, fall, winter', N'work')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (5, N'party shirt', N'http://www.dhresource.com/260x260s/f2-albu-g4-M01-40-E9-rBVaEFft-G2AYm-FAArgzhV97xY945.jpg/classic-plaid-mens-shirts-casual-nice-patchwork.jpg', 1, N'blue, white', N'summer, fall', N'casual, formal')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (6, N'Coofandy slim fit', N'https://images-na.ssl-images-amazon.com/images/I/41Pd07tfpqL._AC_UL260_SR200,260_.jpg', 1, N'white, black', N'spring, summer', N'casual')
SET IDENTITY_INSERT [dbo].[MyTops] OFF
SET IDENTITY_INSERT [dbo].[ShoeTypes] ON 

INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (1, N'Boots')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (2, N'Dress Shoes')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (3, N'Sandals')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (4, N'Slippers')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (5, N'Tennis Shoes')
SET IDENTITY_INSERT [dbo].[ShoeTypes] OFF
SET IDENTITY_INSERT [dbo].[TopTypes] ON 

INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (1, N'Dress Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (2, N'Jackets')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (4, N'Polo Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (5, N'Pullovers')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (6, N'Sweaters')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (7, N'T-Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (8, N'Tank Tops')
SET IDENTITY_INSERT [dbo].[TopTypes] OFF
ALTER TABLE [dbo].[MyAccessories]  WITH CHECK ADD  CONSTRAINT [FK_MyAccessories_AccessoryTypes] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[AccessoryTypes] ([AccessoryID])
GO
ALTER TABLE [dbo].[MyAccessories] CHECK CONSTRAINT [FK_MyAccessories_AccessoryTypes]
GO
ALTER TABLE [dbo].[MyBottoms]  WITH CHECK ADD  CONSTRAINT [FK_MyBottoms_BottomTypes] FOREIGN KEY([BottomID])
REFERENCES [dbo].[BottomTypes] ([BottomID])
GO
ALTER TABLE [dbo].[MyBottoms] CHECK CONSTRAINT [FK_MyBottoms_BottomTypes]
GO
ALTER TABLE [dbo].[MyShoes]  WITH CHECK ADD  CONSTRAINT [FK_MyShoes_ShoeTypes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[ShoeTypes] ([ShoeID])
GO
ALTER TABLE [dbo].[MyShoes] CHECK CONSTRAINT [FK_MyShoes_ShoeTypes]
GO
ALTER TABLE [dbo].[MyTops]  WITH CHECK ADD  CONSTRAINT [FK_MyTops_TopTypes] FOREIGN KEY([TopID])
REFERENCES [dbo].[TopTypes] ([TopID])
GO
ALTER TABLE [dbo].[MyTops] CHECK CONSTRAINT [FK_MyTops_TopTypes]
GO
USE [master]
GO
ALTER DATABASE [ClothingDatabase] SET  READ_WRITE 
GO
