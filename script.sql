USE [QuickHelp]
GO
/****** Object:  Table [dbo].[CIUDADES]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CIUDADES](
	[id_ciudad] [int] NOT NULL,
	[nom_ciudad] [varchar](25) NOT NULL,
	[fk_id_depto_provin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cli] [varchar](10) NOT NULL,
	[nom_cli] [varchar](30) NOT NULL,
	[tel_cli] [varchar](10) NOT NULL,
	[dir_cli] [varchar](45) NOT NULL,
	[email_cli] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPTOS_PROVIN]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPTOS_PROVIN](
	[id_depto_provin] [int] NOT NULL,
	[nom_depto_provin] [varchar](25) NOT NULL,
	[fk_id_pais] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_depto_provin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EQUIPOS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EQUIPOS](
	[id_equipo] [varchar](10) NOT NULL,
	[marca] [varchar](20) NOT NULL,
	[serie] [varchar](40) NOT NULL,
	[color] [varchar](15) NOT NULL,
	[accesorios] [varchar](40) NOT NULL,
	[antecedentes] [tinyint] NOT NULL,
	[sintomas_equipo] [varchar](30) NOT NULL,
	[fecha_recepcion] [date] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
	[fk_id_estado] [tinyint] NOT NULL,
	[fk_id_factura] [smallint] NOT NULL,
	[fk_id_tecn] [varchar](10) NOT NULL,
	[fk_id_cli] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESTADOS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESTADOS](
	[id_estado] [tinyint] NOT NULL,
	[rep_anteriores] [varchar](100) NOT NULL,
	[en_servicio] [varchar](2) NOT NULL,
	[fecha_ini_garantia] [date] NOT NULL,
	[fecha_fin_garantia] [date] NOT NULL,
	[garantia] [varchar](2) NOT NULL,
	[estado] [varchar](14) NOT NULL,
	[tiempo_estimado] [tinyint] NOT NULL,
	[complejidad] [varchar](14) NOT NULL,
	[tipo_servicio] [varchar](14) NOT NULL,
	[fk_id_pieza] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[id_factura] [smallint] NOT NULL,
	[fecha] [date] NOT NULL,
	[nota] [varchar](50) NOT NULL,
	[fk_id_cli] [varchar](10) NOT NULL,
	[fk_id_tecn] [varchar](10) NOT NULL,
	[fk_id_equi] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAIS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAIS](
	[id_pais] [tinyint] NOT NULL,
	[nom_pais] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PIEZAS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PIEZAS](
	[id_pieza] [varchar](25) NOT NULL,
	[nom_pieza] [varchar](30) NOT NULL,
	[tipo_pieza] [varchar](20) NOT NULL,
	[marca_pieza] [varchar](20) NOT NULL,
	[costo] [money] NOT NULL,
	[fecha_compra] [date] NOT NULL,
	[fecha_ingre] [date] NOT NULL,
	[cantidad] [tinyint] NOT NULL,
	[fk_id_provee] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pieza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[nit] [varchar](10) NOT NULL,
	[nom_prove] [varchar](30) NOT NULL,
	[tel_prove] [int] NOT NULL,
	[dir_prove] [varchar](45) NOT NULL,
	[email_prove] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUCURSALES]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUCURSALES](
	[id_sucursal] [int] NOT NULL,
	[nom_sucursal] [varchar](25) NOT NULL,
	[dir_sucursal] [varchar](45) NOT NULL,
	[tel_sucursal] [varchar](10) NOT NULL,
	[fk_id_ciudad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TECNICOS]    Script Date: 04/02/2021 09:14:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TECNICOS](
	[id_tecn] [varchar](10) NOT NULL,
	[nom_tecn] [varchar](30) NOT NULL,
	[tel_tecn] [varchar](10) NOT NULL,
	[dir_tecn] [varchar](45) NOT NULL,
	[fecha_ingre] [date] NOT NULL,
	[email_cli] [varchar](30) NOT NULL,
	[cargo] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tecn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CIUDADES]  WITH CHECK ADD FOREIGN KEY([fk_id_depto_provin])
REFERENCES [dbo].[DEPTOS_PROVIN] ([id_depto_provin])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DEPTOS_PROVIN]  WITH CHECK ADD FOREIGN KEY([fk_id_pais])
REFERENCES [dbo].[PAIS] ([id_pais])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EQUIPOS]  WITH CHECK ADD FOREIGN KEY([fk_id_cli])
REFERENCES [dbo].[CLIENTES] ([id_cli])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EQUIPOS]  WITH CHECK ADD FOREIGN KEY([fk_id_estado])
REFERENCES [dbo].[ESTADOS] ([id_estado])
GO
ALTER TABLE [dbo].[EQUIPOS]  WITH CHECK ADD FOREIGN KEY([fk_id_factura])
REFERENCES [dbo].[FACTURAS] ([id_factura])
GO
ALTER TABLE [dbo].[EQUIPOS]  WITH CHECK ADD FOREIGN KEY([fk_id_tecn])
REFERENCES [dbo].[TECNICOS] ([id_tecn])
GO
ALTER TABLE [dbo].[ESTADOS]  WITH CHECK ADD FOREIGN KEY([fk_id_pieza])
REFERENCES [dbo].[PIEZAS] ([id_pieza])
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD FOREIGN KEY([fk_id_cli])
REFERENCES [dbo].[CLIENTES] ([id_cli])
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD FOREIGN KEY([fk_id_tecn])
REFERENCES [dbo].[TECNICOS] ([id_tecn])
GO
ALTER TABLE [dbo].[PIEZAS]  WITH CHECK ADD FOREIGN KEY([fk_id_provee])
REFERENCES [dbo].[PROVEEDORES] ([nit])
GO
ALTER TABLE [dbo].[SUCURSALES]  WITH CHECK ADD FOREIGN KEY([fk_id_ciudad])
REFERENCES [dbo].[CIUDADES] ([id_ciudad])
ON UPDATE CASCADE
GO
