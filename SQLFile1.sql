USE [Intranet]
GO
/****** Object:  Table [dbo].[Branch_Detail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch_Detail](
	[branch_id] [bigint] IDENTITY(1,1) NOT NULL,
	[branch_name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Branch_Detail] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[G_Riya_Emails]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[G_Riya_Emails](
	[Gpkid] [bigint] IDENTITY(1,1) NOT NULL,
	[G_Fname] [varchar](50) NULL,
	[G_Lname] [varchar](50) NULL,
	[G_Email] [varchar](60) NULL,
	[G_Mob] [varchar](15) NULL,
	[G_desg] [varchar](50) NULL,
	[G_branch] [bigint] NULL,
	[G_region] [varchar](50) NULL,
	[G_dob] [varchar](50) NULL,
	[G_doj] [varchar](50) NULL,
	[G_domain] [varchar](30) NULL,
	[G_insertedby] [bigint] NULL,
	[G_inserteddate] [datetime] NOT NULL,
	[G_Country] [varchar](50) NULL,
 CONSTRAINT [PK_G_Riya_Emails] PRIMARY KEY CLUSTERED 
(
	[Gpkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwGoogleEmployee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vwGoogleEmployee]
as      
        select  [Gpkid],[G_Fname],[G_Lname],
          SUBSTRING([G_Email],0, CHARINDEX('@',[G_Email],0))as [G_Email],      
          [G_Mob],[G_desg] ,[branch_name],[G_region],[G_domain],e.G_branch as BranchID       
          from [Intranet].[dbo].[G_Riya_Emails] e      
          inner join [Intranet].[dbo].[Branch_Detail] b          
          on e.G_branch=b.branch_id  
GO
/****** Object:  Table [dbo].[airportinfo]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[airportinfo](
	[City] [nvarchar](255) NULL,
	[Airport] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiKeys]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiKeys](
	[AndroidVersion] [varchar](10) NULL,
	[IosVersion] [varchar](10) NULL,
	[AndroidMessage] [varchar](500) NULL,
	[IosMessage] [varchar](500) NULL,
	[updateDate] [datetime] NULL,
	[IsForceUpdate] [bit] NULL,
	[IsiosForceUpdate] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bkp_atlanta_empdata]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkp_atlanta_empdata](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL,
	[IsPunch_App] [bit] NULL,
	[IsRHFlag] [bit] NULL,
	[punch_email] [varchar](100) NULL,
	[Branch] [varchar](50) NULL,
	[AccountPersonCode] [varchar](50) NULL,
	[sole code] [varchar](10) NULL,
	[IsRHSales] [bit] NULL,
	[Bank_BranchCode] [varchar](100) NULL,
	[BankBranchIFSC] [varchar](100) NULL,
	[bank_branch] [varchar](100) NULL,
	[IsJODUser] [bit] NULL,
	[IsConnectUser] [bit] NULL,
	[ApprovalEmailId] [varchar](50) NULL,
	[ApprovalEmployeeId] [varchar](50) NULL,
	[emp_centre_code] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bkp_emp_master]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkp_emp_master](
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](150) NULL,
	[emp_mb_number] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bkp_employees_29112019]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkp_employees_29112019](
	[Name] [varchar](152) NOT NULL,
	[Branch] [varchar](200) NULL,
	[EmployeCode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bkp_trnpunchtime_01feb2019]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkp_trnpunchtime_01feb2019](
	[fk_emp_code] [varchar](10) NULL,
	[deptcccode] [varchar](10) NULL,
	[trndate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bkp_trnpunchtime_01feb2019_notj]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkp_trnpunchtime_01feb2019_notj](
	[fk_emp_code] [varchar](10) NULL,
	[deptcccode] [varchar](10) NULL,
	[trndate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchMappingCIEL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchMappingCIEL](
	[PKId] [int] IDENTITY(1,1) NOT NULL,
	[FKUserId] [nvarchar](50) NULL,
	[FKBranchId] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_BranchMappingCIEL] PRIMARY KEY CLUSTERED 
(
	[PKId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[copy_emp_master]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copy_emp_master](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NULL,
	[emp_name] [varchar](50) NOT NULL,
	[email_id] [varchar](50) NULL,
	[emp_pass] [varchar](50) NULL,
	[emp_mob] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_branch] [bigint] NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_region] [varchar](30) NULL,
	[emp_domain] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[generic] [char](1) NULL,
	[Emp_newpass] [varchar](30) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[emp_company] [varchar](50) NULL,
	[emp_account] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DWDateKey] [date] NULL,
	[DayDate] [nvarchar](50) NULL,
	[DayOfWeekName] [nvarchar](30) NULL,
	[WeekNumber] [int] NULL,
	[MonthNumber] [int] NULL,
	[MonthName] [nvarchar](30) NULL,
	[MonthShortName] [nvarchar](4) NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[E3_Hits]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E3_Hits](
	[H_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[H_LikeCount] [bigint] NULL,
	[H_unLikeCount] [bigint] NULL,
	[H_ip] [varchar](50) NULL,
	[H_mac] [varchar](100) NULL,
	[H_remark] [char](1) NULL,
	[H_insertdate] [datetime] NULL,
 CONSTRAINT [PK_Hits] PRIMARY KEY CLUSTERED 
(
	[H_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailLog](
	[PKID] [int] IDENTITY(1,1) NOT NULL,
	[InsertedDate] [datetime] NULL,
	[EmailDetail] [nvarchar](max) NULL,
 CONSTRAINT [PK_EmailLog] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_data]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_data](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](150) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL,
	[IsPunch_App] [bit] NULL,
	[IsRHFlag] [bit] NULL,
	[punch_email] [varchar](100) NULL,
	[Branch] [varchar](50) NULL,
	[AccountPersonCode] [varchar](50) NULL,
	[sole code] [varchar](10) NULL,
	[IsRHSales] [bit] NULL,
	[Bank_BranchCode] [varchar](100) NULL,
	[BankBranchIFSC] [varchar](100) NULL,
	[bank_branch] [varchar](100) NULL,
	[IsJODUser] [bit] NULL,
	[IsConnectUser] [bit] NULL,
	[ApprovalEmailId] [varchar](50) NULL,
	[ApprovalEmployeeId] [varchar](50) NULL,
	[emp_centre_code] [varchar](50) NULL,
	[InsertedBy] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_data_backup18022021]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_data_backup18022021](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL,
	[IsPunch_App] [bit] NULL,
	[IsRHFlag] [bit] NULL,
	[punch_email] [varchar](100) NULL,
	[Branch] [varchar](50) NULL,
	[AccountPersonCode] [varchar](50) NULL,
	[sole code] [varchar](10) NULL,
	[IsRHSales] [bit] NULL,
	[Bank_BranchCode] [varchar](100) NULL,
	[BankBranchIFSC] [varchar](100) NULL,
	[bank_branch] [varchar](100) NULL,
	[IsJODUser] [bit] NULL,
	[IsConnectUser] [bit] NULL,
	[ApprovalEmailId] [varchar](50) NULL,
	[ApprovalEmployeeId] [varchar](50) NULL,
	[emp_centre_code] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_Data_punch]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Data_punch](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL,
	[IsPunch_App] [bit] NULL,
	[IsRHFlag] [bit] NULL,
	[punch_email] [varchar](100) NULL,
	[Branch] [varchar](50) NULL,
	[AccountPersonCode] [varchar](50) NULL,
	[sole code] [varchar](10) NULL,
	[IsRHSales] [bit] NULL,
	[Bank_BranchCode] [varchar](100) NULL,
	[BankBranchIFSC] [varchar](100) NULL,
	[bank_branch] [varchar](100) NULL,
	[IsJODUser] [bit] NULL,
	[IsConnectUser] [bit] NULL,
	[ApprovalEmailId] [varchar](50) NULL,
	[ApprovalEmployeeId] [varchar](50) NULL,
	[emp_centre_code] [varchar](50) NULL,
 CONSTRAINT [PK_Empid_emp_code] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC,
	[emp_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_Data_Test]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Data_Test](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_data_test1]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_data_test1](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_data2]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_data2](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NOT NULL,
	[emp_name] [varchar](150) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) NULL,
	[email] [varchar](50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[inserteddt] [date] NULL,
	[isActive] [char](1) NULL,
	[status] [char](1) NULL,
	[salescorp] [char](1) NULL,
	[Meet_Assist] [char](1) NULL,
	[salesretail] [char](1) NULL,
	[IMEI] [varchar](150) NULL,
	[GCM_ID] [varchar](max) NULL,
	[collection] [bit] NULL,
	[IsRBT_Web] [bit] NULL,
	[IsRBT_App] [bit] NULL,
	[IsVisa_App] [bit] NULL,
	[IsSales_Web] [bit] NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	[AccountNo] [varchar](20) NULL,
	[OTPNo] [varchar](10) NULL,
	[fk_unit] [varchar](20) NULL,
	[region_code] [tinyint] NULL,
	[Company_Flag] [varchar](50) NULL,
	[IsPunch_App] [bit] NULL,
	[IsRHFlag] [bit] NULL,
	[punch_email] [varchar](100) NULL,
	[Branch] [varchar](50) NULL,
	[AccountPersonCode] [varchar](50) NULL,
	[sole code] [varchar](10) NULL,
	[IsRHSales] [bit] NULL,
	[Bank_BranchCode] [varchar](100) NULL,
	[BankBranchIFSC] [varchar](100) NULL,
	[bank_branch] [varchar](100) NULL,
	[IsJODUser] [bit] NULL,
	[IsConnectUser] [bit] NULL,
	[ApprovalEmailId] [varchar](50) NULL,
	[ApprovalEmployeeId] [varchar](50) NULL,
	[emp_centre_code] [varchar](50) NULL,
	[InsertedBy] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_Master]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Master](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) NULL,
	[emp_name] [varchar](50) NOT NULL,
	[email_id] [varchar](50) NULL,
	[emp_pass] [varchar](50) NULL,
	[emp_mob] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_branch] [bigint] NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_region] [varchar](30) NULL,
	[emp_domain] [varchar](50) NULL,
	[emp_status] [char](2) NULL,
	[generic] [char](1) NULL,
	[Emp_newpass] [varchar](30) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[emp_company] [varchar](50) NULL,
	[emp_account] [varchar](50) NULL,
 CONSTRAINT [PK_Emp_Master_1] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Name] [varchar](152) NOT NULL,
	[Branch] [varchar](200) NULL,
	[EmployeCode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[G_Riya_Emails_Deleted]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[G_Riya_Emails_Deleted](
	[Gpkid] [bigint] IDENTITY(1,1) NOT NULL,
	[G_Fname] [varchar](50) NULL,
	[G_Lname] [varchar](50) NULL,
	[G_Email] [varchar](60) NULL,
	[G_Mob] [varchar](15) NULL,
	[G_desg] [varchar](50) NULL,
	[G_branch] [bigint] NULL,
	[G_region] [varchar](50) NULL,
	[G_dob] [varchar](50) NULL,
	[G_doj] [varchar](50) NULL,
	[G_domain] [varchar](30) NULL,
	[G_insertedby] [bigint] NULL,
	[G_inserteddate] [datetime] NOT NULL,
	[G_Country] [varchar](50) NULL,
	[deletedBy] [varchar](50) NULL,
 CONSTRAINT [PK_G_Riya_Emails_Deleted] PRIMARY KEY CLUSTERED 
(
	[Gpkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPMaster]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPMaster](
	[PKIP_in] [bigint] IDENTITY(1,1) NOT NULL,
	[IP_vc] [varchar](100) NOT NULL,
	[status_ch] [char](1) NOT NULL,
	[LastUpdatedDate_dt] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_IPMaster] PRIMARY KEY CLUSTERED 
(
	[PKIP_in] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_Master]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Master](
	[pkid] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[pass_vc] [varchar](50) NOT NULL,
	[user_type] [char](1) NOT NULL,
	[region_vc] [varchar](50) NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Login_Master] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MacIDMaster]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MacIDMaster](
	[PKmacID_in] [bigint] IDENTITY(1,1) NOT NULL,
	[MacID_vc] [varchar](100) NOT NULL,
	[LastUpdateDate_dt] [smalldatetime] NOT NULL,
	[status_ch] [char](1) NOT NULL,
 CONSTRAINT [PK_MacIDMaster] PRIMARY KEY CLUSTERED 
(
	[PKmacID_in] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mainmenu]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mainmenu](
	[pkid] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](100) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Mainmenu] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuDesc]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuDesc](
	[pkid] [bigint] IDENTITY(1,1) NOT NULL,
	[FKsubmenu] [bigint] NOT NULL,
	[imgpath] [varchar](max) NOT NULL,
	[OriginalImgName] [varchar](max) NULL,
	[des] [varchar](150) NOT NULL,
	[status] [char](1) NOT NULL,
	[inserteddt] [date] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[OrderID] [int] NULL,
	[FlagShowInBanner] [tinyint] NULL,
	[PushDate] [datetime] NULL,
 CONSTRAINT [PK_MenuDesc] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[pkid_in] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[status_ch] [char](1) NOT NULL,
	[order_in] [int] NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[pkid_in] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationMaster]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationMaster](
	[NotificationMasterID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](500) NULL,
	[InsertedDate] [datetime] NULL,
	[InsertedBy] [int] NULL,
 CONSTRAINT [PK_NotificationMaster] PRIMARY KEY CLUSTERED 
(
	[NotificationMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[p_id] [bigint] IDENTITY(1,1) NOT NULL,
	[emp_id] [varchar](50) NULL,
	[p_email] [varchar](50) NULL,
	[p_region] [varchar](50) NULL,
	[p_branch] [varchar](50) NULL,
	[p_prodcut] [varchar](50) NULL,
	[emp_code] [varchar](25) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PunchIN_OUT]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunchIN_OUT](
	[LId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpCode] [nchar](10) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
	[Location] [nvarchar](max) NULL,
	[PunchDate] [datetime] NULL,
	[OutLocation] [varchar](max) NULL,
	[PunchOutDate] [datetime] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_PunchIN_OUT] PRIMARY KEY CLUSTERED 
(
	[LId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PunchIN_OUT2]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunchIN_OUT2](
	[LId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpCode] [nchar](10) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
	[Location] [nvarchar](max) NULL,
	[PunchDate] [datetime] NULL,
	[OutLocation] [varchar](max) NULL,
	[PunchOutDate] [datetime] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_PunchIN_OUT2] PRIMARY KEY CLUSTERED 
(
	[LId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[IATA CODE] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[SEARCH NAME] [nvarchar](255) NULL,
	[COUNTRY_CODE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[submenu]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[submenu](
	[pkid] [bigint] IDENTITY(1,1) NOT NULL,
	[fkmainmenu] [bigint] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_submenu] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblIntranAPIsErrorLog]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblIntranAPIsErrorLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Exception] [varchar](500) NULL,
	[ExceptionDetails] [varchar](max) NULL,
	[ApplicationType] [varchar](500) NULL,
	[date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TokenMaster]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TokenMaster](
	[PKID] [int] IDENTITY(1,1) NOT NULL,
	[TokenNo] [varchar](max) NULL,
	[InsertedDate] [datetime] NULL,
 CONSTRAINT [PK_TokenMaster] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trnpunchtime]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trnpunchtime](
	[Pk_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fk_emp_code] [varchar](10) NULL,
	[DeptccCode] [varchar](10) NULL,
	[Trndate] [datetime] NULL,
	[insertedOn] [datetime] NULL,
	[status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versionmaster]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versionmaster](
	[versionnum_vc] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApiKeys] ADD  CONSTRAINT [DF_ApiKeys_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[E3_Hits] ADD  CONSTRAINT [DF_Hits_H_LikeCount]  DEFAULT ((0)) FOR [H_LikeCount]
GO
ALTER TABLE [dbo].[E3_Hits] ADD  CONSTRAINT [DF_Hits_H_unLikeCount]  DEFAULT ((0)) FOR [H_unLikeCount]
GO
ALTER TABLE [dbo].[E3_Hits] ADD  CONSTRAINT [DF_E3_Hits_H_insertdate]  DEFAULT (getdate()) FOR [H_insertdate]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF_EmailLog_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO
ALTER TABLE [dbo].[Emp_Data_punch] ADD  CONSTRAINT [DF_Emp_Data_inserteddt]  DEFAULT (getdate()) FOR [inserteddt]
GO
ALTER TABLE [dbo].[Emp_Master] ADD  CONSTRAINT [DF_Emp_Master_emp_status]  DEFAULT ('D') FOR [emp_status]
GO
ALTER TABLE [dbo].[Emp_Master] ADD  CONSTRAINT [DF_Emp_Master_Emp_newpass]  DEFAULT ('reset@123') FOR [Emp_newpass]
GO
ALTER TABLE [dbo].[G_Riya_Emails] ADD  CONSTRAINT [DF_G_Riya_Emails_G_inserteddate]  DEFAULT (getdate()) FOR [G_inserteddate]
GO
ALTER TABLE [dbo].[G_Riya_Emails_Deleted] ADD  CONSTRAINT [DF_G_Riya_Emails_G_deletedDate]  DEFAULT (getdate()) FOR [G_inserteddate]
GO
ALTER TABLE [dbo].[IPMaster] ADD  CONSTRAINT [DF_IPMaster_status_ch]  DEFAULT ('A') FOR [status_ch]
GO
ALTER TABLE [dbo].[IPMaster] ADD  CONSTRAINT [DF_IPMaster_LastUpdatedDate_dt]  DEFAULT (getdate()) FOR [LastUpdatedDate_dt]
GO
ALTER TABLE [dbo].[Login_Master] ADD  CONSTRAINT [DF_Login_Master_status]  DEFAULT ('D') FOR [status]
GO
ALTER TABLE [dbo].[MacIDMaster] ADD  CONSTRAINT [DF_MacIDMaster_LastUpdateDate_dt]  DEFAULT (getdate()) FOR [LastUpdateDate_dt]
GO
ALTER TABLE [dbo].[MacIDMaster] ADD  CONSTRAINT [DF_MacIDMaster_status_ch]  DEFAULT ('A') FOR [status_ch]
GO
ALTER TABLE [dbo].[Mainmenu] ADD  CONSTRAINT [DF_Mainmenu_status]  DEFAULT ('A') FOR [status]
GO
ALTER TABLE [dbo].[MenuDesc] ADD  CONSTRAINT [DF_MenuDesc_status]  DEFAULT ('A') FOR [status]
GO
ALTER TABLE [dbo].[MenuDesc] ADD  CONSTRAINT [DF_MenuDesc_inserteddt]  DEFAULT (getdate()) FOR [inserteddt]
GO
ALTER TABLE [dbo].[MenuType] ADD  CONSTRAINT [DF_MenuType_status_ch]  DEFAULT ('A') FOR [status_ch]
GO
ALTER TABLE [dbo].[NotificationMaster] ADD  CONSTRAINT [DF_NotificationMaster_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO
ALTER TABLE [dbo].[PunchIN_OUT] ADD  CONSTRAINT [DF_PunchIN_OUT_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[PunchIN_OUT2] ADD  CONSTRAINT [DF_PunchIN_OUT2_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[submenu] ADD  CONSTRAINT [DF_submenu_status]  DEFAULT ('A') FOR [status]
GO
ALTER TABLE [dbo].[tblIntranAPIsErrorLog] ADD  CONSTRAINT [DF_tblIntranAPIsErrorLog_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[TokenMaster] ADD  CONSTRAINT [DF_TokenMaster_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO
ALTER TABLE [dbo].[trnpunchtime] ADD  CONSTRAINT [DF_trnpunchtime_insertedOn]  DEFAULT (getdate()) FOR [insertedOn]
GO
ALTER TABLE [dbo].[trnpunchtime] ADD  CONSTRAINT [DF_trnpunchtime_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[MenuDesc]  WITH CHECK ADD  CONSTRAINT [FK_MenuDesc_MenuMaster] FOREIGN KEY([FKsubmenu])
REFERENCES [dbo].[submenu] ([pkid])
GO
ALTER TABLE [dbo].[MenuDesc] CHECK CONSTRAINT [FK_MenuDesc_MenuMaster]
GO
ALTER TABLE [dbo].[submenu]  WITH CHECK ADD  CONSTRAINT [FK_submenu_Mainmenu] FOREIGN KEY([fkmainmenu])
REFERENCES [dbo].[Mainmenu] ([pkid])
GO
ALTER TABLE [dbo].[submenu] CHECK CONSTRAINT [FK_submenu_Mainmenu]
GO
/****** Object:  StoredProcedure [dbo].[addemp]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addemp] 
	-- Add the parameters for the stored procedure here
	@ecode varchar(10),
	@name varchar(50),
	@email varchar(50),
	@mob varchar(20),
	@branch bigint,
	@region varchar(30),
	@domain varchar (50),
	@desgn varchar(50),
	@passwd varchar(20),
	@generic char(1),
	@dob varchar(20),
	@doj varchar(20)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if not exists(SELECT email_id from Emp_Master where email_id = @email and (emp_status = 'D' or emp_status = 'A'))
    Begin 
   
    --SELECT TOP 1 @passwd =  SUBSTRING(emp_pass,5,LEN(emp_pass)) + 1 FROM Emp_Master order by SUBSTRING(emp_pass,5,LEN(emp_pass)) desc
	INSERT INTO Emp_Master(emp_code,emp_name,email_id,emp_mob,emp_desg,emp_branch,emp_region,emp_domain,emp_pass,generic,emp_dob,emp_doj)VALUES(@ecode,@name,@email,@mob,@desgn,@branch,@region,@domain,@passwd , @generic,@dob,@doj)
    Select 1
    end
    else
    begin
    Select 2
    end
END

GO
/****** Object:  StoredProcedure [dbo].[addempdatafrmvisa]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addempdatafrmvisa] --'193156'
	-- Add the parameters for the stored procedure here
	@code varchar(20),
	@userRights int=0,
	@implants int=0,
	@punch_email varchar(200)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if exists(select emp_code from Emp_Data where emp_code=@code and emp_status<>'Y')
    begin
	
	---start
	if(@userRights=8)
	begin
	
	update dbo.Emp_Data set visa='Y',IsVisa_App=1 ,password='reset@123',status='D' where emp_code=@code
	select 1
	end
	else
	begin
	update dbo.Emp_Data set visa='Y' ,password='reset@123',status='D' where emp_code=@code
	select 1
	end
	
	---end
	end
	else
	begin
	select 0
	end

	if(@implants=1)
	begin
	update dbo.Emp_Data set punch_email=@punch_email,IsPunch_App=1 where emp_code=@code	
	end
END

GO
/****** Object:  StoredProcedure [dbo].[addempfrmvisa]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addempfrmvisa] 
	-- Add the parameters for the stored procedure here
	--@name varchar(50),
	@email varchar(50),
	@product varchar(50)
	--@domain varchar (50),
	--@branch varchar(30)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 --   declare  @passwd varchar(10), @branchid bigint
	-- if not exists(SELECT email_id from Emp_Master where email_id = @email )
	 
 --   Begin 
 --   Select @branchid = branch_id  FROM [Branch_Detail] where branch_name =@branch
 --   SELECT TOP 1 @passwd =  SUBSTRING(emp_pass,5,LEN(emp_pass)) + 1 FROM Emp_Master order by SUBSTRING(emp_pass,5,LEN(emp_pass)) desc
	--INSERT INTO Emp_Master(emp_name,email_id,emp_domain,emp_pass,emp_branch)VALUES(@name,@email,@domain,'A#c&'+@passwd,@branchid )
    if not exists (Select emp_id from Permission where emp_id = @email and p_prodcut = @product)
    begin
	INSERT INTO Permission (emp_id,p_prodcut)Values (@email,@product)
    Select emp_newpass from Emp_Master where email_id = @email
    end
    
    --else
    --begin
    --Select 1
    --end
--END

END
GO
/****** Object:  StoredProcedure [dbo].[bindBranchdll]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[bindBranchdll] 
	-- Add the parameters for the stored procedure here
@emp_code varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select tbd.Id,tbd.BranchLocation 
	from [SalesForce].[dbo].[Punchretailadmin]
	 pm left join [SalesForce].[dbo].[BranchMapping] bm 
	 on pm.pkid=bm.FKUserId left join 
	 [SalesForce].[dbo].[tblBranchDimension] tbd 
	 on bm.FKBranchId=tbd.Id where pm.userid=@emp_code
END
GO
/****** Object:  StoredProcedure [dbo].[changestatus]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[changestatus] 
	@ID Bigint,
	@email varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	If (@ID != 0 and (@email IS NULL or @email = ''))
	UPDATE Emp_Master SET emp_status = 'DE' where emp_id = @ID
	Select 1
END

GO
/****** Object:  StoredProcedure [dbo].[check_IP]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[check_IP]
	-- Add the parameters for the stored procedure here
	@Ip varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(PKIP_in) from IPMaster where IP_vc=@Ip and status_ch<>'D'
END

GO
/****** Object:  StoredProcedure [dbo].[checklogin]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[checklogin] 
	-- Add the parameters for the stored procedure here
@username varchar(50),
@pass varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if exists(select user_type from Login_Master where user_name=@username and pass_vc=@pass)
	begin
	select pkid,user_name, user_type,[region_vc] from Login_Master where user_name=@username and pass_vc=@pass
	end
	--else
	--begin
	--select '-1' as user_type ,'-1' as region_vc
	--end
END

GO
/****** Object:  StoredProcedure [dbo].[checkMacID]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[checkMacID]
	-- Add the parameters for the stored procedure here
	@macID varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(PKmacID_in) from MacIDMaster where MacID_vc=@macID and status_ch<>'D'
	--select COUNT (p_id) From Permission where p_prodcut = 'Intranet-'+@macID
END

GO
/****** Object:  StoredProcedure [dbo].[checkMacIDAndroid]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[checkMacIDAndroid]
	-- Add the parameters for the stored procedure here
	@macID varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT (p_id) From Permission where p_prodcut = 'Intranet-'+@macID
END

GO
/****** Object:  StoredProcedure [dbo].[createUser]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[createUser] AS
GO
/****** Object:  StoredProcedure [dbo].[createUserForCALIBEHR]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gajanana Kadam
-- Create date: 13-06-2018
-- Description:	This sp created by Gajanan
-- =============================================
-- =============================================
-- Author:		Gajanana Kadam
--Modified date: 22-Jun-2018
-- Description:	added only [emp_status]= A ,Added  MobileNumber parametr ,[salesretail]='A'
-- =============================================
CREATE PROCEDURE [dbo].[createUserForCALIBEHR]
	-- Add the parameters for the stored procedure here
	@ecode varchar(15),
@passwd  varchar(20)='reset@123',
@status char(1)='A',
@fullname varchar(50),
--@type char(1)='N',
@designation varchar(50),
@email varchar(100)=null,
@AccountPerCode varchar(15),
@branch varchar(100)=null,
@admincode varchar(20),
@reportee varchar(100)	
,@BranchMapping		BranchMappingUserCIEL READONLY	 	 
,@CompanyFlag varchar(50)
,@MobileNumber varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	if not exists(select emp_id from [Emp_Data] where emp_code=@ecode )
 
      begin     
INSERT INTO [dbo].[Emp_Data]
           (emp_code
           ,[password]
           ,[status]
          -- ,[isActive]
           ,[emp_name]
           --,[Personal_email]
		   ,[sanct_email]
           ,[emp_desg]
           ,[Branch]
		   ,[AccountPersonCode]
		   ,[email] --[ReporteeMailId] replace this column with punch email
		   ,[Company_Flag]
		   --,[Delete_CIELUser]  --deleted this column
		   ,[emp_status]
		   ,[emp_phn]
		   ,[salesretail]
		   ,[Sanct_Empcode_BY]
		   ,[IsSales_Web]--   Added By Gajanan  Date-28-jun -2018
		   ,[IsJODUser]
		   ,[IsConnectUser]
		  -- ,reporteeEmail
         --  ,reporteeCode,
		--   AccountPerCode
           )
     VALUES
           (@ecode
           ,@passwd
           ,@status
           --,@type
           ,@fullname
         --, @ecode
          ,@reportee
           ,upper(@designation)
           ,@branch
		--   ,@reportee
		--   ,@email
       --   ,@admincode
		 ,@AccountPerCode
		 ,@email
		 ,@CompanyFlag
		 --,'A'     --deleted this column
		 ,'N'
		 ,@MobileNumber
		 ,'Y' --Here 'Y' it has permision hence Y FOR YES and 'N' for No
		 ,@admincode
		 ,'1'
		 ,1
		 ,0
          )
		  
	 -- Declare @Id		int
	--	Select @Id = SCOPE_IDENTITY()

		--Insert Into BranchMappingCIEL (FKUserId, FKBranchId) Select @Id, BranchId From @BranchMapping

			Select 1
		  end
		    else 
       begin
	   UPDATE [dbo].[Emp_Data]
   SET emp_code = @ecode
      ,[password] = @passwd
      ,[status] = @status
     -- ,[isActive] = @type
      ,[emp_name] = @fullname
     --,[Personal_email] = @ecode
	 ,[sanct_email]=@reportee
      ,[emp_desg] = upper(@designation)
     ,[Branch] =@branch
	 ,[email]=@email
	 ,[AccountPersonCode]=@AccountPerCode
	 ,[Company_Flag]=@CompanyFlag
	 ,[emp_status]='N'
	-- ,[Delete_CIELUser]='A'
	 ,[emp_phn]=@MobileNumber
	 ,[salesretail]='Y'--Here 'Y' it has permision hence Y FOR YES 
	 ,[Sanct_Empcode_BY]=@admincode
	 ,[IsSales_Web]='1'
	 ,IsJODUser=1
	 ,IsConnectUser=0
	----  ,emailId=@email
	--  ,reporteeCode=@admincode
	--  ,AccountPerCode=@AccountPerCode
	  where emp_code=@ecode
     

	--Declare @UserId		int

	-- select @UserId=emp_id from Emp_Data where emp_code=@ecode

 -- Delete From BranchMappingCIEL Where  FKUserId =@UserId

--Insert Into BranchMappingCIEL (FKUserId, FKBranchId) Select @UserId, BranchId From @BranchMapping
       select 2
       end
END

GO
/****** Object:  StoredProcedure [dbo].[createUserForCIEL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gajanana Kadam
-- Create date: 13-06-2018
-- Description:	This sp created by Gajanan
-- =============================================
-- =============================================
-- Author:		Gajanana Kadam
--Modified date: 22-Jun-2018
-- Description:	added only [emp_status]= A ,Added  MobileNumber parametr ,[salesretail]='A'
-- =============================================
CREATE PROCEDURE [dbo].[createUserForCIEL]
	-- Add the parameters for the stored procedure here
	@ecode varchar(15),
@passwd  varchar(20)='reset@123',
@status char(1)='A',
@fullname varchar(50),
--@type char(1)='N',
@designation varchar(50),
@email varchar(100)=null,
@AccountPerCode varchar(15),
@branch varchar(100)=null,
@admincode varchar(20),
@reportee varchar(100)	
,@BranchMapping		BranchMappingUserCIEL READONLY	 	 
,@CompanyFlag varchar(50)
,@MobileNumber varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	if not exists(select emp_id from [Emp_Data] where emp_code=@ecode )
 
      begin     
INSERT INTO [dbo].[Emp_Data]
           (emp_code
           ,[password]
           ,[status]
          -- ,[isActive]
           ,[emp_name]
           --,[Personal_email]
		   ,[sanct_email]
           ,[emp_desg]
           ,[Branch]
		   ,[AccountPersonCode]
		   ,[email] --[ReporteeMailId] replace this column with punch email
		   ,[Company_Flag]
		   --,[Delete_CIELUser]  --deleted this column
		   ,[emp_status]
		   ,[emp_phn]
		   ,[salesretail]
		   ,[Sanct_Empcode_BY]
		   ,[IsSales_Web]--   Added By Gajanan  Date-28-jun -2018
		  -- ,reporteeEmail
         --  ,reporteeCode,
		--   AccountPerCode
		,IsJODUser
           )
     VALUES
           (@ecode
           ,@passwd
           ,@status
           --,@type
           ,@fullname
         --, @ecode
          ,@reportee
           ,upper(@designation)
           ,@branch
		--   ,@reportee
		--   ,@email
       --   ,@admincode
		 ,@AccountPerCode
		 ,@email
		 ,@CompanyFlag
		 --,'A'     --deleted this column
		 ,'N'
		 ,@MobileNumber
		 ,'Y' --Here 'Y' it has permision hence Y FOR YES and 'N' for No
		 ,@admincode
		 ,'1'
		 ,1
          )
		  
	  --Declare @Id		int
		--Select @Id = SCOPE_IDENTITY()

		--Insert Into BranchMappingCIEL (FKUserId, FKBranchId) Select @Id, BranchId From @BranchMapping

			Select 1
		  end
		    else 
       begin
	   UPDATE [dbo].[Emp_Data]
   SET emp_code = @ecode
      ,[password] = @passwd
      ,[status] = @status
     -- ,[isActive] = @type
      ,[emp_name] = @fullname
     --,[Personal_email] = @ecode
	 ,[sanct_email]=@reportee
      ,[emp_desg] = upper(@designation)
     ,[Branch] =@branch
	 ,[email]=@email
	 ,[AccountPersonCode]=@AccountPerCode
	 ,[Company_Flag]=@CompanyFlag
	 ,[emp_status]='N'
	-- ,[Delete_CIELUser]='A'
	 ,[emp_phn]=@MobileNumber
	 ,[salesretail]='Y'--Here 'Y' it has permision hence Y FOR YES 
	 ,[Sanct_Empcode_BY]=@admincode
	 ,[IsSales_Web]='1'
	 ,IsJODUser=1
	----  ,emailId=@email
	--  ,reporteeCode=@admincode
	--  ,AccountPerCode=@AccountPerCode
	  where emp_code=@ecode
     

	--Declare @UserId		int

	 --select @UserId=emp_id from Emp_Data where emp_code=@ecode

  --Delete From BranchMappingCIEL Where  FKUserId =@UserId

--Insert Into BranchMappingCIEL (FKUserId, FKBranchId) Select @UserId, BranchId From @BranchMapping
       select 2
       end
END

 
GO
/****** Object:  StoredProcedure [dbo].[createUserRH]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[createUserRH]
 
@empcode varchar(10),
@email varchar(100),
@type varchar(20)= 'RHSales'

AS
begin
if not exists(select emp_id from [Emp_Data] where emp_code=@empcode and emp_status='N' )
 
      begin 
	  select 2; 
	  end
	  else
update Emp_Data
set IsPunch_App=1,punch_email=@email,Branch=@type
where emp_code=@empcode

select 1;
end
GO
/****** Object:  StoredProcedure [dbo].[deleteintrpermamacid]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteintrpermamacid]
	-- Add the parameters for the stored procedure here
	@email varchar(30),
	--@macid varchar(100),
	@product varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Permission where emp_id =@email and p_prodcut  Like @product
END

GO
/****** Object:  StoredProcedure [dbo].[deletepermision]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deletepermision] 
	-- Add the parameters for the stored procedure here
	@email varchar(50),
	@product varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if(@product='')
    begin
	 delete from Permission where emp_id=@email
	 end 
	 else
	 begin
	 delete from Permission where emp_id=@email and p_prodcut like @product+'%'
	 end
END

GO
/****** Object:  StoredProcedure [dbo].[deletepermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deletepermsn] 
	-- Add the parameters for the stored procedure here
	@email varchar(50),
	@product varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if(@product='')
    begin
	 delete from Permission where emp_id=@email
	 end 
	 else
	 begin
	 delete from Permission where emp_id=@email and p_prodcut like @product+'%'
	 end
END

GO
/****** Object:  StoredProcedure [dbo].[deletevisaperm]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deletevisaperm]
	-- Add the parameters for the stored procedure here
	@userID varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Emp_Data set visa='N' where emp_code=@userID
END

GO
/****** Object:  StoredProcedure [dbo].[FechCompanyFlag]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FechCompanyFlag]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select distinct upper (Company_Flag) as Company_Flag ,
	case when Company_Flag='REPL' then 'Riya Education'
when Company_Flag='RTTIPL' then 'Riya Tours & Travels'
 when Company_Flag='RT' then 'Riya Travels'
 when Company_Flag='RHPL' then 'Riya Holidays'  end as Company_Name from Emp_Data where Company_Flag is not null
END
GO
/****** Object:  StoredProcedure [dbo].[fetchempdata]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fetchempdata]  --'093826' --'313241'  --'313220' --'010004'
	-- Add the parameters for the stored procedure here
	@empcode varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct [emp_id]
      ,em.[emp_code]
      ,[emp_name]
      ,[emp_phn]
      ,[Resi_phn]
      ,[Office_phn]
      ,[emp_desg]
      ,[emp_dept]
      ,[emp_status]
      ,[emp_dob]
      ,[emp_doj]
      ,[visa]
      ,[email]
      ,[Personal_email]
      ,em.[password]
      ,[inserteddt]
      ,em.[isActive]
      ,em.[status]
      ,[salescorp]
      ,[Meet_Assist]
      ,[salesretail]
      ,em.[IMEI]
      ,[GCM_ID]
      ,isnull([collection],0) [collection]
      ,isnull([IsRBT_Web],0) IsRBT_Web
      , isnull([IsRBT_App],0) [IsRBT_App]
      ,isnull([IsVisa_App],0) [IsVisa_App]
      ,isnull([IsSales_Web],0) [IsSales_Web]
	  ,isnull([IsPunch_App],0) [IsPunch_App]
      ,[Sanct_Empcode_BY]
      ,[sanct_email]
      ,em.[BranchID]
      ,[AccountNo]
      ,[OTPNo]
      ,[fk_unit]
      ,[region_code]
      ,[Company_Flag],


	case when (em.[salesretail]='Y' or em.IsSales_Web=1) then   isnull(pm.retailLocation,'')
	  else '' end as retailLocation 

	,
	case when (em.[salesretail]='Y' or em.IsSales_Web=1) then    isnull(pm.reporteeEmail,'NA')
	  else '' end as emailId 
	
	 ,
	 case when (em.[salesretail]='Y' or em.IsSales_Web=1) then    isnull(pm.branch,'0')
	  else '0' end as branch 
	,
	 
	case when ( em.IsRBT_Web = 1) then    isnull(rb.reporteeEmail,'0')
	  else '0' end as RBTemailId 
	
	 ,
	 case when (em.IsRBT_Web = 1) then    isnull(rb.BranchId,'0')
	  else '0' end as RBTbranch 
	,
	  case when em.collection=1 then      col.location
	  else '0' end as collectloc 
	,case when [Meet_Assist]='Y' then meet.location 
	else '' end as meetloc,
	 case when [Meet_Assist]='Y' then meet.o_mobile
	 else '' end as meetcontact,
		isnull( em.IsSales_Web,0) as saleStatus,
		isnull(em.IsRBT_Web,0) as RBTStatus,
	isnull( pm.ecode,'NA') as isexist
	from dbo.Emp_Data em left join [SalesForce].[dbo].[Punchretailadmin] pm 
	on emp_code= pm.ecode
	left join [dbCollection].dbo.tblUser  col on emp_code=col.empcode
	left join [Meet_Assist].[dbo].[Officeboy_Details_Meet_Assist] meet on em.emp_code=meet.emp_code
	left join RBTSalesCRM.dbo.Users rb on em.emp_code=rb.EmployeeCode
	where em.emp_code=@empcode 
END


GO
/****** Object:  StoredProcedure [dbo].[fetchempdatanew]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[fetchempdatanew]  --'012980' --'313241'  --'313220' --'010004'
	-- Add the parameters for the stored procedure here
	@empcode varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct em.*,


	case when (em.[salesretail]='Y' or em.IsSales_Web=1) then   isnull(pm.retailLocation,'')
	  else '' end as retailLocation 

	,
	case when (em.[salesretail]='Y' or em.IsSales_Web=1) then    isnull(pm.reporteeEmail,'NA')
	  else '' end as emailId 
	
	 ,
	 case when (em.[salesretail]='Y' or em.IsSales_Web=1) then    isnull(pm.branch,'0')
	  else '0' end as branch 
	,

	case when ( em.IsRBT_Web = 1) then    isnull(rb.reporteeEmail,'NA')
	  else '' end as RBTemailId 
	
	 ,
	 case when (em.IsRBT_Web = 1) then    isnull(rb.BranchId,'0')
	  else '0' end as RBTbranch 
	,
	  case when em.collection=1 then      col.location
	  else '' end as collectloc 
	,case when [Meet_Assist]='Y' then meet.location 
	else '' end as meetloc,
	 case when [Meet_Assist]='Y' then meet.o_mobile
	 else '' end as meetcontact,
		isnull( em.IsSales_Web,0) as saleStatus,
		isnull(em.IsRBT_Web,0) as RBTStatus,
	isnull( pm.ecode,'NA') as isexist
	from dbo.Emp_Data em left join [Sales_Tracker].[dbo].[Punchretailadmin] pm 
	on emp_code= pm.ecode
	left join [dbCollection].dbo.tblUser  col on emp_code=col.empcode
	left join [Meet_Assist].[dbo].[Officeboy_Details_Meet_Assist] meet on em.emp_code=meet.emp_code
	left join RBTSalesCRM.dbo.Users rb on em.emp_code=rb.EmployeeCode
	where em.emp_code=@empcode 
END


GO
/****** Object:  StoredProcedure [dbo].[fetchintraPasswrd]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchintraPasswrd]
	-- Add the parameters for the stored procedure here
	@ecode varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 --   Declare @ID bigint 
	--SELECT @ID = max(emp_id) From Emp_Master 
	--Select emp_pass From Emp_Master where emp_id = @ID 
	 SELECT 'riya123' as password from Emp_Data where emp_code=@ecode 
END
GO
/****** Object:  StoredProcedure [dbo].[fetchintrapermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchintrapermsn] 
	-- Add the parameters for the stored procedure here

	@mail varchar (50),
	@pass varchar (20)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
    if exists (SELECT count(emp_id) from dbo.Permission where [p_prodcut] Like 'Sales Tracker(RBT)%' or [p_prodcut] Like 'Sales Tracker(retail)%' 
    or [p_prodcut] Like 'Airline Info%' or [p_prodcut] Like 'Private Fare%' or [p_prodcut] Like 'Gulf Group%' 
    or [p_prodcut] Like 'Inventory%' or [p_prodcut] Like 'RContact%'
    and  SUBSTRING(emp_id,0,charindex('@',emp_id,0))=@mail )
    BEGIN
    SELECT count(emp_id) From Emp_Master where 
	emp_newpass = @pass and SUBSTRING(email_id,0,charindex('@',email_id,0))=@mail 
	and (emp_status <> 'D ' or emp_status <> 'DE')
	END
	ELSE
	BEGIN
	Select -1
	END
END

GO
/****** Object:  StoredProcedure [dbo].[fetchmeetpermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchmeetpermsn] 
	-- Add the parameters for the stored procedure here
@mail varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT count(emp_id) from dbo.Permission where [p_prodcut] Like 'Meet & Assist%' and emp_id=@mail
END

GO
/****** Object:  StoredProcedure [dbo].[fetchmenudesc]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchmenudesc] 
	-- Add the parameters for the stored procedure here
@sub bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT imgpath,des,inserteddt from dbo.MenuDesc where FKsubmenu=@sub
END

GO
/****** Object:  StoredProcedure [dbo].[fetchpermsempdata]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--sp_helptext 'fetchpermsempdata'


CREATE PROCEDURE [dbo].[fetchpermsempdata] 
	-- Add the parameters for the stored procedure here
	@code varchar(30),
	@pass varchar(15),
	@product varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @countperm int
	
	--select @countperm=count(emp_code) from Emp_Data where emp_code=@code and visa='Y' and emp_status<>'Y' and password=@pass
	--if(@countperm>0)
	--begin
	--if exists(select emp_code from Emp_Data where status<>'D' and emp_code=@code )
	--begin
	--select 1 --active with password changed
	--end
	--else
	--begin
	--select 2 --password to change
	--end
	--end
	--else
	--begin
	--select 3 -- emp not exists
	--end

	-- asmi
	if(@product='visa')
	begin
	select @countperm=count(emp_code) from Emp_Data where emp_code=@code and visa='Y' and emp_status<>'Y' and password=@pass
	if(@countperm>0)
	begin
	if exists(select emp_code from Emp_Data where status<>'D' and emp_code=@code )
	begin
	select 1 --active with password changed
	end
	else
	begin
	select 2 --password to change
	end
	end
	else
	begin
	select 3 -- emp not exists
	end
	end
	else if(@product='sales')
	begin
	select @countperm=count(emp_code) from Emp_Data where emp_code=@code 
and IsSales_Web=1	--and (salesretail='Y' or salescorp='Y')  changes by ashvini
	and emp_status<>'Y' and password=@pass
	if(@countperm>0)
	begin
	if exists(select emp_code from Emp_Data where status<>'D' and emp_code=@code )
	begin
	select 1 --active with password changed
	end
	else
	begin
	select 2 --password to change
	end
	end
	else
	begin
	select 3 -- emp not exists
	end
	end
	-- reimbursement authentication start
	else if(@product='Reimbursement' or @product='Reimburse')  -- reimbursement authentication
	begin
	select @countperm=count(emp_code) from Emp_Data where emp_code=@code 
		and emp_status<>'Y' and password=@pass
	if(@countperm>0)
	begin
	if exists(select emp_code from Emp_Data where status<>'D' and emp_code=@code )
	begin
	select 1 --active with password changed
	end
	else
	begin
	select 2 --password to change
	end
	end
	else
	begin
	select 3 -- emp not exists
	end
	end
	-- reimbursement authentication  end
	if(@product='RBT')
	begin
	select @countperm=count(emp_code) from Emp_Data where emp_code=@code and IsRBT_Web=1 and emp_status<>'Y' and password=@pass
	if(@countperm>0)
	begin
	if exists(select emp_code from Emp_Data where status<>'D' and emp_code=@code )
	begin
	select 1 --active with password changed
	end
	else
	begin
	select 2 --password to change
	end
	end
	else
	begin
	select 3 -- emp not exists
	end
	end
	else if(@product='meet')
	begin
	--select count(emp_code) from Emp_Data where emp_code=@code and (Meet_Assist='Y') and emp_status<>'Y' and password=@pass
	select count([PKID_int]) from [Meet_Assist].[dbo].[RetailOfficer] where  [loginid_vc]=@code and
      [passwd_vc]=@pass and [status_ch]='ac'
	end

	--end asmi
END
GO
/****** Object:  StoredProcedure [dbo].[fetchretailpermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fetchretailpermsn]
	-- Add the parameters for the stored procedure here
	@mail varchar (50),
	@pass varchar (20)

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT count(emp_id) from dbo.Permission where [p_prodcut] Like 'Meet & Assist%' and emp_id=@mail
	if exists (SELECT count(emp_id) from dbo.Permission where [p_prodcut] Like 'Meet & Assist%' 
    and  SUBSTRING(emp_id,0,charindex('@',emp_id,0))=@mail )
    BEGIN
    SELECT count(emp_id) From Emp_Master where 
	emp_newpass = @pass and SUBSTRING(email_id,0,charindex('@',email_id,0))=@mail 
	and (emp_status <> 'D ' or emp_status <> 'DE')
	END
	ELSE
	BEGIN
	Select -1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[fetchStaff]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

create Procedure [dbo].[fetchStaff]
@ecode varchar(20)
As
Begin


--select @branch=branch from Punchretailadmin where ecode=@ecode

SELECT 
      
      
      emp_name as  [fullname]
      , emp_code as [ecode]
      
  FROM Emp_Data
  where --branch=@branch and 
 IsSales_Web=1
  End
GO
/****** Object:  StoredProcedure [dbo].[fetchstatus]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchstatus] 
	-- Add the parameters for the stored procedure here
	@uid varchar(150),
	@pass varchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
--    decalre @uidnew varchar(50)
--    SELECT @uidnew=RIGHT([email_id], LEN([email_id]) - CHARINDEX('@', [email_id])) Domain 
--FROM   dbo.[Emp_Master] where email_id=@uid and emp_pass=@pass
	--SELECT emp_status from dbo.Emp_Master where @uid like RIGHT([email_id], LEN([email_id]) - CHARINDEX('@', [email_id]))+'%' and emp_pass=@pass
	
		SELECT emp_status from dbo.Emp_Master where [email_id] like @uid+'%' and emp_pass=@pass

END

GO
/****** Object:  StoredProcedure [dbo].[fetchsubmenu]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchsubmenu] 
	-- Add the parameters for the stored procedure here
	@main bigint
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT name,pkid from dbo.submenu where fkmainmenu=@main
	order by pkid desc
END

GO
/****** Object:  StoredProcedure [dbo].[FetchUpdatesAll]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE Procedure [dbo].[FetchUpdatesAll]
As
begin
    select 
      
      pkid
      ,[status]
      ,[inserteddt]
          ,[des]
           ,isnull([PushDate],null) as pushdate
		   ,imgpath
		   ,FlagShowInBanner
  FROM [Intranet].[dbo].[MenuDesc]
  where status='A'
  order by inserteddt desc
  end
GO
/****** Object:  StoredProcedure [dbo].[fetchUsers]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchUsers] 
	-- Add the parameters for the stored procedure here
	@UserId int,
	@start int,
@pagesize int,
@RecordCount int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	

    -- Insert statements for procedure here

	 select * 
   INTO #Results
   from 
   ( 
	SELECT [pkid]
      ,[userid]
      ,[passwd]
      ,[status]
      ,[type]
      ,[fullname]
      ,[ecode]
	   ,isnull(reporteeEmail,'') as reporteeEmail
	    ,isnull(emailId,'NA') as Email
      ,isnull([imei],'NA') as imei
      ,isnull([designation],'NA') as designation
      ,isnull([branch],'NA') as branch
      ,isnull([region],'NA') as region
	  ,isnull(AccountPerCode,'NA') as AccountPerCode
      ,[UniqueID] from Punchretailadmin where [type]='A'  or [type]='F' and status<>'C')P
	   SELECT @RecordCount = COUNT(*)
      FROM #Results
	select * from (select *,
	ROW_NUMBER() OVER (ORDER BY [pkid] desc) AS RowRank from 
	#Results 
    )P where   RowRank > @start AND RowRank <= (@start + @pagesize)   
END





GO
/****** Object:  StoredProcedure [dbo].[fetchversion]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fetchversion] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT versionnum_vc from Versionmaster
END
GO
/****** Object:  StoredProcedure [dbo].[fetchvisapermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fetchvisapermsn] 
	-- Add the parameters for the stored procedure here

@company varchar(30),
	@mail varchar (50),
	@pass varchar (20)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
 --   if exists (SELECT count(p_id) from dbo.Permission where [p_prodcut] Like 'Visa Tracker%' and emp_id=@mail)
 --   BEGIN
 --   SELECT count(emp_id) From Emp_Master where 
	--emp_newpass = @pass and	email_id =@mail
	----and SUBSTRING(email_id,0,charindex('@',email_id,0))=@mail 
	
	----and	email_id =@mail
	--and (emp_status <> 'D' or emp_status <> 'DE')
	--END
	--ELSE
	--BEGIN
	--Select -1
	--END
	
	
	if not exists(select p_id from Permission where emp_id=@mail and p_prodcut Like 'Visa Tracker%' )
	begin
	select -2
	end
	else
	begin
	    SELECT count(emp_id) From Emp_Master where 
	emp_newpass = @pass and	email_id =@mail
	--and SUBSTRING(email_id,0,charindex('@',email_id,0))=@mail 
	
	--and	email_id =@mail
	and (emp_status <> 'D' or emp_status <> 'DE')
	end
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[fnGetMembersForNotification]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fnGetMembersForNotification]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Emp_Data WHERE GCM_ID is not null
END
GO
/****** Object:  StoredProcedure [dbo].[g_riya_emp]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[g_riya_emp]   
 -- Add the parameters for the stored procedure here  
 @fname varchar(50),  
 @lname varchar(50),  
 @email varchar(50),  
-- @mob varchar(20),  
 @branch bigint,  
 @region varchar(30),  
 @domain varchar (50),  
-- @desgn varchar(30),  
-- @dob varchar(20),  
-- @doj varchar(20),  
 @insertedby bigint  
   
   
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
    if not exists(SELECT G_Email from G_Riya_Emails where G_Email = @email)  
    Begin   
      
	DECLARE @country varchar(50)=null
	if EXISTS (SELECT Gpkid FROM G_Riya_Emails WHERE @branch NOT IN(72,88,89,102,103,105,106,107,110,114,115,116,117))
	BEGIN
		SET @country='IN'
	END

    INSERT INTO G_Riya_Emails([G_Fname],[G_Lname],[G_Email],[G_branch],[G_region],[G_domain],[G_insertedby],[G_inserteddate],G_Country)  
    VALUES(@fname,@lname,@email,@branch,@region,@domain,@insertedby,GETDATE(),@country)
    Select 1  

    end  
    else  
    begin  
    Select 2  
    end  
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Emp_Detail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_Emp_Detail] 
AS 
  
  
DECLARE @ADMIN VARCHAR(100) 
SET @ADMIN =''
DECLARE @NAME VARCHAR(50)    
DECLARE @EMAILID NVARCHAR(50)
DECLARE @EMAILID1 NVARCHAR(50)
DECLARE @EMAILID2 NVARCHAR(50)
DECLARE @EMPNAME VARCHAR(20)
DECLARE @ECODE VARCHAR(20) 
DECLARE @DESG VARCHAR(20) 
DECLARE @COMPANY VARCHAR(20) 
DECLARE @DOJ VARCHAR(20) 
DECLARE @DEPT VARCHAR(30) 
DECLARE @TOTALYEAR VARCHAR(30)
DECLARE @HTMLBody  NVARCHAR(MAX)
 
 DECLARE cur_veh CURSOR
STATIC FOR  
Select case when emp_code IS NULL or emp_code = '' then 'NA' else emp_code end emp_code,
case when emp_name IS NULL or emp_name = '' then 'NA' else emp_name end emp_name,
case when emp_desg IS NULL or emp_desg = '' then 'NA' else emp_desg end emp_desg,
case when emp_dept IS NULL or emp_dept = '' then 'NA' else emp_dept end emp_dept,
case when emp_doj IS NULL or emp_doj = '' then 'NA' else emp_doj end emp_doj,
case when emp_company IS NULL or emp_company = '' then 'NA' else emp_company end emp_company,
cast((DATEDIFF(m, Convert(DATE,emp_doj,103), Convert(DATE,GETDATE(),103))/12) as varchar) + ' Year' as Total_Completed_Years 
       From Emp_Master 
       where DATEPART(DAY,Convert(DATE,emp_doj,103)) = DATEPART(DAY,Convert(DATE,GETDATE(),103))
      AND  DATEPART(MONTH,Convert(DATE,emp_doj,103))  = DATEPART(MONTH,Convert(DATE,GETDATE(),103))
      AND cast((DATEDIFF(m, Convert(DATE,emp_doj,103), Convert(DATE,GETDATE(),103))/12) as varchar) + ' Year'  >= '1'

OPEN cur_veh
IF @@CURSOR_ROWS > 0
 BEGIN 
 FETCH NEXT FROM cur_veh INTO @ECODE,@EMPNAME,@DESG,@DEPT,@DOJ,@COMPANY,@TOTALYEAR
  
 WHILE @@FETCH_STATUS = 0
 BEGIN
   --IF DATEPART(DAY,@DOJ) = DATEPART(DAY,GETDATE())
   --   AND DATEPART(MONTH,@DOJ) = DATEPART(MONTH,GETDATE())
   --Begin
   SET @HTMLBody =

'<html>
<body>
Dear Sir/Madam, <br/><br/>   
          The Following are joining details of Employee, <br/><br/> 
           <table border="1" cellpadding="1" cellspacing="1" width="1500" >
            <tr style="background: #c00000; color: white;">
             <th>EMPLOYEE CODE</th>
              <th>EMPLOYEE NAME</th>
              <th>DESGINATION </th>
              <th>DEPARTMENT </th>
              <th>COMPANY</th>
              <th>DOJ</th>
              <th>TOTAL YEARS COMPLETED</th>
            </tr>

            <tr>
             <td style ="text-align:center">'+@ECODE+'</td>
              <td style ="text-align:center">'+@EMPNAME+'</td>
              <td style ="text-align:center">'+@DESG+' </td>
              <td style ="text-align:center">'+@DEPT+' </td>
               <td style ="text-align:center">'+@COMPANY+'</td>
              <td style ="text-align:center">'+@DOJ+'</td>
              <td style ="text-align:center">'+@TOTALYEAR+'</td>
            </tr>

          </table>

           <br/><br/>
          Thanks and Regards,<br/><br/>   
          Riya Travel & Tours (I  Pvt. Ltd.<br/><br/>
    
<body>
<html>'

exec msdb.dbo.sp_send_dbmail
@profile_name = 'EmpCompletionYear',
@recipients = 'rashmi.sachdev@riya.travel;michelle.quadros@riya.travel',

@subject = 'Total Completion Year',
@body = @HTMLBody,
@body_format= 'HTML'



-- END



FETCH NEXT FROM cur_veh INTO @ECODE,@EMPNAME,@DESG,@DEPT,@DOJ,@COMPANY,@TOTALYEAR
END
END
CLOSE cur_veh
DEALLOCATE cur_veh
GO
/****** Object:  StoredProcedure [dbo].[Get_G_Emp]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_G_Emp]    
    @Id bigint,    
 @name varchar(50),    
 @email varchar(50),    
 @region varchar(30)    
     
     
     
AS    
BEGIN    
 -- SET NOCOUNT ON added to prevent extra result sets from    
 -- interfering with SELECT statements.    
 SET NOCOUNT ON;    
    
    -- Insert statements for procedure here    
      SELECT [Gpkid],[G_Fname],[G_Lname],left([G_Email], charindex('@', [G_Email]) - 1)as [G_Email],[G_Mob],[G_desg] ,[branch_name],[G_region],[G_domain],e.G_branch as BranchID   
      FROM [Intranet].[dbo].[G_Riya_Emails] e,[Intranet].[dbo].[Branch_Detail] b     
      Where     
      e.[G_branch] = b.branch_id     
          
      and (@name='' or [G_Fname] = @name or [G_Fname] Like '%' + @name + '%' )     
      and (@email= '' or [G_Email] = @email)    
      and (@region = '' or [G_region] = @region  )    
      and (@Id =0 or [Gpkid] = @Id )    
       
   order by [Gpkid] desc    
       
END 
GO
/****** Object:  StoredProcedure [dbo].[GetAppAuthentication]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetAppAuthentication] --'860070025329188'
@IMEI		VArchar(50)
As Begin
	--If(Exists(Select  visa from emp_data Where [IMEI] = @IMEI and [emp_status] = 'N'))
	--	Begin
	--	--rbt>> salescorp
	--	--punchin>>salesretail
			Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,emp_code,[collection],IsRBT_App,IsVisa_App from emp_data Where [IMEI] = @IMEI and [emp_status] = 'N'
	--	End
	--Else
	--Select 0 as Auth, 0 as visa, 0 as salescorp,0 as meet_assist, 0as salesretail,0 as emp_code
End
GO
/****** Object:  StoredProcedure [dbo].[GetAppAuthenticationNew]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ALTER Proc [dbo].[GetAppAuthenticationNew] --'860070025329188'
--@empCode		VArchar(50)
--As Begin
--	--If(Exists(Select  visa from emp_data Where [IMEI] = @IMEI and [emp_status] = 'N'))
--	--	Begin
--	--	--rbt>> salescorp
--	--	--punchin>>salesretail
--		--	Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,emp_code,[collection],IsRBT_App,IsVisa_App from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N'
--	--	End
--	--Else
--	--Select 0 as Auth, 0 as visa, 0 as salescorp,0 as meet_assist, 0as salesretail,0 as emp_code
--End

CREATE Proc [dbo].[GetAppAuthenticationNew] --'313241','860070025329181'
@empCode		VArchar(50)
,@IMEINo varchar(100)=null
As Begin

declare @Old_Imei varchar(50);

If(@IMEINo is null or @IMEINo='')
begin
  Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,emp_code,[collection],IsRBT_App,IsVisa_App from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N'
end

	--If(Exists(Select  visa from emp_data Where [IMEI] = @IMEI and [emp_status] = 'N'))
	--	Begin
	--	--rbt>> salescorp
	--	--punchin>>salesretail
	       else
		   begin
			Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,emp_code,[collection],IsRBT_App,IsVisa_App from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N'

			select @Old_Imei=IMEI from Emp_Data where emp_code=@empCode
			if ((@Old_Imei is null or RTRIM(LTRIM(@Old_Imei))=''))
			begin
			   update Emp_Data set IMEI=@IMEINo where emp_code=@empCode;
			   select 2
			end
			else
			begin
			 if(@IMEINo=@Old_Imei)
			     select 1
			   else
			   begin
			      --update Emp_Data set IMEI=@IMEINo where emp_code=@empCode;
			      select 0
			   end
			 
			end 
			end 
	--	End
	--Else
	--Select 0 as Auth, 0 as visa, 0 as salescorp,0 as meet_assist, 0as salesretail,0 as emp_code
End
GO
/****** Object:  StoredProcedure [dbo].[GetAppAuthenticationReportee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetAppAuthenticationReportee]  --GetAppAuthenticationReportee '133237'
@empCode		VArchar(50)
,@IMEINo varchar(100)=null
As Begin

declare @Old_Imei varchar(50);
declare @reportee int
declare @acccess varchar(20)
declare @isbranchadmin varchar(20)
select @reportee=count(emp_code) from emp_data where Sanct_Empcode_BY=@empCode
select @isbranchadmin=p.type from Emp_Data E inner join [SalesForce].[dbo].[Punchretailadmin] p on e.emp_code=p.ecode where p.ecode=@empCode

if(@reportee>0)
set @reportee=1
else
set @reportee=0


select @acccess=bd.access from Cashless_Reimbursement.[dbo].[branchDetails] bd 
      where  bd.PayID = (select top 1 fk_unit from emp_data  where emp_code= @empCode )

If(@IMEINo is null or @IMEINo='')
begin
--Select 'Enter';
  Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,
  
  case when salesretail='Y'     --and  (emp_code like 'J%' or emp_code in('023058','313157') or @isbranchadmin in ('A','F','P'))
   then 1 else 0 end IsJODUser,
  case when salesretail='Y' and  @isbranchadmin is not null and emp_code not like 'J%' then 1 else 0 end IsConnectUser ,
  emp_code,isnull([collection],0) [collection],isnull(IsPunch_App,0) IsPunch_App ,
  (case when @isbranchadmin='A' 
			then 1 
				else 0 
				end) as isbranchadmin
  ,isnull(IsRBT_App,0) IsRBT_App,isnull(IsVisa_App,0) IsVisa_App,isnull(region_code,0) region,@reportee as reporteeFlag,
  case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
  
  else isnull(@acccess,'0')+',12,13,14,15,16,17,18,19,20,22,23' end as access,[Company_Flag]
  ,isnull(IsRHSales,0) IsRHSales
   from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N'

  order by case when IsRHFlag=1 then 0 when IsRHFlag is null and Company_Flag='RHPL' then 2 else 1 end


  SELECT  [AndroidVersion]
      ,[IosVersion]
      ,[AndroidMessage]
      ,[IosMessage]
	  ,[IsForceUpdate]
	  ,[IsiosForceUpdate]
     
  FROM [Intranet].[dbo].[ApiKeys]
end

	
	       else
		   begin
			Select 1 as Auth,  visa,salescorp,meet_assist,salesretail,
			case when salesretail='Y' and  (emp_code like 'J%' or emp_code in('023058','313157') or @isbranchadmin in('A','F','P')) then 1 else 0 end IsJODUser,
    case when salesretail='Y' and  @isbranchadmin is not null and emp_code not like 'J%' then 1 else 0 end IsConnectUser ,
			emp_code,
			(case when @isbranchadmin='A' 
			then 1 
				else 0 
				end) as isbranchadmin,
			isnull([collection],0) [collection],isnull(IsPunch_App,0) IsPunch_App ,isnull(IsRBT_App,0) IsRBT_App,
			isnull(IsVisa_App,0) IsVisa_App,isnull(region_code,0) region,
			case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
  
			else isnull(@acccess,'0')+',11,12,13,14,15,16,17,18,19,20' end as access,[Company_Flag],
			@reportee as reporteeFlag ,
			 isnull(IsRHSales,0) IsRHSales from emp_data 
			Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N'

			 order by case when IsRHFlag=1 then 0 else 1 end

			 SELECT  [AndroidVersion]
      ,[IosVersion]
      ,[AndroidMessage]
      ,[IosMessage]
	  ,[IsForceUpdate]
	  ,[IsiosForceUpdate]
     
  FROM [Intranet].[dbo].[ApiKeys]

			select @Old_Imei=IMEI from Emp_Data where emp_code=@empCode
			if ((@Old_Imei is null or RTRIM(LTRIM(@Old_Imei))=''))
			begin
			   update Emp_Data set IMEI=@IMEINo where emp_code=@empCode;
			   select 2
			end
			else
			begin
			 if(@IMEINo=@Old_Imei)
			     select 1
			   else
			   begin
			      --update Emp_Data set IMEI=@IMEINo where emp_code=@empCode;
			      select 0
			   end
			 
			end 
			end 
	--	End
	--Else
	--Select 0 as Auth, 0 as visa, 0 as salescorp,0 as meet_assist, 0as salesretail,0 as emp_code
End
GO
/****** Object:  StoredProcedure [dbo].[getbranch]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[getbranch]  
 -- Add the parameters for the stored procedure here  
   
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
 SELECT branch_name,branch_id from Branch_Detail order by branch_name asc  
END  
GO
/****** Object:  StoredProcedure [dbo].[GetBranches]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetBranches]
As
begin
SELECT branch_id  as [BranchId]
      , branch_name as [BranchName]
      
  FROM Branch_Detail
  order by branch_name asc
 -- where [Status]='A'

 
  end
GO
/****** Object:  StoredProcedure [dbo].[GetComponyflagandaccess]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[GetComponyflagandaccess] --  [dbo].[GetComponyflagandaccessTest] '023074',''
@empCode		VArchar(50),
@componyflag varchar(50)=null
As Begin
declare @Count int=0
declare @Old_Imei varchar(50);
declare @RH int=1
declare @acccess varchar(50)
declare @RFlag int=0
select @RH=count(emp_code) from emp_data where emp_code=@empCode and IsRHFlag=1
--select count(emp_code) from emp_data where emp_code=023074 and IsRHFlag=1
--select @RH
if(@RH>0)
begin
set @RH=1

select @acccess=bd.access from [Cashless_Reimbursement].[dbo].[branchDetails] bd 
      where  bd.PayID = (select top 1 fk_unit from emp_data  where emp_code= @empCode and [Company_Flag]='RHPL')
end
else
begin
set @RH=0
select @acccess=bd.access from [Cashless_Reimbursement].[dbo].[branchDetails] bd 
      where  bd.PayID = (select top 1 fk_unit from emp_data  where emp_code= @empCode and [Company_Flag]!='RHPL')
end

If(@RH=0)
begin
--DROP TABLE IF EXISTS dbo.Scores
		   IF OBJECT_ID('db_owner.RimTempTable', 'U') IS NOT NULL 
  DROP TABLE db_owner.RimTempTable; 

create table RimTempTable
(
[type] nvarchar (200),
applyDate datetime,
reqid int,
rld int,
username nvarchar (100),
empcode varchar (50),
startenddate nvarchar(50),
amount int,
documents int,
remark nvarchar(max)
)
IF OBJECT_ID('db_owner.AccessFlag', 'U') IS NOT NULL 
  DROP TABLE db_owner.AccessFlag; 

create table AccessFlag
(
ReportyCount varchar(10)
)

 insert into db_owner.RimTempTable
 exec [Cashless_Reimbursement].[dbo].spGetRequesteReimbursement @empCode
 SELECT @Count = COUNT(*) FROM db_owner.RimTempTable
 drop table db_owner.RimTempTable

 insert into db_owner.AccessFlag
 exec [Cashless_Reimbursement].[dbo].[spGetReportyCount] @empCode
 SELECT @RFlag = COUNT(*) FROM db_owner.AccessFlag
 drop table db_owner.AccessFlag

 Select case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
 else isnull(@acccess,'0')+',12,13,14,15,16,17,18,19,20,22,23' end as access,[Company_Flag],IsRHFlag,@Count as RCount,@RFlag as RFlag from emp_data
   Where LTRIM(RTRIM(emp_code)) = @empCode  and Company_Flag!='RHPL'--or Company_Flag=@componyflag and [emp_status] = 'N'
  order by case when IsRHFlag=1 then 0 
  when IsRHFlag is null and Company_Flag='RHPL' then 2 
   when Company_Flag='REPL' then 3
   else 1 end

end

	
	       else
		  
		   begin

		   IF OBJECT_ID('db_owner.RimTempTable1', 'U') IS NOT NULL 
  DROP TABLE db_owner.RimTempTable1; 


	 create table db_owner.RimTempTable1
(
[type] nvarchar (200),
applyDate datetime,
reqid int,
rld int,
username nvarchar (50),
empcode varchar (50),
startenddate nvarchar(50),
amount int,
documents int,
remark nvarchar(max)
)

IF OBJECT_ID('dbo.AccessFlag1', 'U') IS NOT NULL 
  DROP TABLE dbo.AccessFlag1; 

create table AccessFlag1
(
ReportyCount int
)	     
 insert into db_owner.RimTempTable1
 exec [Cashless_Reimbursement].[dbo].spGetRequesteReimbursement @empCode
  SELECT @Count = COUNT(*) FROM db_owner.RimTempTable1
drop table db_owner.RimTempTable1

 insert into db_owner.AccessFlag1
 exec [Cashless_Reimbursement].[dbo].[spGetReportyCount] @empCode
 SELECT @RFlag = COUNT(*) FROM db_owner.AccessFlag1
 drop table AccessFlag1

  Select case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
  
  else isnull(@acccess,'0')+',12,13,14,15,16,17,18,19,20,22,23' end as access,[Company_Flag],IsRHFlag,@Count as RCount,@RFlag as RFlag from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N' and Company_Flag='RHPL'

  order by case 
  when IsRHFlag=1 then 0 
   when IsRHFlag is null and Company_Flag='RHPL' then 2 
   when Company_Flag='REPL' then 3
   else 1 end

end
end

GO
/****** Object:  StoredProcedure [dbo].[GetComponyflagandaccessTest]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[GetComponyflagandaccessTest] --  [dbo].[GetComponyflagandaccess] '562525',''
@empCode		VArchar(50)

,@componyflag varchar(50)=null
As Begin


declare @Count int=0
declare @Old_Imei varchar(50);
declare @RH int=1
declare @acccess varchar(50)
declare @RFlag int=0


select @RH=count(emp_code) from emp_data where emp_code=@empCode and IsRHFlag=1
--select @RH
if(@RH>0)
begin
set @RH=1

select @acccess=bd.access from [Cashless_Reimbursement].[dbo].[branchDetails] bd 
      where  bd.PayID = (select top 1 fk_unit from emp_data  where emp_code= @empCode and [Company_Flag]='RHPL')
end
else
begin
set @RH=0
select @acccess=bd.access from [Cashless_Reimbursement].[dbo].[branchDetails] bd 
      where  bd.PayID = (select top 1 fk_unit from emp_data  where emp_code= @empCode and [Company_Flag]!='RHPL')
end




If(@RH=0)
begin
--DROP TABLE IF EXISTS dbo.Scores
		   IF OBJECT_ID('dbo.RimTempTable', 'U') IS NOT NULL 
  DROP TABLE dbo.RimTempTable; 

 create table RimTempTable
(
[type] nvarchar (200),
applyDate datetime,
reqid int,
rld int,
username nvarchar (50),
empcode varchar (50),
startenddate nvarchar(50),
amount int,
documents int
)
IF OBJECT_ID('dbo.AccessFlag', 'U') IS NOT NULL 
  DROP TABLE dbo.AccessFlag; 

create table AccessFlag
(
ReportyCount varchar(10)
)

 insert into RimTempTable
 exec [Cashless_Reimbursement].[dbo].spGetRequesteReimbursement @empCode
 SELECT @Count = COUNT(*) FROM RimTempTable
 drop table RimTempTable

 insert into AccessFlag
 exec [Cashless_Reimbursement].[dbo].[spGetReportyCount] @empCode
 SELECT @RFlag = COUNT(*) FROM AccessFlag
 drop table AccessFlag

  Select case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
  
  else isnull(@acccess,'0')+',12,13,14,15,16,17,18,19,20,22,23' end as access,[Company_Flag],IsRHFlag,@Count as RCount,@RFlag as RFlag from emp_data
   Where LTRIM(RTRIM(emp_code)) = @empCode  and Company_Flag!='RHPL'--or Company_Flag=@componyflag and [emp_status] = 'N'
  order by case when IsRHFlag=1 then 0 
  when IsRHFlag is null and Company_Flag='RHPL' then 2 
   when Company_Flag='REPL' then 3
   else 1 end

end

	
	       else
		  
		   begin

		   IF OBJECT_ID('dbo.RimTempTable1', 'U') IS NOT NULL 
  DROP TABLE dbo.RimTempTable1; 


	 create table RimTempTable1
(
[type] nvarchar (200),
applyDate datetime,
reqid int,
rld int,
username nvarchar (50),
empcode varchar (50),
startenddate nvarchar(50),
amount int,
documents int
)

IF OBJECT_ID('dbo.AccessFlag1', 'U') IS NOT NULL 
  DROP TABLE dbo.AccessFlag1; 

create table AccessFlag1
(
ReportyCount int
)	     
 insert into RimTempTable1
 exec [Cashless_Reimbursement].[dbo].spGetRequesteReimbursement @empCode
  SELECT @Count = COUNT(*) FROM RimTempTable1
drop table RimTempTable1

 insert into AccessFlag1
 exec [Cashless_Reimbursement].[dbo].[spGetReportyCount] @empCode
 SELECT @RFlag = COUNT(*) FROM AccessFlag1
 drop table AccessFlag1

  Select case when [Company_Flag]='RHPL' then isnull(@acccess,'0')+',1,2,3,4,5,6,7,8,9,10,11'
  
  else isnull(@acccess,'0')+',12,13,14,15,16,17,18,19,20,22,23' end as access,[Company_Flag],IsRHFlag,@Count as RCount,@RFlag as RFlag from emp_data Where LTRIM(RTRIM(emp_code)) = @empCode and [emp_status] = 'N' and Company_Flag='RHPL'

  order by case 
  when IsRHFlag=1 then 0 
   when IsRHFlag is null and Company_Flag='RHPL' then 2 
   when Company_Flag='REPL' then 3
   else 1 end

end
end

GO
/****** Object:  StoredProcedure [dbo].[GetEmailIndiaList]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmailIndiaList]
	
AS
BEGIN
--	SET NOCOUNT ON;
	SELECT distinct G_Email FROM G_Riya_Emails
	WHERE G_Email is not null --and G_Country='IN'
	--WHERE G_Country='IN'

	--with cte as
	--(
	--	SELECT *,ROW_NUMBER() over (order by Gpkid asc) as rowNumber FROM G_Riya_Emails
	--	WHERE G_Country='IN'  
	--) select * from cte where rowNumber > 50
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmp]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmp]
    @Id bigint,
	@name varchar(50),
	@email varchar(50),
	@branch int,
	@region varchar(30),
	@domain varchar(50),
	@generic char(1)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  SELECT emp_id,emp_code,emp_name,email_id,branch_name,emp_region,emp_domain,emp_pass,emp_dob,emp_doj
      FROM [Intranet].[dbo].[Emp_Master] e , [Intranet].[dbo].[Branch_Detail] b 
      Where 
      e.emp_branch = b.branch_id 
      
      and (@name='' or emp_name = @name or emp_name Like '%' + @name + '%' ) 
      and (@email= '' or email_id = @email)
      and (@branch = 0 or emp_branch = @branch ) 
      and (@region = '' or emp_region = @region  )
      and (@domain = '' or emp_domain = @domain )
      and (@generic = '' or generic = @generic )
      and (@Id =0 or emp_id = @Id )
	  and emp_status <> 'DE'
	  order by emp_id desc
	  
END

GO
/****** Object:  StoredProcedure [dbo].[getempdetails]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getempdetails]
	-- Add the parameters for the stored procedure here
	@currentdate date 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

 

 
Select CONVERT(date, emp_doj, 103) From Emp_Master 

where emp_doj = convert(date, getdate(), 103)
	
END

GO
/****** Object:  StoredProcedure [dbo].[getempstatus]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getempstatus]
	-- Add the parameters for the stored procedure here
	@userid varchar (20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT emp_status,email_id From Emp_Master where 
	SUBSTRING(email_id,0,charindex('@',email_id,0))=@userid 
	--and emp_newpass = 'reset@123'
END

GO
/****** Object:  StoredProcedure [dbo].[getgridview]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getgridview] 
	@ID BigINT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  IF (@ID = 0)
  BEGIN
  SELECT [emp_id],[emp_code],[emp_name],[email_id],[branch_name],[emp_region],[emp_domain]
  FROM [Intranet].[dbo].[Emp_Master] , [Intranet].[dbo].[Branch_Detail]
  WHERE  
  [Emp_Master].emp_branch = [Branch_Detail].branch_id
 END
ELSE
  BEGIN
 
 SELECT [emp_id],[emp_code],[emp_name],[email_id],[emp_pass],[emp_mob],[emp_desg],[emp_branch],[emp_region],[emp_domain]
  FROM [Intranet].[dbo].[Emp_Master]
  
  WHERE  [emp_id] = @ID
  END
 
	
END

GO
/****** Object:  StoredProcedure [dbo].[getImageBanner]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getImageBanner]
	
AS
BEGIN
	SET NOCOUNT ON;
   
	SELECT * FROM MenuDesc 
	WHERE FlagShowInBanner=1 AND ExpiryDate >= GETDATE()
	order by case when OrderID=1 then 0 else 1 end, OrderID
END

GO
/****** Object:  StoredProcedure [dbo].[GetImplants]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetImplants] --'013066'
	-- Add the parameters for the stored procedure here
	@emp_code varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select IsPunch_App,punch_email from emp_data where emp_code=@emp_code and IsPunch_App=1

END
GO
/****** Object:  StoredProcedure [dbo].[getmailaccount]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getmailaccount]
	-- Add the parameters for the stored procedure here
	@mail varchar(30)
AS
BEGIN
	
	SELECT emp_account From Emp_Master where email_id = @mail

END

GO
/****** Object:  StoredProcedure [dbo].[getmainmenu]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getmainmenu]
	-- Add the parameters for the stored procedure here
	@type varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT name, pkid from dbo.Mainmenu where type=@type
END

GO
/****** Object:  StoredProcedure [dbo].[getmenutype]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getmenutype]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT type from dbo.MenuType order by order_in
END

GO
/****** Object:  StoredProcedure [dbo].[getnewpass]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getnewpass] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 1 SUBSTRING(emp_pass,5,LEN(emp_pass)) + 1 FROM Emp_Master order by SUBSTRING(emp_pass,5,LEN(emp_pass)) desc
END

GO
/****** Object:  StoredProcedure [dbo].[getpasswd]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getpasswd]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 --   Declare @ID bigint 
	--SELECT @ID = max(emp_id) From Emp_Master 
	--Select emp_pass From Emp_Master where emp_id = @ID 
	 SELECT TOP 1 emp_pass FROM Emp_Master ORDER BY emp_id DESC
END

GO
/****** Object:  StoredProcedure [dbo].[getPunchDetails]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getPunchDetails]  --'023074'    
@empCode varchar(50)      
as      
begin      
select [punch_email] as reporteeEmail,emp_name as empName from Emp_Data where emp_code=@empCode  and   [punch_email] is not null  
end
GO
/****** Object:  StoredProcedure [dbo].[getsalestype]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getsalestype]
	-- Add the parameters for the stored procedure here
	@IMEI varchar (MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		
  SELECT  
             CASE 
                  WHEN  p_prodcut = 'Sales Tracker(Retail)-'+@IMEI
                     THEN 1 
                  WHEN 
					p_prodcut = 'Sales Tracker(RBT)-'+@IMEI 
					 THEN 2 
                   
             END  as Salable INTO #temptable 
             
FROM Permission where p_prodcut like '%'+@IMEI +'%'

select * from #temptable where Salable is not null

drop table #temptable
	 
END

GO
/****** Object:  StoredProcedure [dbo].[GetTokenList]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTokenList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT  * FROM TokenMaster
	order by PKID desc
--	where PKID in (1,5,2,9,12,15,23)
	
END
GO
/****** Object:  StoredProcedure [dbo].[getUserDetails]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[getUserDetails] --10109
@userid bigint
As
begin
SELECT  [pkid]
      ,[userid]
      
	,[type]
      ,[fullname]
      ,[ecode]
      
      ,isnull([designation],'NA') as designation
      ,isnull([branch],'NA') as [branch]
	  ,status
	  ,isnull(emailId,'NA') as emailId
	  ,isnull(reporteeEmail,'') as  reporteeEmail
	  ,isnull(AccountPerCode,'NA') as AccountPerCode

      
  FROM [dbo].[Punchretailadmin]
  where pkid=@userid


  Select FKBranchId AS Branch From BranchMapping Where FKUserId = @userid
  end




GO
/****** Object:  StoredProcedure [dbo].[inertnewpass]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[inertnewpass]
	-- Add the parameters for the stored procedure here
	@ID Bigint,
	--@name varchar(50),
	--@email varchar(50),
	--@branchname varchar(30),
	--@region varchar(30),
	--@domain varchar (50),
	@pass varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
    --Delete From Emp_Master where emp_id = @ID
   Update Emp_Master SET emp_pass = @pass where emp_id = @ID
 --   Declare  @branchid bigint
 --   Select @branchid = branch_id From Branch_Detail where branch_name = @branchname
	--INSERT INTO Emp_Master(emp_name,email_id,emp_branch,emp_region,emp_domain,emp_pass)VALUES(@name,@email,@branchid,@region,@domain,@pass)
	Select 1
END

GO
/****** Object:  StoredProcedure [dbo].[InsertEmailLog]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertEmailLog]
	@EmailDetail nvarchar(max)
AS
BEGIN
	INSERT INTO EmailLog(EmailDetail)Values(@EmailDetail)
END
GO
/****** Object:  StoredProcedure [dbo].[insertempperm]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertempperm] 
	-- Add the parameters for the stored procedure here
	@empcode varchar(20),
	@corp char(1),
	@retail char(1),
	@imei varchar(150),
	@flag int,
	@name varchar(100),
	@desgn varchar(30),
	@meet char(1),
	@collection bit,
	@location varchar(50),
    @RBT_App bit,
	@visa_App bit,
	@branchId bigint=null
 AS
 BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   if exists(select emp_code from dbo.Emp_Data where emp_code=@empcode and IsRBT_Web=1)
    begin
	  update dbo.Emp_Data set salescorp=@corp,salesretail=@retail,IMEI=@imei,Meet_Assist=@meet, [collection] = @collection, IsRBT_App = @RBT_App where emp_code=@empcode
    end    
	   
	    if exists(select emp_code from Emp_Data where emp_code=@empcode)
		begin
		   update dbo.Emp_Data set salescorp=@corp,salesretail=@retail,IMEI=@imei,Meet_Assist=@meet, IsVisa_App= @visa_App where emp_code=@empcode

		   if(@visa_App=1)
	         begin 
	             if exists(select id from [Visa_Tracker].dbo.tblAppUser where empcode=@empcode)
	                begin 
	                  update [Visa_Tracker].dbo.tblAppUser set name=@name,empcode=@empcode, Branch=@branchId where empcode=@empcode
                    end
	             else
	                begin
	                  insert into [Visa_Tracker].dbo.tblAppUser ( name,empcode,Branch) values (@name,@empcode,@branchId)
	                end
	          end
		
	        if exists(select emp_code from dbo.Emp_Data where emp_code=@empcode and emp_status<>'Y')
	          begin
	            update dbo.Emp_Data set salescorp=@corp,salesretail=@retail,IMEI=@imei,Meet_Assist=@meet, [collection] = @collection where emp_code=@empcode
	
	               if(@collection=1)
	               begin 
	                   if exists(select id from [dbCollection].dbo.tblUser where empcode=@empcode)
	                     begin 
	                       update [dbCollection].dbo.tblUser set name=@name,empcode=@empcode,[location] = @location where empcode=@empcode
                          end
	                   else
	                      begin
	                        insert into [dbCollection].dbo.tblUser ( name,empcode,[location]) values (@name,@empcode,@location)
	                      end
	               end

	               if(@flag<>0)
	                begin
	                    if(@flag = 1)
                          begin
	                          if exists(select 1 from Sales_Tracker.dbo.Punchretailadmin where userid=@empcode)
	                            begin
	                              update Sales_Tracker.dbo.Punchretailadmin set fullname=@name,userid=@empcode,imei=@imei,designation=@desgn,ecode=@empcode  where  userid=@empcode
	                            end
	                          else
	                             begin
	                               insert into Sales_Tracker.dbo.Punchretailadmin(userid,fullname,imei,designation,ecode) values(@empcode,@name,@imei,@desgn,@empcode)
	                          end
	                       end

                       if(@flag =2)
	                   begin
	                      if exists(select 1 from Sales_Tracker.dbo.RBT_Punch_Admin where userid=@empcode)
	                         begin
	                            update Sales_Tracker.dbo.RBT_Punch_Admin set fullname=@name,imei=@imei,designation=@desgn,ecode=@empcode where  userid=@empcode
	                         end
	                      else
	                          begin
	                             insert into Sales_Tracker.dbo.RBT_Punch_Admin(userid,fullname,imei,designation,ecode) values(@empcode,@name,@imei,@desgn,@empcode)
	                          end
	                    end
	                end
              end
         end
  else
	begin
	   select 2 --empcode deactivated
	end
	--end
END
GO
/****** Object:  StoredProcedure [dbo].[insertintrpermamacid]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertintrpermamacid]
	-- Add the parameters for the stored procedure here
	@email varchar(30),
	--@macid varchar(100),
	@product varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if not exists (Select emp_id from Permission where emp_id = @email and p_prodcut = @product)
	Insert into Permission(emp_id,p_prodcut)Values (@email,@product)
END

GO
/****** Object:  StoredProcedure [dbo].[insertmacid]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertmacid] 
	@macid varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if not exists (Select PKmacID_in from MacIDMaster where MacID_vc = @macid)
	Insert INTO MacIDMaster(MacID_vc)Values(@macid) 
	Select 1
END

GO
/****** Object:  StoredProcedure [dbo].[insertmenudesc]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertmenudesc]
	-- Add the parameters for the stored procedure here
	@sub bigint,
	@path varchar(max),
	@des varchar(150),
	@ExpiryDate DateTime = null,
	@Order int = null,
	@FlagShowInBanner tinyint,
	@OriginalImgName varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	IF(@Order=1)
	BEGIN
		update dbo.MenuDesc set OrderID =null
	END
    -- Insert statements for procedure here
	--Old(Changed on 07042017)
	--insert into dbo.MenuDesc (FKsubmenu,imgpath,des,ExpiryDate,OrderID,FlagShowInBanner) values(@sub,@path,@des,@ExpiryDate,@Order,@FlagShowInBanner)
	insert into dbo.MenuDesc (FKsubmenu,imgpath,OriginalImgName,des,ExpiryDate,OrderID,FlagShowInBanner) values(@sub,@path,@OriginalImgName,@des,@ExpiryDate,@Order,@FlagShowInBanner)
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[insertPermission]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertPermission] 
	-- Add the parameters for the stored procedure here
	@empcode varchar(20),
	@imei varchar(150),
    @empname varchar(100),
	@retail char(1),
	@meet char(1),
	 @RBT_App bit,
	@visa_App bit,
	@collection bit,
	@desgn varchar(30),
	@meetLoc varchar(100)=null,
	@meetContact varchar(15)=null,
    @collectLoc   varchar(100)=null,
	@retailLoc varchar(100)=null,
	@emilId varchar(100)=null,
	@salebranch varchar(50)=null,
	@branchId bigint=null
 AS
 BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if not exists(select emp_code from dbo.Emp_Data where emp_code=@empcode)
	begin
	select 3
	end
     
	else   if exists(select emp_code from dbo.Emp_Data where emp_code=@empcode and emp_status<>'Y')
	  begin

	   update dbo.Emp_Data set salesretail=@retail,
	   IMEI=@imei,Meet_Assist=@meet,IsRBT_App=@RBT_App,
	   collection=@collection, IsVisa_App= @visa_App 
	   where emp_code=@empcode
	  
	  
	   if(@collection=1)
	               begin 
	                   if exists(select id from [dbCollection].dbo.tblUser where empcode=@empcode)
	                     begin 
	                       update [dbCollection].dbo.tblUser set name=@empname,empcode=@empcode,[location] = @collectLoc where empcode=@empcode
                          end
	                   else
	                      begin
	                        insert into [dbCollection].dbo.tblUser ( name,empcode,[location]) values (@empname,@empcode,@collectLoc)
	                      end
	               end
	  
	   if(@retail='Y')
	               begin 
				    if exists(select 1 from SalesForce.dbo.Punchretailadmin where userid=@empcode)
	           begin
	              update SalesForce.dbo.Punchretailadmin set fullname=@empname,userid=@empcode,imei=@imei,
				  designation=@desgn,ecode=@empcode,[retailLocation]= @retailLoc,reporteeEmail=@emilId ,branch=@salebranch
				  where  userid=@empcode
	           end
	         else
	           begin
	              insert into SalesForce.dbo.Punchretailadmin(userid,fullname,imei,designation,ecode,[retailLocation],reporteeEmail,branch)
				   values(@empcode,@empname,@imei,@desgn,@empcode,@retailLoc,@emilId,@salebranch)
	           end
				   end

				   if(@meet='Y')
				   begin
if not exists(select o_id from [Meet_Assist].[dbo].[Officeboy_Details_Meet_Assist] where emp_code=@empCode)
  begin
    insert into [Meet_Assist].[dbo].[Officeboy_Details_Meet_Assist]([o_name_vc],[o_mobile],[emp_code],[location],o_device_id)
	values(@empName,@meetContact,@empCode,@meetLoc,@imei);
	
  end
  else
  begin
  update [Meet_Assist].[dbo].[Officeboy_Details_Meet_Assist] 
  set [o_name_vc]=@empName,[o_mobile]=@meetContact,[emp_code]=@empCode,[location]=@meetLoc,o_device_id=@imei
  where emp_code=@empCode
 
  end
end
	  select 1
	  end
              
  else
	begin
	   select 2 --empcode deactivated
	end
	--end
END
GO
/****** Object:  StoredProcedure [dbo].[insertpermsn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertpermsn]
	-- Add the parameters for the stored procedure here
	@email varchar(50),
	@branch varchar(50),
	@region varchar(50),
	@product varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
    
     --IF not exists (Select emp_id from Permission where emp_id =@email)
    -- delete from Permission where emp_id=@email
    --if exists (Select emp_id,email_id From Emp_Master where emp_status <> 'D')
    if not exists (Select emp_id from Permission where emp_id = @email and p_prodcut = @product)
    begin
	INSERT INTO Permission (emp_id,p_branch,p_region,p_prodcut)Values (@email,@branch,@region,@product)
	Select 1
	end
END

GO
/****** Object:  StoredProcedure [dbo].[insertsalesintra]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertsalesintra]
	-- Add the parameters for the stored procedure here
	@staffname varchar(50),
	@email varchar(50),
	@designation varchar(30),
	@branch varchar(30),
	@product varchar(30)
	--@branchID bigint
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    Declare @branchid bigint
	if exists (select emp_id From Emp_Master where email_id =@email)
	
	Begin 
	Select @branchid=branch_id From Branch_Detail where branch_name=@branch 
	UPDATE Emp_Master SET emp_name = @staffname ,emp_desg =@designation,emp_branch=@branchid where email_id = @email
	--INSERT INTO Permission (emp_id,p_prodcut)Values (@email,@product)
    UPDATE Permission SET emp_id =@email , p_prodcut = @product where emp_id = @email
    END
    ELSE
    BEGIN
    INSERT INTO Permission (emp_id,p_prodcut)Values (@email,@product)
    END
	END


GO
/****** Object:  StoredProcedure [dbo].[insertsubmenu]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertsubmenu] 
	-- Add the parameters for the stored procedure here
	@main bigint,
	@name varchar(150)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if not exists (select pkid from dbo.submenu where name=@name and fkmainmenu=@main)
	begin
	insert into submenu(fkmainmenu,name) values(@main,@name)
	select 1
	end	
	else
	begin
	select 2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[InsertToken]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertToken]
	@Token varchar(MAX)
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF not exists(Select * From TokenMaster Where TokenNo = @Token)
	BEGIN
		INSERT INTO TokenMaster (TokenNo) VALUES ( @Token)
		SELECT 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Intranet_Attendance_Mail_Alert]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Intranet_Attendance_Mail_Alert]
as
begin	
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET ANSI_WARNINGS ON
SET NOCOUNT ON

IF OBJECT_ID('tempdb..##TEMP2') IS NOT NULL  
DROP TABLE ##TEMP2

DECLARE @mydate DATETIME
--SELECT @mydate = GETDATE()
Set @mydate=(SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(GETDATE())-1),GETDATE()),101))
--select @mydate

select * into ##temp2
FROM (
   SELECT 
	e.emp_code as [Employee Code], e.emp_name as [Employee Name], d.DayDate as [date],
	Case WHEN	
			(Select STUFF(
                 (SELECT   min(convert (varchar(25),t.insertedon,108))  
					 FROM intranet.dbo.trnpunchtime t where t.insertedon >= @mydate
					 and t.fk_emp_code= e.emp_code and DAY(t.insertedon)= d.DayDate
					 FOR XML PATH ('')), 1, 0, ''))
				 =
			(select STUFF(
                 (SELECT    max(convert (varchar(25),t.insertedon,108) ) 
					 FROM intranet.dbo.trnpunchtime t where t.insertedon >= @mydate
					 and t.fk_emp_code= e.emp_code and DAY(t.insertedon)= d.DayDate
					 FOR XML PATH ('')), 1, 0, ''))
	then
			(select STUFF(
                 (SELECT   min(convert (varchar(25),t.insertedon,108))+' - NA'
					 FROM intranet.dbo.trnpunchtime t where t.insertedon >= @mydate
					 and t.fk_emp_code= e.emp_code and DAY(t.insertedon)= d.DayDate
					 FOR XML PATH ('')), 1, 0, '')) 
	else		
			(select STUFF(
                 (SELECT   min(convert (varchar(25),t.insertedon,108))+' - ',max(convert (varchar(25),t.insertedon,108) ) 
					 FROM intranet.dbo.trnpunchtime t where t.insertedon >= @mydate
					 and t.fk_emp_code= e.emp_code and DAY(t.insertedon)= d.DayDate
							 FOR XML PATH ('')), 1, 0, ''))  end as [Time]
			from intranet.dbo.trnpunchtime t inner join intranet.dbo.Emp_Data e
			on t.fk_emp_code= e.emp_code
			Inner join intranet.dbo.DimDate d
			on d.DWDateKey=convert(varchar(25),t.insertedon,23)
			where t.insertedon >= @mydate
			GROUP BY t.insertedon,e.emp_code,e.emp_name,DayDate
			) as D
	PIVOT
			(min([Time])
			for [date] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14]
						  ,[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26]
						  ,[27],[28],[29],[30],[31]) 
			) as E
			order by 1
		--Select * from tempdb..##temp2
	DECLARE @query_result_separator11 CHAR(1) = char(9);  
	DECLARE @Query_Attachment_Filename NVARCHAR(100)='Employees Attendance-'+ CONVERT(NVARCHAR,GETDATE(),106) +'.xls'   

		----   exec [Intranet_Attendance_Mail_Alert]
		EXEC msdb.dbo.sp_send_dbmail 
		@profile_name = 'CIEL Attendant', 
		@from_address = 'noreply@riya.travel',           
		--@recipients='ciel.attendant@riya.travel',        
		@copy_recipients='Dba@riya.travel', 
		--@copy_recipients='dba@riya.travel',
		@Blind_copy_recipients='',
		@Subject ='Employees Attendance!!!',  
		@Query_Attachment_Filename=@Query_Attachment_Filename,                                                                                         
		@Attach_Query_Result_As_File=1,                                
		@Query_Result_No_Padding=1,  
		@Query='Select * from tempdb..##temp2',                
		@Body = 'Dear Hr Team,<Br/>                                                      
				 Please Find Attachment of Employee Attendance!!!<Br/><Br/>  
				 Please Do Not Reply To Above Email.',                                                              
		@Body_Format = 'html',                                                        
		@Query_Result_Width = 20000,                                                  
		@query_result_separator = @query_result_separator11

End




 

			
GO
/****** Object:  StoredProcedure [dbo].[likeunlike]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[likeunlike]
	-- Add the parameters for the stored procedure here
	@flag int,
	@ip varchar(50),
	@mac varchar(100)
	
	
AS
BEGIN

	SET NOCOUNT ON;
    if(@flag = 1)
    BEGIN
    --if not exists (Select H_id From E3_Hits where H_mac = @mac and  H_remark <> 'N')
    --Begin
    INSERT INTO E3_Hits(H_LikeCount,H_unLikeCount,H_ip,H_mac,H_remark,H_insertdate)values((Select Max(H_LikeCount) From E3_Hits) +1,(Select Max(H_unLikeCount) From E3_Hits),@ip,@mac,'Y',GETDATE())
    Select H_LikeCount From E3_Hits where H_ID = (Select Max(H_ID) From E3_Hits)
    --END
    END
    
    
    if(@flag = 2)
    BEGIN
    --if not exists (Select H_id From E3_Hits where H_mac = @mac and  H_remark <> 'Y' )
    --Begin
    INSERT INTO E3_Hits(H_LikeCount,H_unLikeCount,H_ip,H_mac,H_remark,H_insertdate)values((Select Max(H_LikeCount) From E3_Hits),((Select Max(H_unLikeCount) From E3_Hits)+1),@ip,@mac,'N',GETDATE())
    Select H_unLikeCount From E3_Hits where H_ID = (Select Max(H_ID) From E3_Hits)
    --END
    END
    
    
    if(@flag = 3)
    BEGIN
    
    Select H_LikeCount,H_unLikeCount From E3_Hits where H_ID = (Select Max(H_ID) From E3_Hits)
    END

    
	
END

GO
/****** Object:  StoredProcedure [dbo].[LoginWithIntranet]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoginWithIntranet]
	-- Add the parameters for the stored procedure here
	@ecode varchar(20),
	@password varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 --   Declare @ID bigint 
	--SELECT @ID = max(emp_id) From Emp_Master 
	--Select emp_pass From Emp_Master where emp_id = @ID 
	 SELECT 1 from Emp_Data where emp_code=@ecode and password=@password and isActive='A' and IsSales_Web=1
END
GO
/****** Object:  StoredProcedure [dbo].[procCheckUsers]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[procCheckUsers]
@command VARCHAR(50)=null,
@EmpCode VARCHAR(500)
AS
BEGIN
		DECLARE @Error_message varchar(max)=Error_Message()
		

		IF @command='Verify'
		BEGIN
			BEGIN TRY
				IF(Exists(SELECT 1 FROM Emp_data WHERE emp_code = @EmpCode))
				BEGIN
					select 1
				END 
				ELSE
				BEGIN 
					select 0
				END
			END TRY
			BEGIN CATCH
				RAISERROR(@ERROR_MESSAGE,16,1)
			END CATCH
		END
END
GO
/****** Object:  StoredProcedure [dbo].[Punch_Transfer_Local_TO_Live]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Punch_Transfer_Local_TO_Live]
as
begin	
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET ANSI_NULLS ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON

Declare @Tcount int

 set @Tcount=(select count(1) from [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23))
If (@Tcount != 0)
begin
insert into [49.248.38.90].[DUMMY].[dbo].[Abhitest]
select * from [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23) 

--select * from [49.248.38.90].[DUMMY].[dbo].[Abhitest]  where convert (varchar,trndate,23) = convert (varchar,getdate(),23)
--select top 100 * from [dbo].[trnpunchtime] order by 4 desc

delete from  [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23) 

insert into [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] (fk_emp_code,DeptccCode,Trndate)
select fk_emp_code,DeptccCode,Trndate from [dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23) 

End

else

BEGIN

insert into [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] (fk_emp_code,DeptccCode,Trndate)
select fk_emp_code,DeptccCode,Trndate from [dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23)

End
End


--select top 100 * from [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] order by 4 desc
--delete from  [49.248.38.90].[DUMMY].[dbo].[trnpunchtime] where convert (varchar,trndate,23) = convert (varchar,getdate(),23)

--insert into trnpunchtime (fk_emp_code,DeptccCode,Trndate)
--values ('313325',NULL,GETDATE())
--insert into trnpunchtime (fk_emp_code,DeptccCode,Trndate)
--values ('313325',NULL,GETDATE())
--insert into trnpunchtime (fk_emp_code,DeptccCode,Trndate)
--values ('313325',NULL,GETDATE())
--insert into trnpunchtime (fk_emp_code,DeptccCode,Trndate)
--values ('313325',NULL,GETDATE())
--insert into  trnpunchtime (fk_emp_code,DeptccCode,Trndate)
--values ('313325',NULL,GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[RBT_DeleteActiveUser]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RBT_DeleteActiveUser]
@UserID varchar(50)
 AS
begin
update Emp_Data set IsPunch_App=0,IsRBT_Web=0,IsRBT_App=0
where emp_code=@UserID

update RBTSalesCRM.dbo.Users set IsActive=0 where EmployeeCode=@UserID

end
GO
/****** Object:  StoredProcedure [dbo].[resetPassword]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[resetPassword]
	-- Add the parameters for the stored procedure here
		 @empcode varchar(25)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @dataExst int
    select @dataExst=COUNT(emp_id)from Emp_Data where emp_code=@empcode 
    if(@dataExst>0)
    Begin
    declare @stat char(2)
	select @stat=emp_status from Emp_Data
	where  emp_code=@empcode
	if(@stat='N')
	Begin
	update Emp_Data set visa='Y',password='reset@123',status='D',isActive='A'
	where  emp_code=@empcode
	select 1
	
	End
	else
	Begin
	select 3
	End
	End
	else
	Begin
	select 2
	End
	
END


GO
/****** Object:  StoredProcedure [dbo].[setApiKeys]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[setApiKeys] --setApiKeys '60','Force Update','','','1','1'
@AndroidVersion varchar(10)=''
      ,@IosVersion varchar(10)=''
      ,@AndroidMessage varchar(500)=''
      ,@IosMessage varchar(500)=''
	  ,@IsForceUpdate bit=''
	  ,@IsiosForceUpdate bit=''
  as    
begin


if(@AndroidVersion='')
  set @AndroidVersion=(select [AndroidVersion] from [ApiKeys])

  if(@IosVersion='')
  set @IosVersion=(select [IosVersion] from [ApiKeys])

    if(@AndroidMessage='')
  set @IsForceUpdate=(select IsForceUpdate from [ApiKeys])

  if(@AndroidMessage='')
  set @AndroidMessage=(select [AndroidMessage] from [ApiKeys])

  if(@IosMessage='')
  set @IsiosForceUpdate=(select IsiosForceUpdate from [ApiKeys])

  if(@IosMessage='')
  set @IosMessage=(select [IosMessage] from [ApiKeys])


UPDATE [dbo].[ApiKeys]
   SET [AndroidVersion] = @AndroidVersion
      ,[IosVersion] = @IosVersion
      ,[AndroidMessage] = @AndroidMessage
      ,[IosMessage] = @IosMessage
      ,[updateDate] =getdate()
	  ,[IsForceUpdate]=@IsForceUpdate
	  ,[IsiosForceUpdate]=@IsiosForceUpdate
 end

 select 1;
GO
/****** Object:  StoredProcedure [dbo].[sp_FindStringInTable]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FindStringInTable] @stringToFind VARCHAR(max), @schema sysname, @table sysname 
AS

BEGIN TRY
   DECLARE @sqlCommand varchar(max) = 'SELECT * FROM [' + @schema + '].[' + @table + '] WHERE ' 
	   
   SELECT @sqlCommand = @sqlCommand + '[' + COLUMN_NAME + '] LIKE ''' + @stringToFind + ''' OR '
   FROM INFORMATION_SCHEMA.COLUMNS 
   WHERE TABLE_SCHEMA = @schema
   AND TABLE_NAME = @table 
   AND DATA_TYPE IN ('char','nchar','ntext','nvarchar','text','varchar')

   SET @sqlCommand = left(@sqlCommand,len(@sqlCommand)-3)
   EXEC (@sqlCommand)
   PRINT @sqlCommand
END TRY

BEGIN CATCH 
   PRINT 'There was an error. Check to make sure object exists.'
   PRINT error_message()
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[sp_getUserEmail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_getUserEmail] (@empnum varchar(50)=null)
AS
BEGIN
	select * from [Intranet].[dbo].[emp_data] where emp_code = @empnum
END
GO
/****** Object:  StoredProcedure [dbo].[spActiveDeleteUser]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActiveDeleteUser]
	-- Add the parameters for the stored procedure here
	
	@empcode varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @status varchar(50)
	set @status=(select [status] from Emp_Data where emp_code=@empcode)
	if(@status='A')
	begin
	--Update [dbo].[Emp_Data] set [status]='D' where emp_code=@empcode
	delete from Emp_Data where emp_code=@empcode
	select 1
	end
	else
	begin
	--update [dbo].[Emp_Data] set [status]='A' where emp_code=@empcode
	delete from Emp_Data where emp_code=@empcode
	select 2
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spAddEmpOTP]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spAddEmpOTP] --'373038'
@empCode varchar(10),
@OTPCode varchar(10)
as
begin

if(Len(@empCode)=5)
set @empCode='0'+@empCode

  select Office_phn,emp_phn,Resi_phn from Emp_Data where emp_code= @empCode and emp_status='N'
 order by case when (Office_phn is null and emp_phn is null and Resi_phn is null) then 3
  when ( emp_phn is null and Resi_phn is null) then 2
 when (Office_phn is null ) then 1 else 0 end
	update Emp_Data set [OTPNo]=@OTPCode where emp_code= @empCode and emp_status='N';
end
GO
/****** Object:  StoredProcedure [dbo].[spChechUserForCALIBEHR]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spChechUserForCALIBEHR] --'700283'
@empCode varchar(20),
@CompanyFlag varchar(20)
as begin
 SET Nocount on
   if exists(select emp_code from Emp_Data where emp_code=@empCode and emp_status='N' and Company_Flag=@CompanyFlag)
   begin
    update dbo.Emp_Data set [IsSales_Web]=1 where emp_code=@empCode and Company_Flag=@CompanyFlag
	select 2
   end
   else
     select 1
 end
GO
/****** Object:  StoredProcedure [dbo].[spChechUserForRBT]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spChechUserForRBT]
@empCode varchar(20)

as begin
   if exists(select emp_code from Emp_Data where emp_code=@empCode and emp_status='N')
  begin
    update dbo.Emp_Data set IsRBT_Web=1 where emp_code=@empCode
  end
 end

GO
/****** Object:  StoredProcedure [dbo].[spChechUserForRetails]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spChechUserForRetails] --'700283'
@empCode varchar(20),
@CompanyFlag varchar(20)='RTTPL'
as begin
 SET Nocount on
   if exists(select emp_code from Emp_Data where emp_code=@empCode and emp_status='N' and Company_Flag=@CompanyFlag)
   begin
    update dbo.Emp_Data set [IsSales_Web]=1 where emp_code=@empCode and Company_Flag=@CompanyFlag
	select 2
   end
   else
     select 1
 end


GO
/****** Object:  StoredProcedure [dbo].[spCheckForCALIBEHREmployee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		#Pranav
-- Create date: 13-Jun-2018
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[spCheckForCALIBEHREmployee]
	-- Add the parameters for the stored procedure here
	 @ecode varchar(15),
	 @flag varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 if  exists(select emp_code, emp_id from [Emp_Data] where emp_code=@ecode and Company_Flag=@flag and status='N' ) 
begin
select 1
end
else
begin
select 2
end
END


GO
/****** Object:  StoredProcedure [dbo].[spCheckForCEILEmployee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		#Gajanan Kadam
-- Create date: 13-Jun-2018
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[spCheckForCEILEmployee]
	-- Add the parameters for the stored procedure here
	 @ecode varchar(15),
	 @flag varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 if  exists(select emp_code, emp_id from [Emp_Data] where emp_code=@ecode and Company_Flag=@flag and status='N' ) 
begin
select 1
end
else
begin
select 2
end
END

GO
/****** Object:  StoredProcedure [dbo].[spCheckPunchIn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE proc [dbo].[spCheckPunchIn]      
@empCode varchar(50)      
as      
begin      
select top 10  * from dbo.trnpunchtime a with(nolock)      
where CAST(a.Trndate as date)=CAST(GETDATE() as date) and fk_emp_code=@empCode      
order by Trndate asc        
end  
GO
/****** Object:  StoredProcedure [dbo].[spCheckPunchOut]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spCheckPunchOut]      
 @empCode varchar(50)      
,@flag int output    
as      
begin      
declare @NoOfPunch bigint;    
declare @TranDate datetime;    
    
set @NoOfPunch = (select COUNT(*) from dbo.trnpunchtime a where CAST(a.Trndate as date)=CAST(GETDATE() as date) and fk_emp_code=@empCode)     
    
if(@NoOfPunch=1)    
begin    
-- not punch out    
 set @flag=1;    
 set @TranDate=GETDATE();    
 insert into dbo.trnpunchtime(fk_emp_code,Trndate) values(@empCode,@TranDate);    
  
 select @TranDate as Trndate    
end    
else    
begin    
-- punched out (get last punch data)    
set @flag=2;    
select top 1 a.Trndate  from dbo.trnpunchtime a      
where CAST(a.Trndate as date)=CAST(GETDATE() as date) and fk_emp_code=@empCode     
order by Trndate desc    
    
end    
end



GO
/****** Object:  StoredProcedure [dbo].[spCheckPuncIn_ForAddLocation]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spCheckPuncIn_ForAddLocation]
@empCode varchar(50)   
,@punchDate date=null
as
begin
  
  set @punchDate = (case when @punchDate is null then GETDATE() else @punchDate end)
 if exists( select top 10  * from dbo.trnpunchtime a    
where CAST(a.Trndate as date)=@punchDate and fk_emp_code=@empCode    
order by Trndate asc)
begin
select 1 
end
else
begin
select 2
end     
end
GO
/****** Object:  StoredProcedure [dbo].[spCheckUsers]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spCheckUsers] 
@EmpCode varchar(500)

AS
BEGIN
		SET NOCOUNT ON;

		BEGIN TRY
		
			IF(Exists(SELECT 1 FROM Emp_data WHERE emp_code = @EmpCode))
			BEGIN
				SELECT 1
			END
			
		END TRY
		BEGIN CATCH
			RAISERROR('Error:',16,1)
		END CATCH

		set nocount off;
END


GO
/****** Object:  StoredProcedure [dbo].[spdeActiveRHUser]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		#Gajanan Kadam
-- Create date: 14-06-2018
-- Description:	This sp is used for the Activate and deactivete the User  on JodUser.aspx page 
-- =============================================
CREATE PROCEDURE [dbo].[spdeActiveRHUser]
	-- Add the parameters for the stored procedure here
	
	@empcode varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
    -- Insert statements for procedure here
	
	Update [dbo].[Emp_Data] set IsPunch_App=0,punch_email=null where emp_code=@empcode
	
	

END

GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[spDeleteEmployee]  
     @Id bigint,
	 @deletedBy varchar(50)
  as  
  begin  

   insert into [dbo].G_Riya_Emails_Deleted(
     [G_Fname]
      ,[G_Lname]
      ,[G_Email]
      ,[G_Mob]
      ,[G_desg]
      ,[G_branch]
      ,[G_region]
      ,[G_dob]
      ,[G_doj]
      ,[G_domain]
      ,[G_insertedby]
      ,G_inserteddate
      ,[G_Country]
	  ,[deletedBy]
   )  
SELECT 
      [G_Fname]
      ,[G_Lname]
      ,[G_Email]
      ,[G_Mob]
      ,[G_desg]
      ,[G_branch]
      ,[G_region]
      ,[G_dob]
      ,[G_doj]
      ,[G_domain]
      ,[G_insertedby]
      ,getdate()--[G_inserteddate]
      ,[G_Country]
	 ,@deletedBy
  FROM [dbo].[G_Riya_Emails]  where Gpkid = @Id 

  -- delete record
   delete FROM [Intranet].[dbo].[G_Riya_Emails]  
   where Gpkid = @Id  

  end

GO
/****** Object:  StoredProcedure [dbo].[spDeleteUpdate]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE Procedure [dbo].[spDeleteUpdate]
@ID  bigint
As
begin
     
      
     delete
  FROM [Intranet].[dbo].[MenuDesc]
  where pkid=@ID
 
  end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUserCIEL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteUserCIEL]
	-- Add the parameters for the stored procedure here
	
@ecode varchar(15)
--@passwd  varchar(20)='reset@123',
--@status char(1)='A',
--@fullname varchar(50),
----@type char(1)='N',
--@designation varchar(50),
--@email varchar(100)=null,
--@AccountPerCode varchar(15),
--@branch varchar(100)=null,
----@admincode varchar(20),
--@reportee varchar(100)	
--,@BranchMapping		BranchMappingUserCIEL READONLY	 	 
--,@UserType varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	if exists(select status from Emp_Data where emp_code=@ecode)
	begin
	update Emp_Data set status ='D' where emp_code=@ecode
	select 4
	end
	else
	begin
	select 5
	end
END

GO
/****** Object:  StoredProcedure [dbo].[spEditRecord_RHPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditRecord_RHPL]
	-- Add the parameters for the stored procedure here
	@empcode varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select emp_code,ApprovalEmailId,ApprovalEmployeeId from emp_data where emp_code=@empcode and Company_Flag='RHPL'
END
GO
/****** Object:  StoredProcedure [dbo].[spFetchCIELUserOn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:#Pranav 
-- Create date: 14-06-2018
-- Description: This sp is used for Fetching the Data on GridView
-- =============================================
-- =============================================
-- Modified by : #Pranav 
-- Create date: 22-06-2018
-- Description:insted of Reporteemailid added  punch_email 
--======================================================
--Modiied by Pranav 
-- date 26-jun
-- added only -- emp_status  insted of deleteCIEL user ......and deleteCIEL user column deleted.
-- =============================================
CREATE PROCEDURE [dbo].[spFetchCIELUserOn]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select emp_code,emp_name,emp_desg,sanct_email,Company_Flag, emp_status,status from Emp_Data where Company_Flag='CALIBEHR' or Company_Flag='CIEL'


	
END

GO
/****** Object:  StoredProcedure [dbo].[spFetchRHUserOn]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Modiied by Gajanan 
-- date 26-jun
-- added only -- emp_status  insted of deleteCIEL user ......and deleteCIEL user column deleted.
-- =============================================
CREATE PROCEDURE [dbo].[spFetchRHUserOn]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select emp_code,emp_name,emp_desg,punch_email,emp_status,isnull(IsPunch_App,0) IsPunch_App from Emp_Data where Branch='RHSales' --and emp_status !='Y' 

	

	
END

GO
/****** Object:  StoredProcedure [dbo].[spGet_Google_Employee]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGet_Google_Employee]      
@email varchar(100)=null   
,@name varchar(100)=null   
,@Id bigint=0
,@region varchar(100)  
as      
begin   

 set @region = (case when @region='West' then 'All' else @region end);
  if(@email is not null)
  begin
  set @email=(select SUBSTRING(@email,0, CHARINDEX('@',@email,0)))  
  end
  
  if(@Id !=0)    
   begin       
        select * from vwGoogleEmployee where Gpkid=@Id;    
        --select 1  
   end
   else if(@email is not null and @name is null)
   begin
      select * from vwGoogleEmployee where G_Email=@email and (G_region=@region or @region='All'); 
     -- select 2     
   end
   else if(@email is null and @name is not null)
   begin
     select * from vwGoogleEmployee where (G_region=@region or @region='All') and G_Fname like('%'+@name +'%') or G_Lname like('%'+@name +'%');  
    -- select 3
   end
   else if(@email is null and @name is null and @Id=0)
   begin
     select * from vwGoogleEmployee where 0=1  
   --  select 4
   end

end
GO
/****** Object:  StoredProcedure [dbo].[spGetAgentId_compName]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[spGetAgentId_compName]              
        
@searchKey varchar(100)        
,@empType int=null     
,@empcode int=null        
as              
begin            
     
select       
   id,      
     icust,      
          ISNULL(name,'NotAvl') as name,      
          ISNULL(agentId,'NotAvl') as agentId,     
          ISNULL(contact,'NotAvl') as contact,       
          ISNULL(salesPerson,'NotAvl') as salesPerson,       
          ISNULL(salesPersonCode,'NotAvl') as salesPersonCode,             
          ISNULL(accountHandlingPerson,'NotAvl') as accountHandlingPerson,                   
          ISNULL(phoneNo,'NotAvl') as phoneNo,      
          ISNULL(area,'NotAvl') as area,      
          ISNULL(emailId,'NotAvl') as emailId,            
          ISNULL(customerType,'NotAvl') as customerType,               
          ISNULL(ownerName,'NotAvl') as ownerName,                 
         ISNULL(business,'NotAvl') as business,                  
         ISNULL(online_cr,'0.0') as online_cr,                 
         ISNULL(offline_cr,'0.0') as offline_cr,                 
         ISNULL(compitator,'NotAvl') as compitator,                   
         ISNULL(address,'NotAvl') as address                      
           from tblAgentRecord where name like(@searchKey+'%') and (ltrim(rtrim(accountHandlingPerson))=@empcode or @empcode=NUll);       

end
GO
/****** Object:  StoredProcedure [dbo].[spGetLastPunchEntry]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGetLastPunchEntry]        
 @empCode varchar(50)        
,@flag int output      
as        
begin        
declare @NoOfPunch bigint;      
declare @TranDate datetime;          
set @NoOfPunch = (select COUNT(*) from dbo.trnpunchtime a where CAST(a.Trndate as date)=CAST(GETDATE() as date) and fk_emp_code= @empCode)       
if(@NoOfPunch > 1)      
begin      
 set @flag=1;      
select top 1 a.Trndate  from dbo.trnpunchtime a        
where CAST(a.Trndate as date)=CAST(GETDATE() as date) and fk_emp_code=@empCode       
order by Trndate desc 
   
end      
else      
begin      
 
set @flag=2;      
 
end      
end


GO
/****** Object:  StoredProcedure [dbo].[spGetPunchDataForPush]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGetPunchDataForPush]
as
begin
  select [Pk_id],[fk_emp_code],[Trndate],emp.Company_Flag from [dbo].[trnpunchtime] a
  inner join Emp_Data emp
  on a.fk_emp_code=emp.emp_code
  where a.status=0 and a.fk_emp_code not like 'J%'
end
GO
/****** Object:  StoredProcedure [dbo].[spGetRHPunchData]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetRHPunchData]--[spGetRHPunchData] '700270','1 may 2018','30 July 2018'
	-- Add the parameters for the stored procedure here 
	@empCode varchar(10)=''
,@fromDate date
,@toDate date
--,@admincode varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	  select
      p.emp_name +'-'+ p.emp_code as Employee,min(Replace(Location,',','')) InLocation, min([PunchDate]) as PunchIn, max(PunchOutDate) as PunchOut, 
 max(OutLocation)  OutLocation,[date]  from
  [PunchIN_OUT] l
  inner join Emp_Data p on p.emp_code=l.empcode
  --where date=@from and date=@toDate
where  	 CAST([Date] as date) between CAST(@fromDate as date)   and @toDate and (empcode=@empCode or @empCode='')
and Branch='RHSales'
group by Date ,emp_name,emp_code
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[spGetSingleRecord_RHPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetSingleRecord_RHPL]
	-- Add the parameters for the stored procedure here	
@empcode varchar(50)=null,
@EmpName varchar(50)=null,
@BranchName varchar(50)=null,
@Action varchar(100)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--select * from emp_data where Company_Flag='RHPL'
	If @Action='GetFilteredRecord'
	Begin
		If exists(select emp_code,sanct_email as ReporteeEmailId,Sanct_Empcode_BY as ReporteeEmployeeId,ApprovalEmailId,ApprovalEmployeeId from emp_data where emp_code=@empcode and Company_Flag='RHPL')
		Begin
			Select emp_code,emp_name,emp_desg,emp_dept,email as EmpEmailId,sanct_email as ReporteeEmailId,Sanct_Empcode_BY as ReporteeEmployeeId,ApprovalEmailId,ApprovalEmployeeId from emp_data Where emp_code=@empcode and Company_Flag='RHPL'
		End
	End
	Else If @Action='GetAllRecord'
		Begin
			Select emp_code,emp_name,emp_desg,emp_dept,email as EmpEmailId,sanct_email as ReporteeEmailId,Sanct_Empcode_BY as ReporteeEmployeeId,ApprovalEmailId,ApprovalEmployeeId from emp_data Where isActive='A' and Company_Flag='RHPL'
		End
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserDetailsForSalesTrackerAndroid_APIS]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[spGetUserDetailsForSalesTrackerAndroid_APIS]
  @empcode varchar(50) 
 as
 begin 
 -- Select * From [dbo].[tblEmpData] where empCode=@empcode
  select top 1 emp_name as name, emp_desg as designation,
  case when emp_code like 'J%'  then 'JOD-Sales' else emp_dept end as department from Emp_Data where emp_code=@empcode order by emp_id desc
 end
GO
/****** Object:  StoredProcedure [dbo].[spInsertPunch]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spInsertPunch]
@empcode varchar(50)
as
begin
declare @punchDate datetime;
set @punchDate = GETDATE()
 insert into  TrnPunchTime(fk_emp_code,DeptccCode,TrnDate) values (@empcode ,NULL,@punchDate) 
 select  @punchDate   as pinchDate,SCOPE_IDENTITY()   
end
GO
/****** Object:  StoredProcedure [dbo].[spLogIntranetApisErrors]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[spLogIntranetApisErrors]
@exception varchar(500)
,@exceptionDetails varchar(max)
,@ApplicationType varchar(500)
as
begin
 insert into [dbo].[tblIntranAPIsErrorLog]([Exception],[ExceptionDetails],[ApplicationType])
  values(@exception,@exceptionDetails,@ApplicationType)
end

GO
/****** Object:  StoredProcedure [dbo].[spPunchInInsert]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spPunchInInsert] 
	-- Add the parameters for the stored procedure here
 @location varchar(max),          
 @lang float,          
 @lat float,                             
 @empcode varchar(10)       
,@TrnDate datetime  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into PunchIN_OUT([EmpCode]
           ,[Latitude]
           ,[Longitude]
           ,[Location]
           ,[PunchDate]) values(@empcode,@lat,@lang,@location,@TrnDate)
	select [punch_email] as reporteeEmail,emp_name as empName from Emp_Data where emp_code=@empCode  and   [punch_email] is not null
END

GO
/****** Object:  StoredProcedure [dbo].[spPunchOut]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spPunchOut]
 @empCode varchar(50)  
as
begin

 insert into dbo.trnpunchtime(fk_emp_code,Trndate) values(@empCode,GETDATE());    
  
end
GO
/****** Object:  StoredProcedure [dbo].[spPunchOutInsert]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spPunchOutInsert] 
	-- Add the parameters for the stored procedure here
 @location varchar(max),          
 @lang float,          
 @lat float,                             
 @empcode varchar(10)       
,@TrnDate datetime  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into PunchIN_OUT([EmpCode]
           ,[Latitude]
           ,[Longitude]
          ,[OutLocation]
          
          
           ,[PunchOutDate]) values(@empcode,@lat,@lang,@location,@TrnDate)

	select [punch_email] as reporteeEmail,emp_name as empName from Emp_Data where emp_code=@empCode  --and   [punch_email] is not null
END

GO
/****** Object:  StoredProcedure [dbo].[spPushPunch_RTTIPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spPushPunch_RTTIPL]
as
begin
  --begin try
  -- begin tran
        insert into [49.248.38.90].[RTTIPL].[dbo].[trnpunchtime](fk_emp_code,Trndate)
		select fk_emp_code,Trndate from [dbo].[trnpunchtime] where status=0;
		
		update trnpunchtime set status=1 where status=0;
  -- commit tran
  --end try
  --begin catch
  --rollback tran
  
  -- DECLARE @ErrorMessage NVARCHAR(4000);  
  --  DECLARE @ErrorSeverity INT;  
  --  DECLARE @ErrorState INT;  

  --  SELECT   
  --      @ErrorMessage = ERROR_MESSAGE(),  
  --      @ErrorSeverity = ERROR_SEVERITY(),  
  --      @ErrorState = ERROR_STATE();  

  --  -- Use RAISERROR inside the CATCH block to return error  
  --  -- information about the original error that caused  
  --  -- execution to jump to the CATCH block.  
  --  RAISERROR (@ErrorMessage, -- Message text.  
  --             @ErrorSeverity, -- Severity.  
  --             @ErrorState -- State.  
  --             );  
  --end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spPushUpdate]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE Procedure [dbo].[spPushUpdate]
@ID  bigint
As
begin
     
      
     update [Intranet].[dbo].[MenuDesc]
	 set pushDate=getdate()
   
  where pkid=@ID
 
  end
GO
/****** Object:  StoredProcedure [dbo].[spremoveUserRetail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spremoveUserRetail]
	-- Add the parameters for the stored procedure here
	@ecode varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	Declare @IsSales_Web bit;

	select @IsSales_Web=IsSales_Web from  Emp_Data where emp_code=@ecode

    -- Insert statements for procedure here

	if(@IsSales_Web=0)
	update 
	 Emp_Data
	 set IsSales_Web=1
	 where emp_code=@ecode
	else
	update 
	 Emp_Data
	 set IsSales_Web=0
	 where emp_code=@ecode
	  
END

GO
/****** Object:  StoredProcedure [dbo].[spResetRBTUserPassword]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spResetRBTUserPassword]
@empCode varchar(20)

as begin

update Emp_Data set password='reset@123',status='D' where emp_code=@empCode
	
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmpRHPLData]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateEmpRHPLData]
	-- Add the parameters for the stored procedure here
	@empcode varchar(50),
	@ApprovalEmailId varchar(50),
	@ApprovalEmployeeId varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
	if exists(select emp_code from emp_data where emp_code=@empcode)
	begin 
	  if exists(select emp_code from emp_data where emp_code=@empcode and ApprovalEmployeeId=@ApprovalEmployeeId and ApprovalEmailId=@ApprovalEmailId)
	  begin 
	  --alredy exists or
	  select 1
	end
	else if not exists(select emp_code from emp_data where emp_code=@ApprovalEmployeeId)
	begin 
	--Approval id not exists
	select 2
	end
	else
	 begin 
	  --Updated 
	 update emp_data set ApprovalEmailId=@ApprovalEmailId , ApprovalEmployeeId=@ApprovalEmployeeId
	  where emp_code=@empcode 
	 select 3
	end
	end
	else
	begin 
	--Error or empCode does not exists
	select 4
	end
	
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateGCMId]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[spUpdateGCMId]
     @empcode varchar(50)
	 ,@gcmId varchar(max)
  as
  begin
  update [dbo].[Emp_Data]
  set [GCM_ID]=@gcmId
  where [emp_code]=@empcode
  end
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePasswordIntra]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatePasswordIntra]  
 
 @empCode varchar(50)

AS    
     begin       
     update dbo.Emp_Data  
     set password = 'reset@123'  
     where  emp_code =  @empCode;  
     
    
  end 

GO
/****** Object:  StoredProcedure [dbo].[spUpdatePuchStatus]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create proc [dbo].[spUpdatePuchStatus]
 @pkId bigint
as
begin
  update [dbo].[trnpunchtime] set status=1
  where [Pk_id]=@pkId
end
GO
/****** Object:  StoredProcedure [dbo].[srchemail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srchemail]
	-- Add the parameters for the stored procedure here
	@email  varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--IF (@email != '' )
--  BEGIN
  SELECT [emp_name],[email_id],[emp_mob],[branch_name],[emp_region],[emp_domain],emp_pass,emp_code,emp_desg
  FROM [Intranet].[dbo].[Emp_Master] , [Intranet].[dbo].[Branch_Detail]
  WHERE  
  [Emp_Master].emp_branch = [Branch_Detail].branch_id
  and [email_id] = @email
  
  select p_prodcut from Permission where emp_id=@email
-- END
--ELSE
--  BEGIN
 
-- SELECT [emp_name],[email_id],[emp_mob],[emp_desg],[emp_branch],[emp_region],[emp_domain]
--  FROM [Intranet].[dbo].[Emp_Master]
  
--  WHERE  [email_id] = @email
--  END
END
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_REPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_REPL]    Script Date: 7/11/2017 10:53:49 AM ******/

