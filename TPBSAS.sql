USE [master]
GO
/****** Object:  Database [TPBSAS]    Script Date: 8/11/2022 17:07:08 ******/
CREATE DATABASE [TPBSAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPBSAS', FILENAME = N'F:\Escritorio\Escritorio\Downloads\MSSQL14.SQLEXPRESS\MSSQL\DATA\TPBSAS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TPBSAS_log', FILENAME = N'F:\Escritorio\Escritorio\Downloads\MSSQL14.SQLEXPRESS\MSSQL\DATA\TPBSAS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TPBSAS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPBSAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPBSAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPBSAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPBSAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPBSAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPBSAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPBSAS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPBSAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPBSAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPBSAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPBSAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPBSAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPBSAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPBSAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPBSAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPBSAS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPBSAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPBSAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPBSAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPBSAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPBSAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPBSAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPBSAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPBSAS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPBSAS] SET  MULTI_USER 
GO
ALTER DATABASE [TPBSAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPBSAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPBSAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPBSAS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TPBSAS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TPBSAS] SET QUERY_STORE = OFF
GO
USE [TPBSAS]
GO
/****** Object:  Table [dbo].[Colectivos]    Script Date: 8/11/2022 17:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colectivos](
	[IdTransportes] [int] IDENTITY(1,1) NOT NULL,
	[NumeroColectivo] [int] NOT NULL,
	[Foto] [varchar](300) NULL,
	[Recorrido] [varchar](300) NOT NULL,
	[InfoTransportes] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Transportes] PRIMARY KEY CLUSTERED 
(
	[IdTransportes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lugares]    Script Date: 8/11/2022 17:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lugares](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monumentos]    Script Date: 8/11/2022 17:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monumentos](
	[IdMonumento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Barrio] [varchar](50) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[InfoLugar] [varchar](max) NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Monumentos] PRIMARY KEY CLUSTERED 
(
	[IdMonumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 8/11/2022 17:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurante](
	[IdRestaurante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Barrio] [varchar](50) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[InfoLugar] [varchar](max) NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Restaurante] PRIMARY KEY CLUSTERED 
(
	[IdRestaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SitiosTour]    Script Date: 8/11/2022 17:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitiosTour](
	[IdSitio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Barrio] [varchar](50) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[InfoLugar] [varchar](max) NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_CitiosTour] PRIMARY KEY CLUSTERED 
(
	[IdSitio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Colectivos] ON 

INSERT [dbo].[Colectivos] ([IdTransportes], [NumeroColectivo], [Foto], [Recorrido], [InfoTransportes]) VALUES (1, 15, N'https://upload.wikimedia.org/wikipedia/commons/9/9d/Megabus_15_%28Wiki%29.JPG', N'Barrancas De Belgrano - Pte. Alsina', N'La línea 15 brinda su servicio transitando entre otros puntos por Valentín Alsina, Nueva Pompeya, Boedo, Parque Chacabuco, Caballito, Almagro, Villa Crespo, Palermo, Belgrano, Núñez, Florida, Olivos, Munro, Martínez, Villa Adelina, San Isidro, Boulogne, Don Torcuato, El Talar, General Pacheco, Benavídez, Tortuguitas y Pilar.')
INSERT [dbo].[Colectivos] ([IdTransportes], [NumeroColectivo], [Foto], [Recorrido], [InfoTransportes]) VALUES (3, 145, N'https://www.revistacolectibondi.com.ar/wp-content/uploads/2020/09/linea145-4.jpg', N'Avenida Sarmiento 2668 - Colectora Presidente Perón Y Intendente Pedro Pablo Turner', N'La línea 145 brinda su servicio transitando entre otros puntos por Palermo, Villa Crespo, Caballito, Flores, Villa Lugano, Villa Riachuelo, Cruce Puente La Noria, Villa Celina, Tapiales, Ingeniero Budge y Villa Albertina.')
SET IDENTITY_INSERT [dbo].[Colectivos] OFF
GO
SET IDENTITY_INSERT [dbo].[Lugares] ON 

INSERT [dbo].[Lugares] ([IdCategoria], [Nombre]) VALUES (1, N'Restaurantes                                      ')
INSERT [dbo].[Lugares] ([IdCategoria], [Nombre]) VALUES (2, N'Monumentos                                        ')
INSERT [dbo].[Lugares] ([IdCategoria], [Nombre]) VALUES (3, N'Citios turisticos                                 ')
SET IDENTITY_INSERT [dbo].[Lugares] OFF
GO
SET IDENTITY_INSERT [dbo].[Monumentos] ON 

INSERT [dbo].[Monumentos] ([IdMonumento], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (6, N'Obelisco', N'https://s3-sa-east-1.amazonaws.com/modernabuenosaires/img/obras/galeria/7_1406143157.jpg', N'Microcentro', CAST(N'1963-05-24' AS Date), N'El Obelisco de Buenos Aires es un monumento histórico considerado un ícono de la Ciudad Autónoma de Buenos Aires, la capital de Argentina. Fue construido en 1936 con motivo del cuarto centenario de la llamada primera fundación de Buenos Aires por Pedro de Mendoza.

Se encuentra ubicado en la Plaza de la República, en la intersección de las avenidas Corrientes y 9 de Julio, en el barrio de San Nicolás en Buenos Aires.

La obra es autoría del arquitecto argentino Alberto Prebisch y la construcción estuvo a cargo del consorcio alemán GEOPÉ-Siemens Bauunion-Grün & Bilfinger.', 2)
INSERT [dbo].[Monumentos] ([IdMonumento], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (9, N'Floralis Generica', N'https://resizer.glanacion.com/resizer/coQJWSaNGziwkvW9Z4XfqpdJGYs=/768x0/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/AAJI6DGLLNBORFVUIYP4H3LAG4.webp', N'Recoleta', CAST(N'2002-06-23' AS Date), N'El monumento Floralis Genérica tiene una característica única que permite que la flor se abra o cierre moviendo sus pétalos. Un sistema automático eléctrico junto con sensores logra que la flor se cierre al oscurecer, permanezca cerrada durante la noche y vuelva a reabrir durante la mañana.  También la flor puede cerrarse ante fuertes vientos y tormentas. Al oscurecer acompaña el cierre de la flor un sistema de iluminación en su interior y en los alrededores que le brindan una llamativa tonalidad rojiza.', 2)
SET IDENTITY_INSERT [dbo].[Monumentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurante] ON 

INSERT [dbo].[Restaurante] ([IdRestaurante], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (1, N'Parrilla Don Julio', N'https://www.laguiadebuenosaires.com/wp-content/uploads/2021/02/Parrilla-DonJulio-1.jpg', N'Palermo', CAST(N'1999-04-27' AS Date), N'La parrilla Don Julio, que se afinca en el barrio de Palermo Viejo en Guatemala 4691 (esquina Gurruchaga) obtuvo, una vez más, un lugar dentro del prestigioso ranking The World’s 50 Best, pero esta vez un poco más en la cima. En la edición anterior de la lista, ocupaba el puesto número  55, y ahora trepó al 34. Don Julio también es, desde el año pasado, el restaurante mejor rankeado en la lista de los 50 mejores de América Latina, lista que además le otorgó el Premio Arte de la Hospitalidad 2018.', 1)
INSERT [dbo].[Restaurante] ([IdRestaurante], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (3, N'Campobravo', N'https://media-cdn.tripadvisor.com/media/photo-s/19/2c/e4/88/restaurante-campobravo.jpg', N'Palermo', CAST(N'2011-08-15' AS Date), N'CAMPOBRAVO es el punto de referencia para los amantes de la alimentación saludable y consciente, con una propuesta gastronónmica totalmente Gluten-Free, Paleolítica y de estación. Somos un restaurante especializado en Carnes Prime lo que garantiza un perfecto equilibrio entre sabor, terneza, textura y calidad. Cada corte tiene un tratamiento único en cuanto al tiempo de estacionamiento y maduración de la carne. En CAMPOBRAVO todos los platos están elaborados con harinas sin TACC por nuestro Cheff ejecutivo Horacio Rodriguez, quien diseña cada uno de estos para que su valor nutricional este perfectamente equilibrado.', 1)
SET IDENTITY_INSERT [dbo].[Restaurante] OFF
GO
SET IDENTITY_INSERT [dbo].[SitiosTour] ON 

INSERT [dbo].[SitiosTour] ([IdSitio], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (1, N'Rosedal', N'https://presenterse.com/wp-content/uploads/2019/10/rosedal.jpg', N'Palermo', CAST(N'1914-09-14' AS Date), N'El Rosedal, alberga 93 especies diferentes de rosas que crecen dentro de un jardín diseñado por el paisajista y agrónomo Benito Carrasco. Pocos espectáculos son tan bellos como el florecimiento de las casi 8.000 rosas de 93 especies diferentes que crecen en el Rosedal.', 3)
INSERT [dbo].[SitiosTour] ([IdSitio], [Nombre], [Foto], [Barrio], [FechaFundacion], [InfoLugar], [IdCategoria]) VALUES (2, N'Puente de la Mujer', N'https://www.clarin.com/img/2016/11/24/BJ-I7bpYVl_1256x620.jpg', N'Puerto Madero', CAST(N'2001-03-28' AS Date), N'El puente de la Mujer es un puente atirantado de pilón contrapeso diseñado por el arquitecto español Santiago Calatrava en la ciudad de Buenos Aires, Argentina. Es la primera de sus obras en América Latina y se encuentra ubicada en el Dique 3 de Puerto Madero, en Pierina Dealessi y Manuela Gorriti. ', 3)
SET IDENTITY_INSERT [dbo].[SitiosTour] OFF
GO
USE [master]
GO
ALTER DATABASE [TPBSAS] SET  READ_WRITE 
GO
