USE [master]
GO
/****** Object:  Database [dbLuxury]    Script Date: 19/5/2024 21:24:45 ******/
CREATE DATABASE [dbLuxury] ON  PRIMARY 
( NAME = N'dbLuxury', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\dbLuxury.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbLuxury_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\dbLuxury_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbLuxury] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbLuxury].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbLuxury] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbLuxury] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbLuxury] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbLuxury] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbLuxury] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbLuxury] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbLuxury] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbLuxury] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbLuxury] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbLuxury] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbLuxury] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbLuxury] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbLuxury] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbLuxury] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbLuxury] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbLuxury] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbLuxury] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbLuxury] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbLuxury] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbLuxury] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbLuxury] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbLuxury] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbLuxury] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbLuxury] SET  MULTI_USER 
GO
ALTER DATABASE [dbLuxury] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbLuxury] SET DB_CHAINING OFF 
GO
USE [dbLuxury]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[idAdministrador] [nchar](10) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[rol] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[idUsuario] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[idAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[esActivo] [tinyint] NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datosCliente]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datosCliente](
	[idCliente] [nchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[correo] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[ciudad] [nvarchar](50) NULL,
	[pais] [nvarchar](50) NULL,
	[codigoPostal] [nvarchar](50) NULL,
	[telefono] [nvarchar](50) NULL,
	[idUsuario] [nchar](10) NOT NULL,
 CONSTRAINT [PK_datosCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [int] NOT NULL,
	[idVenta] [nchar](10) NOT NULL,
	[idProducto] [nchar](10) NOT NULL,
	[marcaProducto] [nvarchar](100) NULL,
	[descripcionVenta] [nvarchar](100) NULL,
	[categoriaProducto] [nvarchar](100) NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[precioTotal] [decimal](10, 2) NULL,
 CONSTRAINT [PK_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadisticasVentas]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadisticasVentas](
	[idEstadistica] [int] NOT NULL,
	[cantidadVendida] [int] NULL,
	[fecha] [date] NULL,
	[estadisticasVenta] [nvarchar](50) NULL,
	[idProducto] [nchar](10) NOT NULL,
	[detallesVenta] [nvarchar](50) NULL,
 CONSTRAINT [PK_EstadisticasVentas] PRIMARY KEY CLUSTERED 
(
	[idEstadistica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idMenu] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[idMenuPadre] [nchar](10) NULL,
	[icono] [image] NULL,
	[controlador] [nvarchar](50) NULL,
	[paginaAccion] [nvarchar](50) NULL,
	[esActivo] [tinyint] NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumeroCorrelativo]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumeroCorrelativo](
	[idNumeroCorrelativo] [nchar](10) NOT NULL,
	[ultimoNumero] [int] NULL,
	[cantidadDigitos] [int] NULL,
	[gestion] [nvarchar](100) NULL,
	[fechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_NumeroCorrelativo] PRIMARY KEY CLUSTERED 
(
	[idNumeroCorrelativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProd] [nchar](10) NOT NULL,
	[codigoBarra] [nvarchar](50) NULL,
	[nombreProd] [nvarchar](50) NULL,
	[stock] [int] NULL,
	[idCategoria] [nchar](10) NULL,
	[descripcion] [nvarchar](100) NULL,
	[precio] [int] NULL,
	[fRegistro] [datetime] NULL,
	[esActivo] [bit] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[idProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos_has_proveedor]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos_has_proveedor](
	[idProd] [nchar](10) NOT NULL,
	[nroFactura] [int] NULL,
	[idProv] [nchar](10) NOT NULL,
	[cantidadSuministrada] [int] NULL,
	[fechaExportacion] [datetime] NULL,
	[precioUnitario] [float] NULL,
	[importeTotal] [float] NULL,
	[direccionEnvio] [nvarchar](50) NULL,
	[metodoEnvio] [nvarchar](50) NULL,
	[descuento] [nvarchar](50) NULL,
	[notas] [nvarchar](50) NULL,
	[estadoTransaccion] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idproveedor] [nchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Contacto] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[tipoProd] [nchar](10) NULL,
	[FinicioContrato] [date] NULL,
	[FfinContrato] [date] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[esActivo] [tinyint] NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolMenu]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolMenu](
	[idRolMenu] [nchar](10) NOT NULL,
	[idRol] [nchar](10) NULL,
	[idMenu] [nchar](10) NULL,
	[esActivo] [tinyint] NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_RolMenu] PRIMARY KEY CLUSTERED 
(
	[idRolMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablaRopa]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablaRopa](
	[idRopa] [nchar](10) NOT NULL,
	[urlImagen] [nvarchar](50) NULL,
	[nombreImagen] [nvarchar](50) NULL,
	[idProducto] [nchar](10) NOT NULL,
	[tipodeRopa] [nvarchar](50) NULL,
	[Marca] [nvarchar](50) NULL,
	[Talle] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[precio] [decimal](10, 2) NULL,
 CONSTRAINT [PK_tablaRopa] PRIMARY KEY CLUSTERED 
(
	[idRopa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablaVape]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablaVape](
	[idVapes] [nchar](10) NOT NULL,
	[urlImagen] [nvarchar](50) NULL,
	[nombreImagen] [nvarchar](50) NULL,
	[idProducto] [nchar](10) NOT NULL,
	[marca] [nvarchar](50) NULL,
	[modelo] [nvarchar](50) NULL,
	[sabor] [nvarchar](50) NULL,
	[contenidoNicotina] [nvarchar](50) NULL,
	[precio] [decimal](10, 2) NULL,
 CONSTRAINT [PK_tablaVapes] PRIMARY KEY CLUSTERED 
(
	[idVapes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumentoVenta]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumentoVenta](
	[idTipoDocumentoVenta] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[esActivo] [tinyint] NULL,
	[fechaRegistro] [date] NULL,
 CONSTRAINT [PK_TipoDocumentoVenta] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumentoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [nchar](10) NOT NULL,
	[username] [nvarchar](50) NULL,
	[urlImagen] [nvarchar](50) NULL,
	[nombreImagen] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[idRol] [nchar](10) NULL,
	[fechaRegistro] [datetime] NULL,
	[esActivo] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 19/5/2024 21:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [nchar](10) NOT NULL,
	[nroVenta] [int] NULL,
	[idTipoDocumentoVenta] [nchar](10) NULL,
	[idCliente] [nchar](10) NULL,
	[nombreCliente] [nvarchar](50) NULL,
	[subTotal] [decimal](10, 2) NULL,
	[impuestoTotal] [decimal](10, 2) NULL,
	[Total] [decimal](10, 2) NULL,
	[fechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_Administradores_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_Administradores_Usuarios]
GO
ALTER TABLE [dbo].[datosCliente]  WITH CHECK ADD  CONSTRAINT [FK_datosCliente_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[datosCliente] CHECK CONSTRAINT [FK_datosCliente_Usuarios]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedidos] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetallePedido_Pedidos]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProd])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetallePedido_Productos]
GO
ALTER TABLE [dbo].[EstadisticasVentas]  WITH CHECK ADD  CONSTRAINT [FK_EstadisticasVentas_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProd])
GO
ALTER TABLE [dbo].[EstadisticasVentas] CHECK CONSTRAINT [FK_EstadisticasVentas_Productos]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[productos_has_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_productos_has_proveedor] FOREIGN KEY([idProv])
REFERENCES [dbo].[Proveedor] ([idproveedor])
GO
ALTER TABLE [dbo].[productos_has_proveedor] CHECK CONSTRAINT [FK_productos_has_proveedor]
GO
ALTER TABLE [dbo].[productos_has_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_productos_has_proveedor_Productos] FOREIGN KEY([idProd])
REFERENCES [dbo].[Producto] ([idProd])
GO
ALTER TABLE [dbo].[productos_has_proveedor] CHECK CONSTRAINT [FK_productos_has_proveedor_Productos]
GO
ALTER TABLE [dbo].[RolMenu]  WITH CHECK ADD  CONSTRAINT [FK_RolMenu_Menu] FOREIGN KEY([idMenu])
REFERENCES [dbo].[Menu] ([idMenu])
GO
ALTER TABLE [dbo].[RolMenu] CHECK CONSTRAINT [FK_RolMenu_Menu]
GO
ALTER TABLE [dbo].[RolMenu]  WITH CHECK ADD  CONSTRAINT [FK_RolMenu_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[RolMenu] CHECK CONSTRAINT [FK_RolMenu_Rol]
GO
ALTER TABLE [dbo].[tablaRopa]  WITH CHECK ADD  CONSTRAINT [FK_tablaRopa_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProd])
GO
ALTER TABLE [dbo].[tablaRopa] CHECK CONSTRAINT [FK_tablaRopa_Productos]
GO
ALTER TABLE [dbo].[tablaVape]  WITH CHECK ADD  CONSTRAINT [FK_tablaVapes_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProd])
GO
ALTER TABLE [dbo].[tablaVape] CHECK CONSTRAINT [FK_tablaVapes_Productos]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_datosCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[datosCliente] ([idCliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Pedidos_datosCliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_TipoDocumentoVenta] FOREIGN KEY([idTipoDocumentoVenta])
REFERENCES [dbo].[TipoDocumentoVenta] ([idTipoDocumentoVenta])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_TipoDocumentoVenta]
GO
USE [master]
GO
ALTER DATABASE [dbLuxury] SET  READ_WRITE 
GO