CREATE procedure [dbo].[stp_Emp_REPL]
As
              ---------RIYA EDUCATION PVT LTD ------------

--USE Intranet
--SET NOCOUNT ON
 --go

 IF OBJECT_ID ('tempdb..#Emp_Master111') IS NOT NULL
   DROP table #Emp_Master111

 --Select * from [Emp_Data_Test]
 -- Alter table [Emp_Data_Test]
 --Add Company_Flag Varchar(100)

CREATE TABLE #Emp_Master111
(
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) ,---NOT NULL primary key,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](1) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) DEFAULT ('N'),
	EMAIL VARCHAR(50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](15) DEFAULT ('reset@123'),
	[inserteddt] [date]  DEFAULT GETDATE() ,
	[isActive] [char](1) DEFAULT ('A'),
	[status] [char] (1) DEFAULT ('D'),
    [salescorp] [char](1) NULL   DEFAULT ('N'),
	[Meet_Assist] [char](1) NULL   DEFAULT ('N'),
	[salesretail] [char](1) NULL  DEFAULT ('N'),
	[IMEI] [varchar](150) NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	AccountNo varchar(20) null,
	fk_unit varchar(20) null,
	region_code tinyint,
	Company_Flag Varchar(100),
	[sole code] Varchar(10)
	)
	
