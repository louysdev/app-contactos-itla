USE [master]
GO
/****** Object:  Database [SellPoint]    Script Date: 22/04/2022 09:50:24 p. m. ******/
CREATE DATABASE [SellPoint]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SellPoint', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SellPoint.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SellPoint_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SellPoint_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SellPoint] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SellPoint].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SellPoint] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SellPoint] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SellPoint] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SellPoint] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SellPoint] SET ARITHABORT OFF 
GO
ALTER DATABASE [SellPoint] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SellPoint] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SellPoint] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SellPoint] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SellPoint] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SellPoint] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SellPoint] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SellPoint] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SellPoint] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SellPoint] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SellPoint] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SellPoint] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SellPoint] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SellPoint] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SellPoint] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SellPoint] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SellPoint] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SellPoint] SET RECOVERY FULL 
GO
ALTER DATABASE [SellPoint] SET  MULTI_USER 
GO
ALTER DATABASE [SellPoint] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SellPoint] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SellPoint] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SellPoint] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SellPoint] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SellPoint] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SellPoint', N'ON'
GO
ALTER DATABASE [SellPoint] SET QUERY_STORE = OFF
GO
USE [SellPoint]
GO
/****** Object:  Table [dbo].[Entidades]    Script Date: 22/04/2022 09:50:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entidades](
	[IdEntidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](120) NULL,
	[Direccion] [varchar](max) NULL,
	[Localidad] [varchar](40) NULL,
	[TipoEntidad] [varchar](8) NULL,
	[TipoDocumento] [varchar](9) NULL,
	[NumeroDocumento] [numeric](15, 0) NULL,
	[Telefonos] [varchar](60) NULL,
	[URLPaginaWeb] [varchar](120) NULL,
	[URLFacebook] [varchar](120) NULL,
	[URLInstagram] [varchar](120) NULL,
	[URLTwitter] [varchar](120) NULL,
	[URLTikTok] [varchar](120) NULL,
	[IdGrupoEntidad] [int] NOT NULL,
	[IdTipoEntidad] [int] NOT NULL,
	[LimiteCredito] [numeric](15, 2) NULL,
	[UserNameEntidad] [varchar](60) NULL,
	[PasswordEntidad] [varchar](30) NULL,
	[RolUserEntidad] [varchar](10) NULL,
	[Comentario] [varchar](max) NULL,
	[Status] [varchar](10) NULL,
	[NoEliminable] [bit] NULL,
	[FechaRegistro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GruposEntidades]    Script Date: 22/04/2022 09:50:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GruposEntidades](
	[IdGrupoEntidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](120) NULL,
	[Comentario] [varchar](max) NULL,
	[Status] [varchar](10) NULL,
	[NoEliminable] [bit] NULL,
	[FechaRegistro] [date] NULL,
 CONSTRAINT [PK_GruposEntidades] PRIMARY KEY CLUSTERED 
(
	[IdGrupoEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEntidades]    Script Date: 22/04/2022 09:50:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEntidades](
	[IdTipoEntidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](120) NULL,
	[IdGrupoEntidad] [int] NOT NULL,
	[Comentario] [varchar](max) NULL,
	[Status] [varchar](10) NULL,
	[NoEliminable] [bit] NULL,
	[FechaRegistro] [date] NULL,
 CONSTRAINT [PK_TiposEntidades] PRIMARY KEY CLUSTERED 
(
	[IdTipoEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_TipoEntidad]  DEFAULT ('Juridica') FOR [TipoEntidad]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_TipoDocumento]  DEFAULT ('RNC') FOR [TipoDocumento]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_LimiteCredito]  DEFAULT ((0)) FOR [LimiteCredito]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_RolUserEntidad]  DEFAULT (user_name()) FOR [RolUserEntidad]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_Status]  DEFAULT ('Activa') FOR [Status]
GO
ALTER TABLE [dbo].[Entidades] ADD  CONSTRAINT [DF_Entidades_NoEliminable]  DEFAULT ((0)) FOR [NoEliminable]
GO
ALTER TABLE [dbo].[GruposEntidades] ADD  CONSTRAINT [DF_GruposEntidades_Status]  DEFAULT ('Activa') FOR [Status]
GO
ALTER TABLE [dbo].[GruposEntidades] ADD  CONSTRAINT [DF_GruposEntidades_NoEliminable]  DEFAULT ((0)) FOR [NoEliminable]
GO
ALTER TABLE [dbo].[TiposEntidades] ADD  CONSTRAINT [DF_TiposEntidades_Status]  DEFAULT ('Activa') FOR [Status]
GO
ALTER TABLE [dbo].[TiposEntidades] ADD  CONSTRAINT [DF_TiposEntidades_NoEliminable]  DEFAULT ((0)) FOR [NoEliminable]
GO
ALTER TABLE [dbo].[Entidades]  WITH CHECK ADD  CONSTRAINT [FK_EntidadGruposEntidades] FOREIGN KEY([IdGrupoEntidad])
REFERENCES [dbo].[GruposEntidades] ([IdGrupoEntidad])
GO
ALTER TABLE [dbo].[Entidades] CHECK CONSTRAINT [FK_EntidadGruposEntidades]
GO
ALTER TABLE [dbo].[Entidades]  WITH CHECK ADD  CONSTRAINT [FK_EntidadTiposEntidades] FOREIGN KEY([IdTipoEntidad])
REFERENCES [dbo].[TiposEntidades] ([IdTipoEntidad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entidades] CHECK CONSTRAINT [FK_EntidadTiposEntidades]
GO
ALTER TABLE [dbo].[TiposEntidades]  WITH CHECK ADD  CONSTRAINT [FK_GruposEntidades] FOREIGN KEY([IdGrupoEntidad])
REFERENCES [dbo].[GruposEntidades] ([IdGrupoEntidad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TiposEntidades] CHECK CONSTRAINT [FK_GruposEntidades]
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRARDATOS]    Script Date: 22/04/2022 09:50:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MOSTRARDATOS]
AS
SELECT * FROM GruposEntidades
GO
USE [master]
GO
ALTER DATABASE [SellPoint] SET  READ_WRITE 
GO
