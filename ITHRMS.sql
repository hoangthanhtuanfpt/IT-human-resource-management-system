USE [master]
GO
/****** Object:  Database [ITHRMS]    Script Date: 6/5/2023 3:49:33 AM ******/
CREATE DATABASE [ITHRMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITHRMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ITHRMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ITHRMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ITHRMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ITHRMS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITHRMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITHRMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITHRMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITHRMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITHRMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITHRMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITHRMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITHRMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITHRMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITHRMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITHRMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITHRMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITHRMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITHRMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITHRMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITHRMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ITHRMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITHRMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITHRMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITHRMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITHRMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITHRMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITHRMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITHRMS] SET RECOVERY FULL 
GO
ALTER DATABASE [ITHRMS] SET  MULTI_USER 
GO
ALTER DATABASE [ITHRMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITHRMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITHRMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITHRMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ITHRMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ITHRMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ITHRMS', N'ON'
GO
ALTER DATABASE [ITHRMS] SET QUERY_STORE = ON
GO
ALTER DATABASE [ITHRMS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ITHRMS]
GO
/****** Object:  Table [dbo].[OvertimeLog]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OvertimeLog](
	[OvertimeLogId] [int] NOT NULL,
	[UserD] [int] NULL,
	[Day] [date] NULL,
	[Hours] [float] NULL,
	[Status] [nvarchar](250) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OvertimeLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaySlip]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaySlip](
	[PaySlipId] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[standard_work_hours] [float] NOT NULL,
	[actual_work_hours] [float] NOT NULL,
	[ot_hours] [float] NOT NULL,
	[leave_hours] [float] NOT NULL,
	[Base_salary] [float] NOT NULL,
	[BHXH_Emp] [float] NOT NULL,
	[BHYT_Emp] [float] NOT NULL,
	[BHTN_Emp] [float] NOT NULL,
	[TaxIncome] [float] NOT NULL,
	[Bonus] [float] NOT NULL,
	[Deduction] [float] NOT NULL,
	[total_salary] [float] NOT NULL,
	[paid_date] [date] NOT NULL,
	[note] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaySlipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameProject] [nvarchar](250) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[TechStack] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Status_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Skill_ID] [int] IDENTITY(1,1) NOT NULL,
	[Skill_Name] [nvarchar](250) NOT NULL,
	[Skill_Description] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Skill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill_Employee]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Employee](
	[UniqueID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Level] [int] NULL,
	[Skill_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_id] [int] NOT NULL,
	[Description] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Task_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Project_id] [int] NOT NULL,
	[Status_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Team_ID] [int] NOT NULL,
	[Team_Name] [varchar](50) NOT NULL,
	[Project_id] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[Team_ID] [int] NOT NULL,
	[Role] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContract]    Script Date: 6/5/2023 3:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContract](
	[UserContractId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Job] [nvarchar](250) NOT NULL,
	[Basic_salary] [float] NOT NULL,
	[Status] [nvarchar](250) NOT NULL,
	[PercentDeduction] [float] NOT NULL,
	[SalaryType] [nvarchar](250) NOT NULL,
	[ContractType] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [NameProject], [StartDate], [EndDate], [TechStack], [Description], [Status_id]) VALUES (1, N'Web Development', CAST(N'2022-01-01' AS Date), CAST(N'2022-06-01' AS Date), N'HTML, CSS, JavaScript', N'Develop a website', 1)
INSERT [dbo].[Projects] ([Id], [NameProject], [StartDate], [EndDate], [TechStack], [Description], [Status_id]) VALUES (2, N'Marketing Campaign', CAST(N'2022-03-01' AS Date), CAST(N'2022-12-31' AS Date), N'Social media, Email marketing', N'Promote company brand', 2)
INSERT [dbo].[Projects] ([Id], [NameProject], [StartDate], [EndDate], [TechStack], [Description], [Status_id]) VALUES (3, N'Mobile App', CAST(N'2023-01-01' AS Date), CAST(N'2023-12-31' AS Date), N'Java, Android SDK', N'Develop a mobile application', 1)
INSERT [dbo].[Projects] ([Id], [NameProject], [StartDate], [EndDate], [TechStack], [Description], [Status_id]) VALUES (4, N'Data Analysis', CAST(N'2023-06-01' AS Date), CAST(N'2023-08-31' AS Date), N'Python, Pandas, NumPy', N'Analyze sales data', 3)
INSERT [dbo].[Projects] ([Id], [NameProject], [StartDate], [EndDate], [TechStack], [Description], [Status_id]) VALUES (5, N'Product Development', CAST(N'2024-01-01' AS Date), CAST(N'2024-12-31' AS Date), N'CAD, 3D Printing', N'Develop a new product', 1)
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([Skill_ID], [Skill_Name], [Skill_Description]) VALUES (1, N'Java', N'Object-oriented programming language')
INSERT [dbo].[Skill] ([Skill_ID], [Skill_Name], [Skill_Description]) VALUES (2, N'Python', N'High-level programming language')
INSERT [dbo].[Skill] ([Skill_ID], [Skill_Name], [Skill_Description]) VALUES (3, N'C#', N'Object-oriented programming language developed by Microsoft')
INSERT [dbo].[Skill] ([Skill_ID], [Skill_Name], [Skill_Description]) VALUES (4, N'JavaScript', N'High-level programming language for web development')
INSERT [dbo].[Skill] ([Skill_ID], [Skill_Name], [Skill_Description]) VALUES (5, N'SQL', N'Structured Query Language for managing relational databases')
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
INSERT [dbo].[Status] ([Status_id], [Description]) VALUES (1, N'Not started')
INSERT [dbo].[Status] ([Status_id], [Description]) VALUES (2, N'In progress
')
INSERT [dbo].[Status] ([Status_id], [Description]) VALUES (3, N'Completed')
GO
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([Task_id], [Description], [Project_id], [Status_id]) VALUES (1, N'Design UI for website', 1, 1)
INSERT [dbo].[Task] ([Task_id], [Description], [Project_id], [Status_id]) VALUES (2, N'Write code for login functionality', 1, 2)
INSERT [dbo].[Task] ([Task_id], [Description], [Project_id], [Status_id]) VALUES (3, N'Test website for bugs', 1, 2)
INSERT [dbo].[Task] ([Task_id], [Description], [Project_id], [Status_id]) VALUES (4, N'Develop marketing strategy', 2, 1)
INSERT [dbo].[Task] ([Task_id], [Description], [Project_id], [Status_id]) VALUES (5, N'Design new company logo', 2, 2)
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Project_id], [Description]) VALUES (1, N'Web Development', 1, N'Develop a website for the client')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Project_id], [Description]) VALUES (2, N'Marketing', 2, N'Create and execute a marketing campaign')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Project_id], [Description]) VALUES (3, N'Data Analysis', 4, N'Analyze sales data to identify trends and opportunities')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Project_id], [Description]) VALUES (4, N'Product Development', 3, N'Design and develop a new mobile app')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Project_id], [Description]) VALUES (5, N'IT Support', 5, N'Provide technical support to employees and systems')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Name], [Image], [Phone], [Email], [Username], [Password], [Address], [BirthDay], [ProjectId], [Team_ID], [Role]) VALUES (1, N'Phạm Quang Vinh', N'img/vinh.jpg', N'0942705605', N'vinhpqse160633@fpt.edu.vn', N'phamquangvinhfpt', N'mj6GGkfA4uDZSXcSwGxYlahlkmw=', N'Nguyễn Xiển, Quận 9', CAST(N'2002-04-02' AS Date), 1, 1, N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OvertimeLog]  WITH CHECK ADD  CONSTRAINT [FK_OvertimeLog_User] FOREIGN KEY([UserD])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OvertimeLog] CHECK CONSTRAINT [FK_OvertimeLog_User]
GO
ALTER TABLE [dbo].[PaySlip]  WITH CHECK ADD  CONSTRAINT [FK_PaySlip_UserContract] FOREIGN KEY([ContactID])
REFERENCES [dbo].[UserContract] ([UserContractId])
GO
ALTER TABLE [dbo].[PaySlip] CHECK CONSTRAINT [FK_PaySlip_UserContract]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Status] FOREIGN KEY([Status_id])
REFERENCES [dbo].[Status] ([Status_id])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Status]
GO
ALTER TABLE [dbo].[Skill_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Employee_Skill] FOREIGN KEY([UserID])
REFERENCES [dbo].[Skill] ([Skill_ID])
GO
ALTER TABLE [dbo].[Skill_Employee] CHECK CONSTRAINT [FK_Skill_Employee_Skill]
GO
ALTER TABLE [dbo].[Skill_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Employee_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Skill_Employee] CHECK CONSTRAINT [FK_Skill_Employee_User]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Projects] FOREIGN KEY([Project_id])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Projects]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Status] FOREIGN KEY([Status_id])
REFERENCES [dbo].[Status] ([Status_id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Status]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Projects] FOREIGN KEY([Project_id])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Projects]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Projects]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Team] FOREIGN KEY([Team_ID])
REFERENCES [dbo].[Team] ([Team_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Team]
GO
ALTER TABLE [dbo].[UserContract]  WITH CHECK ADD  CONSTRAINT [FK_UserContract_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserContract] CHECK CONSTRAINT [FK_UserContract_User]
GO
USE [master]
GO
ALTER DATABASE [ITHRMS] SET  READ_WRITE 
GO