---drop table #Emp_Master123

INSERT INTO #Emp_Master111
        (
			emp_code,			
			emp_name,
			emp_phn,
			[Resi_phn],
			[Office_phn]	,
			emp_dept,			
			emp_desg,
			emp_status,
			emp_dob,	
			emp_doj,
			EMAIL,
			[Personal_email],
			Sanct_Empcode_BY,
			AccountNo,
			fk_unit,
			region_code,
			Company_Flag,
			[sole code]
		)
		
		SELECT 
			   pk_emp_code,
			   first_name + ' ' + COALESCE(last_name,''),
			   mobile_phone,
			   resi_phone,
			   office_phone ,
			   dept.dept_desc,	
			   desg.desig_desc,	 
			   Finalized ,		
			   REPLACE(CONVERT(NVARCHAR,CAST(dob AS DATETIME), 6), ' ', '-') dob ,
			   REPLACE(CONVERT(NVARCHAR,CAST(doj AS DATETIME), 6), ' ', '-') doj
		       ,EMAIL,
			   persemail,
			   san.[fk_Sanc_empID],
			   a.AccountNo,
			   fk_unit,
			   loc.fk_region_code,
			   'REPL',
			   A.Fk_BranchCode as [sole code]
		 FROM [49.248.38.90].REPL.[dbo].[MstEmployee] 
		  left join [49.248.38.90].REPL.[dbo].[MstDesig] desg    ON desg.pk_desig = fk_desig_code
		  left join [49.248.38.90].REPL.[dbo].[MstDept] dept     ON dept.pk_dept = fk_dept_code 
		  left JOIN [49.248.38.90].REPL.[dbo].[SanctionDetails] san ON [fk_emp_id]=pk_emp_code
		  left JOIN [49.248.38.90].REPL.[dbo].[EmpBankAccNo] A   ON a.fk_empcode=pk_emp_code
		  LEFT JOIN [49.248.38.90].REPL.[dbo].[MstLocation] loc  ON fk_loc_code =loc.pk_loc_code

