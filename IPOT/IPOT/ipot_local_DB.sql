USE [IPOT]
GO
/****** Object:  User [ipot]    Script Date: 03/06/2013 11:41:02 ******/
CREATE USER [ipot] FOR LOGIN [ipot] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](30) NULL,
	[EmailId] [varchar](50) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Status] [int] NULL,
	[Usertype] [int] NULL,
	[RegisteredOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[SubCatgID] [int] IDENTITY(1,1) NOT NULL,
	[CatgID] [int] NOT NULL,
	[SubCatgName] [varchar](150) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblResult]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResult](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[TotalQuest] [int] NULL,
	[TotalAnswer] [int] NULL,
	[CorrectAnswer] [int] NULL,
	[UserID] [int] NULL,
	[Result] [int] NULL,
	[Percentage] [float] NULL,
	[Grade] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblQuestionPaper]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQuestionPaper](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[CatgID] [int] NULL,
	[SubCatgID] [int] NULL,
	[UserID] [int] NULL,
	[QuestionNo] [int] NULL,
	[Question] [varchar](3000) NULL,
	[OptionA] [varchar](500) NULL,
	[OptionB] [varchar](500) NULL,
	[OptionC] [varchar](500) NULL,
	[OptionD] [varchar](500) NULL,
	[Answer] [varchar](500) NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL,
	[Isdeleted] [int] NULL,
	[ImageQuestion] [varchar](1000) NULL,
	[Temp] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblevents]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblevents](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[Events] [varchar](4000) NULL,
	[Projects] [varchar](4000) NULL,
	[ParameterValue] [varchar](20) NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CatgID] [int] IDENTITY(1,1) NOT NULL,
	[CatgName] [varchar](150) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_excel]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_excel](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TeamMembers] [varchar](50) NULL,
	[Adhoc] [varchar](50) NULL,
	[AtRisk] [varchar](50) NULL,
	[GenMeetings] [varchar](50) NULL,
	[GenTrainings] [varchar](50) NULL,
	[IdleTime] [varchar](50) NULL,
	[Leave] [varchar](50) NULL,
	[OneonOne] [varchar](50) NULL,
	[OperationMeetings] [varchar](50) NULL,
	[PoInquiries] [varchar](50) NULL,
	[PoInqtimetaken] [varchar](50) NULL,
	[PoTracking] [varchar](50) NULL,
	[PoTracktimetaken] [varchar](50) NULL,
	[PTG] [varchar](50) NULL,
	[QualityAudit] [varchar](50) NULL,
	[GrandTotal] [varchar](50) NULL,
	[Temp] [varchar](50) NULL,
	[Temp1] [varchar](50) NULL,
	[Temp2] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Evaluation]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Evaluation](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NULL,
	[SubCatID] [int] NULL,
	[UserID] [int] NULL,
	[QID] [int] NULL,
	[Answers] [varchar](50) NULL,
	[Status] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL,
	[Temp] [varchar](50) NULL,
	[Temp1] [varchar](50) NULL,
	[Temp2] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Chart]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Chart](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[TID] [int] NULL,
	[TeamMembers] [varchar](50) NULL,
	[Utilization] [varchar](50) NULL,
	[Volume] [varchar](50) NULL,
	[Quality] [varchar](50) NULL,
	[Efficiency] [varchar](50) NULL,
	[Temp] [varchar](50) NULL,
	[Temp1] [varchar](50) NULL,
	[Temp2] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Assign]    Script Date: 03/06/2013 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Assign](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[CatgID] [int] NULL,
	[SubCatgID] [int] NULL,
	[QuestionID] [int] NULL,
	[UserID] [int] NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreatedOn] [varchar](50) NULL,
	[ModifiedOn] [varchar](50) NULL,
	[Isdeleted] [int] NULL,
	[SetTimings] [varchar](50) NULL,
	[temp2] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[GetAliasesById]    Script Date: 03/06/2013 11:41:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetAliasesById]
(
    @userID varchar
)
RETURNS varchar(max)
AS
BEGIN
    declare @output varchar(max)
    select @output = COALESCE(@output + ', ', '') + TeamMembers
    from tbl_Chart
   
    return @output
