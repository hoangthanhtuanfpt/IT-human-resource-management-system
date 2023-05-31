USE [master]
GO
/****** Object:  Database [HRMS]    Script Date: 5/31/2023 8:32:57 AM ******/
CREATE DATABASE [HRMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HRMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HRMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HRMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HRMS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HRMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRMS] SET RECOVERY FULL 
GO
ALTER DATABASE [HRMS] SET  MULTI_USER 
GO
ALTER DATABASE [HRMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HRMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HRMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HRMS', N'ON'
GO
ALTER DATABASE [HRMS] SET QUERY_STORE = ON
GO
ALTER DATABASE [HRMS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HRMS]
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 5/31/2023 8:32:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[Id] [int] NOT NULL,
	[NameProject] [nvarchar](250) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[TechStack] [nvarchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OvertimeLog]    Script Date: 5/31/2023 8:32:57 AM ******/
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
 CONSTRAINT [PK_OvertimeLog] PRIMARY KEY CLUSTERED 
(
	[OvertimeLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaySlip]    Script Date: 5/31/2023 8:32:57 AM ******/
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
/****** Object:  Table [dbo].[ResetPassword]    Script Date: 5/31/2023 8:32:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResetPassword](
	[RequestID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RequestTime] [datetime] NOT NULL,
	[VerificationCode] [varchar](50) NOT NULL,
	[IsVerified] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2023 8:32:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_id] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 5/31/2023 8:32:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Skill_ID] [int] NOT NULL,
	[Skill_Name] [nvarchar](250) NOT NULL,
	[Skill_Description] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Skill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill_Employee]    Script Date: 5/31/2023 8:32:57 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 5/31/2023 8:32:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[ExperienceId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Team_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContract]    Script Date: 5/31/2023 8:32:57 AM ******/
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
INSERT [dbo].[Experience] ([Id], [NameProject], [StartDate], [EndDate], [TechStack]) VALUES (1, N'Go Car', CAST(N'2020-04-02' AS Date), CAST(N'2020-04-20' AS Date), N'Go')
GO
INSERT [dbo].[Role] ([Role_id], [UserID], [Description]) VALUES (1, 1, N'admin')
INSERT [dbo].[Role] ([Role_id], [UserID], [Description]) VALUES (2, 2, N'user')
INSERT [dbo].[Role] ([Role_id], [UserID], [Description]) VALUES (1, 3, N'admin')
GO
INSERT [dbo].[User] ([UserID], [Name], [Image], [Phone], [Email], [Username], [Password], [Address], [BirthDay], [ExperienceId], [Status], [Team_ID]) VALUES (1, N'Phạm Quang Vinh', N'kakaka', N'0101010', N'admin@gmail.com', N'admin', N'admin', N'119', CAST(N'2002-04-02' AS Date), 1, 1, 1)
INSERT [dbo].[User] ([UserID], [Name], [Image], [Phone], [Email], [Username], [Password], [Address], [BirthDay], [ExperienceId], [Status], [Team_ID]) VALUES (2, N'Tuấn', N'tuan', N'0202', N'user@gmail.com', N'user01', N'user', N'skjsj', CAST(N'2002-04-02' AS Date), 1, 1, 1)
INSERT [dbo].[User] ([UserID], [Name], [Image], [Phone], [Email], [Username], [Password], [Address], [BirthDay], [ExperienceId], [Status], [Team_ID]) VALUES (3, N'Toàn', N'jfj', N'jfj', N'user1@gmail.com', N'user02', N'user', N'jfj', CAST(N'2002-04-20' AS Date), 2, 2, 2)
GO
ALTER TABLE [dbo].[Experience]  WITH CHECK ADD  CONSTRAINT [FK_Experience_User] FOREIGN KEY([Id])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Experience] CHECK CONSTRAINT [FK_Experience_User]
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
ALTER TABLE [dbo].[ResetPassword]  WITH CHECK ADD  CONSTRAINT [FK_ResetPassword_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ResetPassword] CHECK CONSTRAINT [FK_ResetPassword_User]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User]
GO
ALTER TABLE [dbo].[Skill_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Employee_Skill] FOREIGN KEY([Skill_ID])
REFERENCES [dbo].[Skill] ([Skill_ID])
GO
ALTER TABLE [dbo].[Skill_Employee] CHECK CONSTRAINT [FK_Skill_Employee_Skill]
GO
ALTER TABLE [dbo].[Skill_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Employee_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Skill_Employee] CHECK CONSTRAINT [FK_Skill_Employee_User]
GO
ALTER TABLE [dbo].[UserContract]  WITH CHECK ADD  CONSTRAINT [FK_UserContract_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserContract] CHECK CONSTRAINT [FK_UserContract_User]
GO
USE [master]
GO
ALTER DATABASE [HRMS] SET  READ_WRITE 
GO