--Select * from #Emp_Master111

     UPDATE #Emp_Master111
     SET   sanct_email=e.email
     FROM  [49.248.38.90].[REPL].[dbo].[MstEmployee] e
     where e.pk_emp_code COLLATE Latin1_General_CI_AI =#Emp_Master111.Sanct_Empcode_BY



   	update A
	set  A.emp_name = B.emp_name,
		 A.emp_status = B.emp_status,
	     A.AccountNo = B.AccountNo,
	     A.emp_desg = B.emp_desg,
	     A.fk_unit = B.fk_unit,
         A.emp_phn = B.emp_phn,
	     A.Resi_phn = B.Resi_phn,
	     A.Office_phn = B.Office_phn,
	     A.Sanct_Empcode_BY = B.Sanct_Empcode_BY,
	     A.sanct_email = B.sanct_email,
	     A.email = B.EMAIL,
	     A.Personal_email= B.Personal_email,
		 A.[sole code]=B.[sole code]
	FROM [Intranet].[dbo].[Emp_Data] A
	inner join #Emp_Master111 B
   ON ( A.emp_code COLLATE Latin1_General_CI_AI = B.[emp_code] AND A.Company_Flag COLLATE Latin1_General_CI_AI =B.Company_Flag )


	
INSERT 
   into [Intranet].[dbo].[Emp_Data]
    ( [emp_code]
    ,[emp_name]
    ,[emp_phn]
	,[Resi_phn]
	,[Office_phn]	
	,[emp_desg]
    ,[emp_dept]
    ,[emp_status]
    ,[emp_dob]
    ,[emp_doj]
    ,[Visa]
	,[email]
	,[Personal_email]
    ,[password]
    ,inserteddt
    ,isActive
    ,[status]
    ,[salescorp] 
    ,[Meet_Assist] 
    ,[salesretail]
    ,[IMEI] 
    ,[Sanct_Empcode_BY] 
    ,[sanct_email] 
    ,[AccountNo]
    ,[fk_unit]
    ,[region_code]
	,[Company_Flag]
	,[sole code]
	)

