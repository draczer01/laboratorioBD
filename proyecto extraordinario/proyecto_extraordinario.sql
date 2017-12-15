USE [POS]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Ticket'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Ticket'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  StoredProcedure [dbo].[ventas_hoy]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP PROCEDURE [dbo].[ventas_hoy]
GO
/****** Object:  StoredProcedure [dbo].[sp1]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP PROCEDURE [dbo].[sp1]
GO
/****** Object:  View [dbo].[View_Ticket]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP VIEW [dbo].[View_Ticket]
GO
/****** Object:  Table [dbo].[Tikets]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP TABLE [dbo].[Tikets]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP VIEW [dbo].[View_1]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
USE [master]
GO
/****** Object:  Database [POS]    Script Date: 14/12/2017 08:42:44 p. m. ******/
DROP DATABASE [POS]
GO
/****** Object:  Database [POS]    Script Date: 14/12/2017 08:42:44 p. m. ******/
CREATE DATABASE [POS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\POS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\POS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [POS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POS] SET ARITHABORT OFF 
GO
ALTER DATABASE [POS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POS] SET RECOVERY FULL 
GO
ALTER DATABASE [POS] SET  MULTI_USER 
GO
ALTER DATABASE [POS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'POS', N'ON'
GO
ALTER DATABASE [POS] SET QUERY_STORE = OFF
GO
USE [POS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [POS]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/12/2017 08:42:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[cliente_id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[edad] [int] NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](10) NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[employee_id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[edad] [int] NULL,
	[telefono] [varchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[correo_electronico] [varchar](50) NULL,
	[productos] [int] NOT NULL,
	[cliente_id] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[precio] [float] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.Cliente.cliente_id, dbo.Cliente.nombre, dbo.Cliente.producto_id, dbo.Empleados.employee_id, dbo.Empleados.productos, dbo.Empleados.cliente_id AS Expr5, dbo.Productos.product_id, dbo.Productos.product_name, 
                         dbo.Productos.cantidad, dbo.Productos.precio, dbo.Empleados.nombre AS Expr1
FROM            dbo.Cliente INNER JOIN
                         dbo.Empleados ON dbo.Cliente.cliente_id = dbo.Empleados.cliente_id INNER JOIN
                         dbo.Productos ON dbo.Empleados.productos = dbo.Productos.product_id AND dbo.Cliente.producto_id = dbo.Productos.product_id
GO
/****** Object:  Table [dbo].[Tikets]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tikets](
	[tiket_id] [int] NOT NULL,
	[nombre_cliente] [varchar](50) NULL,
	[nombre_empleado] [varchar](50) NULL,
	[fecha] [date] NULL,
	[product_id] [int] NULL,
	[cantidad] [int] NULL,
	[tipo_orden] [bit] NULL,
 CONSTRAINT [PK_Tikets] PRIMARY KEY CLUSTERED 
(
	[tiket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Ticket]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Ticket]
AS
SELECT        dbo.Tikets.*
FROM            dbo.Tikets INNER JOIN
                         dbo.Productos ON dbo.Tikets.product_id = dbo.Productos.product_id INNER JOIN
                         dbo.Cliente INNER JOIN
                         dbo.Empleados ON dbo.Cliente.cliente_id = dbo.Empleados.cliente_id ON dbo.Tikets.nombre_cliente = dbo.Cliente.nombre AND dbo.Tikets.nombre_empleado = dbo.Empleados.nombre AND 
                         dbo.Tikets.cantidad = dbo.Cliente.cantidad
GO
INSERT [dbo].[Productos] ([product_id], [product_name], [cantidad], [precio]) VALUES (1, N'papas', 30, 5)
INSERT [dbo].[Productos] ([product_id], [product_name], [cantidad], [precio]) VALUES (2, N'computadora', 5, 5000)
INSERT [dbo].[Productos] ([product_id], [product_name], [cantidad], [precio]) VALUES (3, N'calculadora', 10, 30)
INSERT [dbo].[Productos] ([product_id], [product_name], [cantidad], [precio]) VALUES (4, N'detergente', 8, 20)
/****** Object:  StoredProcedure [dbo].[sp1]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create procedure [dbo].[sp1]

 AS
 begin
 set nocount on
 select * from Cliente

 set nocount off
 end
GO
/****** Object:  StoredProcedure [dbo].[ventas_hoy]    Script Date: 14/12/2017 08:42:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[ventas_hoy]
 @f date

 AS

 set nocount on
 select fecha, nombre_empleado from Tikets where  fecha =  @f;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 4
               Left = 628
               Bottom = 173
               Right = 798
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empleados"
            Begin Extent = 
               Top = 0
               Left = 18
               Bottom = 217
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Productos"
            Begin Extent = 
               Top = 8
               Left = 326
               Bottom = 138
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[18] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 186
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empleados"
            Begin Extent = 
               Top = 0
               Left = 412
               Bottom = 235
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Productos"
            Begin Extent = 
               Top = 11
               Left = 224
               Bottom = 141
               Right = 394
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tikets"
            Begin Extent = 
               Top = 18
               Left = 625
               Bottom = 188
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1155
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Ticket'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Ticket'
GO
USE [master]
GO
ALTER DATABASE [POS] SET  READ_WRITE 
GO
