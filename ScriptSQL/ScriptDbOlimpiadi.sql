USE [master]
GO
/****** Object:  Database [Olimpiadi]    Script Date: 01/07/2025 15:21:27 ******/
CREATE DATABASE [Olimpiadi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Olimpiadi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Olimpiadi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Olimpiadi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Olimpiadi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Olimpiadi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Olimpiadi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Olimpiadi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Olimpiadi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Olimpiadi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Olimpiadi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Olimpiadi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Olimpiadi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Olimpiadi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Olimpiadi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Olimpiadi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Olimpiadi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Olimpiadi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Olimpiadi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Olimpiadi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Olimpiadi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Olimpiadi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Olimpiadi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Olimpiadi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Olimpiadi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Olimpiadi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Olimpiadi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Olimpiadi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Olimpiadi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Olimpiadi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Olimpiadi] SET  MULTI_USER 
GO
ALTER DATABASE [Olimpiadi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Olimpiadi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Olimpiadi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Olimpiadi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Olimpiadi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Olimpiadi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Olimpiadi] SET QUERY_STORE = ON
GO
ALTER DATABASE [Olimpiadi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Olimpiadi]
GO
/****** Object:  Table [dbo].[Atleta]    Script Date: 01/07/2025 15:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atleta](
	[IdAtleta] [int] NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Eta] [int] NOT NULL,
	[Nazione] [int] NOT NULL,
 CONSTRAINT [PK_Atleta] PRIMARY KEY CLUSTERED 
(
	[IdAtleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtletaDisciplina]    Script Date: 01/07/2025 15:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtletaDisciplina](
	[IdAtDis] [int] NOT NULL,
	[Atleta] [int] NOT NULL,
	[Disciplina] [int] NOT NULL,
 CONSTRAINT [PK_AtletaDisciplina] PRIMARY KEY CLUSTERED 
(
	[IdAtDis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplina]    Script Date: 01/07/2025 15:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina](
	[IdDisciplina] [int] NOT NULL,
	[NomeDisciplina] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Disciplina] PRIMARY KEY CLUSTERED 
(
	[IdDisciplina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nazione]    Script Date: 01/07/2025 15:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nazione](
	[IdNazione] [int] NOT NULL,
	[NomeNazione] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Nazione] PRIMARY KEY CLUSTERED 
(
	[IdNazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Olimpiadi] SET  READ_WRITE 
GO
