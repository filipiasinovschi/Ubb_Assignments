
--
if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestRunTables_Tables]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestRunTables] DROP CONSTRAINT FK_TestRunTables_Tables

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestTables_Tables]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestTables] DROP CONSTRAINT FK_TestTables_Tables

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestRunTables_TestRuns]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestRunTables] DROP CONSTRAINT FK_TestRunTables_TestRuns

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestRunViews_TestRuns]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestRunViews] DROP CONSTRAINT FK_TestRunViews_TestRuns

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestTables_Tests]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestTables] DROP CONSTRAINT FK_TestTables_Tests

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestViews_Tests]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestViews] DROP CONSTRAINT FK_TestViews_Tests

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestRunViews_Views]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestRunViews] DROP CONSTRAINT FK_TestRunViews_Views

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[FK_TestViews_Views]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)

ALTER TABLE [TestViews] DROP CONSTRAINT FK_TestViews_Views

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[Tables]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [Tables]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[TestRunTables]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [TestRunTables]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[TestRunViews]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [TestRunViews]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[TestRuns]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [TestRuns]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[TestTables]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [TestTables]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[TestViews]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [TestViews]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[Tests]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [Tests]

GO



if exists (select * from dbo.sysobjects where id = object_id(N'[Views]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

drop table [Views]

GO



CREATE TABLE [Tables] (

	[TableID] [int] IDENTITY (1, 1) NOT NULL ,

	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [TestRunTables] (

	[TestRunID] [int] NOT NULL ,

	[TableID] [int] NOT NULL ,

	[StartAt] [datetime] NOT NULL ,

	[EndAt] [datetime] NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [TestRunViews] (

	[TestRunID] [int] NOT NULL ,

	[ViewID] [int] NOT NULL ,

	[StartAt] [datetime] NOT NULL ,

	[EndAt] [datetime] NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [TestRuns] (

	[TestRunID] [int] IDENTITY (1, 1) NOT NULL ,

	[Description] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,

	[StartAt] [datetime] NULL ,

	[EndAt] [datetime] NULL

) ON [PRIMARY]

GO



CREATE TABLE [TestTables] (

	[TestID] [int] NOT NULL ,

	[TableID] [int] NOT NULL ,

	[NoOfRows] [int] NOT NULL ,

	[Position] [int] NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [TestViews] (

	[TestID] [int] NOT NULL ,

	[ViewID] [int] NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [Tests] (

	[TestID] [int] IDENTITY (1, 1) NOT NULL ,

	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]

GO



CREATE TABLE [Views] (

	[ViewID] [int] IDENTITY (1, 1) NOT NULL ,

	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]

GO



ALTER TABLE [Tables] WITH NOCHECK ADD

	CONSTRAINT [PK_Tables] PRIMARY KEY  CLUSTERED

	(

		[TableID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestRunTables] WITH NOCHECK ADD

	CONSTRAINT [PK_TestRunTables] PRIMARY KEY  CLUSTERED

	(

		[TestRunID],

		[TableID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestRunViews] WITH NOCHECK ADD

	CONSTRAINT [PK_TestRunViews] PRIMARY KEY  CLUSTERED

	(

		[TestRunID],

		[ViewID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestRuns] WITH NOCHECK ADD

	CONSTRAINT [PK_TestRuns] PRIMARY KEY  CLUSTERED

	(

		[TestRunID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestTables] WITH NOCHECK ADD

	CONSTRAINT [PK_TestTables] PRIMARY KEY  CLUSTERED

	(

		[TestID],

		[TableID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestViews] WITH NOCHECK ADD

	CONSTRAINT [PK_TestViews] PRIMARY KEY  CLUSTERED

	(

		[TestID],

		[ViewID]

	)  ON [PRIMARY]

GO



ALTER TABLE [Tests] WITH NOCHECK ADD

	CONSTRAINT [PK_Tests] PRIMARY KEY  CLUSTERED

	(

		[TestID]

	)  ON [PRIMARY]

GO



ALTER TABLE [Views] WITH NOCHECK ADD

	CONSTRAINT [PK_Views] PRIMARY KEY  CLUSTERED

	(

		[ViewID]

	)  ON [PRIMARY]

GO



ALTER TABLE [TestRunTables] ADD

	CONSTRAINT [FK_TestRunTables_Tables] FOREIGN KEY

	(

		[TableID]

	) REFERENCES [Tables] (

		[TableID]

	) ON DELETE CASCADE  ON UPDATE CASCADE ,

	CONSTRAINT [FK_TestRunTables_TestRuns] FOREIGN KEY

	(

		[TestRunID]

	) REFERENCES [TestRuns] (

		[TestRunID]

	) ON DELETE CASCADE  ON UPDATE CASCADE

GO



ALTER TABLE [TestRunViews] ADD

	CONSTRAINT [FK_TestRunViews_TestRuns] FOREIGN KEY

	(

		[TestRunID]

	) REFERENCES [TestRuns] (

		[TestRunID]

	) ON DELETE CASCADE  ON UPDATE CASCADE ,

	CONSTRAINT [FK_TestRunViews_Views] FOREIGN KEY

	(

		[ViewID]

	) REFERENCES [Views] (

		[ViewID]

	) ON DELETE CASCADE  ON UPDATE CASCADE

GO



ALTER TABLE [TestTables] ADD

	CONSTRAINT [FK_TestTables_Tables] FOREIGN KEY

	(

		[TableID]

	) REFERENCES [Tables] (

		[TableID]

	) ON DELETE CASCADE  ON UPDATE CASCADE ,

	CONSTRAINT [FK_TestTables_Tests] FOREIGN KEY

	(

		[TestID]

	) REFERENCES [Tests] (

		[TestID]

	) ON DELETE CASCADE  ON UPDATE CASCADE

GO



ALTER TABLE [TestViews] ADD

	CONSTRAINT [FK_TestViews_Tests] FOREIGN KEY

	(

		[TestID]

	) REFERENCES [Tests] (

		[TestID]

	),

	CONSTRAINT [FK_TestViews_Views] FOREIGN KEY

	(

		[ViewID]

	) REFERENCES [Views] (

		[ViewID]

	)

GO

go

CREATE VIEW View_1 AS
SELECT Pk_TeamId,TeamName
FROM Team 

go

CREATE VIEW View_2 AS
SELECT C.Fk_FederationId ,C.CompetitionName,F.FederationName
FROM Competition C
INNER JOIN Federation F ON F.Pk_FederationId=C.Fk_FederationId

go

CREATE VIEW View_3 AS
SELECT Team=T.TeamName,Competition=C.CompetitionName
FROM Team T
INNER JOIN TeamsCompetitions TC ON TC.Fk_TeamId=T.Pk_TeamId
INNER JOIN Competition C ON TC.Fk_CompetitionId=C.Pk_CompetitionId
GROUP BY T.TeamName,C.CompetitionName

go


create procedure dbo_deleteAll @tableName varchar(50) 
as
	declare @query varchar(100)
	set @query = 'Delete from ' +@tableName
	exec(@query)

go

create procedure dbo_insert_elements @nb_of_rows int, @table_name varchar(50) as
    if @nb_of_rows < 1
        RAISERROR('Invalid number of rows', 16, 1);

		declare @i int
		declare @name varchar(50)
		declare @c_id int
		declare @f_id int
		declare @t_id int

		set @i = 0
		
		while @i < @nb_of_rows
		begin
			if @table_name = 'Team'
			begin 
				set @name = 'Team number ' + convert(varchar(10),@i)
				insert into Team(TeamName) values (@name)
			end

			if @table_name = 'Competition'
			begin
				set @name = 'Federation number ' + convert(varchar(10),@i)
				insert into Federation(FederationName) values (@name)

				select @f_id= Pk_FederationId from Federation where FederationName=@name

				set @name = 'Competition number ' + convert(varchar(10),@i)
				insert into Competition(CompetitionName,Fk_FederationId) values (@name,@f_id)
			end

			if @table_name ='TeamsCompetitions'
			begin
				set @name='Team number ' +convert(varchar(10),@i)
				insert into Team(TeamName) values (@name)
				select @t_id=Pk_TeamId from Team where TeamName=@name

				set @name = 'Competition number ' + convert(varchar(10),@i)
				insert into Competition(CompetitionName) values (@name)
				select @c_id=Pk_CompetitionId from Competition where CompetitionName=@name

				insert into TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) values (@t_id,@c_id)

			end

				set @i = @i + 1

			end

go

create procedure dbo_delete_rows @nb_of_rows int, @table_name varchar(50) as
    if @nb_of_rows < 1
        RAISERROR('Invalid number of rows', 16, 1);
    declare @last_row int
    if @table_name = 'Team'
    begin
        set @last_row = (select max(Pk_TeamId) from Team) - @nb_of_rows
        delete from TeamsCompetitions where Fk_TeamId > @last_row
        delete from Team where Pk_TeamId > @last_row
    end

    if @table_name = 'Competition'
    begin
        set @last_row = (select max(Pk_CompetitionId) from Competition) - @nb_of_rows
        delete from Competition where  Pk_CompetitionId> @last_row
    end

    if @table_name = 'TeamsCompetitions'
    begin
        set @last_row = (select max(Fk_TeamId) from TeamsCompetitions) - @nb_of_rows
        delete from TeamsCompetitions where Fk_TeamId > @last_row
    end
go

create procedure dbo_select_view @view varchar(10) as
    if @view = 'View_1'
        select * from View_1
    if @view = 'View_2'
        select * from View_2
    if @view = 'View_3'
        select * from View_3
go

create procedure dbo_run_tests @nb_of_rows int as
    if @nb_of_rows < 1
        RAISERROR('Invalid number of rows', 16, 1);

    declare @team_insert_start datetime
    set @team_insert_start = getdate()
    exec dbo_insert_elements @nb_of_rows, 'Team'
    declare @team_insert_end datetime
    set @team_insert_end = getdate()

    declare @competition_insert_start datetime
    set @competition_insert_start = getdate()
    exec dbo_insert_elements @nb_of_rows, 'Competititon'
    declare @competition_insert_end datetime
    set @competition_insert_end = getdate()

    declare @teams_competitions_insert_start datetime
    set @teams_competitions_insert_start = getdate()
    exec dbo_insert_elements @nb_of_rows, 'TeamsCompetitions'
    declare @teams_competitions_insert_end datetime
    set @teams_competitions_insert_end = getdate()

    declare @teams_competitions_delete_start datetime
    set @teams_competitions_delete_start = getdate()
    exec dbo_delete_rows @nb_of_rows, 'TeamsCompetitions'
    declare @teams_competitions_delete_end datetime
    set @teams_competitions_delete_end = getdate()

    declare @competition_delete_start datetime
    set @competition_delete_start = getdate()
    exec dbo_delete_rows @nb_of_rows, 'Competition'
    declare @competition_delete_end datetime
    set @competition_delete_end = getdate()

    declare @team_delete_start datetime
    set @team_delete_start = getdate()
    exec dbo_delete_rows @nb_of_rows, 'Team'
    declare @team_delete_end datetime
    set @team_delete_end = getdate()

    declare @view_1_start datetime
	set @view_1_start = getdate()
	execute dbo_select_view 'View_1'
	declare @view_1_end datetime
	set @view_1_end = getdate()

	declare @view_2_start datetime
	set @view_2_start = getdate()
	execute dbo_select_view 'View_2'
	declare @view_2_end datetime
	set @view_2_end = getdate()

    declare @view_3_start datetime
	set @view_3_start = getdate()
	execute dbo_select_view 'View_3'
	declare @view_3_end datetime
	set @view_3_end = getdate()


    declare @description nvarchar(100)
    declare @lastTestRunID int;

	set @description = 'Insert ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @team_insert_start, @team_insert_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunTables
	values(@lastTestRunID, 1, @team_insert_start, @team_insert_end)

    set @description = 'Insert ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @competition_insert_start, @competition_insert_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunTables
	values(@lastTestRunID, 2, @competition_insert_start, @competition_insert_end)

    set @description = 'Insert ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @teams_competitions_insert_start, @teams_competitions_insert_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunTables
	values(@lastTestRunID, 3, @teams_competitions_insert_start, @teams_competitions_insert_end)

    set @description = 'Delete ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @teams_competitions_delete_start, @teams_competitions_delete_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);

	insert into TestRunTables
	values(@lastTestRunID, 3, @teams_competitions_delete_start, @teams_competitions_delete_end)


    set @description = 'Delete ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @competition_delete_start, @competition_delete_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunTables
	values(@lastTestRunID, 2, @competition_delete_start, @competition_delete_end)

    set @description = 'Delete ' + convert(varchar(10), @nb_of_rows) + ' rows'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @team_delete_start, @team_delete_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunTables
	values(@lastTestRunID, 1, @team_delete_start, @team_delete_end)

    set @description = 'Select View_1'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @view_1_start, @view_1_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunViews
	values(@lastTestRunID, 1, @view_1_start, @view_1_end)

    set @description = 'Select View_2'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @view_2_start, @view_2_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunViews
	values(@lastTestRunID, 2, @view_2_start, @view_2_end)

    set @description = 'Select View_3'
    insert into TestRuns(Description, StartAt, EndAt)
	values(@description, @view_3_start, @view_3_end);
	set @lastTestRunID = (select max(TestRunID) from TestRuns);
	insert into TestRunViews
	values(@lastTestRunID, 3, @view_3_start, @view_3_end)

    exec dbo_deleteAll @tableName = 'TeamsCompetititons'
    exec dbo_deleteAll @tableName = 'Competition'
    exec dbo_deleteAll @tableName = 'Team'

	exec dbo_run_tests @nb_of_rows = 10

	go
exec dbo_deleteAll @tableName = 'TeamsCompetitions'
exec dbo_deleteAll @tableName = 'Competition'
exec dbo_deleteAll @tableName = 'Team'
exec dbo_deleteAll @tableName = 'TestRunTables'
exec dbo_deleteAll @tableName = 'TestRunViews'
exec dbo_deleteAll @tableName = 'TestRuns'
exec dbo_deleteAll @tableName = 'TestRunTables'