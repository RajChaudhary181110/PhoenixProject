USE [Stpl]
GO
/****** Object:  Table [dbo].[CountryName]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryName](
	[Country_Id] [int] NOT NULL,
	[Country_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ForgetPassword_Tbl]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPassword_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Date_Time] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoginSingUp]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginSingUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Mobile_Number] [nvarchar](20) NULL,
	[Email_Address] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[User_Identity] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Multicheckbox]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multicheckbox](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Technology] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Srm]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Srm](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](100) NULL,
	[Last_Name] [nvarchar](100) NULL,
	[Email_Address] [nvarchar](100) NULL,
	[Linkedin] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[Salary_Expectation] [nvarchar](100) NULL,
	[Joining_Date] [nvarchar](100) NULL,
	[Mobile_Number] [nvarchar](100) NULL,
	[Date_Of_Birth] [nvarchar](100) NULL,
	[Qualification] [nvarchar](100) NULL,
	[Passing_Year] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Experience] [nvarchar](100) NULL,
	[Relocated] [nvarchar](100) NULL,
	[Organization] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[Photo] [nvarchar](100) NULL,
	[Resume] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StateName]    Script Date: 2/8/2023 9:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateName](
	[State_Id] [int] NOT NULL,
	[State_Name] [nvarchar](100) NULL,
	[Country_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (2, N'Australia')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (3, N'Bangladesh')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (4, N'Brazil')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (5, N'Canada')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (6, N'China')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (7, N'Estonia')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (8, N'France')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (9, N'Georgia')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (10, N'Germany')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (11, N'Iceland')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (12, N'India')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (13, N'Iran')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (14, N'Japan')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (15, N'Kuwait')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (16, N'Mexico')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (17, N'Namibia')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (18, N'Nepal')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (19, N'North Korea')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (20, N'Pakistan')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (21, N'Qatar')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (22, N'Singapore')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (23, N'South Africa')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (24, N'South Korea')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (25, N'Thailand')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (26, N'Ukraine')
INSERT [dbo].[CountryName] ([Country_Id], [Country_Name]) VALUES (27, N'Zambia')
SET IDENTITY_INSERT [dbo].[ForgetPassword_Tbl] ON 

INSERT [dbo].[ForgetPassword_Tbl] ([Id], [Email], [Mobile], [Date_Time]) VALUES (7, N'Kamlesh666@gmail.com', N'8948979666', N'1/25/2023 2:18:20 PM')
INSERT [dbo].[ForgetPassword_Tbl] ([Id], [Email], [Mobile], [Date_Time]) VALUES (8, N'rajch19@gmail.com', N'8948979319', N'1/25/2023 6:13:55 PM')
INSERT [dbo].[ForgetPassword_Tbl] ([Id], [Email], [Mobile], [Date_Time]) VALUES (9, N'rajch19@gmail.com', N'8948979319', N'1/31/2023 5:01:31 PM')
SET IDENTITY_INSERT [dbo].[ForgetPassword_Tbl] OFF
SET IDENTITY_INSERT [dbo].[LoginSingUp] ON 

INSERT [dbo].[LoginSingUp] ([Id], [Name], [Mobile_Number], [Email_Address], [password], [User_Identity]) VALUES (1041, N'Kamlesh', N'8948979666', N'Kamlesh666@gmail.com', N'8948979366', N'User')
INSERT [dbo].[LoginSingUp] ([Id], [Name], [Mobile_Number], [Email_Address], [password], [User_Identity]) VALUES (1042, N'Raj Chaudhary', N'8948979319', N'rajch19@gmail.com', N'8948979319', N'Admin')
INSERT [dbo].[LoginSingUp] ([Id], [Name], [Mobile_Number], [Email_Address], [password], [User_Identity]) VALUES (1044, N'Ram Swarup', N'8948979325', N'raj.c@srmtechsol.com', N'8948979325', N'User')
SET IDENTITY_INSERT [dbo].[LoginSingUp] OFF
SET IDENTITY_INSERT [dbo].[Multicheckbox] ON 

INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (1, N'Dot Net')
INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (2, N'PHP')
INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (3, N'Python')
INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (4, N'Java')
INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (5, N'Net Working')
INSERT [dbo].[Multicheckbox] ([Id], [Technology]) VALUES (6, N'Testing')
SET IDENTITY_INSERT [dbo].[Multicheckbox] OFF
SET IDENTITY_INSERT [dbo].[Srm] ON 

INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1067, N'Mandeep', N'Kumar', N'Kamlesh666@gmail.com', N'https://kumar3534fgdegh35436fg', N'PHP,Python,Java', N'514452', N'Within 15 days', N'8948979324', NULL, N'M Tech', N'2008', N'4', N'20', N'5', N'Yes', N'Rgbahutau hajkyd weulikdfha bdmjhk', N'fgytrhtyi8yknh dfghethuybdgfdbgth jnryt jfsgaerfgq', N'pic5.jpg', N'slid1.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1069, N'Rohit', N'Panday', N'stpl25@gmail.com', N'https://kumar3534fgdegh35436fg', N'PHP,Python,Net Working', N'3345646', N'Within 15 days', N'8948979666', N'2023-01-10', N'ddd', N'2016', N'4', N'21', N'5', N'Yes', N'Rgbahutau hajkyd weulikdfha bdmjhk', N'ergtet dfgdfhyrd xdfgertrh ghdfhdrtbfgb f', N'slid1.jpg', N'slid1.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1070, N'Rohit', N'Panday', N'stpl25@gmail.com', N'https://kumar3534fgdegh35436fg', N'Dot Net,PHP,Python,Java', N'454545', N'1 Months', N'8948979319', N'2023-01-10', N'M Tech', N'2016', N'5', N'48', NULL, N'No', N'Rgbahutau hajkyd weulikdfha bdmjhk', N'gff fsdtyhertghb rtdyer jhnhyt', N'pic5.jpg', N'pic5.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1074, N'Rohit', N'Panday', N'Kamlesh666@gmail.com', N'https://kumar3534fgdegh35436fg', N'Dot Net,PHP,Python,Java,Net Working', N'65454654', N'Within 15 days', N'8948979319', N'2023-01-10', N'M Tech', N'2008', N'1', N'2', N'5', N'Yes', N'Rgbahutau hajkyd weulikdfha bdmjhk', N'ytuikty7uj m ertgw 5gt etry546yfrtbgdf sdfgsvbfg ', N'pic5.jpg', N'slid1.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1076, N'Raj ', N'Panday', N'rajch22@gmail.com', N'https://kumar3534fgdegh35436fg', N'Dot Net,PHP,Python,Java,Net Working,Testing', NULL, N'Under 1 Week', N'8948979324', N'2023-02-12', N'M Tech', NULL, N'4', N'19', NULL, N'Yes', N'tyjuju', N'yyyyu', N'slid1.jpg', N'slid1.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1077, N'Raj ', N'Kumar', N'rajch21@gmail.com', N'https://kumar3534fgdegh35436fg', N'PHP,Python,Java', N'5675467', N'Under 1 Week', N'8948979324', N'2023-01-10', N'M Tech', N'1996', N'6', N'37', N'6', NULL, N'ghfgbf', N'dfghbfvbndndfgb', N'slid1.jpg', N'pic5.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1078, N'Pradeep', N'Chaudhary', N'rajch19@gmail.com', N'https://kumar3534fgdegh35436fg', N'PHP,Python,Java', N'254654', N'Immediately', N'8948979319', N'2023-01-03', N'M Tech', N'1993', N'12', N'26', N'5', N'No', N'ghjmn ', N'bvn cvmnvghmghj', N'slid1.jpg', N'pic5.jpg')
INSERT [dbo].[Srm] ([CustomerID], [First_Name], [Last_Name], [Email_Address], [Linkedin], [Designation], [Salary_Expectation], [Joining_Date], [Mobile_Number], [Date_Of_Birth], [Qualification], [Passing_Year], [Country], [State], [Experience], [Relocated], [Organization], [Description], [Photo], [Resume]) VALUES (1079, N'Raj', N'Chaudhary', N'Kamlesh666@gmail.com', N'https://kumar3534fgdegh35436fg', N'Dot Net,PHP,Python,Java,Net Working', N'3546754', N'Immediately', N'8948979324', N'2023-01-09', N'M Tech', N'1990', N'6', N'39', N'6', N'Yes', N'Rgbahutau hajkyd weulikdfha bdmjhk', N'vbn vb v vcvb cvgh n', N'pic5.jpg', N'slid1.jpg')
SET IDENTITY_INSERT [dbo].[Srm] OFF
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (1, N'Kabul', 1)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (2, N'Kandahar', 1)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (3, N'Kapisa', 1)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (4, N'Khost', 1)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (5, N'Farah', 1)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (6, N'Victoria', 2)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (7, N'Queensland', 2)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (8, N'Tasmania', 2)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (9, N'Northern Territory', 2)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (10, N'South Australia', 2)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (11, N'Barisal ', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (12, N'Rajshahi', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (13, N'Rangpur', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (14, N'Chattogram', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (15, N'Mymensingh ', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (16, N'Sylhet', 3)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (17, N'Alagoas', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (18, N'Pernambuco', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (19, N'Amazonas', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (20, N'Amapa', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (21, N'Parana', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (22, N'Distrito Federal', 4)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (23, N'Lucknow', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (24, N'Bihar', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (25, N'Goa', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (26, N'Gujarat', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (27, N'Assam', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (28, N'Arunachal Pradesh', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (29, N'Uttar Pradesh', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (30, N'Uttrakhand', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (31, N'Rajasthan', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (32, N'Karnataka', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (33, N'Haryana', 12)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (34, N'Liaoning', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (35, N'Hebei', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (36, N'Shanxi', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (37, N'Guangdong', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (38, N'Qinghai', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (39, N'Henan', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (40, N'Hubei', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (41, N'Liaoning', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (42, N'Fujian', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (43, N'Guizhou', 6)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (44, N'Calgary', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (45, N'Toronto', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (46, N'Quebec ', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (47, N'Columbia', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (48, N'Victoria', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (49, N'Ontario', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (50, N'Vancouver', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (51, N'Manitoba ', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (52, N'Nova Scotia', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (53, N'Saskatchewan', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (54, N'Yukon', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (55, N'Alberta', 5)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (56, N'Karachi ', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (57, N'Lahore ', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (58, N'Faisalabad ', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (59, N'Rawalpindi ', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (60, N'Multan ', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (61, N'Faisalabad', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (62, N'Rawalpindi', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (63, N'Hyderabad.', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (64, N'Multan', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (65, N'Peshawar', 20)
INSERT [dbo].[StateName] ([State_Id], [State_Name], [Country_Id]) VALUES (66, N'Gujranwala', 20)
