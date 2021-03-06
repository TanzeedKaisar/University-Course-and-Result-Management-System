USE [master]
GO
/****** Object:  Database [UniversityCourseManagementSystem]    Script Date: 2/1/2018 1:30:21 PM ******/
CREATE DATABASE [UniversityCourseManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityCourseManagementSystem', FILENAME = N'F:\BITM\Web\Project2\UniversityCourseManagementSystemApp\UniversityCourseManagementSystem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UniversityCourseManagementSystem_log', FILENAME = N'F:\BITM\Web\Project2\UniversityCourseManagementSystemApp\UniversityCourseManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityCourseManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityCourseManagementSystem]
GO
/****** Object:  Table [dbo].[AssignStudentTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssignStudentTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Date] [varchar](50) NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[GradeID] [int] NULL,
 CONSTRAINT [PK_AssignStudentTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssignTeacherTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssignTeacherTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[TeacherID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_AssignTeacherTable_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClassRoomAllocationTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassRoomAllocationTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TimeFrom] [varchar](10) NOT NULL,
	[TimeTo] [varchar](10) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[RoomNoID] [int] NOT NULL,
	[SevenDayWeekID] [int] NOT NULL,
 CONSTRAINT [PK_ClassRoomAllocationTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClassRoomTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassRoomTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](50) NOT NULL,
	[RoomName] [varchar](100) NOT NULL,
	[RoomLocation] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ClassRoomTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](50) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[CourseCredit] [decimal](10, 3) NOT NULL,
	[CourseDescription] [varchar](100) NULL,
	[DepartmentID] [int] NOT NULL,
	[SemesterID] [int] NOT NULL,
 CONSTRAINT [PK_CourseTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartmentTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [varchar](50) NOT NULL,
	[DeptName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DepartmentTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GradeTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GradeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [varchar](20) NOT NULL,
 CONSTRAINT [PK_GradeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SemesterTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SemesterTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SemesterCode] [int] NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SemesterTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SevenDayWeekTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SevenDayWeekTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[DayShortName] [varchar](10) NULL,
 CONSTRAINT [PK_SevenDayWeekTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](100) NOT NULL,
	[StudentEmail] [varchar](50) NOT NULL,
	[StudentContactNo] [varchar](20) NOT NULL,
	[StudentAddDate] [varchar](50) NOT NULL,
	[StudentAddress] [varchar](100) NULL,
	[StudentRegNo] [varchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_StudentTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherDesignationTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherDesignationTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DesignationID] [int] NOT NULL,
	[DesignationName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TeacherDesignationTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherTable]    Script Date: 2/1/2018 1:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [varchar](100) NOT NULL,
	[TeacherAddress] [varchar](100) NULL,
	[TeacherEmail] [varchar](50) NOT NULL,
	[TeacherContactNo] [varchar](15) NOT NULL,
	[TeacherCredit] [decimal](10, 3) NOT NULL,
	[TeacherDesignationID] [int] NOT NULL,
	[TeacherDepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_TeacherTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AssignStudentTable] ON 

INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (3, N'1', N'2018-26-01', 30, 9, 1)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (4, N'1', N'2018-26-01', 30, 26, 2)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (5, N'1', N'2018-26-01', 14, 17, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (6, N'1', N'2018-26-01', 21, 17, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (7, N'1', N'2018-26-01', 21, 18, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (8, N'1', N'2018-28-01', 1024, 9, 1)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (9, N'1', N'2018-28-01', 1024, 27, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (10, N'1', N'2018-28-01', 1, 9, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (11, N'1', N'2018-28-01', 30, 9, 1)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (12, N'1', N'2018-29-01', 1024, 30, 10)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (13, N'1', N'2018-01-02', 1024, 9, 2)
INSERT [dbo].[AssignStudentTable] ([id], [Status], [Date], [StudentID], [CourseID], [GradeID]) VALUES (14, N'1', N'2018-01-02', 1024, 31, 1)
SET IDENTITY_INSERT [dbo].[AssignStudentTable] OFF
SET IDENTITY_INSERT [dbo].[AssignTeacherTable] ON 

INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1, N'UnAssign', 1, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (2, N'UnAssign', 1, 12)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (3, N'UnAssign', 1, 22)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (4, N'UnAssign', 1, 23)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (5, N'UnAssign', 1, 11)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (6, N'UnAssign', 1, 24)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (7, N'UnAssign', 1, 26)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (8, N'UnAssign', 1, 27)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (10, N'UnAssign', 5, 29)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (12, N'UnAssign', 3, 25)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (13, N'UnAssign', 1, 30)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1012, N'UnAssign', 1, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1013, N'UnAssign', 1, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1014, N'UnAssign', 1, 24)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1015, N'UnAssign', 1, 26)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1016, N'UnAssign', 1, 28)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1017, N'UnAssign', 1, 12)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1018, N'UnAssign', 1, 22)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1019, N'UnAssign', 1, 23)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1020, N'UnAssign', 1, 11)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1021, N'UnAssign', 1, 29)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1022, N'UnAssign', 11, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1023, N'UnAssign', 3, 11)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1024, N'UnAssign', 2, 12)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1025, N'UnAssign', 1, 22)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1026, N'UnAssign', 3, 23)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1027, N'UnAssign', 13, 27)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1028, N'UnAssign', 14, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1029, N'UnAssign', 14, 12)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1030, N'UnAssign', 1, 23)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1031, N'UnAssign', 7, 32)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1032, N'UnAssign', 14, 22)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1033, N'UnAssign', 14, 24)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1034, N'UnAssign', 14, 29)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1035, N'Assign', 25, 9)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1036, N'Assign', 25, 22)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1037, N'Assign', 25, 24)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1038, N'Assign', 25, 31)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1039, N'Assign', 24, 28)
INSERT [dbo].[AssignTeacherTable] ([id], [Status], [TeacherID], [CourseID]) VALUES (1040, N'Assign', 3, 12)
SET IDENTITY_INSERT [dbo].[AssignTeacherTable] OFF
SET IDENTITY_INSERT [dbo].[ClassRoomTable] ON 

INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (1, N'S-109', N'Science Building-109', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (3, N'S-110', N'Science Building-110', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (4, N'S-111', N'Science Building-111', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (5, N'SX-501', N'Science Extended Building-501', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (6, N'SX-502', N'Science Extended Building-502', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (7, N'SX-503', N'Science Extended Building-503', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (8, N'SX-401', N'Science Extended Building-401', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (9, N'SX-402', N'Science Extended Building-402', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (10, N'SX-403', N'Science Extended Building-403', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (11, N'A-501', N'Administrative Building-501', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (12, N'A-502', N'Administrative Building-502', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (13, N'A-503', N'Administrative Building-503', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (14, N'A-601', N'Administrative Building-601', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (15, N'A-602', N'Administrative Building-602', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (16, N'A-603', N'Administrative Building-603', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (17, N'CLab-1', N'Programming Lab', N'Academic building-4')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (18, N'CLab-2', N'Machine Learning Lab', N'Academic building-4')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (19, N'CLab-3', N'Computer Networking Lab', N'Academic building-4')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (22, N'CLab-4', N'Data Science Lab', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (23, N'CLab-5', N'Algorithm Lab', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (24, N'CLab-6', N'Artificial Intelligence', N'Administrative Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (25, N'Phy-1', N'Physics Lab-1', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (27, N'EEEL-1', N'EEE Lab-1', N'Faculty of Science and Engineering Building')
INSERT [dbo].[ClassRoomTable] ([id], [RoomNo], [RoomName], [RoomLocation]) VALUES (28, N'EEEL-2', N'EEE Lab-2', N'Administrative Building')
SET IDENTITY_INSERT [dbo].[ClassRoomTable] OFF
SET IDENTITY_INSERT [dbo].[CourseTable] ON 

INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (9, N'CSE-1101', N'Computer Fundamental', CAST(2.000 AS Decimal(10, 3)), N'', 1, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (10, N'EEE-1101', N'Basic Electrical Engineering', CAST(3.000 AS Decimal(10, 3)), N'', 5, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (11, N'MATH-1101', N'Mathematics-1', CAST(3.000 AS Decimal(10, 3)), N'', 1, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (12, N'CSE-1201', N'Structured Programming', CAST(3.000 AS Decimal(10, 3)), N'', 1, 2)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (13, N'PHY-1201', N'Physics-2', CAST(3.000 AS Decimal(10, 3)), N'', 6, 2)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (14, N'CHEM-1101', N'Chemistry-1', CAST(3.000 AS Decimal(10, 3)), N'', 7, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (15, N'CHEM-1201', N'Chemistry-2', CAST(3.000 AS Decimal(10, 3)), N'', 7, 2)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (16, N'CHEM-2101', N'Chemistry-3', CAST(2.000 AS Decimal(10, 3)), N'', 7, 3)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (17, N'BBA-1101', N'Business-1', CAST(3.000 AS Decimal(10, 3)), N'', 8, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (18, N'BBA-1201', N'Business-2', CAST(1.000 AS Decimal(10, 3)), N'', 8, 2)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (19, N'BBA-2103', N'Business-3', CAST(3.000 AS Decimal(10, 3)), N'', 8, 3)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (20, N'BBA-4701', N'Business-7', CAST(4.000 AS Decimal(10, 3)), N'', 8, 7)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (21, N'BBA-4807', N'Business-8', CAST(3.500 AS Decimal(10, 3)), N'', 8, 8)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (22, N'CSE-2303', N'Data Structures', CAST(4.000 AS Decimal(10, 3)), N'', 1, 3)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (23, N'CSE-2403', N'Computer Algorithms', CAST(3.000 AS Decimal(10, 3)), N'', 1, 4)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (24, N'CSE-2407', N'Database System', CAST(3.000 AS Decimal(10, 3)), N'', 1, 4)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (25, N'CSE-2408', N'Database System Sessional', CAST(1.500 AS Decimal(10, 3)), N'', 1, 4)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (26, N'CSE-3501', N'Microprocessors and Microcontroller', CAST(3.000 AS Decimal(10, 3)), N'', 1, 5)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (27, N'CSE-3603', N'Operating System', CAST(3.000 AS Decimal(10, 3)), N'', 1, 6)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (28, N'CSE-3609', N'System Analysis & Design', CAST(2.000 AS Decimal(10, 3)), N'', 1, 6)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (29, N'CSE-4701', N'Computer Networks', CAST(4.000 AS Decimal(10, 3)), N'', 1, 7)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (30, N'CSE-4708', N'Field Work', CAST(1.000 AS Decimal(10, 3)), N'', 1, 7)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (31, N'CSE-4801', N'Compiler', CAST(2.000 AS Decimal(10, 3)), N'', 1, 8)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (32, N'CSE-4822', N'General Viva', CAST(1.000 AS Decimal(10, 3)), N'', 1, 8)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (33, N'PHY-1101', N'Elementary Physics', CAST(3.000 AS Decimal(10, 3)), N'', 16, 1)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (34, N'URIS-3501', N'Introduction to Islamic Politics', CAST(1.000 AS Decimal(10, 3)), N'', 16, 5)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (37, N'CSE-4702', N'ComputerAbC', CAST(3.500 AS Decimal(10, 3)), N'ABCDE', 1, 8)
INSERT [dbo].[CourseTable] ([id], [CourseCode], [CourseName], [CourseCredit], [CourseDescription], [DepartmentID], [SemesterID]) VALUES (38, N'CSE-3601', N'Data Communication', CAST(3.000 AS Decimal(10, 3)), N'ABCD', 1, 6)
SET IDENTITY_INSERT [dbo].[CourseTable] OFF
SET IDENTITY_INSERT [dbo].[DepartmentTable] ON 

INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (1, N'CSE', N'Computer Science and Engineering')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (5, N'EEE', N'Electrical and Electronics Engineering')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (6, N'PHY', N'Physics')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (7, N'CHM', N'Chemistry')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (8, N'BBA', N'Bachelor of Business Administration')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (14, N'ETE', N'Electrical and Telecommunication Engineering')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (15, N'ELL', N'English Literature and Language')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (16, N'CCE', N'Computer Science and Communication Engineering')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (17, N'IPE', N'Industrial PE')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (20, N'QSIS', N'Qsis')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (21, N'PHARMA', N'Pharmacy')
INSERT [dbo].[DepartmentTable] ([id], [DeptCode], [DeptName]) VALUES (22, N'ABCDE', N'AKVJSKL')
SET IDENTITY_INSERT [dbo].[DepartmentTable] OFF
SET IDENTITY_INSERT [dbo].[GradeTable] ON 

INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (1, N'A+')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (2, N'A')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (3, N'A-')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (4, N'B+')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (5, N'B')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (6, N'B-')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (7, N'C+')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (8, N'C')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (9, N'C-')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (10, N'Not Graded Yet')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (11, N'D+')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (12, N'D')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (13, N'D-')
INSERT [dbo].[GradeTable] ([id], [Grade]) VALUES (14, N'F')
SET IDENTITY_INSERT [dbo].[GradeTable] OFF
SET IDENTITY_INSERT [dbo].[SemesterTable] ON 

INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (1, 1, N'1st Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (2, 2, N'2nd Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (3, 3, N'3rd Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (4, 4, N'4th Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (5, 5, N'5th Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (6, 6, N'6th Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (7, 7, N'7th Semester')
INSERT [dbo].[SemesterTable] ([id], [SemesterCode], [SemesterName]) VALUES (8, 8, N'8th Semester')
SET IDENTITY_INSERT [dbo].[SemesterTable] OFF
SET IDENTITY_INSERT [dbo].[SevenDayWeekTable] ON 

INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (1, N'Saturday', N'Sat')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (2, N'Sunday', N'Sun')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (3, N'Monday', N'Mon')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (4, N'Tuesday', N'Tue')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (5, N'Wednesday', N'Wed')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (6, N'Thursday', N'Thu')
INSERT [dbo].[SevenDayWeekTable] ([id], [Day], [DayShortName]) VALUES (7, N'Friday', N'Fri')
SET IDENTITY_INSERT [dbo].[SevenDayWeekTable] OFF
SET IDENTITY_INSERT [dbo].[StudentTable] ON 

INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1, N'akib', N'akib9ctg@gmail.com', N'+8801839231133', N'2018-22-01', N'Chawkbajar', N'CSE-2018-009', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (2, N'Abid', N'abid9ctg@gmail.com', N'+8801738802090', N'2017-01-01', N'Chawkbajar', N'CSE-2017-001', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (3, N'Issa Ruhullah', N'issa@gmail.com', N'+8801715121121', N'2014-14-01', N'', N'CSE-2014-001', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (4, N'llml', N'fhfh@gmail.com', N'+8801839231133', N'2018-22-01', N'', N'CSE-2018-002', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (5, N'ac', N'adas@gmail.com', N'+8801715121121', N'2018-22-01', N'asc', N'PHY-2018-001', 6)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (6, N'ascas', N'cas@gmail.com', N'+8801839231133', N'2018-22-01', N'ac', N'PHY-2018-002', 6)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (7, N'casca', N'adavea@gmail.com', N'+8801839231133', N'2017-22-01', N'asca', N'PHY-2017-001', 6)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (13, N'xzc', N'LK@gmail.com', N'+8801839231133', N'2018-22-01', N'mn', N'CSE-2018-011', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (14, N'zxc', N'dva@gmail.com', N'+8801715121121', N'2018-22-01', N'dac', N'BBA-2018-101', 8)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (16, N'zxc', N'lksad@gmail.com', N'+8801839231133', N'2018-22-01', N'ad', N'BBA-2018-009', 8)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (17, N'xzc', N'pa@gmail.com', N'+8801839231133', N'2018-22-01', N'xc', N'BBA-2018-099', 8)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (21, N'zxc', N'hjk@gmail.com', N'+8801715121121', N'2018-22-01', N'adc', N'BBA-2018-002', 8)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (22, N'zxczxc', N'scadfas@gmail.com', N'+8801839231133', N'2018-22-01', N'adc', N'BBA-2018-102', 8)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (23, N'cas', N'XC@gmail.com', N'+8801715121121', N'2018-22-01', N'ac', N'CSE-2018-012', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (24, N'aczxc', N'ac@gmail.com', N'+8801715121121', N'2018-22-01', N'zxcc', N'CSE-2018-013', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (25, N'XC', N'asc@gmail.com', N'+8801715121121', N'2018-22-01', N'aca', N'CSE-2018-014', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (26, N'zxczxc', N'xzczx@gmail.com', N'+8801839231133', N'2018-22-01', N'zdvx', N'CHM-2018-001', 7)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (27, N'xzc', N'vcb@gmail.com', N'+8801715121121', N'2018-22-01', N'zxc', N'CHM-2018-002', 7)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (28, N'xcz', N'nmnm@gmail.com', N'+8801715121121', N'2018-22-01', N'zxc', N'CHM-2018-003', 7)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (29, N'cvxc', N'NBV@gmail.com', N'+8801715121121', N'2018-22-01', N'c', N'CHM-2018-004', 7)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (30, N'Ahasanul Kalam Akib', N'akib10ctg@gmail.com', N'+8801715121121', N'2019-01-01', N'Chawkbajar', N'CSE-2019-001', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (31, N'Misbah', N'madfad@gmail.com', N'+8801839231133', N'2018-22-01', N'zcvz', N'PHY-2018-003', 6)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1023, N'Mishu', N'bmishu@gmail.com', N'+8801839231133', N'2018-28-01', N'asc', N'CSE-2018-015', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1024, N'Mishu', N'sdvadv@gmail.com', N'+8801715121121', N'2020-04-03', N'aca', N'CSE-2020-001', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1025, N'Morshed Alam', N'morshed@gmail.com', N'+8801715121156', N'2018-28-01', N'', N'CCE-2018-001', 16)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1026, N'Morshed Alam', N'morshed2@gmail.com', N'+8801839231133', N'2018-28-01', N'', N'CCE-2018-002', 16)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1027, N'Jalal Uddin', N'jalal@gmail.com', N'+8801715121121', N'2018-28-01', N'', N'ELL-2018-001', 15)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1029, N'Akdvk dac', N'akv@gmail.com', N'+8801839231133', N'2018-16-02', N'csac', N'CSE-2018-016', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1030, N'Akvi', N'ascdc@gmail.com', N'+8801839231133', N'2009-04-02', N'xzcz', N'CSE-2009-001', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1031, N'ldlc', N'cazc@gmail.com', N'+8801715121121', N'2018-01-02', N'xzc', N'PHARMA-2018-001', 21)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1032, N'xzczxc', N'dcx@gmail.com', N'+8801839231133', N'2018-01-02', N'xc', N'PHARMA-2018-002', 21)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1033, N'AKVJ', N'vdav@gmail.com', N'+8801715121121', N'2018-01-02', N'AKVM', N'CSE-2018-017', 1)
INSERT [dbo].[StudentTable] ([id], [StudentName], [StudentEmail], [StudentContactNo], [StudentAddDate], [StudentAddress], [StudentRegNo], [DepartmentID]) VALUES (1034, N'ZMV', N'khm@gmail.com', N'+8801885451589', N'2019-12-12', N'JKSV', N'QSIS-2019-001', 20)
SET IDENTITY_INSERT [dbo].[StudentTable] OFF
SET IDENTITY_INSERT [dbo].[TeacherDesignationTable] ON 

INSERT [dbo].[TeacherDesignationTable] ([id], [DesignationID], [DesignationName]) VALUES (1, 1, N'Professor')
INSERT [dbo].[TeacherDesignationTable] ([id], [DesignationID], [DesignationName]) VALUES (2, 2, N'Associate Professor')
INSERT [dbo].[TeacherDesignationTable] ([id], [DesignationID], [DesignationName]) VALUES (3, 3, N'Assistant Professor')
INSERT [dbo].[TeacherDesignationTable] ([id], [DesignationID], [DesignationName]) VALUES (4, 4, N'Lecturer')
INSERT [dbo].[TeacherDesignationTable] ([id], [DesignationID], [DesignationName]) VALUES (5, 5, N'Assistant Lecturer')
SET IDENTITY_INSERT [dbo].[TeacherDesignationTable] OFF
SET IDENTITY_INSERT [dbo].[TeacherTable] ON 

INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (1, N'Dr. Md. Monirul Islam', N'CSE-Department', N'monirliton@yahoo.com', N'01711-701719', CAST(25.000 AS Decimal(10, 3)), 1, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (2, N'Mr. Mohammed Shamsul Alam', N'Chawkbajar', N'alam_cse@yahoo.com', N'01711-941680', CAST(24.000 AS Decimal(10, 3)), 2, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (3, N'Mr. A.N.M. Rezaul Karim', N'IIUC Dormitory', N'zakianaser@yahoo.com', N'01819-941685', CAST(24.000 AS Decimal(10, 3)), 2, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (4, N'Mr. Tanveer Ahsan', N'Bahardarhat', N'tanveerahsan@gmail.com', N'01789-523129', CAST(24.000 AS Decimal(10, 3)), 2, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (5, N'Mr. Abdullahil Kafi', N'Agrabad', N'ab_kafi@yahoo.com', N'01720-155585', CAST(22.000 AS Decimal(10, 3)), 3, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (6, N'Mr. Siddique Ahmed', N'Kodomtoli', N'drsiddiqueahmed@gmail.com', N'01711572520', CAST(22.000 AS Decimal(10, 3)), 3, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (7, N'Mr. Md. Mahiuddin', N'Pahartoli', N'mmuict@gmail.com', N'01818-734150', CAST(22.000 AS Decimal(10, 3)), 3, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (8, N'Mr. Touhidul Alam', N'IIUC Dormitory', N'touhid13@eee.iiuc.ac.bd', N'+8801836797988', CAST(22.000 AS Decimal(10, 3)), 3, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (9, N'Mr. Md. Imrul Kayes', N'Chawkbajar', N'imrul46@yahoo.com', N'01733-800861', CAST(18.000 AS Decimal(10, 3)), 4, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (10, N'Mr. Risul Islam Rasel', N'Agrabad', N'rasel.kmutnb@gmail.com', N'01779-022055', CAST(18.000 AS Decimal(10, 3)), 4, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (11, N'Mr. Md. Shahab Uddin', N'Halishohor', N'shahabuddin4444@gmail.com', N'01840087403', CAST(18.000 AS Decimal(10, 3)), 4, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (12, N'Mr. Saiful Islam', N'Agrabad', N'engsaiful10@gmail.com', N'01818650864', CAST(15.000 AS Decimal(10, 3)), 5, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (13, N'Ms. Israt Binte Habib', N'Chawkbajar', N'israthabib.cse@gmail.com', N'01937294500', CAST(15.000 AS Decimal(10, 3)), 5, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (14, N'Mr. Md. Salim Miah', N'Noyabazar', N'mdsalimiut@gmail.com', N'01756085115', CAST(15.000 AS Decimal(10, 3)), 5, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (15, N'Dr. Md. Delawer Hossain', N'GEC,Chittagong', N'niniandgorki@yahoo.com', N'01845963963', CAST(25.000 AS Decimal(10, 3)), 1, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (16, N'Muhammad Athar Uddin', N'Chawkbazar', N'mau@eee.iiuc.ac.bd', N'01720121121', CAST(24.000 AS Decimal(10, 3)), 2, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (17, N'Dr. Mohammad Shamimul Haque Choudhury', N'Agrabad', N'shamimul129@gmail.com', N'01902121121', CAST(25.000 AS Decimal(10, 3)), 1, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (18, N'Mr. Md. Nazmul Hasan', N'Halishohor', N'nzml_hasan@yahoo.com', N'0182412121', CAST(23.000 AS Decimal(10, 3)), 2, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (19, N'Mr. Fakir Sharif Hossain', N'Chawkbazar', N'sharifo16@yahoo.com', N'01821121121', CAST(20.000 AS Decimal(10, 3)), 3, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (20, N'Engr. Md. Atiqul Islam', N'IIUC Dormitory', N'atiq_atrai@yahoo.com', N'01954121211', CAST(18.000 AS Decimal(10, 3)), 4, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (21, N'Mr. Md. Rasheduzzaman', N'Agrabad', N'rashedbscm@gmail.com', N'01935121121', CAST(15.000 AS Decimal(10, 3)), 5, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (22, N'Mr. M. Tanvirul Hoque', N'Bohoddarhat', N'm.tanvirulhoque10@gmail.com', N'+8801836797978', CAST(15.000 AS Decimal(10, 3)), 5, 5)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (23, N'Raisul Islam', N'Rangpur', N'rgh@gmail.com', N'+8801836794500', CAST(18.000 AS Decimal(10, 3)), 4, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (24, N'Mohammad Jaweed Iqbal', N'Chawkbazar', N'jaweed@gmail.com', N'+8801836797981', CAST(25.000 AS Decimal(10, 3)), 3, 1)
INSERT [dbo].[TeacherTable] ([id], [TeacherName], [TeacherAddress], [TeacherEmail], [TeacherContactNo], [TeacherCredit], [TeacherDesignationID], [TeacherDepartmentID]) VALUES (25, N'Abul Kalam Azad', N'Chawkbajar', N'azad@gmail.com', N'+8801836797981', CAST(10.000 AS Decimal(10, 3)), 4, 1)
SET IDENTITY_INSERT [dbo].[TeacherTable] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseTable]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CourseTable] ON [dbo].[CourseTable]
(
	[CourseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseTable_1]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CourseTable_1] ON [dbo].[CourseTable]
(
	[CourseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DepartmentTable]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DepartmentTable] ON [dbo].[DepartmentTable]
(
	[DeptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DepartmentTable_1]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DepartmentTable_1] ON [dbo].[DepartmentTable]
(
	[DeptName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_StudentTable]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_StudentTable] ON [dbo].[StudentTable]
(
	[StudentEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TeacherTable]    Script Date: 2/1/2018 1:30:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TeacherTable] ON [dbo].[TeacherTable]
(
	[TeacherEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignStudentTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignStudentTable_AssignStudentTable] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentTable] ([id])
GO
ALTER TABLE [dbo].[AssignStudentTable] CHECK CONSTRAINT [FK_AssignStudentTable_AssignStudentTable]
GO
ALTER TABLE [dbo].[AssignStudentTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignStudentTable_CourseTable] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseTable] ([id])
GO
ALTER TABLE [dbo].[AssignStudentTable] CHECK CONSTRAINT [FK_AssignStudentTable_CourseTable]
GO
ALTER TABLE [dbo].[AssignStudentTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignStudentTable_GradeTable] FOREIGN KEY([GradeID])
REFERENCES [dbo].[GradeTable] ([id])
GO
ALTER TABLE [dbo].[AssignStudentTable] CHECK CONSTRAINT [FK_AssignStudentTable_GradeTable]
GO
ALTER TABLE [dbo].[AssignTeacherTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignTeacherTable_CourseTable] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseTable] ([id])
GO
ALTER TABLE [dbo].[AssignTeacherTable] CHECK CONSTRAINT [FK_AssignTeacherTable_CourseTable]
GO
ALTER TABLE [dbo].[AssignTeacherTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignTeacherTable_TeacherTable] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[TeacherTable] ([id])
GO
ALTER TABLE [dbo].[AssignTeacherTable] CHECK CONSTRAINT [FK_AssignTeacherTable_TeacherTable]
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoomAllocationTable_ClassRoomTable] FOREIGN KEY([RoomNoID])
REFERENCES [dbo].[ClassRoomTable] ([id])
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable] CHECK CONSTRAINT [FK_ClassRoomAllocationTable_ClassRoomTable]
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoomAllocationTable_CourseTable] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseTable] ([id])
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable] CHECK CONSTRAINT [FK_ClassRoomAllocationTable_CourseTable]
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoomAllocationTable_DepartmentTable] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DepartmentTable] ([id])
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable] CHECK CONSTRAINT [FK_ClassRoomAllocationTable_DepartmentTable]
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoomAllocationTable_SevenDayWeekTable] FOREIGN KEY([SevenDayWeekID])
REFERENCES [dbo].[SevenDayWeekTable] ([id])
GO
ALTER TABLE [dbo].[ClassRoomAllocationTable] CHECK CONSTRAINT [FK_ClassRoomAllocationTable_SevenDayWeekTable]
GO
ALTER TABLE [dbo].[CourseTable]  WITH CHECK ADD  CONSTRAINT [FK_CourseTable_DepartmentTable] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DepartmentTable] ([id])
GO
ALTER TABLE [dbo].[CourseTable] CHECK CONSTRAINT [FK_CourseTable_DepartmentTable]
GO
ALTER TABLE [dbo].[CourseTable]  WITH CHECK ADD  CONSTRAINT [FK_CourseTable_SemesterTable] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[SemesterTable] ([id])
GO
ALTER TABLE [dbo].[CourseTable] CHECK CONSTRAINT [FK_CourseTable_SemesterTable]
GO
ALTER TABLE [dbo].[StudentTable]  WITH CHECK ADD  CONSTRAINT [FK_StudentTable_DepartmentTable] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DepartmentTable] ([id])
GO
ALTER TABLE [dbo].[StudentTable] CHECK CONSTRAINT [FK_StudentTable_DepartmentTable]
GO
ALTER TABLE [dbo].[TeacherTable]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTable_DepartmentTable] FOREIGN KEY([TeacherDepartmentID])
REFERENCES [dbo].[DepartmentTable] ([id])
GO
ALTER TABLE [dbo].[TeacherTable] CHECK CONSTRAINT [FK_TeacherTable_DepartmentTable]
GO
ALTER TABLE [dbo].[TeacherTable]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTable_TeacherDesignationTable] FOREIGN KEY([TeacherDesignationID])
REFERENCES [dbo].[TeacherDesignationTable] ([id])
GO
ALTER TABLE [dbo].[TeacherTable] CHECK CONSTRAINT [FK_TeacherTable_TeacherDesignationTable]
GO
USE [master]
GO
ALTER DATABASE [UniversityCourseManagementSystem] SET  READ_WRITE 
GO
