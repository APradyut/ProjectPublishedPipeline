USE [master]
GO
/****** Object:  Database [projectdb]    Script Date: 21-Apr-19 4:22:42 AM ******/
CREATE DATABASE [projectdb]
GO
ALTER DATABASE [projectdb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projectdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projectdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projectdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projectdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [projectdb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [projectdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projectdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projectdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projectdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projectdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projectdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projectdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projectdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projectdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [projectdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projectdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projectdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projectdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projectdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projectdb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [projectdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projectdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projectdb] SET  MULTI_USER 
GO
ALTER DATABASE [projectdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projectdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projectdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projectdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projectdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projectdb] SET QUERY_STORE = OFF
GO
USE [projectdb]
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
USE [projectdb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21-Apr-19 4:22:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordinates]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordinates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TripId] [int] NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[TimeOfEntry] [datetime2](7) NOT NULL,
	[TimeofCreation] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Coordinates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intersections]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intersections](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IntersectionId] [nvarchar](max) NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
 CONSTRAINT [PK_Intersections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaneColourMapping]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaneColourMapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CurrentColor] [int] NOT NULL,
	[LaneId] [nvarchar](max) NULL,
	[IntersectionId] [bigint] NULL,
 CONSTRAINT [PK_LaneColourMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Token] [nvarchar](max) NULL,
	[TimeOfLogin] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterVehicles]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterVehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_MasterVehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trips]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trips](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Source] [nvarchar](max) NULL,
	[SourceLat] [float] NOT NULL,
	[SourceLong] [float] NOT NULL,
	[Destination] [nvarchar](max) NULL,
	[DestinationLat] [float] NOT NULL,
	[DestinationLong] [float] NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[isCompleted] [bit] NOT NULL,
	[UserId] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[isStarted] [bit] NOT NULL,
 CONSTRAINT [PK_Trips] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[VehicleId] [int] NULL,
	[UserType] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 21-Apr-19 4:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [nvarchar](max) NULL,
	[VehicleTypeId] [int] NULL,
	[DynamicPriority] [int] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190317080830_AddedMasterVehicle', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190407163810_update', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190409161424_LightToLane', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190420093840_AddedUserType', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190420213946_Added_time_of_creation_in_Trip_update', N'2.1.4-rtm-31024')
SET IDENTITY_INSERT [dbo].[Coordinates] ON 

INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (1, 33, 12.890803, 80.084917, CAST(N'2019-04-07T15:20:43.3636767' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (2, 33, 12.890803, 80.084917, CAST(N'2019-04-07T15:25:12.3127767' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (3, 34, 12.890803, 80.084917, CAST(N'2019-04-07T15:28:01.3433678' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (4, 34, 12.890803, 80.084917, CAST(N'2019-04-07T15:28:45.9639544' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (5, 26, 12.922255, 80.113276, CAST(N'2019-04-09T19:09:18.4083886' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (6, 25, 12.922255, 80.113276, CAST(N'2019-04-09T19:14:53.8683378' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (7, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:31:36.8977904' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (8, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:32:26.2858318' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (9, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:32:45.6398499' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (10, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:34:07.9917754' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (11, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:45:25.0845362' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (12, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:46:48.4244432' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (13, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:47:53.6858583' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (14, 25, 12.919617, 80.110611, CAST(N'2019-04-09T19:52:13.4367762' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (15, 25, 12.919617, 80.110611, CAST(N'2019-04-09T20:47:24.3469558' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Coordinates] ([Id], [TripId], [Latitude], [Longitude], [TimeOfEntry], [TimeofCreation]) VALUES (16, 45, 12.82592, 80.040725, CAST(N'2019-04-12T00:36:59.7851760' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Coordinates] OFF
SET IDENTITY_INSERT [dbo].[Intersections] ON 

INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (1, N'CHN2', 0, 0)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (2, N'CHN1', 12.830742, 80.045806)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (3, N'CHN3', 12.840669, 80.056203)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (4, N'CHN4', 12.843801, 80.059549)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (5, N'CHN5', 12.85006, 80.064833)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (6, N'CHN6', 12.860097, 80.07223)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (7, N'CHN7', 12.866728, 80.075244)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (8, N'CHN8', 12.869795, 80.076433)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (9, N'CHN9', 12.875928, 80.078882)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (10, N'CHN10', 12.897283, 80.089365)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (11, N'CHN11', 12.903844, 80.094318)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (12, N'CHN12', 12.905373, 80.095461)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (13, N'CHN13', 12.917017, 80.107108)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (14, N'CHN14', 12.921174, 80.112271)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (15, N'CHN15', 12.92316, 80.114267)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (16, N'CHN16', 12.930045, 80.121181)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (17, N'CHN2', 0, 0)
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (18, N'CHN11', 12.903844, 80.094318)
SET IDENTITY_INSERT [dbo].[Intersections] OFF
SET IDENTITY_INSERT [dbo].[LaneColourMapping] ON 

INSERT [dbo].[LaneColourMapping] ([Id], [CurrentColor], [LaneId], [IntersectionId]) VALUES (13, 2, N'S', 13)
INSERT [dbo].[LaneColourMapping] ([Id], [CurrentColor], [LaneId], [IntersectionId]) VALUES (14, 0, N'W', 13)
INSERT [dbo].[LaneColourMapping] ([Id], [CurrentColor], [LaneId], [IntersectionId]) VALUES (15, 0, N'E', 13)
INSERT [dbo].[LaneColourMapping] ([Id], [CurrentColor], [LaneId], [IntersectionId]) VALUES (16, 0, N'N', 13)
SET IDENTITY_INSERT [dbo].[LaneColourMapping] OFF
SET IDENTITY_INSERT [dbo].[Logins] ON 

INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (2, 2, N'c56193f5-7922-40e3-9320-b0564986ce34', CAST(N'2019-04-11T12:08:22.9418174' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (3, 2, N'5a1c653d-c972-48d1-816a-5e08ca77fdb0', CAST(N'2019-04-12T00:29:22.8417253' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (4, 2, N'5d545712-04ec-4fcc-a397-80134ac2d4a6', CAST(N'2019-04-20T21:25:30.2516327' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (5, 2, N'c3d22454-0852-4d66-885f-62d7ea58caa6', CAST(N'2019-04-20T22:11:53.6577289' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (6, 2, N'd6c56d58-c37f-46b9-93c1-6a58077f568f', CAST(N'2019-04-20T22:40:01.2762735' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (7, 2, N'2f56b8bf-534b-4e95-a4d7-0dc43dfbc815', CAST(N'2019-04-20T22:47:03.8018225' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (8, 2, N'afc58816-964d-451d-9087-e5db22f69814', CAST(N'2019-04-20T23:01:38.5637011' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (9, 2, N'93daaead-d0c5-48cf-861f-19bf192ce9e8', CAST(N'2019-04-20T23:39:40.7307442' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (10, 2, N'32e27d55-0b79-4d67-8bcf-5e66a50318bc', CAST(N'2019-04-21T00:19:08.8801911' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (11, 2, N'aca863b8-c22d-40c8-9fad-cc5e08ace438', CAST(N'2019-04-21T01:23:15.6478692' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (12, 2, N'17dc76fb-3422-4189-9f8b-a161088dc9fd', CAST(N'2019-04-21T01:28:25.1485907' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (13, 2, N'601aac6d-9300-477f-a9fc-68a0e22467db', CAST(N'2019-04-21T01:29:29.2371162' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (14, 2, N'789a5dc9-675f-49e7-84e8-c7997bcedc76', CAST(N'2019-04-21T01:33:04.1733347' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (15, 2, N'ed5c7727-c922-451e-8612-0859c92cb4b4', CAST(N'2019-04-21T01:42:48.7183482' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (16, 2, N'b2b64aa3-5fb0-44e3-a9ef-ec5ab900dc63', CAST(N'2019-04-21T02:03:28.1029280' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (17, 2, N'dac413c5-803f-48a1-a64a-b6fb6d01b3c1', CAST(N'2019-04-21T02:15:39.1692728' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (18, 2, N'75320511-9b8b-4867-875e-01a0c081b248', CAST(N'2019-04-21T02:20:26.4153534' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (19, 2, N'e2e9bf12-9b93-413b-938c-f336601cdb0a', CAST(N'2019-04-21T02:32:02.2207343' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (20, 2, N'41a5c518-116b-41eb-8ad6-408b985993b2', CAST(N'2019-04-21T03:03:21.8764917' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (21, 2, N'032252e4-c36e-4ffe-b29a-95e61e6f046b', CAST(N'2019-04-21T03:43:54.0119788' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (22, 2, N'f525e98c-ef12-409a-8205-77d0e1893779', CAST(N'2019-04-21T03:48:59.8244581' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (23, 2, N'795614bb-0d95-492f-bf85-7996789784d1', CAST(N'2019-04-21T03:51:34.3388895' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (24, 2, N'b615fe85-672c-44b4-b8a1-89568ba37154', CAST(N'2019-04-21T03:57:36.9472827' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (25, 2, N'57bc0d39-688b-4e78-820d-68a106207647', CAST(N'2019-04-21T03:58:51.4842361' AS DateTime2))
INSERT [dbo].[Logins] ([Id], [UserId], [Token], [TimeOfLogin]) VALUES (26, 2, N'46b77241-05fb-4870-8471-a613fad2b687', CAST(N'2019-04-21T04:02:20.7542797' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Logins] OFF
SET IDENTITY_INSERT [dbo].[MasterVehicles] ON 

INSERT [dbo].[MasterVehicles] ([Id], [Type], [Priority]) VALUES (1, 0, 0)
INSERT [dbo].[MasterVehicles] ([Id], [Type], [Priority]) VALUES (2, 1, 1)
INSERT [dbo].[MasterVehicles] ([Id], [Type], [Priority]) VALUES (3, 2, 2)
INSERT [dbo].[MasterVehicles] ([Id], [Type], [Priority]) VALUES (4, 1, 1)
SET IDENTITY_INSERT [dbo].[MasterVehicles] OFF
SET IDENTITY_INSERT [dbo].[Trips] ON 

INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (1, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-01T23:32:28.1427349' AS DateTime2), 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (2, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-08T23:43:41.4344555' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (3, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-01T23:34:21.2755149' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (4, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-04T07:57:26.9760009' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (5, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-05T07:57:41.6145963' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (6, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-05T08:00:03.2841771' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (7, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-05T08:00:50.8234684' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (8, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-05T08:02:08.5085323' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (9, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:14:03.5550641' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (10, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:17:02.0850528' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (11, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:20:16.5314154' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (12, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:23:28.1744729' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (13, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:24:36.2709259' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (14, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:27:41.1049128' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (15, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T09:31:30.2901686' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (16, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T11:47:20.4836378' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (17, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T11:49:08.5481633' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (18, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T12:06:51.8424173' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (19, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T12:08:37.8030802' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (20, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T12:17:31.7469586' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (21, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T12:19:53.1959801' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (22, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T12:23:02.6264309' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (23, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:18:35.0566705' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (24, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:27:34.5618443' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (25, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-09T19:14:38.3393773' AS DateTime2), 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (26, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-09T19:07:10.4540703' AS DateTime2), 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (28, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:41:08.2768158' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (29, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:43:00.9770440' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (30, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:47:32.8449521' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (31, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-06T15:55:23.0084568' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (32, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-07T09:47:06.9818621' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (33, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-07T15:19:42.9067419' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (34, N'SRM Hospital', 12.823269, 80.045797, N'Hindu Mission Hospital', 12.924221, 80.113952, CAST(N'2019-04-07T15:27:14.3739788' AS DateTime2), 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (35, N'some', 0, 0, N'where', 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 2, CAST(N'2019-04-07T22:26:35.0479308' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (36, N'some2', 0, 0, N'where', 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 2, CAST(N'2019-04-07T22:34:42.8917916' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (37, N'some1', 0, 0, N'wheer21', 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 2, CAST(N'2019-04-07T22:35:14.7279438' AS DateTime2), 1)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (43, N'some', 0, 0, N'where', 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 2, CAST(N'2019-04-09T18:57:33.8337143' AS DateTime2), 0)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (44, N'some', 1.2002, 201.11, N'where', 122111, 11, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 2, CAST(N'2019-04-11T12:19:34.4545996' AS DateTime2), 0)
INSERT [dbo].[Trips] ([Id], [Source], [SourceLat], [SourceLong], [Destination], [DestinationLat], [DestinationLong], [StartTime], [isCompleted], [UserId], [CreatedTime], [isStarted]) VALUES (45, N'SRM Hospital', 12.9219253, 79.9728666, N'Tambaram', 12.9219649, 80.077936, CAST(N'2019-04-12T00:36:23.1272358' AS DateTime2), 0, 2, CAST(N'2019-04-12T00:28:37.0250000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Trips] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [Name], [VehicleId], [UserType]) VALUES (2, N'Adarsh', N'Adarsh', N'Adarsh', 1, 1)
INSERT [dbo].[Users] ([Id], [Username], [Password], [Name], [VehicleId], [UserType]) VALUES (7, N'Archana', N'Archana', N'Archana', NULL, 0)
INSERT [dbo].[Users] ([Id], [Username], [Password], [Name], [VehicleId], [UserType]) VALUES (8, N'admin', N'admin', N'admin', NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

INSERT [dbo].[Vehicles] ([Id], [VehicleId], [VehicleTypeId], [DynamicPriority]) VALUES (1, N'6365', 1, 0)
INSERT [dbo].[Vehicles] ([Id], [VehicleId], [VehicleTypeId], [DynamicPriority]) VALUES (2, N'1234', 4, 1)
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
/****** Object:  Index [IX_Coordinates_TripId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Coordinates_TripId] ON [dbo].[Coordinates]
(
	[TripId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LaneColourMapping_IntersectionId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_LaneColourMapping_IntersectionId] ON [dbo].[LaneColourMapping]
(
	[IntersectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Logins_UserId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Logins_UserId] ON [dbo].[Logins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trips_UserId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Trips_UserId] ON [dbo].[Trips]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_VehicleId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Users_VehicleId] ON [dbo].[Users]
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehicles_VehicleTypeId]    Script Date: 21-Apr-19 4:22:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vehicles_VehicleTypeId] ON [dbo].[Vehicles]
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Coordinates] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TimeofCreation]
GO
ALTER TABLE [dbo].[Trips] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Trips] ADD  DEFAULT ((0)) FOR [isStarted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [UserType]
GO
ALTER TABLE [dbo].[Coordinates]  WITH CHECK ADD  CONSTRAINT [FK_Coordinates_Trips_TripId] FOREIGN KEY([TripId])
REFERENCES [dbo].[Trips] ([Id])
GO
ALTER TABLE [dbo].[Coordinates] CHECK CONSTRAINT [FK_Coordinates_Trips_TripId]
GO
ALTER TABLE [dbo].[LaneColourMapping]  WITH CHECK ADD  CONSTRAINT [FK_LaneColourMapping_Intersections_IntersectionId] FOREIGN KEY([IntersectionId])
REFERENCES [dbo].[Intersections] ([Id])
GO
ALTER TABLE [dbo].[LaneColourMapping] CHECK CONSTRAINT [FK_LaneColourMapping_Intersections_IntersectionId]
GO
ALTER TABLE [dbo].[Logins]  WITH CHECK ADD  CONSTRAINT [FK_Logins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Logins] CHECK CONSTRAINT [FK_Logins_Users_UserId]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_Trips_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_Trips_Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Vehicles_VehicleId] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Vehicles_VehicleId]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_MasterVehicles_VehicleTypeId] FOREIGN KEY([VehicleTypeId])
REFERENCES [dbo].[MasterVehicles] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_MasterVehicles_VehicleTypeId]
GO
USE [master]
GO
ALTER DATABASE [projectdb] SET  READ_WRITE 
GO
