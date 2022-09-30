USE [Tutorial4]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 09/30/2022 6:40:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[Customer Id] [int] IDENTITY(1,1) NOT NULL,
	[Full Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Salutation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[Customer Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerMovies]    Script Date: 09/30/2022 6:40:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerMovies](
	[Customer Id] [int] NOT NULL,
	[Movies Rented] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerSalutation]    Script Date: 09/30/2022 6:40:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSalutation](
	[Customer Id] [int] NOT NULL,
	[Full Names] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Salutation Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoviesRented]    Script Date: 09/30/2022 6:40:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviesRented](
	[Full Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Movies Rented] [nvarchar](50) NULL,
	[Salutation] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalutationInfo]    Script Date: 09/30/2022 6:40:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalutationInfo](
	[Salutation Id] [int] IDENTITY(1,1) NOT NULL,
	[Saluation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SalutationInfo] PRIMARY KEY CLUSTERED 
(
	[Salutation Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON 

INSERT [dbo].[CustomerInfo] ([Customer Id], [Full Name], [Address], [Salutation]) VALUES (11, N'Sandy', N'First Street Plot 4', N'Ms')
INSERT [dbo].[CustomerInfo] ([Customer Id], [Full Name], [Address], [Salutation]) VALUES (12, N'John', N'Second Street Plot 5', N'Mr')
INSERT [dbo].[CustomerInfo] ([Customer Id], [Full Name], [Address], [Salutation]) VALUES (13, N'Jonet Jones', N'Second Street Plot 7', N'Mr')
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
GO
INSERT [dbo].[CustomerMovies] ([Customer Id], [Movies Rented]) VALUES (11, N'Daddy Little Girls')
INSERT [dbo].[CustomerMovies] ([Customer Id], [Movies Rented]) VALUES (11, N'Clash of the Titans')
INSERT [dbo].[CustomerMovies] ([Customer Id], [Movies Rented]) VALUES (12, N'Forgetting Sarah Marshal')
INSERT [dbo].[CustomerMovies] ([Customer Id], [Movies Rented]) VALUES (12, N'Clash of the Titans')
INSERT [dbo].[CustomerMovies] ([Customer Id], [Movies Rented]) VALUES (13, N'Daddy Little Girls')
GO
INSERT [dbo].[CustomerSalutation] ([Customer Id], [Full Names], [Address], [Salutation Id]) VALUES (11, N'Sandy', N'First Street Plot 4', 1)
INSERT [dbo].[CustomerSalutation] ([Customer Id], [Full Names], [Address], [Salutation Id]) VALUES (12, N'John', N'Second Street Plot 5', 2)
INSERT [dbo].[CustomerSalutation] ([Customer Id], [Full Names], [Address], [Salutation Id]) VALUES (13, N'Jonet Jones', N'Second Street Plot 7', 2)
GO
INSERT [dbo].[MoviesRented] ([Full Name], [Address], [Movies Rented], [Salutation]) VALUES (N'Sandy', N'First Street Plot No 4', N'Daddy Little Girls', N'Ms')
INSERT [dbo].[MoviesRented] ([Full Name], [Address], [Movies Rented], [Salutation]) VALUES (N'Sandy', N'First Street Plot No 4', N'Clash of the Titans', N'Ms')
INSERT [dbo].[MoviesRented] ([Full Name], [Address], [Movies Rented], [Salutation]) VALUES (N'John', N'Second Street Plot 5', N'Forgetting Sarah Marshal', N'Mr')
INSERT [dbo].[MoviesRented] ([Full Name], [Address], [Movies Rented], [Salutation]) VALUES (N'John', N'Second Street Plot 5', N'Clash of the Titans', N'Mr')
INSERT [dbo].[MoviesRented] ([Full Name], [Address], [Movies Rented], [Salutation]) VALUES (N'Jonet Jones ', N'Second Street Plot 7', N'Daddy Little Girls', N'Mr')
GO
SET IDENTITY_INSERT [dbo].[SalutationInfo] ON 

INSERT [dbo].[SalutationInfo] ([Salutation Id], [Saluation]) VALUES (1, N'Ms')
INSERT [dbo].[SalutationInfo] ([Salutation Id], [Saluation]) VALUES (2, N'Mr')
SET IDENTITY_INSERT [dbo].[SalutationInfo] OFF
GO
ALTER TABLE [dbo].[CustomerMovies]  WITH CHECK ADD  CONSTRAINT [FK_CustomerMovies_CustomerInfo] FOREIGN KEY([Customer Id])
REFERENCES [dbo].[CustomerInfo] ([Customer Id])
GO
ALTER TABLE [dbo].[CustomerMovies] CHECK CONSTRAINT [FK_CustomerMovies_CustomerInfo]
GO
ALTER TABLE [dbo].[CustomerSalutation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSalutation_SalutationInfo] FOREIGN KEY([Salutation Id])
REFERENCES [dbo].[SalutationInfo] ([Salutation Id])
GO
ALTER TABLE [dbo].[CustomerSalutation] CHECK CONSTRAINT [FK_CustomerSalutation_SalutationInfo]
GO
