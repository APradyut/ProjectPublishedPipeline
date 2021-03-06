USE [projectdb]
GO

/****** Object:  Table [dbo].[Intersections]    Script Date: 11-Apr-19 4:43:46 PM ******/
DROP TABLE [dbo].[Intersections]
GO

/****** Object:  Table [dbo].[Intersections]    Script Date: 11-Apr-19 4:43:46 PM ******/
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


