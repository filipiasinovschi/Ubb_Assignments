
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
--inserting in the country tabel
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (1,'Romania')
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (2,'England')
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (3,'Spain')
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (4,'France')
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (5,'Italy')
INSERT INTO Country(Pk_CountryId,CountryName) VALUES (6,'Germany')


SELECT * FROM Country;
SELECT *FROM Competition;
SELECT *FROM Federation;

--inserting in the federation tabel

INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(1,'FRF',1);
INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(2,'FA',2);
INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(3,'RFEF',3);
INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(4,'FFF',4);
INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(5,'FIGC',5);
INSERT INTO Federation(Pk_FederationId,FederationName,Fk_CountryId) VALUES(6,'DFB',6);

--inserting in the season tabel
INSERT INTO Season(Pk_SeasonId,SeasonYear) VALUES(1,'2019-01-01');
INSERT INTO Season(Pk_SeasonId,SeasonYear) VALUES(2,'2020-01-01');
INSERT INTO Season(Pk_SeasonId,SeasonYear) VALUES(3,'2021-01-01');



--inserting in the competion tabel
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (1,'Liga 1',1);
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (2,'Premier League',2);
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (3,'La Liga',3);
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (4,'Ligue 1',4);
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (5,'Serie A',5);
INSERT INTO Competition(Pk_CompetitionId,CompetitionName,Fk_FederationId) VALUES (6,'Bundesliga',6);


--inserting in the seasonsCompetitions tabel
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,1);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,2);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,3);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,4);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,5);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (1,6);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,1);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,2);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,3);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,4);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,5);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (2,6);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,1);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,2);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,3);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,4);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,5);
INSERT INTO SeasonsCompetitions(Fk_SeasonId,Fk_CompetitionID) VALUES (3,6);
--inserting in the fixtures tabel

--To create a random decimal number between two values (range), i used the following formula:
	-->RAND()*(b-a)+a
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(1, RAND()*(25-10)+10,1);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(2, RAND()*(25-10)+10,2);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(3, RAND()*(25-10)+10,3);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(4, RAND()*(25-10)+10,4);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(5, RAND()*(25-10)+10,5);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(6, RAND()*(25-10)+10,6);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(7, RAND()*(25-10)+10,7);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(8, RAND()*(25-10)+10,8);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(9, RAND()*(25-10)+10,9);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(10, RAND()*(25-10)+10,10);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(11, RAND()*(25-10)+10,11);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(12, RAND()*(25-10)+10,12);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(13, RAND()*(25-10)+10,13);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(14, RAND()*(25-10)+10,14);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(15, RAND()*(25-10)+10,15);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(16, RAND()*(25-10)+10,16);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(17, RAND()*(25-10)+10,17);
INSERT INTO Fixtures(Pk_FixturesId,NrOfMatches,Fk_TeamId) VALUES(18, RAND()*(25-10)+10,18);





--inserting in the team tabel
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(1,'DINAMO');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(2,'STEAUA');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(3,'CFR');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(4,'PSG')
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(5,'MARSEILLE');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(6,'LYON');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(7,'DORTMUND');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(8,'BAYERN');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(9,'SCHALKE');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(10,'JUVENTUS')
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(11,'NAPOLI');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(12,'ROMA');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(13,'TOTTENHAM');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(14,'CITY');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(15,'UNITED');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(16,'BARCELONA')
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(17,'REAL');
INSERT INTO Team(Pk_TeamId,TeamName) VALUES(18,'ATLETICO');

SELECT * FROM Fixtures;

--inserting in the teamsCompetions tabel
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(1,1);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(2,1);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(3,1);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(4,2);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(5,2);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(6,2);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(7,3);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(8,3);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(9,3);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(10,4);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(11,4);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(12,4);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(13,5);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(14,5);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(15,5);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(16,6);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(17,6);
INSERT INTO TeamsCompetitions(Fk_TeamId,Fk_CompetitionId) VALUES(18,6);

