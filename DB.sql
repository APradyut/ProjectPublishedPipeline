USE [projectdb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11-Apr-19 4:50:18 PM ******/
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
/****** Object:  Table [dbo].[Coordinates]    Script Date: 11-Apr-19 4:50:18 PM ******/
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
 CONSTRAINT [PK_Coordinates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intersections]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
/****** Object:  Table [dbo].[LaneColourMapping]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
/****** Object:  Table [dbo].[Logins]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
/****** Object:  Table [dbo].[MasterVehicles]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
/****** Object:  Table [dbo].[Trips]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11-Apr-19 4:50:19 PM ******/
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
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 11-Apr-19 4:50:19 PM ******/
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

SET IDENTITY_INSERT [dbo].[Intersections] ON 

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
INSERT [dbo].[Intersections] ([Id], [IntersectionId], [Latitude], [Longitude]) VALUES (18, N'CHN11', 12.903844, 80.094318)
SET IDENTITY_INSERT [dbo].[Intersections] OFF
ALTER TABLE [dbo].[Trips] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Trips] ADD  DEFAULT ((0)) FOR [isStarted]
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
