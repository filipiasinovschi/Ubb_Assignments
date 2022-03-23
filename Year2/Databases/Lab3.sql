
--a. modify the type of a column;

create procedure changeTypeOfAColumn
as
	alter table Player
	alter column NrOnShirt varchar(10);
	print N'Change NrOnshirt column to varchar';
go

create procedure changeTypeOfAColumnUndo 
as
	alter table Player
	alter column NrOnShirt int;
	print N'Change NrOnshirt column to int';
go


--b. add / remove a column;

create procedure addAColumn 
as
	alter table PlayerStats
	add age int;
	print N'Add age column in PlayerStats table';
go

create procedure addAColumnUndo
as
	alter table PlayerStats
	drop column age;
	print N'Remove age column from PlayerStats table';
go

--c. add / remove a DEFAULT constraint;

create procedure addDefaultConstraint 
as
	alter table Player
	add constraint df_name
	default 'Ronaldo' for PlayerName;
	print N'Set default value for PlayerName column in Player table';
go
create procedure addDefaultConstraintUndo 
as
	alter table Player
	drop constraint df_name;
	print N'Remove the default constraint ';
go

--d. add / remove a primary key;

create procedure removePrimaryKey 
as
	alter table CoachStats
	drop constraint PK__CoachSta__93420FB04A1E7006;
	print N'Remove PrimaryKey from CoachStats table'
go
create procedure removePrimaryKeyUndo 
as
	alter table CoachStats
	add constraint  PK__CoachSta__93420FB04A1E7006 primary key(Pk_CoachStatsId);
	print N'Add PrimaryKey from CoachStats table'
go

--e. add / remove a candidate key;
create procedure addCandidateKey
as
	alter table Coach
	add constraint CK_CoachName unique (CoachName);
	print N'Add Candidate Key for Coach table'
	
go
create procedure addCandidateKeyUndo
as
	alter table Coach
	drop constraint CK_CoachName;
	print N'Remove Candidate Key for Coach table'
	
go

--f. add / remove a foreign key;

create procedure removeForeignKey
as
	alter table Player
	drop constraint FK__Player__Fk_Count__286302EC;
	print N'Remove Foreign Key  from Player table';

go

create procedure removeForeignKeyUndo
as
	alter table Player
	add constraint FK__Player__Fk_Count__286302EC foreign key(Fk_CountryId) references Country(Pk_CountryId) ;
	print N'Add Foreign Key  from Player table';

go

--g. create / drop a table.

create procedure createTable
as
	create table MedicalStaff (id int primary key identity(1, 1),
						  name varchar(15),
						  Fk_TeamId int foreign key references dbo.Team(Pk_TeamId),
						  birthdate date);
    print N'Add MedicalStaff table';
go

create procedure createTableUndo
as
	drop table dbo.MedicalStaff;
    print N'Remove MedicalStaff table';
go


create table Version(version int);
insert into Version values (0);

go

create procedure dbo_getCurrentVersion @vr smallint output
as
	select @vr = ver.version
	from Version ver;
go

create procedure dbo_goToNextVersion @v smallint
as
	if @v = 0
		exec changeTypeOfAColumn;
	else if @v = 1
		exec addAColumn;
	else if @v = 2
		exec addDefaultConstraint;
	else if @v = 3
		exec removePrimaryKey;
	else if @v = 4
		exec addCandidateKey;
	else if @v = 5
		exec removeForeignKey;
	else if @v = 6
		exec createTable;
go

create procedure dbo_goToPrevVersion @v smallint
as
	if @v = 1
		exec changeTypeOfAColumnUndo;
	else if @v = 2
		exec addAColumnUndo;
	else if @v = 3
		exec addDefaultConstraintUndo;
	else if @v = 4
		exec removePrimaryKeyUndo;
	else if @v = 5
		exec addCandidateKeyUndo;
	else if @v = 6
		exec removeForeignKeyUndo;
	else if @v = 7
		exec createTableUndo;
go

create procedure dbo_updateCurrentVersion @v int
as
	update Version
	set version = @v;
go


create procedure dbo_changeVersion @tv smallint
as
    if @tv < 0 or @tv > 7
        RAISERROR('Invalid version', 16, 1);
	declare @actualVersion smallint = 1;
	exec dbo_getCurrentVersion @vr = @actualVersion output
	declare @source smallint = @actualVersion;
	if @source < @tv
		while @source < @tv
		begin
			exec dbo_goToNextVersion @v = @source;
			set @source = @source + 1
		end
	else if @source > @tv
		while @source > @tv
		begin
			exec dbo_goToPrevVersion @v = @source;
			set @source = @source - 1
		end
	exec dbo_updateCurrentVersion @v = @tv
	
go

exec dbo_changeVersion @tv = 0