select
         B.[emp_code]
		,B.[emp_name]
		,B.[emp_phn]
		,B.[Resi_phn]
		,B.[Office_phn]	
		,B.[emp_desg]
		,B.[emp_dept]
		,B.[emp_status]
		,B.[emp_dob]
		,B.[emp_doj]
		,B.[Visa]
		,B.[EMAIL]
		,B.[Personal_email]
		,B.[password]
		,B.inserteddt
		,B.isActive
		,B.[status]
	    ,B.[salescorp] 
		,B.[Meet_Assist] 
		,B.[salesretail]
		,B.[IMEI] 
		,B.[Sanct_Empcode_BY] 
		,B.[sanct_email] 
		,B.[AccountNo]
		,B.[fk_unit]
		,B.[region_code]
		,B.[Company_Flag]
		,B.[sole code]
		from #Emp_Master111 B
		 where B.emp_code COLLATE Latin1_General_CI_AI not in(select emp_code from Intranet.dbo.Emp_Data where Company_Flag='REPL')


	--	Select * from Emp_Data_Test
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RHPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[stp_Emp_RHPL]
As

--Exec sp_addlinkedsrvlogin '49.248.38.90','false','sa','sa','abcd@123456'

                 --RIYA TOURS AND TRAVELS INDIA PVT LTD ----