--inserting in the playerStats tabel
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(1, RAND()*(100-30)+30, RAND()*(200-100)+100,1);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(2, RAND()*(100-30)+30, RAND()*(200-100)+100,2);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(3, RAND()*(100-30)+30, RAND()*(200-100)+100,3);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(4, RAND()*(100-30)+30, RAND()*(200-100)+100,4);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(5, RAND()*(100-30)+30, RAND()*(200-100)+100,5);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(6, RAND()*(100-30)+30, RAND()*(200-100)+100,6);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(7, RAND()*(100-30)+30, RAND()*(200-100)+100,7);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(8, RAND()*(100-30)+30, RAND()*(200-100)+100,8);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(9, RAND()*(100-30)+30, RAND()*(200-100)+100,9);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(10, RAND()*(100-30)+30, RAND()*(200-100)+100,10);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(11, RAND()*(100-30)+30, RAND()*(200-100)+100,11);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(12, RAND()*(100-30)+30, RAND()*(200-100)+100,12);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(13, RAND()*(100-30)+30, RAND()*(200-100)+100,13);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(14, RAND()*(100-30)+30, RAND()*(200-100)+100,14);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(15, RAND()*(100-30)+30, RAND()*(200-100)+100,15);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(16, RAND()*(100-30)+30, RAND()*(200-100)+100,16);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(17, RAND()*(100-30)+30, RAND()*(200-100)+100,17);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(18, RAND()*(100-30)+30, RAND()*(200-100)+100,18);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(19, RAND()*(100-30)+30, RAND()*(200-100)+100,19);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(20, RAND()*(100-30)+30, RAND()*(200-100)+100,20);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(21, RAND()*(100-30)+30, RAND()*(200-100)+100,21);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(22, RAND()*(100-30)+30, RAND()*(200-100)+100,22);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(23, RAND()*(100-30)+30, RAND()*(200-100)+100,23);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(24, RAND()*(100-30)+30, RAND()*(200-100)+100,24);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(25, RAND()*(100-30)+30, RAND()*(200-100)+100,25);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(26, RAND()*(100-30)+30, RAND()*(200-100)+100,26);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(27, RAND()*(100-30)+30, RAND()*(200-100)+100,27);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(28, RAND()*(100-30)+30, RAND()*(200-100)+100,28);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(29, RAND()*(100-30)+30, RAND()*(200-100)+100,29);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(30, RAND()*(100-30)+30, RAND()*(200-100)+100,30);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(31, RAND()*(100-30)+30, RAND()*(200-100)+100,31);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(32, RAND()*(100-30)+30, RAND()*(200-100)+100,32);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(33, RAND()*(100-30)+30, RAND()*(200-100)+100,33);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(34, RAND()*(100-30)+30, RAND()*(200-100)+100,34);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(35, RAND()*(100-30)+30, RAND()*(200-100)+100,35);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(36, RAND()*(100-30)+30, RAND()*(200-100)+100,36);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(37, RAND()*(100-30)+30, RAND()*(200-100)+100,37);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(38, RAND()*(100-30)+30, RAND()*(200-100)+100,38);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(39, RAND()*(100-30)+30, RAND()*(200-100)+100,39);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(40, RAND()*(100-30)+30, RAND()*(200-100)+100,40);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(41, RAND()*(100-30)+30, RAND()*(200-100)+100,41);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(42, RAND()*(100-30)+30, RAND()*(200-100)+100,42);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(43, RAND()*(100-30)+30, RAND()*(200-100)+100,43);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(44, RAND()*(100-30)+30, RAND()*(200-100)+100,44);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(45, RAND()*(100-30)+30, RAND()*(200-100)+100,45);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(46, RAND()*(100-30)+30, RAND()*(200-100)+100,46);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(47, RAND()*(100-30)+30, RAND()*(200-100)+100,47);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(48, RAND()*(100-30)+30, RAND()*(200-100)+100,48);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(49, RAND()*(100-30)+30, RAND()*(200-100)+100,49);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(50, RAND()*(100-30)+30, RAND()*(200-100)+100,50);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(51, RAND()*(100-30)+30, RAND()*(200-100)+100,51);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(52, RAND()*(100-30)+30, RAND()*(200-100)+100,52);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(53, RAND()*(100-30)+30, RAND()*(200-100)+100,53);
INSERT INTO PlayerStats(Pk_PlayerStatsId,NrOfGoals,Appearances,Fk_PlayerId) VALUES(54, RAND()*(100-30)+30, RAND()*(200-100)+100,54);

SELECT * FROM PlayerStats;


