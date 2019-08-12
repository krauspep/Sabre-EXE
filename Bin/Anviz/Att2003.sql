if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[V_Class]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[V_Class]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BasePara]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BasePara]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CheckLog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CheckLog]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Checkinout]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Checkinout]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClientSet]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ClientSet]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DefineField]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DefineField]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Dept]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Dept]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FingerClient]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[FingerClient]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Holiday]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Holiday]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LeaveClass]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LeaveClass]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OPLog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OPLog]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OPinfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OPinfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OutProg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OutProg]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SchTime]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SchTime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Schedule]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Schedule]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StatItems]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StatItems]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TimeTable]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TimeTable]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserLeave]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserLeave]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserShift]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserShift]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserTempShift]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserTempShift]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Userinfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Userinfo]
GO

CREATE TABLE [dbo].[BasePara] (
	[Company] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TwoDay] [smallint] NOT NULL ,
	[NoClockIn] [bit] NOT NULL ,
	[NoClockOut] [bit] NOT NULL ,
	[LateTime] [smallint] NOT NULL ,
	[LeaveTime] [smallint] NOT NULL ,
	[ISOverTime] [bit] NOT NULL ,
	[OverTime] [smallint] NOT NULL ,
	[WorkDayLong] [smallint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CheckLog] (
	[Logid] [int] IDENTITY (1, 1) NOT NULL ,
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Checktime] [datetime] NOT NULL ,
	[Checktype] [nvarchar] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[Sensorid] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[OPFlag] [smallint] NULL ,
	[Whys] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NULL ,
	[OPname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DTime] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Checkinout] (
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CheckTime] [datetime] NOT NULL ,
	[CheckType] [nvarchar] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Sensorid] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ClientSet] (
	[Clientid] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Pwd] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[DTime] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DefineField] (
	[Fieldid] [int] IDENTITY (1, 1) NOT NULL ,
	[FieldName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[FieldValue] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Dept] (
	[Deptid] [int] IDENTITY (1, 1) NOT NULL ,
	[DeptName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SupDeptid] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FingerClient] (
	[Clientid] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Linkmode] [smallint] NOT NULL ,
	[IPaddress] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Holiday] (
	[Holidayid] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BDate] [smalldatetime] NOT NULL ,
	[Days] [smallint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LeaveClass] (
	[Classid] [int] IDENTITY (1, 1) NOT NULL ,
	[Classname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ViewColor] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OPLog] (
	[Logid] [int] IDENTITY (1, 1) NOT NULL ,
	[OPid] [int] NOT NULL ,
	[Optime] [datetime] NOT NULL ,
	[OPlog] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OPinfo] (
	[Opid] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Pwd] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Authority] [nvarchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OutProg] (
	[Progid] [int] IDENTITY (1, 1) NOT NULL ,
	[ProgName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProgPath] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SchTime] (
	[Schid] [int] NOT NULL ,
	[BeginDay] [smallint] NOT NULL ,
	[Timeid] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Schedule] (
	[Schid] [int] IDENTITY (1, 1) NOT NULL ,
	[Schname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Cycles] [smallint] NOT NULL ,
	[Units] [smallint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[StatItems] (
	[Itemid] [int] IDENTITY (1, 1) NOT NULL ,
	[ItemName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Units] [smallint] NOT NULL ,
	[MinUnit] [numeric](18, 1) NOT NULL ,
	[SRControl] [smallint] NOT NULL ,
	[IsAddup] [bit] NOT NULL ,
	[IsTimes] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TimeTable] (
	[Timeid] [int] IDENTITY (1, 1) NOT NULL ,
	[Timename] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Intime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Outtime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BIntime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[EIntime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BOuttime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[EOuttime] [nvarchar] (5) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Latetime] [smallint] NOT NULL ,
	[Leavetime] [smallint] NOT NULL ,
	[WorkDays] [numeric](18, 1) NOT NULL ,
	[Longtime] [smallint] NOT NULL ,
	[MustIn] [bit] NOT NULL ,
	[MustOut] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserLeave] (
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BeginTime] [datetime] NOT NULL ,
	[EndTime] [datetime] NOT NULL ,
	[LeaveClassid] [int] NOT NULL ,
	[Whys] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserShift] (
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Schid] [int] NOT NULL ,
	[BeginDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[EndDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserTempShift] (
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Timeid] [int] NOT NULL ,
	[WorkDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IsOvertime] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Userinfo] (
	[Userid] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Sex] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Pwd] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Deptid] [int] NOT NULL ,
	[Nation] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Brithday] [smalldatetime] NULL ,
	[EmployDate] [smalldatetime] NULL ,
	[Telephone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Duty] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[NativePlace] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IDCard] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[Mobile] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Educated] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Polity] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Specialty] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsAtt] [bit] NOT NULL ,
	[Isovertime] [bit] NOT NULL ,
	[Isrest] [bit] NOT NULL ,
	[Remark] [nvarchar] (250) COLLATE Chinese_PRC_CI_AS NULL ,
	[MgFlag] [smallint] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BasePara] WITH NOCHECK ADD 
	CONSTRAINT [PK_BasePara] PRIMARY KEY  CLUSTERED 
	(
		[Company]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CheckLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_CheckLog] PRIMARY KEY  CLUSTERED 
	(
		[Logid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Checkinout] WITH NOCHECK ADD 
	CONSTRAINT [PK_Checkinout] PRIMARY KEY  CLUSTERED 
	(
		[Userid],
		[CheckTime]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ClientSet] WITH NOCHECK ADD 
	CONSTRAINT [PK_ClientSet] PRIMARY KEY  CLUSTERED 
	(
		[Clientid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DefineField] WITH NOCHECK ADD 
	CONSTRAINT [PK_DefineField] PRIMARY KEY  CLUSTERED 
	(
		[Fieldid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Dept] WITH NOCHECK ADD 
	CONSTRAINT [PK_Dept] PRIMARY KEY  CLUSTERED 
	(
		[Deptid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FingerClient] WITH NOCHECK ADD 
	CONSTRAINT [PK_FingerClient] PRIMARY KEY  CLUSTERED 
	(
		[Clientid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Holiday] WITH NOCHECK ADD 
	CONSTRAINT [PK_Holiday] PRIMARY KEY  CLUSTERED 
	(
		[Holidayid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LeaveClass] WITH NOCHECK ADD 
	CONSTRAINT [PK_LeaveClass] PRIMARY KEY  CLUSTERED 
	(
		[Classid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OPLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_OPLog] PRIMARY KEY  CLUSTERED 
	(
		[Logid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OPinfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_OPinfo] PRIMARY KEY  CLUSTERED 
	(
		[Opid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OutProg] WITH NOCHECK ADD 
	CONSTRAINT [PK_OutProg] PRIMARY KEY  CLUSTERED 
	(
		[Progid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SchTime] WITH NOCHECK ADD 
	CONSTRAINT [PK_SchTime] PRIMARY KEY  CLUSTERED 
	(
		[Schid],
		[BeginDay],
		[Timeid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Schedule] WITH NOCHECK ADD 
	CONSTRAINT [PK_Schedule] PRIMARY KEY  CLUSTERED 
	(
		[Schid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[StatItems] WITH NOCHECK ADD 
	CONSTRAINT [PK_StatItems] PRIMARY KEY  CLUSTERED 
	(
		[Itemid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TimeTable] WITH NOCHECK ADD 
	CONSTRAINT [PK_TimeTable] PRIMARY KEY  CLUSTERED 
	(
		[Timeid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserLeave] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserLeave] PRIMARY KEY  CLUSTERED 
	(
		[Userid],
		[BeginTime]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserShift] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserShift] PRIMARY KEY  CLUSTERED 
	(
		[Userid],
		[Schid],
		[BeginDate],
		[EndDate]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserTempShift] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserTempShift] PRIMARY KEY  CLUSTERED 
	(
		[Userid],
		[Timeid],
		[WorkDate]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Userinfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_Userinfo] PRIMARY KEY  CLUSTERED 
	(
		[Userid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BasePara] WITH NOCHECK ADD 
	CONSTRAINT [DF_BasePara_TwoDay] DEFAULT (0) FOR [TwoDay],
	CONSTRAINT [DF_BasePara_NoClockIn] DEFAULT (0) FOR [NoClockIn],
	CONSTRAINT [DF_BasePara_NoClockOut] DEFAULT (0) FOR [NoClockOut],
	CONSTRAINT [DF_BasePara_LateTime] DEFAULT (60) FOR [LateTime],
	CONSTRAINT [DF_BasePara_LeaveTime] DEFAULT (60) FOR [LeaveTime],
	CONSTRAINT [DF_BasePara_ISOverTime] DEFAULT (0) FOR [ISOverTime],
	CONSTRAINT [DF_BasePara_OverTime] DEFAULT (60) FOR [OverTime],
	CONSTRAINT [DF_BasePara_WorkDayLong] DEFAULT (480) FOR [WorkDayLong]
GO

ALTER TABLE [dbo].[CheckLog] WITH NOCHECK ADD 
	CONSTRAINT [DF_CheckLog_DTime] DEFAULT (getdate()) FOR [DTime]
GO

ALTER TABLE [dbo].[Checkinout] WITH NOCHECK ADD 
	CONSTRAINT [DF_Checkinout_CheckTime] DEFAULT (getdate()) FOR [CheckTime],
	CONSTRAINT [DF_Checkinout_CheckType] DEFAULT (N'I') FOR [CheckType]
GO

ALTER TABLE [dbo].[Dept] WITH NOCHECK ADD 
	CONSTRAINT [DF_Dept_SupDeptid] DEFAULT (0) FOR [SupDeptid],
	CONSTRAINT [IX_Dept] UNIQUE  NONCLUSTERED 
	(
		[SupDeptid],
		[DeptName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FingerClient] WITH NOCHECK ADD 
	CONSTRAINT [DF_FingerClient_Linkmode] DEFAULT (1) FOR [Linkmode]
GO

ALTER TABLE [dbo].[LeaveClass] WITH NOCHECK ADD 
	CONSTRAINT [DF_LeaveClass_ViewColor] DEFAULT (0) FOR [ViewColor],
	CONSTRAINT [IX_LeaveClass] UNIQUE  NONCLUSTERED 
	(
		[Classname]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OPLog] WITH NOCHECK ADD 
	CONSTRAINT [DF_OPLog_Optime] DEFAULT (getdate()) FOR [Optime]
GO

ALTER TABLE [dbo].[OPinfo] WITH NOCHECK ADD 
	CONSTRAINT [DF_OPinfo_Authority] DEFAULT (N'NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN') FOR [Authority]
GO

ALTER TABLE [dbo].[SchTime] WITH NOCHECK ADD 
	CONSTRAINT [DF_SchTime_BeginDay] DEFAULT (0) FOR [BeginDay],
	CONSTRAINT [DF_SchTime_Timeid] DEFAULT (0) FOR [Timeid]
GO

ALTER TABLE [dbo].[Schedule] WITH NOCHECK ADD 
	CONSTRAINT [DF_Schedule_Cycles] DEFAULT (1) FOR [Cycles],
	CONSTRAINT [DF_Schedule_Units] DEFAULT (1) FOR [Units]
GO

ALTER TABLE [dbo].[StatItems] WITH NOCHECK ADD 
	CONSTRAINT [DF_StatItems_Units] DEFAULT (1) FOR [Units],
	CONSTRAINT [DF_StatItems_MinUnit] DEFAULT (1) FOR [MinUnit],
	CONSTRAINT [DF_StatItems_SRControl] DEFAULT (2) FOR [SRControl],
	CONSTRAINT [DF_StatItems_IsAddup] DEFAULT (1) FOR [IsAddup],
	CONSTRAINT [DF_StatItems_IsTimes] DEFAULT (0) FOR [IsTimes]
GO

ALTER TABLE [dbo].[TimeTable] WITH NOCHECK ADD 
	CONSTRAINT [DF_TimeTable_Latetime] DEFAULT (0) FOR [Latetime],
	CONSTRAINT [DF_TimeTable_Leavetime] DEFAULT (0) FOR [Leavetime],
	CONSTRAINT [DF_TimeTable_WorkDays] DEFAULT (1) FOR [WorkDays],
	CONSTRAINT [DF_TimeTable_Longtime] DEFAULT (480) FOR [Longtime],
	CONSTRAINT [DF_TimeTable_MustIn] DEFAULT (1) FOR [MustIn],
	CONSTRAINT [DF_TimeTable_MustOut] DEFAULT (1) FOR [MustOut]
GO

ALTER TABLE [dbo].[UserLeave] WITH NOCHECK ADD 
	CONSTRAINT [DF_UserLeave_LeaveClassid] DEFAULT (1) FOR [LeaveClassid]
GO

ALTER TABLE [dbo].[UserTempShift] WITH NOCHECK ADD 
	CONSTRAINT [DF_UserTempShift_IsOvertime] DEFAULT (0) FOR [IsOvertime]
GO

ALTER TABLE [dbo].[Userinfo] WITH NOCHECK ADD 
	CONSTRAINT [DF_Userinfo_Deptid] DEFAULT (1) FOR [Deptid],
	CONSTRAINT [DF_Userinfo_IsAtt] DEFAULT (1) FOR [IsAtt],
	CONSTRAINT [DF_Userinfo_Isovertime] DEFAULT (1) FOR [Isovertime],
	CONSTRAINT [DF_Userinfo_Isrest] DEFAULT (1) FOR [Isrest],
	CONSTRAINT [DF_Userinfo_MgFlag] DEFAULT (0) FOR [MgFlag]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_Class
AS
SELECT dbo.Schedule.Schid, dbo.Schedule.Schname, dbo.Schedule.Cycles, 
      dbo.Schedule.Units, dbo.SchTime.BeginDay, dbo.SchTime.Timeid, 
      dbo.TimeTable.Timename, dbo.TimeTable.Intime, dbo.TimeTable.Outtime, 
      dbo.TimeTable.BIntime, dbo.TimeTable.EIntime, dbo.TimeTable.BOuttime, 
      dbo.TimeTable.EOuttime, dbo.TimeTable.Latetime, dbo.TimeTable.Leavetime, 
      dbo.TimeTable.WorkDays, dbo.TimeTable.Longtime, dbo.TimeTable.MustIn, 
      dbo.TimeTable.MustOut
FROM dbo.Schedule INNER JOIN
      dbo.SchTime ON dbo.Schedule.Schid = dbo.SchTime.Schid INNER JOIN
      dbo.TimeTable ON dbo.SchTime.Timeid = dbo.TimeTable.Timeid




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

