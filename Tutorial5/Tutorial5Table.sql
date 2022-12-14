USE [Tutorial5]
GO
/****** Object:  Table [dbo].[Cats]    Script Date: 09/30/2022 6:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dogs]    Script Date: 09/30/2022 6:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cats] ON 

INSERT [dbo].[Cats] ([Id], [Name]) VALUES (1, N'Tweety')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (2, N'Sweety')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (3, N'Kitty')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (4, N'Jerry')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (5, N'Tweety')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (6, N'Kitty')
INSERT [dbo].[Cats] ([Id], [Name]) VALUES (7, N'Kitty')
SET IDENTITY_INSERT [dbo].[Cats] OFF
GO
SET IDENTITY_INSERT [dbo].[Dogs] ON 

INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (1, N'Dalmation')
INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (2, N'Great Dane')
INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (3, N'Labrador')
INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (4, N'Dalmation')
INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (5, N'Labrador')
INSERT [dbo].[Dogs] ([Id], [Name]) VALUES (6, N'Husky')
SET IDENTITY_INSERT [dbo].[Dogs] OFF
GO
