USE [master]
GO
/****** Object:  Database [practiquemos2]    Script Date: 04/09/2017 09:30:32 p.m. ******/
CREATE DATABASE [practiquemos2]
 CONTAINMENT = NONE
 GO
ALTER DATABASE [practiquemos2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practiquemos2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practiquemos2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practiquemos2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practiquemos2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practiquemos2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practiquemos2] SET ARITHABORT OFF 
GO
ALTER DATABASE [practiquemos2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [practiquemos2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [practiquemos2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practiquemos2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practiquemos2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practiquemos2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practiquemos2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practiquemos2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practiquemos2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practiquemos2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practiquemos2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [practiquemos2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practiquemos2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practiquemos2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practiquemos2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practiquemos2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practiquemos2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practiquemos2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practiquemos2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practiquemos2] SET  MULTI_USER 
GO
ALTER DATABASE [practiquemos2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practiquemos2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practiquemos2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practiquemos2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [practiquemos2]
GO
/****** Object:  User [Mate_13-PC\Mate_13]    Script Date: 04/09/2017 09:30:32 p.m. ******/
CREATE USER [Mate_13-PC\Mate_13] FOR LOGIN [Mate_13-PC\Mate_13] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Alumno] [varchar](50) NOT NULL,
	[matricula] [numeric](18, 0) NOT NULL,
	[materia] [varchar](300) NULL
) ON [PRIMARY]

GO
create unique index indx_matricula
ON practiquemos2.Alumnos(matricula)
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Establo]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establo](
	[caballos] [numeric](18, 0) NULL,
	[ponys] [numeric](18, 0) NULL,
	[burros] [numeric](18, 0) NULL,
	[unicornios] [numeric](18, 0) NULL,
	[dragones] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estantes]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estantes](
	[estante A] [bit] NULL,
	[Estante B] [bit] NULL,
	[Estante c] [bit] NULL,
	[estante D] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hamburguesa]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hamburguesa](
	[tomate] [numeric](18, 0) NULL,
	[lechuga] [numeric](18, 0) NULL,
	[carne] [numeric](18, 0) NULL,
	[pan] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ingredientes]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingredientes](
	[tomate] [nchar](10) NULL,
	[lechuga] [nchar](10) NULL,
	[aguacate] [nchar](10) NULL,
	[panes] [nchar](10) NULL,
	[carnes] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_1](
	[nombre] [varchar](50) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trabajadores]    Script Date: 04/09/2017 09:30:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trabajadores](
	[trabajador] [varchar](50) NULL,
	[usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [practiquemos2] SET  READ_WRITE 
GO
