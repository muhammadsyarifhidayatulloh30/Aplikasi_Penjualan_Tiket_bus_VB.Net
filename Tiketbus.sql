USE [master]
GO
/****** Object:  Database [tiketbus]    Script Date: 25/01/2019 17.10.59 ******/
CREATE DATABASE [tiketbus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tiketbus', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tiketbus.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tiketbus_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tiketbus_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tiketbus] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tiketbus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tiketbus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tiketbus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tiketbus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tiketbus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tiketbus] SET ARITHABORT OFF 
GO
ALTER DATABASE [tiketbus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tiketbus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tiketbus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tiketbus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tiketbus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tiketbus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tiketbus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tiketbus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tiketbus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tiketbus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tiketbus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tiketbus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tiketbus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tiketbus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tiketbus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tiketbus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tiketbus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tiketbus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tiketbus] SET  MULTI_USER 
GO
ALTER DATABASE [tiketbus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tiketbus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tiketbus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tiketbus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tiketbus] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tiketbus]
GO
/****** Object:  Table [dbo].[mstiket1]    Script Date: 25/01/2019 17.10.59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mstiket1](
	[id] [nchar](10) NOT NULL,
	[trayek] [nchar](15) NULL,
	[tujuan] [nvarchar](50) NULL,
	[kelas] [nchar](10) NULL,
	[Nopol] [nchar](10) NULL,
 CONSTRAINT [PK_mstiket1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[msuser]    Script Date: 25/01/2019 17.10.59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[msuser](
	[username] [nchar](10) NULL,
	[password] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[penjualan1]    Script Date: 25/01/2019 17.10.59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penjualan1](
	[id] [nchar](10) NOT NULL,
	[nama_pembeli] [nvarchar](50) NULL,
	[no_telpon] [nchar](15) NULL,
	[tujuan] [nvarchar](50) NULL,
	[tanggal_berangkat] [date] NULL,
	[jam_berangkat] [nchar](10) NULL,
	[kelas] [nchar](10) NULL,
	[no_kursi] [nchar](10) NULL,
	[nopol] [nchar](10) NULL,
	[harga] [nchar](15) NULL,
	[jumlah_beli] [nchar](10) NULL,
	[total_harga] [nchar](15) NULL,
	[dibayar] [nchar](15) NULL,
	[kembalian] [nchar](15) NULL,
 CONSTRAINT [PK_penjualan1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[penjualan12]    Script Date: 25/01/2019 17.10.59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penjualan12](
	[id] [nchar](10) NOT NULL,
	[nama_pembeli] [nvarchar](50) NULL,
	[no_telpon] [nchar](15) NULL,
	[tujuan] [nvarchar](50) NULL,
	[tanggal_berangkat] [nchar](20) NULL,
	[jam_berangkat] [nchar](5) NULL,
	[kelas] [nchar](10) NULL,
	[no_kursi] [nchar](10) NULL,
	[nopol] [nchar](10) NULL,
	[harga] [nchar](15) NULL,
	[jumlah_beli] [nchar](10) NULL,
	[total_harga] [nchar](15) NULL,
	[dibayar] [nchar](15) NULL,
	[kembalian] [nchar](15) NULL,
 CONSTRAINT [PK_penjualan12] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stroke]    Script Date: 25/01/2019 17.10.59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stroke](
	[id] [nchar](10) NOT NULL,
	[nama_pembeli] [nvarchar](50) NULL,
	[no_telpon] [nchar](15) NULL,
	[tujuan] [nvarchar](50) NULL,
	[tanggal_berangkat] [nchar](20) NULL,
	[jam_berangkat] [nchar](5) NULL,
	[kelas] [nchar](10) NULL,
	[no_kursi] [nchar](10) NULL,
	[nopol] [nchar](10) NULL,
	[harga] [nchar](10) NULL,
 CONSTRAINT [PK_stroke] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [tiketbus] SET  READ_WRITE 
GO
