USE [master]
GO
/****** Object:  Database [opportunityacademydb]    Script Date: 10/12/2021 18:44:07 ******/
CREATE DATABASE [opportunityacademydb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'opportunityacademydb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\opportunityacademydb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'opportunityacademydb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\opportunityacademydb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [opportunityacademydb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [opportunityacademydb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [opportunityacademydb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [opportunityacademydb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [opportunityacademydb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [opportunityacademydb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [opportunityacademydb] SET ARITHABORT OFF 
GO
ALTER DATABASE [opportunityacademydb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [opportunityacademydb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [opportunityacademydb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [opportunityacademydb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [opportunityacademydb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [opportunityacademydb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [opportunityacademydb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [opportunityacademydb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [opportunityacademydb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [opportunityacademydb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [opportunityacademydb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [opportunityacademydb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [opportunityacademydb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [opportunityacademydb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [opportunityacademydb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [opportunityacademydb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [opportunityacademydb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [opportunityacademydb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [opportunityacademydb] SET  MULTI_USER 
GO
ALTER DATABASE [opportunityacademydb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [opportunityacademydb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [opportunityacademydb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [opportunityacademydb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [opportunityacademydb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [opportunityacademydb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [opportunityacademydb] SET QUERY_STORE = OFF
GO
USE [opportunityacademydb]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 10/12/2021 18:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[IdCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[PrimerParcial] [int] NULL,
	[SegundoParcial] [int] NULL,
	[TercerParcial] [int] NULL,
	[IdInscripcion] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 10/12/2021 18:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Duracion] [varchar](50) NULL,
	[Precio] [int] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 10/12/2021 18:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[IdEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Matricula] [nchar](6) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 10/12/2021 18:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[IdInscripcion] [int] IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [int] NOT NULL,
	[IdProfesor] [int] NOT NULL,
	[IdCurso] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 10/12/2021 18:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[IdProfesor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Curso] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calificacion] ON 

INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (1, 30, 24, 20, 5, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (2, 30, 22, 21, 6, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (4, 25, 19, 20, 2, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (5, 27, 30, 20, 1, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (6, 30, 28, 20, 3, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (8, 22, 20, 20, 4, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (9, 28, 26, 20, 7, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (10, 30, 15, 20, 9, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Calificacion] ([IdCalificacion], [PrimerParcial], [SegundoParcial], [TercerParcial], [IdInscripcion], [FechaRegistro]) VALUES (12, 24, 30, 20, 11, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (1, N'Logistica chain supply Management', N'70 horas', 15000, CAST(N'2021-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (2, N'Auditoria y Control Interno', N'75 horas', 5000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (3, N'Electronica', N'80 horas', 25000, CAST(N'2021-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (4, N'Ingenieria de Calidad', N'60 horas', 12000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (5, N'Gestion Aduanera', N'120 horas', 8000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (6, N'Mecanica', N'100 horas', 25000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (7, N'Electronica', N'110 horas', 5000, CAST(N'2021-06-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (8, N'Programacion', N'50 horas', 25000, CAST(N'2021-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (9, N'Exel Basico', N'30 horas', 20000, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Curso] ([IdCurso], [Nombre], [Duracion], [Precio], [FechaRegistro]) VALUES (10, N'Exel Avanzado', N'40 horas', 25000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudiante] ON 

INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (1, N'Manuel', N'156544', CAST(N'2021-11-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (2, N'Jose', N'263561', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (3, N'Jose', N'263561', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (4, N'Maria', N'564668', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (5, N'Pedro', N'964823', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (6, N'Blanco', N'264387', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (7, N'Bladimir', N'189756', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (8, N'Oscar', N'643875', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (9, N'Josefina', N'397845', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (10, N'Alturo', N'532166', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (11, N'jerman', N'741258', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Estudiante] ([IdEstudiante], [Nombre], [Matricula], [FechaRegistro]) VALUES (12, N'Jesus', N'963258', CAST(N'2021-03-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Estudiante] OFF
GO
SET IDENTITY_INSERT [dbo].[Inscripcion] ON 

INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (1, 6, 5, 8, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (2, 2, 3, 8, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (3, 7, 1, 9, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (4, 2, 3, 2, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (5, 5, 7, 3, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (6, 2, 4, 2, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (7, 4, 4, 1, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (9, 9, 8, 2, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Inscripcion] ([IdInscripcion], [IdEstudiante], [IdProfesor], [IdCurso], [FechaRegistro]) VALUES (11, 4, 4, 1, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Inscripcion] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (1, N'Miguel', N'Informatica', CAST(N'2021-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (2, N'Suzana', N'Ingles', CAST(N'2021-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (3, N'Miguel', N'Bases de datos', CAST(N'2021-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (4, N'Miguel', N'Electronica', CAST(N'2021-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (5, N'Francisco', N'Exel Basico', CAST(N'2021-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (6, N'Francisco', N'Exel Avanzado', CAST(N'2021-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (7, N'Samuel', N'Mecanica', CAST(N'2021-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (8, N'Miguel', N'Frances', CAST(N'2021-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (9, N'Maria', N'Programacion', CAST(N'2021-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Profesor] ([IdProfesor], [Nombre], [Curso], [FechaRegistro]) VALUES (10, N'Miguel', N'Redes informatica', CAST(N'2021-02-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [fkInscripcion] FOREIGN KEY([IdInscripcion])
REFERENCES [dbo].[Inscripcion] ([IdInscripcion])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [fkInscripcion]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [fkCurso] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([IdCurso])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [fkCurso]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [fkEstudiante] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[Estudiante] ([IdEstudiante])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [fkEstudiante]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [fkProfesor] FOREIGN KEY([IdProfesor])
REFERENCES [dbo].[Profesor] ([IdProfesor])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [fkProfesor]
GO
USE [master]
GO
ALTER DATABASE [opportunityacademydb] SET  READ_WRITE 
GO
