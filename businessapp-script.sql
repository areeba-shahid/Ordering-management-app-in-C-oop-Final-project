USE [master]
GO
/****** Object:  Database [businessapp]    Script Date: 14-May-24 10:10:34 PM ******/
CREATE DATABASE [businessapp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'businessapp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\businessapp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'businessapp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\businessapp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [businessapp] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [businessapp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [businessapp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [businessapp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [businessapp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [businessapp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [businessapp] SET ARITHABORT OFF 
GO
ALTER DATABASE [businessapp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [businessapp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [businessapp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [businessapp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [businessapp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [businessapp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [businessapp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [businessapp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [businessapp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [businessapp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [businessapp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [businessapp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [businessapp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [businessapp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [businessapp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [businessapp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [businessapp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [businessapp] SET RECOVERY FULL 
GO
ALTER DATABASE [businessapp] SET  MULTI_USER 
GO
ALTER DATABASE [businessapp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [businessapp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [businessapp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [businessapp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [businessapp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [businessapp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'businessapp', N'ON'
GO
ALTER DATABASE [businessapp] SET QUERY_STORE = ON
GO
ALTER DATABASE [businessapp] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [businessapp]
GO
/****** Object:  Table [dbo].[bought]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bought](
	[itemid] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Cost] [nvarchar](100) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[colorselected] [nchar](100) NULL,
 CONSTRAINT [PK_bought] PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boughtrecently]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boughtrecently](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Cost] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](300) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[colorselected] [nvarchar](100) NULL,
 CONSTRAINT [PK__boughtre__56A22C926E0C5D78] PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cosmetics]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosmetics](
	[cosmeticID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Cost] [float] NOT NULL,
	[Availibility] [int] NOT NULL,
	[DateOfManufacture] [datetime] NOT NULL,
	[DateOfExpire] [datetime] NOT NULL,
	[WarrantyDuration] [float] NOT NULL,
	[Dimensions] [nvarchar](100) NOT NULL,
	[Quantity] [float] NOT NULL,
	[skintype] [nvarchar](100) NOT NULL,
	[shade] [nvarchar](100) NOT NULL,
	[packagingtype] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__cosmetic__BB23A0E1F76F4078] PRIMARY KEY CLUSTERED 
(
	[cosmeticID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[electronics]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[electronics](
	[electronicID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Cost] [float] NOT NULL,
	[Availibility] [int] NOT NULL,
	[DateOfManufacture] [datetime] NOT NULL,
	[DateOfExpire] [datetime] NOT NULL,
	[WarrantyDuration] [float] NOT NULL,
	[Dimensions] [nvarchar](100) NOT NULL,
	[Quantity] [float] NOT NULL,
	[typeofelectronic] [nvarchar](100) NOT NULL,
	[applications] [nvarchar](500) NOT NULL,
	[OperatingConditions] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK__electron__C15BD64020A2E871] PRIMARY KEY CLUSTERED 
(
	[electronicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[homedecor]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[homedecor](
	[homedecorID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Cost] [float] NOT NULL,
	[Availibility] [int] NOT NULL,
	[DateOfManufacture] [datetime] NOT NULL,
	[DateOfExpire] [datetime] NOT NULL,
	[WarrantyDuration] [float] NOT NULL,
	[Dimensions] [nvarchar](100) NOT NULL,
	[Quantity] [float] NOT NULL,
	[material] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__homedeco__B4A531C93796BFDB] PRIMARY KEY CLUSTERED 
(
	[homedecorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[LookupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[returnedItems]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[returnedItems](
	[itemid] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](100) NOT NULL,
	[Company] [nvarchar](100) NOT NULL,
	[Cost] [float] NOT NULL,
	[Type] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signup]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signup](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[Roll] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__signup__1788CCAC0F8886AF] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToShip]    Script Date: 14-May-24 10:10:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToShip](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[itemsbought] [nvarchar](500) NOT NULL,
	[bill] [float] NOT NULL,
	[paymentMethod] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__ToShip__C3905BCFFBB39078] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bought]  WITH CHECK ADD  CONSTRAINT [fk_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[signup] ([UserID])
GO
ALTER TABLE [dbo].[bought] CHECK CONSTRAINT [fk_UserID]
GO
USE [master]
GO
ALTER DATABASE [businessapp] SET  READ_WRITE 
GO