END
GO
/****** Object:  StoredProcedure [dbo].[usp_user]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_user]
(
    @flag int,
	@Uid int,
    @Username varchar(50),
    @Password varchar(30),
    @EmailId varchar(50),
    @PhoneNo varchar(20),
	@Status int,
	@Usertype int,
	@RegisteredOn varchar(50),
	@ModifiedOn varchar(50)
	)
	
as begin
if(@flag=1)
begin
insert into tblUsers(Username,Password,EmailId,PhoneNo,Status,Usertype,RegisteredOn,ModifiedOn)
values(@Username,@Password,@EmailId,@PhoneNo,@Status,@Usertype,GETDATE(),GETDATE())



end
if(@flag=2)
begin
 delete from tblUsers where Uid=@Uid
end

if(@flag=3)
begin
select * from tblUsers where Usertype=2
end

if(@flag=4)
begin
select * from tblUsers where Usertype=2
end



end
GO
/****** Object:  StoredProcedure [dbo].[usp_uploadexcel]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_uploadexcel]
(
@flag int,
@TID int,
@TeamMembers varchar(50),
@Adhoc varchar(50),
@AtRisk varchar(50),
@GenMeetings varchar(50),
@GenTrainings varchar(50),
@IdleTime varchar(50),
@Leave  varchar(50),
@OneonOne varchar(50),
@OperationMeetings varchar(50),
@PoInquiries varchar(50),
@PoInqTimetaken varchar(50),
@PoTracking varchar(50),
@PoTrackTimetaken varchar(50),
@PTG varchar(50),
@QualityAudit varchar(50),
@GrandTotal varchar(50)

)

as begin

if(@flag=1)

begin

insert into tbl_excel(TeamMembers,Adhoc,AtRisk,GenMeetings,GenTrainings,IdleTime,Leave,OneonOne,OperationMeetings,PoInquiries,PoInqtimetaken,PoTracking,PoTracktimetaken,PTG,QualityAudit,GrandTotal)
values(@TeamMembers,@Adhoc,@AtRisk,@GenMeetings,@GenTrainings,@IdleTime,@Leave,@OneonOne,@OperationMeetings,@PoInquiries,@PoInqTimetaken,@PoTracking,@PoTrackTimetaken,@PTG,@QualityAudit,@GrandTotal)

end

if(@flag=2)

begin

select * from tbl_excel
end

if(@flag=3)

begin

delete from tbl_excel
end

if(@flag=4)

begin

select *, (CONVERT(INT, PoInquiries) + CONVERT(INT, PoTracking)) as Volume from tbl_excel where TID=@TID

select sum(CONVERT(INT, PoInquiries)) + sum(CONVERT(INT, PoTracking)) as TotalPO  from tbl_excel 

end

if(@flag=5)

begin

select *, (CONVERT(INT, Adhoc) + CONVERT(INT, AtRisk)+ CONVERT(INT, GenMeetings)+ CONVERT(INT, GenTrainings)+ CONVERT(INT, OneonOne)+ CONVERT(INT, OperationMeetings)+ CONVERT(INT, PoInquiries)+ CONVERT(INT, PoTracking)+ CONVERT(INT, PTG)+ CONVERT(INT, QualityAudit)) as Utilization from tbl_excel where TID=@TID


DECLARE @Yr SMALLINT
SET  @Yr = @PTG
  
;WITH NumWeeks
AS
(
 SELECT Number + 1 as mth,
 DATEDIFF(day,-1,DATEADD(month,((@Yr-1900)*12)+ Number,0))/7 AS fst,
 DATEDIFF(day,-1,DATEADD(month,((@Yr-1900)*12)+ Number,30))/7  AS lst
 FROM master..spt_values
 WHERE Type = 'P' and Number < 12
)
SELECT DateName(mm,DATEADD(mm,mth,-1)) as [MonthName],
lst - fst + 1 AS [NumberOfWeeks]
FROM NumWeeks;


end


end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Result]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Result]
(
@flag int,
@RID int,
@TotalQuest int,
@TotalAnswer int,
@CorrectAnswer int,
@UserID int,
@Result int,
@Percentage float,
@Grade varchar (10)
)
as begin
if(@flag=1)
begin 

insert into tblResult(RID,TotalQuest,TotalAnswer,CorrectAnswer,UserID,Result,Percentage,Grade)
values(@RID,@TotalQuest,@TotalAnswer,@CorrectAnswer,@UserID,@Result,@Percentage,@Grade)
end

end
GO
/****** Object:  StoredProcedure [dbo].[usp_registration]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_registration]
(
	@flag int,
	@Uid int,
	@Username varchar(50),
	@Password varchar(30),
	@EmailId varchar(50),
	@PhoneNo varchar(20),
	@Status int,
	@Usertype int,
	@RegisteredOn varchar(50),
	@ModifiedOn varchar(50)

)
as begin
if(@flag=1)
begin
insert into tblUsers(Username,Password,EmailId,PhoneNo,Status,Usertype,RegisteredOn,ModifiedOn)
values(@Username,@Password,@EmailId,@PhoneNo,@Status,@Usertype,GETDATE(),@ModifiedOn)
end

if(@flag=2)
begin
select * from tblUsers where Username=@Username and Password=@Password
end
if(@flag=3)
begin
update tblUsers set Password=@Password where Usertype=1
end


if(@flag=4)
begin
select * from tblUsers where Usertype=1 order by RegisteredOn desc 
end


if(@flag=5)
begin
delete from tblUsers where Uid=@Uid
end



if(@flag=6)
begin
update tblUsers set Status=1 where Uid=@Uid
end


if(@flag=7)
begin
update tblUsers set Status=0 where Uid=@Uid
end
end
GO
/****** Object:  StoredProcedure [dbo].[usp_QuestionPaper]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_QuestionPaper]
(
    @flag int,
    @QuestionID int,
	@CatgID int,
	@SubCatgID int,
    @UserID int,
    @QuestionNo int,
    @Question varchar(3000),
    @OptionA varchar(500),
    @OptionB varchar(500),
    @OptionC varchar(500),
    @OptionD varchar(500),
    @Answer varchar(500),
	
    @CreatedBy varchar(10),
	@CreatedOn varchar(50),
	@ModifiedOn varchar(50),
	@Isdeleted int
    
)


as begin
if(@flag=1)
begin
insert into tblQuestionPaper(CatgID,SubCatgID,UserID,QuestionNo,Question,OptionA,OptionB,OptionC,OptionD,Answer,CreatedBy,CreatedOn,ModifiedOn,Isdeleted)
values(@CatgID,@SubCatgID,@UserID,@QuestionNo,@Question,@OptionA,@OptionB,@OptionC,@OptionD,@Answer,'Admin',GETDATE(),GETDATE(),@Isdeleted)
end

if(@flag=2)
begin
select Top 500 Q.CatgID,Q.SubCatgID,Q.Question,Q.QuestionNo,Q.OptionA,Q.OptionB,Q.OptionC,Q.OptionD,Q.QuestionID,A.UserID from tblQuestionPaper Q inner join tbl_Assign A on Q.SubCatgID=A.SubCatgID where A.UserID=@UserID and A.Isdeleted=0
end

if(@flag=3)
begin
select Top 500 Q.CatgID,Q.SubCatgID,Q.Question,Q.QuestionNo,Q.OptionA,Q.OptionB,Q.OptionC,Q.OptionD,Q.QuestionID,A.UserID from tblQuestionPaper Q inner join tbl_Assign A on Q.SubCatgID=A.SubCatgID where A.UserID=@UserID and Q.QuestionNo=@QuestionNo and Q.CatgID=@CatgID and Q.SubCatgID=@SubCatgID and Q.QuestionID=@QuestionID 
end

if(@flag=4)
begin

select * from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID and QuestionNo=@QuestionNo

end

if(@flag=5)
begin
delete  from tblQuestionPaper where QuestionID=@QuestionID
end

if(@flag=6)
begin

update  tblQuestionPaper set QuestionNo=@QuestionNo,Question=@Question,OptionA=@OptionA,OptionB=@OptionB,OptionC=@OptionC,OptionD=@OptionD,Answer=@Answer,ModifiedOn=getdate() where QuestionID=@QuestionID
end

if(@flag=7)
begin

if exists(select QuestionNo from tblQuestionPaper
            where QuestionNo=@QuestionNo and CatgID=@CatgID and SubCatgID=@SubCatgID )    
begin
   declare @temp varchar
   set @temp=1
   select @temp as error
end

else
begin
declare @temp1 varchar
   set @temp1=0
   select @temp1 as error
end
end
if(@flag=8)
begin
select top 1 QuestionNo as FirstID  from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID order by QuestionNo asc
select top 1 QuestionNo as LastID from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID order by QuestionNo desc
select COUNT(QuestionNo) as counts from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID
end


if(@flag=9)
begin

select * from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID and QuestionID=@QuestionID

end


if(@flag=10)
begin
select top 1 QuestionNo as FirstID from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID order by QuestionNo asc
select top 1 QuestionNo as LastID from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID order by QuestionNo desc
select COUNT(QuestionNo) as counts from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID
end

if(@flag=11)
begin

--declare @CatgIDs int

--declare @SubCatgIDs int

--set @CatgIDs=4

--set @SubCatgIDs=14

DECLARE @t1 TABLE (
    ColID   int     IDENTITY,
    Col2    varchar
)

DECLARE @t2 TABLE (
    ColID   int     IDENTITY,
    Col2    varchar
)

INSERT INTO @t1 (Col2) select Answer from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID


INSERT INTO @t2 (Col2) select Answers from tbl_Evaluation where CatID=@CatgID and SubCatID=@SubCatgID


SELECT
    t1.Col2 AS t1Col2,
    t2.Col2 AS t2Col2,
    ISNULL(NULLIF(t1.Col2, t2.Col2), 1) AS MyDesiredResult
FROM @t1 AS t1
JOIN @t2 AS t2 ON t1.ColID = t2.ColID

end

end
GO
/****** Object:  StoredProcedure [dbo].[usp_login]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_login]
(
--@username varchar(50),
--@password varchar(50)

	@Uid int,
	@Username varchar(50),
	@Password varchar(30),
	@EmailId varchar(50),
	@PhoneNo varchar(20),
	@Status int,
	@Usertype int,
	@RegisteredOn varchar(50),
	@ModifiedOn varchar(50)
)
as
begin

if exists(select * from tblUsers where Username=@Username and Password=@Password and Status=1)

return 1

 else
 return 0
  
 end
GO
/****** Object:  StoredProcedure [dbo].[usp_events]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_events]
(
    @flag int,
	@EventId int,
	@Events varchar(4000),
	@Projects varchar(4000),
	@ParameterValue varchar(20),
	@CreatedBy varchar(10),
    @CreatedOn varchar(50),
	@ModifiedOn varchar(50)
	)
	as begin
if(@flag=1)
begin
insert into tblevents(Events,ParameterValue,CreatedBy,CreatedOn,ModifiedOn)
values(@Events,@ParameterValue,'Admin',GETDATE(),GETDATE())
end

if(@flag=2)
begin
select * from tblevents where ParameterValue='Events'
end

if(@flag=3)
begin
update tblevents set Events=@Events,ModifiedOn=GETDATE() where EventId=@EventId
end

if(@flag=4)
begin
delete from tblevents  where EventId=@EventId
end

if(@flag=5)
begin
insert into tblevents(Projects,ParameterValue,CreatedBy,CreatedOn,ModifiedOn)
values(@Projects,@ParameterValue,'Admin',GETDATE(),GETDATE())
end

if(@flag=6)
begin
update tblevents set Projects=@Projects,ModifiedOn=GETDATE() where EventId=@EventId
end

if(@flag=7)
begin
delete from tblevents  where EventId=@EventId
end


if(@flag=8)
begin
select * from tblevents where ParameterValue='Projects'
end

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Evaluation]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Evaluation]
(
@flag int,
@EID int,
@CatID int,
@SubCatID int,
@UserID int,
@QID int,
@Answers varchar(50),
@Status int,
@CreatedBy varchar(50),
@CreatedOn varchar(50),
@ModifiedOn varchar(50),
@Temp varchar(50),
@Temp1 varchar(50),
@Temp2 varchar(50)

)
as begin
if(@flag=1)

begin

declare @Temp3 int

select @Temp3= COUNT(*) from tbl_Evaluation where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID and QID=@QID and Temp='1'

if(@Temp3 > 0)

begin

update tbl_Evaluation set Answers=@Answers where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID and QID=@QID and Temp='1'

end

else

begin

insert into tbl_Evaluation (CatID,SubCatID,UserID,QID,Answers,Status,CreatedBy,CreatedOn,ModifiedOn,Temp)
values(@CatID, @SubCatID,@UserID,@QID,@Answers,@Status,'Admin',GETDATE(),GETDATE(),'1')

end
end

if(@flag=2)
begin
select * from tbl_Evaluation where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID and QID=@QID and Temp='1'
end

if(@flag=3)
begin


declare @Temp5 int

select @Temp5= COUNT(*) from tbl_Evaluation where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID and Temp1 IS NULL and Temp2 IS NULL

if(@Temp5 > 0)

begin

update tbl_Evaluation set Temp1=Convert(DateTime,@Temp1) , Temp2=Convert(DateTime,@Temp2) where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID and Temp1 IS NULL and Temp2 IS NULL
end

else

begin

insert into tbl_Evaluation (Temp1,Temp2)
values(Convert(DateTime,@Temp1),Convert(DateTime,@Temp2))

end

select * from tbl_Evaluation where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID
end

if(@flag=4)
begin
select * from tbl_Evaluation where CatID=@CatID and SubCatID=@SubCatID and UserID=@UserID 
end
end
GO
/****** Object:  StoredProcedure [dbo].[usp_category]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_category]
(
    @flag int,
	@CatgID int,
	@CatgName varchar(150),
   
	@Status varchar(10),
    @CreatedBy varchar(10),
	@CreatedOn varchar(50),
	@ModifiedOn varchar(50)
   
  
)


as begin
if(@flag=1)
begin
insert into tblCategory(CatgName,Status,CreatedBy,CreatedOn,ModifiedOn)
values(@CatgName,'Active','Admin',GETDATE(),GETDATE())
end

if(@flag=2)
begin
select * from tblcategory
end

if(@flag=3)
begin
insert into tblSubCategory(CatgID,SubCatgName,Status,CreatedBy,CreatedOn,ModifiedOn)
values(@CatgID,@CatgName,'Active','Admin',GETDATE(),GETDATE())

end

if(@flag=4)
begin
select * from tblcategory 
end


if(@flag=5)
begin
select * from tblSubCategory 
end

if(@flag=6)
begin
select * from tblSubCategory where CatgID=@CatgID
end

--if(@flag=7)
--begin
--update tblSubCategory set SubCatgName=@SubCatgName from tblSubCategory sub
--join tblCategory cat on sub.CatgID=cat.CatgID where SubCatgID=@SubCatgID 
--end
if(@flag=7)
begin
update tblcategory set CatgName=@CatgName,ModifiedOn=GETDATE() where CatgID=@CatgID
end


if(@flag=8)
begin
update tblcategory set CatgName=@CatgName,ModifiedOn=GETDATE() where CatgID=@CatgID
end

if(@flag=9)
begin
select distinct sub.SubCatgID,sub.SubCatgName,cat.CatgName
from tblSubCategory sub join tblCategory cat on cat.CatgID=sub.CatgID

end

if(@flag=10)
begin
update tblSubCategory set SubCatgName=@CatgName from tblSubCategory sub
join tblCategory cat on sub.CatgID=cat.CatgID where SubCatgID=@CatgID

end
if(@flag=11)
begin
delete from tblSubCategory where SubCatgID=@CatgID

end
if(@flag=12)
begin
delete from tblSubCategory Where CatgID=@CatgID
delete from tblCategory where CatgID=@CatgID

end


end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Assign]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Assign]

(
@flag int,
@Aid int,
@CatgID int,
@SubCatgID int,
@UserID int,
@CreatedBy varchar(10),
@CreatedOn varchar(50),
@ModifiedOn varchar(50),
@Isdeleted int,
@SetTimings varchar(50)
)

as begin
if(@flag=1)
begin
insert into tbl_Assign(CatgID,SubCatgID,UserID,CreatedBy,CreatedOn,ModifiedOn,Isdeleted,SetTimings)
values(@CatgID,@SubCatgID,@UserID,'Admin',GETDATE(),GETDATE(),@Isdeleted,@SetTimings)

end

if(@flag=2)
begin
select * from tbl_Assign a inner join tblUsers u on a.UserID=u.Uid inner join tblSubCategory s on a.SubCatgID=s.SubCatgID where u.Uid=@UserID
end

if(@flag=3)
begin
select * from tblQuestionPaper where CatgID=@CatgID and SubCatgID=@SubCatgID
end

if(@flag=4)
begin
 delete from tbl_Assign where AID=@AID
end

if(@flag=5)
begin
 select * from tbl_Assign where UserID=@UserID
end



if(@flag=6)
begin

select distinct * from tbl_Assign where CatgID=@CatgID and SubCatgID=@SubCatgID and UserID=@UserID
end


if(@flag=7)
begin

DECLARE @t1 TABLE (
    ColID   int     IDENTITY,
    Col2    varchar
)

INSERT INTO @t1 (Col2) values(1)


SELECT
    t1.Col2 AS t1Col2
   
FROM @t1 AS t1


declare @Dummy varchar(50)
declare @CAT varchar(50)
declare @SUBCAT varchar(50)

select @Dummy= COUNT(*)  from tbl_Assign where CatgID=@CatgID and SubCatgID=@SubCatgID and UserID=@UserID
 
 if(@Dummy > 0)
 
begin
update  tbl_Assign set Isdeleted=@Isdeleted where CatgID=@CatgID and SubCatgID=@SubCatgID and UserID=@UserID
end
 
 end
 
 
if(@flag=8)
begin
select * from tbl_Assign A inner join tblUsers U on A.UserID=U.Uid where A.UserID=@UserID

end

 
if(@flag=9)
begin
select * from tbl_Assign a inner join tblUsers u on a.UserID=u.Uid inner join tblSubCategory s on a.SubCatgID=s.SubCatgID  where u.Usertype=2

end

if(@flag=10)
begin
 select * from tbl_Assign where UserID=@UserID and Isdeleted=0
end

if(@flag=11)
begin
 delete  from tbl_Evaluation where UserID=@UserID 
end
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Allmembers]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Allmembers]

as begin


SELECT top 1 dbo.GetAliasesByID(TeamMembers) as collapse
FROM tbl_Chart
GROUP BY TeamMembers


end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Charts]    Script Date: 03/06/2013 11:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Charts]
(
@flag int,
@CID int,
@TID int,
@TeamMembers varchar(50),
@Utilization varchar(50),
@Volume varchar(50),
@Quality varchar(50),
@Efficiency varchar(50)

)

as begin
--Overall Criteria

if(@flag=1)

begin

declare @Temp3 int

select @Temp3= COUNT(*) from tbl_Chart where TID=@TID 

--print @Temp3

if(@Temp3 > 0)

begin

--Utilization

declare @Temp4 int

select @Temp4= COUNT(*) from tbl_Chart where TID=@TID and (Utilization ='' or Utilization <>'')


if(@Temp4 > 0)

begin

WHILE ( @Utilization ) <> ''
BEGIN
   update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Utilization=@Utilization where TID=@TID
   BREAK
END

end

--Volume

declare @Temp5 int

select @Temp5= COUNT(*) from tbl_Chart where TID=@TID and (Volume ='' or Volume <>'')


if(@Temp5 > 0)

begin

WHILE ( @Volume ) <> ''
BEGIN
   update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Volume=@Volume where TID=@TID
   BREAK
END

end



--Quality


declare @Temp6 int

select @Temp6= COUNT(*) from tbl_Chart where TID=@TID and (Quality ='' or Quality <>'')


if(@Temp6 > 0)

begin

WHILE ( @Quality ) <> ''
BEGIN
   update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Quality=@Quality where TID=@TID
   BREAK
   
END
end


--Efficiency


declare @Temp7 int

select @Temp7= COUNT(*) from tbl_Chart where TID=@TID and (Efficiency ='' or Efficiency <>'')


if(@Temp7 > 0)

begin


WHILE ( @Efficiency ) <> ''
BEGIN
   update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Efficiency=@Efficiency where TID=@TID
   BREAK
   
END

end


end

else

begin

insert into tbl_Chart(TID,TeamMembers,Utilization,Volume,Quality,Efficiency) values (@TID,@TeamMembers,@Utilization,@Volume,@Quality,@Efficiency)


end

end


----Volume
--if(@flag=2)

--begin



--declare @Temp4 int

--select @Temp4= COUNT(*) from tbl_Chart where TID=@TID and Volume<>''

--if(@Temp4 > 0)

--begin

--update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Volume=@Volume where TID=@TID

--end

--else

--begin

--insert into tbl_Chart(TID,TeamMembers,Volume) values (@TID,@TeamMembers,@Volume)


--end

--end

----Quality
--if(@flag=3)

--begin



--declare @Temp5 int

--select @Temp5= COUNT(*) from tbl_Chart where TID=@TID and Quality<>''

--if(@Temp5 > 0)

--begin

--update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Quality=@Quality where TID=@TID

--end

--else

--begin

--insert into tbl_Chart(TID,TeamMembers,Quality) values (@TID,@TeamMembers,@Quality)


--end

--end


----Efficiency

--if(@flag=4)

--begin



--declare @Temp6 int

--select @Temp6= COUNT(*) from tbl_Chart where TID=@TID and Efficiency<>''

--if(@Temp6 > 0)

--begin

--update tbl_Chart set TID=@TID,TeamMembers=@TeamMembers,Efficiency=@Efficiency where TID=@TID

--end

--else

--begin

--insert into tbl_Chart(TID,TeamMembers,Efficiency) values (@TID,@TeamMembers,@Efficiency)


--end

if(@flag=2)

begin
SELECT top 1 dbo.GetAliasesByID(TeamMembers) as collapse
FROM tbl_Chart
GROUP BY TeamMembers

end


if(@flag=3)

begin

select * from tbl_Chart where TID=@TID

end


end
GO