--inserting in the player tabel
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(1,'Player1',1,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(2,'Player2',2,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(3,'Player3',3,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(4,'Player4',4,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(5,'Player5',5,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(6,'Player6',6,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(7,'Player7',7,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(8,'Player8',8,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(9,'Player9',9,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(10,'Player10',10,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(11,'Player11',11,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(12,'Player12',12,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(13,'Player13',13,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(14,'Player14',14,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(15,'Player15',15,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(16,'Player16',16,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(17,'Player17',17,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(18,'Player18',18,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(19,'Player19',19,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(20,'Player20',20,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(21,'Player21',21,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(22,'Player22',22,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(23,'Player23',23,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(24,'Player24',24,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(25,'Player25',25,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(26,'Player26',26,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(27,'Player27',27,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(28,'Player28',28,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(29,'Player29',29,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(30,'Player30',30,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(31,'Player31',31,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(32,'Player32',32,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(33,'Player33',33,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(34,'Player34',34,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(35,'Player35',35,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(36,'Player36',36,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(37,'Player37',37,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(38,'Player38',38,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(39,'Player39',39,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(40,'Player40',40,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(41,'Player41',41,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(42,'Player42',42,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(43,'Player43',43,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(44,'Player44',44,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(45,'Player45',45,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(46,'Player46',46,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(47,'Player47',47,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(48,'Player48',48,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(49,'Player49',49,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(50,'Player50',50,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(51,'Player51',51,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(52,'Player52',52,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(53,'Player53',53,RAND()*(7-0)+0,RAND()*(19-0)+0);
INSERT INTO Player(Pk_PlayerId,PlayerName,NrOnShirt,Fk_CountryId,Fk_TeamId) VALUES(54,'Player54',54,RAND()*(7-0)+0,RAND()*(19-0)+0);


SELECT * FROM Player;

--inserting in the coachStats table
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(1,RAND()*(300-20)+20,RAND()*(20-2)+2,1);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(2,RAND()*(300-20)+20,RAND()*(20-2)+2,2);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(3,RAND()*(300-20)+20,RAND()*(20-2)+2,3);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(4,RAND()*(300-20)+20,RAND()*(20-2)+2,4);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(5,RAND()*(300-20)+20,RAND()*(20-2)+2,5);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(6,RAND()*(300-20)+20,RAND()*(20-2)+2,6);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(7,RAND()*(300-20)+20,RAND()*(20-2)+2,7);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(8,RAND()*(300-20)+20,RAND()*(20-2)+2,8);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(9,RAND()*(300-20)+20,RAND()*(20-2)+2,9);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(10,RAND()*(300-20)+20,RAND()*(20-2)+2,10);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(11,RAND()*(300-20)+20,RAND()*(20-2)+2,11);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(12,RAND()*(300-20)+20,RAND()*(20-2)+2,12);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(13,RAND()*(300-20)+20,RAND()*(20-2)+2,13);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(14,RAND()*(300-20)+20,RAND()*(20-2)+2,14);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(15,RAND()*(300-20)+20,RAND()*(20-2)+2,15);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(16,RAND()*(300-20)+20,RAND()*(20-2)+2,16);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(17,RAND()*(300-20)+20,RAND()*(20-2)+2,17);
INSERT INTO CoachStats(Pk_CoachStatsId,NrOfChampionshipsWon,NrOfMatchesWon,Fk_CoachId) VALUES(18,RAND()*(300-20)+20,RAND()*(20-2)+2,18);

--inserting in the coach table
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (1,'Coach1',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (2,'Coach2',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (3,'Coach3',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (4,'Coach4',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (5,'Coach5',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (6,'Coach6',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (7,'Coach7',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (8,'Coach8',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (9,'Coach9',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (10,'Coach10',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (11,'Coach11',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (12,'Coach12',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (13,'Coach13',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (14,'Coach14',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (15,'Coach15',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (16,'Coach16',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (17,'Coach17',RAND()*(7-0)+0)
INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (18,'Coach18',RAND()*(7-0)+0)
--Violation of PRIMARY KEY constraint
--INSERT INTO Coach(Pk_CoachId,CoachName,Fk_TeamId) VALUES (1,'FailCoach',RAND()*(7-0)+0)

SELECT * FROM CoachStats;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
--update in at least 3 tables
 UPDATE CoachStats 
SET  NrOfChampionshipsWon -= 50
WHERE NrOfChampionshipsWon >50  ;

SELECT * FROM CoachStats;

UPDATE PlayerStats
SET NrOfGoals +=100
WHERE Appearances BETWEEN 100 AND 106 OR Appearances LIKE '%7' ;

SELECT * FROM PlayerStats;



UPDATE Fixtures
SET NrOfMatches=50
WHERE NrOfMatches IN(10,15,20);


SELECT *FROM Fixtures;

DELETE FROM Player 
WHERE NrOnShirt=53 AND Fk_CountryId IS NOT NULL;



SELECT *FROM Player;

DELETE FROM Coach
WHERE Pk_CoachId=18;


SELECT *FROM Coach;


UPDATE Coach
SET Fk_CountryId=1
WHERE Pk_CoachId IN(11,12,13,14,15);