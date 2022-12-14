USE [Tutorial4]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 10/03/2022 9:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[SalutationId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoviesInfo]    Script Date: 10/03/2022 9:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviesInfo](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MoviesInfo] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoviesRented]    Script Date: 10/03/2022 9:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviesRented](
	[CustomerId] [int] NOT NULL,
	[MovieId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalutationInfo]    Script Date: 10/03/2022 9:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalutationInfo](
	[SalutationId] [int] IDENTITY(1,1) NOT NULL,
	[Salutation] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalutationInfo] PRIMARY KEY CLUSTERED 
(
	[SalutationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON 

INSERT [dbo].[CustomerInfo] ([CustomerId], [FullName], [Address], [SalutationId]) VALUES (1, N'Sandy', N'First Street Plot 4', 2)
INSERT [dbo].[CustomerInfo] ([CustomerId], [FullName], [Address], [SalutationId]) VALUES (2, N'John', N'Second Street Plot 5', 1)
INSERT [dbo].[CustomerInfo] ([CustomerId], [FullName], [Address], [SalutationId]) VALUES (3, N'Jonet Jones', N'Second Street Plot 7', 1)
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[MoviesInfo] ON 

INSERT [dbo].[MoviesInfo] ([MovieId], [MovieName]) VALUES (1, N'Daddy Little Girls')
INSERT [dbo].[MoviesInfo] ([MovieId], [MovieName]) VALUES (2, N'Clash of the Titans')
INSERT [dbo].[MoviesInfo] ([MovieId], [MovieName]) VALUES (3, N'Forgetting Sarah Marshal')
SET IDENTITY_INSERT [dbo].[MoviesInfo] OFF
GO
INSERT [dbo].[MoviesRented] ([CustomerId], [MovieId]) VALUES (1, 1)
INSERT [dbo].[MoviesRented] ([CustomerId], [MovieId]) VALUES (1, 2)
INSERT [dbo].[MoviesRented] ([CustomerId], [MovieId]) VALUES (2, 3)
INSERT [dbo].[MoviesRented] ([CustomerId], [MovieId]) VALUES (2, 2)
INSERT [dbo].[MoviesRented] ([CustomerId], [MovieId]) VALUES (3, 1)
GO
SET IDENTITY_INSERT [dbo].[SalutationInfo] ON 

INSERT [dbo].[SalutationInfo] ([SalutationId], [Salutation]) VALUES (1, N'Mr')
INSERT [dbo].[SalutationInfo] ([SalutationId], [Salutation]) VALUES (2, N'Ms')
SET IDENTITY_INSERT [dbo].[SalutationInfo] OFF
GO
ALTER TABLE [dbo].[CustomerInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerInfo_SalutationInfo] FOREIGN KEY([SalutationId])
REFERENCES [dbo].[SalutationInfo] ([SalutationId])
GO
ALTER TABLE [dbo].[CustomerInfo] CHECK CONSTRAINT [FK_CustomerInfo_SalutationInfo]
GO
ALTER TABLE [dbo].[MoviesRented]  WITH CHECK ADD  CONSTRAINT [FK_MoviesRented_CustomerInfo] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerInfo] ([CustomerId])
GO
ALTER TABLE [dbo].[MoviesRented] CHECK CONSTRAINT [FK_MoviesRented_CustomerInfo]
GO
ALTER TABLE [dbo].[MoviesRented]  WITH CHECK ADD  CONSTRAINT [FK_MoviesRented_MoviesInfo] FOREIGN KEY([MovieId])
REFERENCES [dbo].[MoviesInfo] ([MovieId])
GO
ALTER TABLE [dbo].[MoviesRented] CHECK CONSTRAINT [FK_MoviesRented_MoviesInfo]
GO