--use Intranet
--SET NOCOUNT ON
--go

 IF OBJECT_ID ('tempdb..#Emp_Master123') IS NOT NULL
   DROP table #Emp_Master123
   
CREATE TABLE #Emp_Master123
(
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) ,---NOT NULL primary key,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](1) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) DEFAULT ('N'),
	EMAIL VARCHAR(50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](15) DEFAULT ('reset@123'),
	[inserteddt] [date]  DEFAULT GETDATE() ,
	[isActive] [char](1) DEFAULT ('A'),
	[status] [char] (1) DEFAULT ('D'),
    [salescorp] [char](1) NULL   DEFAULT ('N'),
	[Meet_Assist] [char](1) NULL   DEFAULT ('N'),
	[salesretail] [char](1) NULL  DEFAULT ('N'),
	[IMEI] [varchar](150) NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	AccountNo varchar(20) null,
	fk_unit varchar(20) null,
	region_code tinyint,
	Company_Flag Varchar(100),
	[sole code] Varchar(10),
	[Bank_BranchCode] Varchar(100),
	[BankBranchIFSC] Varchar(100),
	[bank_branch] varchar(100)
	)
	
INSERT INTO #Emp_Master123
        (
			emp_code,			
			emp_name,
			emp_phn,
			[Resi_phn],
			[Office_phn]	,
			emp_dept,			
			emp_desg,
			emp_status,
			emp_dob,	
			emp_doj,
			EMAIL,
			[Personal_email],
			Sanct_Empcode_BY,
			AccountNo,
			fk_unit,
			region_code,
			Company_Flag,
			[sole code],
			[Bank_BranchCode],
			[BankBranchIFSC],
			[bank_branch]

		)
		
		SELECT Distinct
		
			   pk_emp_code,
			   first_name + ' ' + COALESCE(last_name,''),
			   mobile_phone,
			   resi_phone,
			   office_phone ,
			   dept.dept_desc,	
			   desg.desig_desc,	 
			   Finalized ,		
			   REPLACE(CONVERT(NVARCHAR,CAST(dob AS DATETIME), 6), ' ', '-') dob ,
			   REPLACE(CONVERT(NVARCHAR,CAST(doj AS DATETIME), 6), ' ', '-') doj
		       ,EMAIL,
			   persemail,
			   san.[fk_Sanc_empID],
			   Acc.AccountNo,
			   fk_unit,
			   loc.fk_region_code,
			   'RHPL',
			   Acc.Fk_BranchCode as [sole code]
			   ,MBR.pk_BranchCode
			   ,branchifsc
			   ,branch


	  FROM     [49.248.38.90].rhpl.[dbo].[MstEmployee] A
		 left join [49.248.38.90].rhpl.[dbo].[MstDesig] desg   ON pk_desig = A.fk_desig_code
		 left join [49.248.38.90].rhpl.[dbo].[MstDept]  dept   ON pk_dept = A.fk_dept_code 
		 left JOIN [49.248.38.90].rhpl.[dbo].[SanctionDetails] san ON san.[fk_emp_id]= A.pk_emp_code
		 left JOIN [49.248.38.90].rhpl.[dbo].[EmpBankAccNo] Acc  ON Acc.fk_empcode= A.pk_emp_code 
		 left join [49.248.38.90].rhpl.[dbo].[MstLocation]  loc  ON A.fk_loc_code = loc.pk_loc_code
		 left join [49.248.38.90].rhpl.[dbo].[mstBranch] MBR on mbr.pk_branchCode=fk_branchCode
		where ISNULL(Acc.AccountNo,'') <> '11530100137010' 

 --select * from [49.248.38.90].rhpl.[dbo].mstBranch order by 2 desc
		--select * from #Emp_Master123 where emp_code='700313'  --'090195'

   UPDATE  A 
   set A.sanct_email= E.email
   FROM  #Emp_Master123 A
   INNER JOIN [49.248.38.90].rhpl.[dbo].[MstEmployee] E
   ON E.pk_emp_code COLLATE Latin1_General_CI_AI =  A.Sanct_Empcode_BY 

    Update Z
   Set Z.emp_phn = E.mobile_phone, Z.Resi_phn=E.resi_phone, Z.Office_phn=E.office_phone
   from [Emp_Data] Z
   inner Join [49.248.38.90].rhpl.[dbo].[MstEmployee] E
   ON Z.emp_code COLLATE Latin1_General_CI_AI =E.pk_emp_code  and Z.Company_Flag='RHPL'
	

  
  update  A 

	set  A.emp_name = B.emp_name,
		 A.emp_status = B.emp_status,
	     A.AccountNo = B.AccountNo,
	     A.emp_desg = B.emp_desg,
	     A.fk_unit = B.fk_unit,
         A.emp_phn = B.emp_phn,
	     A.Resi_phn = B.Resi_phn,
	     A.Office_phn = B.Office_phn,
	     A.Sanct_Empcode_BY = B.Sanct_Empcode_BY,
	     A.sanct_email = B.sanct_email,
	     A.email = B.EMAIL,
	     A.Personal_email= B.Personal_email,
		 A.[sole code]=B.[sole code],
		 A.[Bank_BranchCode]= B.[Bank_BranchCode],
		A.[BankBranchIFSC]=B.[BankBranchIFSC],
		A.[bank_branch]=B.[bank_branch]

		 from [Intranet].[dbo].[Emp_Data] A
		 inner join [#Emp_Master123] B
		 on A.emp_code COLLATE Latin1_General_CI_AI = B.[emp_code] AND A.Company_Flag='RHPL'
 
 INSERT  into  [Intranet].[dbo].[Emp_Data]
   ( 
     [emp_code]
    ,[emp_name]
    ,[emp_phn]
	,[Resi_phn]
	,[Office_phn]	
	,[emp_desg]
    ,[emp_dept]
    ,[emp_status]
    ,[emp_dob]
    ,[emp_doj]
    ,[Visa]
	,[email]
	,[Personal_email]
    ,[password]
    ,inserteddt
    ,isActive
    ,[status]
    ,[salescorp] 
    ,[Meet_Assist] 
    ,[salesretail]
    ,[IMEI] 
    ,[Sanct_Empcode_BY] 
    ,[sanct_email] 
    ,[AccountNo]
    ,[fk_unit]
    ,[region_code]
	,[Company_Flag]
	,isRHFlag
	,[sole code],
	[Bank_BranchCode],
			[BankBranchIFSC],
			[bank_branch]
	)

select 
         B.[emp_code]
		,B.[emp_name]
		,B.[emp_phn]
		,B.[Resi_phn]
		,B.[Office_phn]	
		,B.[emp_desg]
		,B.[emp_dept]
		,B.[emp_status]
		,B.[emp_dob]
		,B.[emp_doj]
		,B.[Visa]
		,B.[EMAIL]
		,B.[Personal_email]
		,B.[password]
		,B.inserteddt
		,B.isActive
		,B.[status]
	    ,B.[salescorp] 
		,B.[Meet_Assist] 
		,B.[salesretail]
		,B.[IMEI] 
		,B.[Sanct_Empcode_BY] 
		,B.[sanct_email] 
		,B.[AccountNo]
		,B.[fk_unit]
		,B.[region_code]
		,B.[Company_Flag]  ,1
		,B.[sole code]
		,[Bank_BranchCode],
			[BankBranchIFSC],
			[bank_branch]
 from #Emp_Master123 B
 where B.emp_code COLLATE Latin1_General_CI_AI not in(select emp_code from Intranet.dbo.Emp_Data where Company_Flag='RHPL')
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RT]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RT]    Script Date: 7/11/2017 10:48:10 AM ******/


CREATE procedure [dbo].[stp_Emp_RT]
As
--Exec sp_addlinkedsrvlogin '49.248.38.90','false','sa','sa','abcd@123456'

--  RIYA TRAVELS ----


 IF OBJECT_ID ( 'tempdb..#Emp_Master17') IS NOT NULL
    DROP table #Emp_Master17

CREATE TABLE #Emp_Master17
(
	 [emp_id]   [int] IDENTITY(1,1) NOT NULL
	,[emp_code] [varchar](20) ---NOT NULL primary key,
	,[emp_name] [varchar](50) NULL
	,[emp_phn]  [varchar](20) NULL
	,[Resi_phn] [varchar](20) NULL
	,[Office_phn] [varchar](20) NULL
	,[emp_desg] [varchar](150) NULL
	,[emp_dept] [varchar](50) NULL
	,[emp_status] [char](1) NULL
	,[emp_dob] [varchar](50) NULL
	,[emp_doj] [varchar](50) NULL
	,[visa]   [char](1) DEFAULT ('N')
	,[EMAIL]  VARCHAR(50) NULL
	,[Personal_email] [varchar](50) NULL
	,[password]   [varchar](15) DEFAULT ('reset@123')
	,[inserteddt] [date]  DEFAULT GETDATE() 
	,[isActive] [char](1) DEFAULT ('A')
	,[status]   [char] (1) DEFAULT ('D')
    ,[salescorp]   [char](1) NULL DEFAULT ('N')
	,[Meet_Assist] [char](1) NULL DEFAULT ('N')
	,[salesretail] [char](1) NULL DEFAULT ('N')
	,[IMEI] [varchar](150) NULL
	,[Sanct_Empcode_BY] [varchar](20) NULL
	,[sanct_email]   [varchar](50) NULL
	,[BranchID] [int] NULL
	,[AccountNo] varchar(20) null
	,[fk_unit] varchar(20) null
	,[region_code] tinyint
	,[Company_Flag] Varchar(100)
	,[sole code] Varchar(10)
	)
	
	
--select * from  drop table #Emp_Master17

INSERT INTO #Emp_Master17
        (
		     [emp_code]			
			,[emp_name]
			,[emp_phn]
			,[Resi_phn]
			,[Office_phn]
			,[emp_dept]			
			,[emp_desg]
			,[emp_status]
			,[emp_dob]
			,[emp_doj]
			,[EMAIL]
			,[Personal_email]
			,[Sanct_Empcode_BY]
			,[AccountNo]
	        ,[fk_unit]
		    ,[region_code]
		    ,[Company_Flag]
			,[sole code]
		) 

		SELECT 
			 pk_emp_code
			,first_name + ' ' + COALESCE(last_name,'')
			,mobile_phone
			,resi_phone
			,office_phone 
			,dept.dept_desc		
			,desg.desig_desc	 
			,Finalized 	
			,REPLACE(CONVERT(NVARCHAR,CAST(dob AS DATETIME), 6), ' ', '-') dob 
			,REPLACE(CONVERT(NVARCHAR,CAST(doj AS DATETIME), 6), ' ', '-') doj
			--EMAIL,san.[fk_Sanc_empID]
		    ,EMAIL
			,persemail
			,san.[fk_Sanc_empID]
			,Acc.AccountNo
			,fk_unit
			,loc.fk_region_code
			,'RT'
			,Acc.Fk_BranchCode as [sole code]
		FROM       [49.248.38.90].[rt].[dbo].[MstEmployee] A
		 left join [49.248.38.90].[rt].[dbo].[MstDesig] desg   ON pk_desig = A.fk_desig_code
		 left join [49.248.38.90].[rt].[dbo].[MstDept]  dept   ON pk_dept = A.fk_dept_code 
		 left JOIN [49.248.38.90].[rt].[dbo].[SanctionDetails] san ON san.[fk_emp_id]= A.pk_emp_code
		 left JOIN [49.248.38.90].[rt].[dbo].[EmpBankAccNo] Acc  ON Acc.fk_empcode= A.pk_emp_code
		 left join [49.248.38.90].[rt].[dbo].[MstLocation]  loc  ON A.fk_loc_code = loc.pk_loc_code
		 where pk_emp_code!='100016'
  --Remove to insert double entry on basis of company flag  
       --where pk_emp_code not in 
	      --                    ( SELECT distinct mrt.pk_emp_code
       --                          FROM [49.248.38.90].[rt].[dbo].[MstEmployee] mrt	
					  --           INNER JOIN   [49.248.38.90].RTTIPL.dbo.[MstEmployee] mri  
					  --           ON mrt.pk_emp_code = mri.pk_emp_code
					  --          )

     UPDATE A
     SET   A.sanct_email= E.email 
     FROM #Emp_Master17 A  
	 Inner Join [49.248.38.90].[rt].[dbo].[MstEmployee] E
      ON E.pk_emp_code COLLATE Latin1_General_CI_AI =A.Sanct_Empcode_BY


	-- Select * from #Emp_Master17


 
  
   

   	update A
	set  A.emp_name = B.emp_name,
		 A.emp_status = B.emp_status,
	     A.AccountNo = B.AccountNo,
	     A.emp_desg = B.emp_desg,
	     A.fk_unit = B.fk_unit,
         A.emp_phn = B.emp_phn,
	     A.Resi_phn = B.Resi_phn,
	     A.Office_phn = B.Office_phn,
	     A.Sanct_Empcode_BY = B.Sanct_Empcode_BY,
	     A.sanct_email = B.sanct_email,
	     A.email = B.EMAIL,
	     A.Personal_email= B.Personal_email,
		 A.[sole code]=B.[sole code]
	from [Intranet].[dbo].[Emp_Data] A
	 Inner Join #Emp_Master17 B

	  ON ( A.emp_code COLLATE Latin1_General_CI_AI = B.[emp_code] AND (A.Company_Flag COLLATE Latin1_General_CI_AI =B.Company_Flag))
	
update [Intranet].[dbo].[Emp_Data]
set [Office_phn]=(select [Office_phn] from [Intranet].[dbo].[Emp_Data] where  emp_code='010001' and 	Company_Flag='RTTIPL')
  where emp_code='010001'
	
INSERT into  [Intranet].[dbo].[Emp_Data]
   ( 
     [emp_code]
    ,[emp_name]
    ,[emp_phn]
	,[Resi_phn]
	,[Office_phn]	
	,[emp_desg]
    ,[emp_dept]
    ,[emp_status]
    ,[emp_dob]
    ,[emp_doj]
    ,[Visa]
	,[email]
	,[Personal_email]
    ,[password]
    ,inserteddt
    ,isActive
    ,[status]
    ,[salescorp] 
    ,[Meet_Assist] 
    ,[salesretail]
    ,[IMEI] 
    ,[Sanct_Empcode_BY] 
    ,[sanct_email] 
    ,[AccountNo]
    ,[fk_unit]
    ,[region_code]
	,[Company_Flag]
	,[sole code]
	)

select  
         B.[emp_code]
		,B.[emp_name]
		,B.[emp_phn]
		,B.[Resi_phn]
		,B.[Office_phn]	
		,B.[emp_desg]
		,B.[emp_dept]
		,B.[emp_status]
		,B.[emp_dob]
		,B.[emp_doj]
		,B.[Visa]
		,B.[EMAIL]
		,B.[Personal_email]
		,B.[password]
		,B.inserteddt
		,B.isActive
		,B.[status]
	    ,B.[salescorp] 
		,B.[Meet_Assist] 
		,B.[salesretail]
		,B.[IMEI] 
		,B.[Sanct_Empcode_BY] 
		,B.[sanct_email] 
		,B.[AccountNo]
		,B.[fk_unit]
		,B.[region_code]
		,B.[Company_Flag] 
		,B.[sole code] 
		from #Emp_Master17 B
 where B.emp_code COLLATE Latin1_General_CI_AI not in (select emp_code from Intranet.dbo.Emp_Data where Company_Flag='RT')

GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RTTIPL]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RTTIPL]    Script Date: 7/11/2017 10:17:09 AM ******/


CREATE procedure [dbo].[stp_Emp_RTTIPL]
As

--Exec sp_addlinkedsrvlogin '49.248.38.90','false','sa','sa','abcd@123456'

                 --RIYA TOURS AND TRAVELS INDIA PVT LTD ----

--use Intranet
--SET NOCOUNT ON
--go

 IF OBJECT_ID ('tempdb..#Emp_Master123') IS NOT NULL
   DROP table #Emp_Master123
   
CREATE TABLE #Emp_Master123
(
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) ,---NOT NULL primary key,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](1) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) DEFAULT ('N'),
	EMAIL VARCHAR(50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](15) DEFAULT ('reset@123'),
	[inserteddt] [date]  DEFAULT GETDATE() ,
	[isActive] [char](1) DEFAULT ('A'),
	[status] [char] (1) DEFAULT ('D'),
    [salescorp] [char](1) NULL   DEFAULT ('N'),
	[Meet_Assist] [char](1) NULL   DEFAULT ('N'),
	[salesretail] [char](1) NULL  DEFAULT ('N'),
	[IMEI] [varchar](150) NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	AccountNo varchar(20) null,
	fk_unit varchar(20) null,
	region_code tinyint,
	Company_Flag Varchar(100),
	[sole code] Varchar(10),
	emp_centre_code Varchar(50)
	)
	
INSERT INTO #Emp_Master123
        (
			emp_code,			
			emp_name,
			emp_phn,
			[Resi_phn],
			[Office_phn]	,
			emp_dept,			
			emp_desg,
			emp_status,
			emp_dob,	
			emp_doj,
			EMAIL,
			[Personal_email],
			Sanct_Empcode_BY,
			AccountNo,
			fk_unit,
			region_code,
			Company_Flag,
			[sole code],
			emp_centre_code
		)
		
		SELECT Distinct
			   pk_emp_code,
			   first_name + ' ' + COALESCE(last_name,''),
			  case when   mobile_phone is null then office_phone
			  else mobile_phone end as mobile_phone,
			   resi_phone,
			   office_phone ,
			   dept.dept_desc,	
			   desg.desig_desc,	 
			   Finalized ,		
			   REPLACE(CONVERT(NVARCHAR,CAST(dob AS DATETIME), 6), ' ', '-') dob ,
			   REPLACE(CONVERT(NVARCHAR,CAST(doj AS DATETIME), 6), ' ', '-') doj
		       ,EMAIL,
			   persemail,
			   san.[fk_Sanc_empID],
			   Acc.AccountNo,
			   fk_unit,
			   loc.fk_region_code,
			   'RTTIPL',
			   Acc.Fk_BranchCode as [sole code],
			   fk_loc_code
	  FROM     [49.248.38.90].rttipl.[dbo].[MstEmployee] A
		 left join [49.248.38.90].rttipl.[dbo].[MstDesig] desg   ON pk_desig = A.fk_desig_code
		 left join [49.248.38.90].rttipl.[dbo].[MstDept]  dept   ON pk_dept = A.fk_dept_code 
		 left JOIN [49.248.38.90].rttipl.[dbo].[SanctionDetails] san ON san.[fk_emp_id]= A.pk_emp_code
		 left JOIN [49.248.38.90].rttipl.[dbo].[EmpBankAccNo] Acc  ON Acc.fk_empcode= A.pk_emp_code 
		 left join [49.248.38.90].rttipl.[dbo].[MstLocation]  loc  ON A.fk_loc_code = loc.pk_loc_code
		where ISNULL(Acc.AccountNo,'') <> '11530100137010' 
 
		--select * from #Emp_Master123 where emp_code='700313'  --'090195'

   UPDATE  A 
   set A.sanct_email= E.email
   FROM  #Emp_Master123 A
   INNER JOIN [49.248.38.90].[rttipl].[dbo].[MstEmployee] E
   ON E.pk_emp_code COLLATE Latin1_General_CI_AI =  A.Sanct_Empcode_BY AND A.Company_Flag='RTTIPL'

   Update Z
   Set Z.emp_phn = E.mobile_phone, Z.Resi_phn=E.resi_phone, Z.Office_phn=E.office_phone
   from [Emp_Data] Z
   inner Join [49.248.38.90].[rttipl].[dbo].[MstEmployee] E
   ON Z.emp_code COLLATE Latin1_General_CI_AI =E.pk_emp_code AND Z.Company_Flag='RTTIPL'
	

  
  update  A 

	set  A.emp_name = B.emp_name,
		 A.emp_status = B.emp_status,
	     A.AccountNo = B.AccountNo,
	     A.emp_desg = B.emp_desg,
	     A.fk_unit = B.fk_unit,
         A.emp_phn = B.emp_phn,
	     A.Resi_phn = B.Resi_phn,
	     A.Office_phn = B.Office_phn,
	     A.Sanct_Empcode_BY = B.Sanct_Empcode_BY,
	     A.sanct_email = B.sanct_email,
	     A.email = B.EMAIL,
	     A.Personal_email= B.Personal_email,
		 A.[sole code]=B.[sole code],
		 A.emp_centre_code=B.emp_centre_code
		 from [Intranet].[dbo].[Emp_Data] A
		 inner join [#Emp_Master123] B
		 on A.emp_code COLLATE Latin1_General_CI_AI = B.[emp_code] AND A.Company_Flag COLLATE Latin1_General_CI_AI =B.Company_Flag
 
 INSERT  into  [Intranet].[dbo].[Emp_Data]
   ( 
     [emp_code]
    ,[emp_name]
    ,[emp_phn]
	,[Resi_phn]
	,[Office_phn]	
	,[emp_desg]
    ,[emp_dept]
    ,[emp_status]
    ,[emp_dob]
    ,[emp_doj]
    ,[Visa]
	,[email]
	,[Personal_email]
    ,[password]
    ,inserteddt
    ,isActive
    ,[status]
    ,[salescorp] 
    ,[Meet_Assist] 
    ,[salesretail]
    ,[IMEI] 
    ,[Sanct_Empcode_BY] 
    ,[sanct_email] 
    ,[AccountNo]
    ,[fk_unit]
    ,[region_code]
	,[Company_Flag]
	,[sole code]
	,[emp_centre_code]
	)

select 
         B.[emp_code]
		,B.[emp_name]
		,B.[emp_phn]
		,B.[Resi_phn]
		,B.[Office_phn]	
		,B.[emp_desg]
		,B.[emp_dept]
		,B.[emp_status]
		,B.[emp_dob]
		,B.[emp_doj]
		,B.[Visa]
		,B.[EMAIL]
		,B.[Personal_email]
		,B.[password]
		,B.inserteddt
		,B.isActive
		,B.[status]
	    ,B.[salescorp] 
		,B.[Meet_Assist] 
		,B.[salesretail]
		,B.[IMEI] 
		,B.[Sanct_Empcode_BY] 
		,B.[sanct_email] 
		,B.[AccountNo]
		,B.[fk_unit]
		,B.[region_code]
		,B.[Company_Flag] 
		,B.[sole code]
		,B.[emp_centre_code]
 from #Emp_Master123 B 
 where B.emp_code COLLATE Latin1_General_CI_AI not in(select emp_code from Intranet.dbo.Emp_Data where Company_Flag='RTTIPL')

    

GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RTTIPL_test]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[stp_Emp_RTTIPL]    Script Date: 7/22/2017 2:29:20 PM ******/

CREATE procedure [dbo].[stp_Emp_RTTIPL_test]
As

--Exec sp_addlinkedsrvlogin '49.248.38.90','false','sa','sa','abcd@123456'

                 --RIYA TOURS AND TRAVELS INDIA PVT LTD ----

--use Intranet
--SET NOCOUNT ON
--go


 IF OBJECT_ID ('tempdb..#Emp_Master123') IS NOT NULL
   DROP table #Emp_Master123
   
CREATE TABLE #Emp_Master123
(
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_code] [varchar](20) ,---NOT NULL primary key,
	[emp_name] [varchar](50) NULL,
	[emp_phn] [varchar](20) NULL,
	[Resi_phn] [varchar](20) NULL,
	[Office_phn] [varchar](20) NULL,
	[emp_desg] [varchar](150) NULL,
	[emp_dept] [varchar](50) NULL,
	[emp_status] [char](1) NULL,
	[emp_dob] [varchar](50) NULL,
	[emp_doj] [varchar](50) NULL,
	[visa] [char](1) DEFAULT ('N'),
	EMAIL VARCHAR(50) NULL,
	[Personal_email] [varchar](50) NULL,
	[password] [varchar](15) DEFAULT ('reset@123'),
	[inserteddt] [date]  DEFAULT GETDATE() ,
	[isActive] [char](1) DEFAULT ('A'),
	[status] [char] (1) DEFAULT ('D'),
    [salescorp] [char](1) NULL   DEFAULT ('N'),
	[Meet_Assist] [char](1) NULL   DEFAULT ('N'),
	[salesretail] [char](1) NULL  DEFAULT ('N'),
	[IMEI] [varchar](150) NULL,
	[Sanct_Empcode_BY] [varchar](20) NULL,
	[sanct_email] [varchar](50) NULL,
	[BranchID] [int] NULL,
	AccountNo varchar(20) null,
	fk_unit varchar(20) null,
	region_code tinyint,
	Company_Flag Varchar(100)
	)
	
INSERT INTO #Emp_Master123
        (
			emp_code,			
			emp_name,
			emp_phn,
			[Resi_phn],
			[Office_phn]	,
			emp_dept,			
			emp_desg,
			emp_status,
			emp_dob,	
			emp_doj,
			EMAIL,
			[Personal_email],
			Sanct_Empcode_BY,
			AccountNo,
			fk_unit,
			region_code,
			Company_Flag
		)
		
		SELECT Distinct
			   pk_emp_code,
			   first_name + ' ' + COALESCE(last_name,''),
			   mobile_phone,
			   resi_phone,
			   office_phone ,
			   dept.dept_desc,	
			   desg.desig_desc,	 
			   Finalized ,		
			   REPLACE(CONVERT(NVARCHAR,CAST(dob AS DATETIME), 6), ' ', '-') dob ,
			   REPLACE(CONVERT(NVARCHAR,CAST(doj AS DATETIME), 6), ' ', '-') doj
		       ,EMAIL,
			   persemail,
			   san.[fk_Sanc_empID],
			   Acc.AccountNo,
			   fk_unit,
			   loc.fk_region_code,
			   'RTTIPL'
	  FROM     [49.248.38.90].rttipl.[dbo].[MstEmployee] A
		 left join [49.248.38.90].rttipl.[dbo].[MstDesig] desg   ON pk_desig = A.fk_desig_code
		 left join [49.248.38.90].rttipl.[dbo].[MstDept]  dept   ON pk_dept = A.fk_dept_code 
		 left JOIN [49.248.38.90].rttipl.[dbo].[SanctionDetails] san ON san.[fk_emp_id]= A.pk_emp_code
		 left JOIN [49.248.38.90].rttipl.[dbo].[EmpBankAccNo] Acc  ON Acc.fk_empcode= A.pk_emp_code and Acc.SalTransfer = 'Y' 
		 left join [49.248.38.90].rttipl.[dbo].[MstLocation]  loc  ON A.fk_loc_code = loc.pk_loc_code
	   	where ISNULL(Acc.AccountNo,'') <> '11530100137010' --and Acc.Fk_BranchCode = '532120'
 
	select * from #Emp_Master123 where emp_code in ('313377','313381')  --return--090195'


	--Select * into #Emp_master1 from #Emp_Master123 where AccountNo <> '11530100137010' and 532120
	--Select * from #Emp_master1 where emp_code in ('313377','313381')  return

   UPDATE  A 
   set A.sanct_email= E.email
   FROM  #Emp_Master123 A
   INNER JOIN [49.248.38.90].[rttipl].[dbo].[MstEmployee] E
   ON E.pk_emp_code=  A.Sanct_Empcode_BY




    Update Z
   Set Z.emp_phn = E.mobile_phone, Z.Resi_phn=E.resi_phone, Z.Office_phn=E.office_phone
   from [Emp_Data] Z
   Left Join [49.248.38.90].[rttipl].[dbo].[MstEmployee] E
   ON Z.emp_code=E.pk_emp_code AND Z.emp_code='093824'
	

     Select '#Emp_Master123',* from #Emp_Master123 where emp_code in ('313377','313381')


  MERGE INTO [Intranet].[dbo].[Emp_Data] A   --[Emp_Data]
  USING   [#Emp_Master123] B
   ON ( A.emp_code = B.[emp_code] AND (A.Company_Flag=B.Company_Flag ) )
   WHEN MATCHED THEN

   	update 
	set  A.emp_status = B.emp_status,
	     A.AccountNo = B.AccountNo,
	     A.emp_desg = B.emp_desg,
	     A.fk_unit = B.fk_unit,
         A.emp_phn = B.emp_phn,
	     A.Resi_phn = B.Resi_phn,
	     A.Office_phn = B.Office_phn,
	     A.Sanct_Empcode_BY = B.Sanct_Empcode_BY,
	     A.sanct_email = B.sanct_email,
	     A.email = B.EMAIL,
	     A.Personal_email= B.Personal_email
	
	WHEN NOT MATCHED THEN
		
INSERT 
   ( 
     [emp_code]
    ,[emp_name]
    ,[emp_phn]
	,[Resi_phn]
	,[Office_phn]	
	,[emp_desg]
    ,[emp_dept]
    ,[emp_status]
    ,[emp_dob]
    ,[emp_doj]
    ,[Visa]
	,[email]
	,[Personal_email]
    ,[password]
    ,inserteddt
    ,isActive
    ,[status]
    ,[salescorp] 
    ,[Meet_Assist] 
    ,[salesretail]
    ,[IMEI] 
    ,[Sanct_Empcode_BY] 
    ,[sanct_email] 
    ,[AccountNo]
    ,[fk_unit]
    ,[region_code]
	,[Company_Flag]
	)

Values ( 
         B.[emp_code]
		,B.[emp_name]
		,B.[emp_phn]
		,B.[Resi_phn]
		,B.[Office_phn]	
		,B.[emp_desg]
		,B.[emp_dept]
		,B.[emp_status]
		,B.[emp_dob]
		,B.[emp_doj]
		,B.[Visa]
		,B.[EMAIL]
		,B.[Personal_email]
		,B.[password]
		,B.inserteddt
		,B.isActive
		,B.[status]
	    ,B.[salescorp] 
		,B.[Meet_Assist] 
		,B.[salesretail]
		,B.[IMEI] 
		,B.[Sanct_Empcode_BY] 
		,B.[sanct_email] 
		,B.[AccountNo]
		,B.[fk_unit]
		,B.[region_code]
		,B.[Company_Flag] );





	--drop table   #Emp_Master123

GO
/****** Object:  StoredProcedure [dbo].[testdb]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[testdb]

AS

declare @body1 varchar(4000)
set @body1 = '<head>
<title> Embedded Logo Example</title>
<meta name="Generator" content="EditPlus">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
</head>
<body>
<table><tr><td valign="top" align="left">MyHeader</td></tr>
<tr><td valign="top" align="left"><img src="cid:sqlservercentral_logo.gif" width="235" height="70" border="0" alt=""></td></tr>
</table>
</body>'
EXEC msdb.dbo.sp_send_dbmail 
    @profile_name='dba_automations',
    @recipients='sarang.danish@gmail.com',
    @subject = 'SQl 2008 email test',
    @body = @body1,
    @body_format = 'HTML',
    @query = 'SELECT top 1 * from emp_data',
    @query_result_header = 0,
    @exclude_query_output = 1,
    @append_query_error = 1,
    @attach_query_result_as_file = 1,
    @query_attachment_filename = 'results.txt',
    @query_result_no_padding = 1,
    @file_attachments = 'C:\Users\dbadanish\Pictures\save.png'
GO
/****** Object:  StoredProcedure [dbo].[updateempdata]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateempdata]
	-- Add the parameters for the stored procedure here
	@ID Bigint,
	@ecode varchar(15),
	@Name Varchar(50),
    @email Varchar (50),	
    @branch varchar(50),
    @region Varchar (50) ,
    @domain varchar(30),
    @pass varchar(20)
    
     
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    Declare @branchid bigint
    Select @branchid = branch_id From Branch_Detail where branch_name =@branch
 	UPDATE Emp_Master SET emp_code =@ecode,emp_name = @Name,email_id = @email , emp_branch = @branchid ,emp_region = @region,emp_domain = @domain ,emp_pass=@pass,emp_status = 'A'
 	where emp_id = @ID
	Select 1

END
GO
/****** Object:  StoredProcedure [dbo].[updateempdatapass]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateempdatapass]
	-- Add the parameters for the stored procedure here
	@pass varchar(15),
	@code varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 if exists (select emp_code From Emp_Data where emp_code =@code )
       Begin
       UPDATE Emp_Data SET password = @pass , status = 'A' where emp_code =@code
       Select 1
       END 
END

GO
/****** Object:  StoredProcedure [dbo].[updategdata]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [dbo].[updategdata]        
 @fname varchar(20),        
 @lname varchar(30),        
 @email varchar(50),        
 @rowID bigint,        
 @updatedby bigint        
 ,@G_region varchar(100)=null      
 ,@domain varchar(100)=null   
 ,@branchId bigint=null
 AS        
BEGIN        
 -- SET NOCOUNT ON added to prevent extra result sets from        
 -- interfering with SELECT statements.        
 SET NOCOUNT ON;        
        
    UPDATE G_Riya_Emails SET G_Email = @email ,G_insertedby=@updatedby ,G_Fname=@fname,G_Lname=@lname,        
    G_inserteddate =GETDATE()        
    ,G_region=@G_region    
    ,G_domain=@domain   
    ,G_branch=@branchId
     where Gpkid =@rowID        
    Select 1        
END
GO
/****** Object:  StoredProcedure [dbo].[updatenewpass]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updatenewpass]
	-- Add the parameters for the stored procedure here
	@email varchar(30),
	@pass varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
       if exists (select emp_id From Emp_Master where email_id =@email )
       Begin
       UPDATE Emp_Master SET emp_newpass = @pass , emp_status = 'A' where email_id =@email  
       Select 1
       END 
END

GO
/****** Object:  StoredProcedure [dbo].[updatepass]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updatepass] 
	-- Add the parameters for the stored procedure here
	@ID Bigint,
	@NewPass varchar (30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Emp_Master SET emp_newpass = @NewPass , emp_status = 'A' 
	where emp_id = @ID 
	select 1
	END

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmail]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- EXEC usp_SendEmail

CREATE  PROCEDURE [dbo].[usp_SendEmail]
AS

Declare @email        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)

DECLARE @tableHTML  VARCHAR(8000)
SET @tableHTML =
N'<style type="text/css">h2, body {font-family: Times New Roman, Arial, verdana;}
table{font-size:11px; border-collapse:collapse;font-style: italic;font-weight: bold}
td{background-color:#F1F1F1; border:1px solid black; padding:3px;}
th{background-color:#99CCFF;}</style>'+
N'<h2>DBA Team and Entire Product Team wishes you a very happy birthday and many more to come.</h2>' + 
N'<h1> Hope it’s a good one</h1></table></BODY></HTML>'

print 'TABLE HTML:' 
print @TableHTML


SET @Body_2 = '<html>
<body><BR/>
<BR/>Regards,<BR/>
<BR/>Danish- Products TEAM,<BR/>
Riya Travel & Tours (Ind) Pvt. Ltd.
</body></html>'

--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())

DECLARE rcpt_cursor CURSOR FOR 
select emp_name,emp_desg,emp_dept,Personal_email,email
from emp_data        
WHERE  emp_status='n' and  (Sanct_Empcode_BY in ('700708','700559','700674','023078','313374','023167','700283','023273') 
or fk_unit='alt' or emp_code in ('700559','023078','700708','700674','023037','023242') ) and (   (DATEPART(d, emp_dob) = DATEPART(d, GETDATE()) AND DATEPART(m, emp_dob) = DATEPART(m, GETDATE())))

OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor
INTO @name,@emp_designation,@emp_dept,@personalemail,@email

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

Set @BodyText = @Name
+'  ( DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')' + '' + ' has a birthday today.'

Set @Subject =  'HAPPY Birthday  '+ @Name +'  (  DESIGNATION=  ' + @emp_designation +',DEPARTMENT=  ' + @emp_dept + ')'

SET @body = @Bodytext+@tableHTML+@Body_2  --@Bodytext +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I +@Body_2+
			 

PRINT 'BODY :'
Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'BIRTHDAY@riya.travel',  
@Recipients = @email,
@copy_recipients=@personalemail,
@Blind_copy_recipients ='developers@riya.travel;apps@riya.travel;designers@riya.travel;icm@riya.travel;dba@riya.travel;qa@riya.travel;ketan.hiranandani@riya.travel;rakesh.bahuguna@riya.travel;manasvee.sawant@riya.travel;ashvini.gawde@riya.travel;sudhakar.
s@riya.travel;amol.patil@riya.travel;faizan.shaikh@riya.travel;purav.modi@riya.travel;harshit.gor@riya.travel;seenu.mathew@riya.travel;pranay.kini@riya.travel;sanjay.misal@riya.travel;rajesh.audichya@riya.travel',
@importance='high',
@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject,
@file_attachments = 'C:\Users\dbadanish\Pictures\giphy.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @name,@emp_designation,@emp_dept,@personalemail,@email

END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmail_birthday]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE  PROCEDURE [dbo].[usp_SendEmail_birthday]

AS

Declare @email        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)
declare @emp_doj nvarchar(max)

DECLARE @tableHTML  VARCHAR(8000)
SET @tableHTML =
N'<style type="text/css">h2, body {font-family: Times New Roman, Arial, verdana;}
table{font-size:11px; border-collapse:collapse;font-style: italic;font-weight: bold}
td{background-color:#F1F1F1; border:1px solid black; padding:3px;}
th{background-color:#99CCFF;}</style>' +
N'<h2>DBA Team and entire Product Team wishes you a very happy birthday and many more to come.</h2>' + 
N'<h1>  Hope it’s a good one</h1></table></BODY></HTML>'
print @TableHTML


SET @Body_2 = '<html>
<body><BR/>
<BR/>Regards,<BR/>
				<BR/>Danish- Products TEAM,<BR/>

			   Riya Travel & Tours (Ind) Pvt. Ltd.
			   </body></html>'

--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())

DECLARE rcpt_cursor CURSOR FOR 
	select
       emp_name,emp_desg,emp_dept,Personal_email,
       email,emp_doj
    from emp_data
        
WHERE  emp_status='n' and  (Sanct_Empcode_BY in 
	   ('700708','700559','700674','023078','313374','023167','700283','023273') or fk_unit='alt' or 
	   emp_code in ('700559','023078','700708','700674','023037','023242') ) and (   (DATEPART(d, emp_dob) = DATEPART(d, GETDATE())
    AND DATEPART(m, emp_dob) = DATEPART(m, GETDATE())))
OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor


INTO @name,@emp_designation,@emp_dept,@personalemail,@email,@emp_doj

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

Set @BodyText = @Name
+'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')' + '' + ' has a birthday today.'
 --DBA Team and entire Product Team wishes  ' +'' +''+''+  @Name+'' + '  a very happy birthday.'
Set @Subject =  'HAPPY Birthday  '  + ''+ @Name +'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')'

 SET @body =  --@Bodytext +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I
			  --+@Body_2+
			  @Bodytext+@tableHTML+@Body_2

	Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'BIRTHDAY@riya.travel',  
@Recipients = @email,
@copy_recipients=@personalemail,
@Blind_copy_recipients ='developers@riya.travel;apps@riya.travel;designers@riya.travel;icm@riya.travel;dba@riya.travel;qa@riya.travel;ketan.hiranandani@riya.travel;rakesh.bahuguna@riya.travel;manasvee.sawant@riya.travel;ashvini.gawde@riya.travel;sudhakar.s@riya.travel;amol.patil@riya.travel;faizan.shaikh@riya.travel;purav.modi@riya.travel;harshit.gor@riya.travel;seenu.mathew@riya.travel;pranay.kini@riya.travel;sanjay.misal@riya.travel',
@importance='high',

@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject,
@file_attachments = 'C:\Users\dbadanish\Pictures\giphy.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @name,@emp_designation,@emp_dept,@personalemail,@email,@emp_doj


END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmail_marriageanniversary]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE  PROCEDURE [dbo].[usp_SendEmail_marriageanniversary]

AS

Declare @email        nvarchar(128)
Declare @DOM        nvarchar(128)
Declare @year        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)

DECLARE @tableHTML  VARCHAR(8000)
SET @tableHTML =
N'<style type="text/css">h2, body {font-family: Times New Roman, Arial, verdana;}
table{font-size:11px; border-collapse:collapse;font-style: italic;font-weight: bold}
td{background-color:#F1F1F1; border:1px solid black; padding:3px;}
th{background-color:#99CCFF;}</style>' +
N'<h2>DBA Team and entire Product Team wishes you a very happy MARRIAGE ANNIVERSARY AND many more to come.</h2>' + 
N'<h1>  “Anniversary cheers!”</h1></table></BODY></HTML>'


--print @TableHTML


SET @Body_2 = '<html>
<body><BR/>
<BR/>Regards,<BR/>
				<BR/>Danish- Products TEAM,<BR/>

			   Riya Travel & Tours (Ind) Pvt. Ltd.
			   </body></html>'

--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())

DECLARE rcpt_cursor CURSOR FOR 
	select
       datediff(year,b.dom,getdate()) as year ,a.emp_name,a.emp_desg,a.emp_dept,a.Personal_email,
       a.email
    from emp_data a left join [49.248.38.90].[RTTIPL].[dbo].[MstEmployee] b on a.emp_code=b.pk_emp_code
        
WHERE  
a.emp_status='n' and  (a.Sanct_Empcode_BY in 
	   ('700708','700559','700674','023078','313374','023167','700283','023273') or a.fk_unit='alt' or 
	   a.emp_code in ('700559','023078','700708','700674','023037') ) and (   (DATEPART(d, b.dom) = DATEPART(d, GETDATE())
    AND DATEPART(m, b.dom) = DATEPART(m, GETDATE())))
OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor


INTO @year,@name,@emp_designation,@emp_dept,@personalemail,@email

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

Set @BodyText = @Name
+'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')' + '' + ' has completed ' + @year + '  years of 
togetherness'
 --DBA Team and entire Product Team wishes  ' +'' +''+''+  @Name+'' + '  a very happy birthday.'
Set @Subject =  'HAPPY MARRIAGE ANNIVERSARY  '  + ''+ @Name +'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')'

 SET @body =  --@Bodytext +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I
			  --+@Body_2+
			  @Bodytext+@tableHTML+@Body_2

	Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'WISHES@riya.travel',
--@Recipients = 'DBA@RIYA.TRAVEL',  
@Recipients = @email,
@copy_recipients=@personalemail,
@Blind_copy_recipients ='developers@riya.travel;apps@riya.travel;designers@riya.travel;icm@riya.travel;dba@riya.travel;qa@riya.travel;ketan.hiranandani@riya.travel;rakesh.bahuguna@riya.travel;manasvee.sawant@riya.travel;ashvini.gawde@riya.travel;sudhakar.s@riya.travel;amol.patil@riya.travel;faizan.shaikh@riya.travel;purav.modi@riya.travel;harshit.gor@riya.travel;seenu.mathew@riya.travel;pranay.kini@riya.travel;sanjay.misal@riya.travel;rajesh.audichya@riya.travel',
@importance='high',

@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject,
@file_attachments = 'C:\Users\dbadanish\Pictures\GIPHYMARRIAGE.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @YEAR,@name,@emp_designation,@emp_dept,@personalemail,@email


END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmail_workanniversary]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SendEmail_workanniversary]

AS

Declare @email        nvarchar(128)
Declare @DOM        nvarchar(128)
Declare @year        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)

DECLARE @tableHTML  VARCHAR(8000)
SET @tableHTML =
N'<style type="text/css">h2, body {font-family: Times New Roman, Arial, verdana;}
table{font-size:11px; border-collapse:collapse;font-style: italic;font-weight: bold}
td{background-color:#F1F1F1; border:1px solid black; padding:3px;}
th{background-color:#99CCFF;}</style>' +
N'<h2>DBA Team and entire Product Team wishes you a very happy WORK  ANNIVERSARY AS  A RIYA EMPLOYEE.</h2>' + 
N'<h1>  “CONGRATULATIONS!”</h1></table></BODY></HTML>'


--print @TableHTML


SET @Body_2 = '<html>
<body><BR/>
<BR/>Regards,<BR/>
				<BR/>Danish- Products TEAM,<BR/>

			   Riya Travel & Tours (Ind) Pvt. Ltd.
			   </body></html>'

--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())

DECLARE rcpt_cursor CURSOR FOR 
	select
       datediff(year,b.doA,getdate()) as year ,a.emp_name,a.emp_desg,a.emp_dept,a.Personal_email,
       a.email
    from emp_data a left join [49.248.38.90].[RTTIPL].[dbo].[MstEmployee] b on a.emp_code=b.pk_emp_code
        
WHERE  
a.emp_status='n' and  (a.Sanct_Empcode_BY in 
	   ('700708','700559','700674','023078','313374','023167','700283','023273') or a.fk_unit='alt' or 
	   a.emp_code in ('700559','023078','700708','700674','023037') ) and (   (DATEPART(d, b.doa) = DATEPART(d, GETDATE())
    AND DATEPART(m, b.doa) = DATEPART(m, GETDATE())))
OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor


INTO @year,@name,@emp_designation,@emp_dept,@personalemail,@email

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

Set @BodyText = @Name
+'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')' + '' + ' has completed ' + @year + '  years  in 
RIYA'
 --DBA Team and entire Product Team wishes  ' +'' +''+''+  @Name+'' + '  a very happy birthday.'
Set @Subject =  'HAPPY WORK ANNIVERSARY  '  + ''+ @Name +'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')'

 SET @body =  --@Bodytext +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I
			  --+@Body_2+
			  @Bodytext+@tableHTML+@Body_2

	Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'WISHES@riya.travel',
--@Recipients = 'DBA@RIYA.TRAVEL',  
@Recipients = @email,
@copy_recipients=@personalemail,
@Blind_copy_recipients ='developers@riya.travel;apps@riya.travel;designers@riya.travel;icm@riya.travel;dba@riya.travel;qa@riya.travel;ketan.hiranandani@riya.travel;rakesh.bahuguna@riya.travel;manasvee.sawant@riya.travel;ashvini.gawde@riya.travel;sudhakar.
s@riya.travel;amol.patil@riya.travel;faizan.shaikh@riya.travel;purav.modi@riya.travel;harshit.gor@riya.travel;seenu.mathew@riya.travel;pranay.kini@riya.travel;sanjay.misal@riya.travel;rajesh.audichya@riya.travel',
@importance='high',

@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject,
@file_attachments = 'C:\Users\dbadanish\Pictures\GIPHYwork.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @YEAR,@name,@emp_designation,@emp_dept,@personalemail,@email


END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmailTEST]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE  PROCEDURE [dbo].[usp_SendEmailTEST]

AS

Declare @email        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)
declare @Body_text nvarchar(max)

SET @body_text = @name +
'<html><body>
<p> <B>HAS BIRTHDAY TODAY</B>-<BR> ,</p>


<b>WE WISH YOU A VERY HAPPY BIRTHDAY </b>- <br>'


Set @Body_2=''
SET @Body_2 = '<BR/>Regards,<BR/>
				<BR/>Danish- Products TEAM,<BR/>

			   Riya Travel & Tours (Ind) Pvt. Ltd.
			   </body></html>'

--Set @Body_2=''
--SET @Body_2 = '<html><img src="C:\Users\dbadanish\Pictures\giphy.gif">
--<BR/>Regards,<BR/>
--				<BR/>Danish- Products TEAM,<BR/>
--
--			   Riya Travel & Tours (Ind) Pvt. Ltd.
--			   </body></html>'
--
--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())

DECLARE rcpt_cursor CURSOR FOR 
	select
       emp_name,emp_desg,emp_dept,Personal_email,
       email
    from bkp_atlanta_empdata
        
WHERE  (Sanct_Empcode_BY in 
	   ('700708','700559','700674','023078','313374','023167','700283','023273') or fk_unit='alt' or 
	   emp_code in ('700559','023078','700708','700674','023037') and emp_status='n') and (   (DATEPART(d, emp_dob) = DATEPART(d, GETDATE()+1)
    AND DATEPART(m, emp_dob) = DATEPART(m, GETDATE()+1)))
OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor


INTO @name,@emp_designation,@emp_dept,@personalemail,@email

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

--Set @BodyText = @Name + '' + ' has a birthday today.
-- DBA Team and entire Product Team wishes  ' +'' +''+''+  @Name+'' + '  a very happy birthday.'
Set @Subject =  'HAPPY Birthday  '  + ''+ @Name

 SET @body =  @Body_text +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I
			  +@Body_2

	Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'BIRTHDAY@riya.travel',  
@Recipients = @email,
@copy_recipients=@personalemail,
@Blind_copy_recipients ='dsevents.in@gmail.com',

@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject
--@file_attachments = 'C:\Users\dbadanish\Pictures\giphy.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @name,@emp_designation,@emp_dept,@personalemail,@email


END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
/****** Object:  StoredProcedure [dbo].[usp_SendEmailtest123]    Script Date: 17/10/2025 4:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE  PROCEDURE [dbo].[usp_SendEmailtest123]

AS

Declare @email        nvarchar(128)
Declare @personalemail        nvarchar(128)
Declare @name         nvarchar(128)
Declare @Date         date
declare @emp_designation as nvarchar(128)
declare @emp_dept as nvarchar(128)
declare @Body nVARCHAR(MAX)
declare @Body_2 nvarchar(max)


Set @Body_2=''
SET @Body_2 = '<html>@emp_dept
<body><BR/><img src="C:\Users\dbadanish\Pictures\giphy.gif">
<BR/>Regards,<BR/>
				<BR/>Danish- Products TEAM,<BR/>

			   Riya Travel & Tours (Ind) Pvt. Ltd.
			   </body></html>'

--SELECT GETDATE(), Month(GetDate()), Day(GetDate()), Year(GetDate())


DECLARE rcpt_cursor CURSOR FOR 
	select
       emp_name,emp_desg,emp_dept,Personal_email,
       email
    from bkp_atlanta_empdata
        
WHERE  (Sanct_Empcode_BY in 
	   ('700708','700559','700674','023078','313374','023167','700283','023273') or fk_unit='alt' or 
	   emp_code in ('700559','023078','700708','700674','023037') and emp_status='n') and (   (DATEPART(d, emp_dob) = DATEPART(d, GETDATE()+1)
    AND DATEPART(m, emp_dob) = DATEPART(m, GETDATE()+1)))
OPEN rcpt_cursor

FETCH NEXT FROM rcpt_cursor


INTO @name,@emp_designation,@emp_dept,@personalemail,@email

WHILE @@FETCH_STATUS = 0

BEGIN
PRINT @email
Declare @subject nvarchar(255)
Declare @Bodytext nvarchar(512)

Set @BodyText = @Name
+'  (  DESIGNATION=  ' + @emp_designation +',  DEPARTMENT=  ' + @emp_dept + ')' + '' + ' has a birthday today.
 DBA Team and entire Product Team wishes  ' +'' +''+''+  @Name+'' + '  a very happy birthday.'
Set @Subject =  'HAPPY Birthday  '  + ''+ @Name

 SET @body =  @Bodytext +  --@Body_A2 +@Body_C2 + @Body_E + @Body_G  + @Body_I
			  +@Body_2

	Print @body


exec msdb.dbo.sp_send_dbmail
@Profile_Name = 'dba_automations',
@from_address = 'BIRTHDAY@riya.travel',  
--@Recipients = @email,
--@copy_recipients=@personalemail,
@Blind_copy_recipients ='dsevents.in@gmail.com',

@Body = @Body,
@body_format = 'HTML',
@Subject = @Subject,
@file_attachments = 'C:\Users\dbadanish\Pictures\giphy.gif'

FETCH NEXT FROM rcpt_cursor
INTO  @name,@emp_designation,@emp_dept,@personalemail,@email


END 

CLOSE rcpt_cursor

DEALLOCATE rcpt_cursor

GO
