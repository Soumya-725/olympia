CREATE TABLE Cognitiolympics2k20.sport_master
(sport_id int AUTO_INCREMENT PRIMARY KEY,
sport_name varchar(50) UNIQUE NOT NULL,
sport_desc varchar(400));
//
CREATE TABLE Cognitiolympics2k20.player_master
(player_id int AUTO_INCREMENT PRIMARY KEY,
sport_id int NOT NULL,
player_firstNmae VARCHAR(60),
player_lastName VARCHAR(60) NOT NULL,
player_description varchar(1000),
FOREIGN KEY (sport_id) REFERENCES Cognitiolympics2k20.sport_master(sport_id));
//
CREATE TABLE Cognitiolympics2k20.player_details
(player_det_id int AUTO_INCREMENT PRIMARY KEY,
sport_id int NOT NULL,
player_id int NOT NULL,
player_det_twitter VARCHAR(500),
player_det_insta VARCHAR(500),
player_det_youtube VARCHAR(500),
FOREIGN KEY (sport_id) REFERENCES Cognitiolympics2k20.sport_master(sport_id),
FOREIGN KEY (player_id) REFERENCES Cognitiolympics2k20.player_master(player_id));
//
INSERT INTO Cognitiolympics2k20.sport_master(sport_name, sport_desc)
VALUES
('Athletics', null),
('Badminton', null),
('Basketball', null),
('Boxing', null),
('Cycling', null),
('Football', null),
('Golf', null),
('Gymnastics', null),
('Hockey', null),
('Lawn Tennis', null),
('Rugby', null),
('Shooting', null),
('Table Tennis', null),
('Volleyball', null),
('Wrestling', null);
SELECT * FROM Cognitiolympics2k20.sport_master;
//
INSERT INTO Cognitiolympics2k20.player_master(sport_id, player_firstNmae,
player_lastName, player_description)
VALUES
(1, 'Reece', 'Prescod', 'Nationality	British Born	29 February 1996 (age 23) London, England Height	1.84 m (6 ft 0 in) Weight	68 kg (150 lb)'),
(2, 'Pusarla Venkata', 'Sindhu', '5 July 1995 (age 24) Hyderabad, Andhra Pradesh, India(present day Hyderabad, Telangana, India) Height 1.79 m (5 ft 10 in) Weight 60 kg (132 lb)'),
(3, 'Stephen', 'Curry', 'Born	March 14, 1988 (age 31) Akron, Ohio Nationality	American Listed height	6 ft 3 in (1.91 m) Listed weight	185 lb (84 kg)'),
(4, 'Vijender', 'Singh', 'Born: 29 October 1985 (age 34 years), Kaluwas Height: 1.82 m Spouse: Archana Singh (m. 2011) Movies: Fugly Olympic medal: Boxing at the 2008 Summer Olympics – Middleweight Awards: Padma Shri, Arjuna Award for Boxing'),
(5, 'Richie', 'Porte', 'Born: 30 January 1985 (age 35 years), Launceston, Australia Height: 1.72 m Weight: 62 kg Spouse: Gemma Nicole Porte (m. 2015) current team: Trek–Segafredo Parents: Penny Porte, Ian Porte'),
(6, 'Thomas', 'Muller', 'Born: 13 September 1989 (age 30 years), Weilheim in Oberbayern, Germany Height: 1.86 m Nationality: German Spouse: Lisa Müller (m. 2009) Salary: 1.6 crores EUR (2016)'),
(7, 'Rory', 'McIlroy', 'Born: 4 May 1989 (age 30 years), Holywood, United Kingdom Height: 1.75 m Spouse: Erica Stoll (m. 2017)Caddy: Harry Diamond PGA Tour Player of the Year: 2012, 2014, 2019 PGA Player of the Year: 2012, 2014'),
(8, 'Simone', 'Biles', 'Born: 14 March 1997 (age 22 years), Columbus, Ohio, United States Height: 1.42 m Competitions: 2014 World Artistic Gymnastics Championships Team: United States women's national gymnastics team Nationality: American, Belizean'),
(9, 'Manpreet', 'Singh', 'Born: 26 June 1992 (age 27 years), Jalandhar Height: 1.71 m Awards: Arjuna Award for Hockey Olympic medal: Field hockey at the 2018 Asian Games – Men's tournament'),
(10, 'Kei', 'Nishikori', 'Born: 29 December 1989 (age 30 years), Matsue, Shimane, Japan Height: 1.78 m US Open: F (2014) Tour Finals: SF (2014, 2016) Olympic Games: (2016) Country (sports): Japan'),
(11, 'Ardie', 'Savea', 'Born: 14 October 1993 (age 26 years), Wellington, New Zealand Height: 1.88 m Weight: 95 kg Spouse: Saskia Hartmann-Hechenberger (m. 2018) Position: Flanker Current team: Wellington Rugby Football Union'),
(12, 'Apurvi', 'Chandela', 'Born: 4 January 1993 (age 27 years), Jaipur Height: 1.54 m Education: Jesus and Mary College Olympic medals: Shooting at the 2018 Asian Games – Mixed 10 metre air rifle, MORE Awards: Arjuna Award for Shooting Parents: Kuldeep Singh Chandela, Bindu Rathore'),
(13, 'Manika', 'Batra', 'Born: 15 June 1995 (age 24 years), Delhi Height: 1.8 m Education: Jesus and Mary College Olympic medals: Table tennis at the 2018 Commonwealth Games – Mixed doubles, MORE Awards: Arjuna Award for Table Tennis Parents: Sushma Batra, Girish Batra'),
(14, 'Maxwell', 'Holt', 'USA'),
(15, 'Vinesh', 'Phogat', 'India');
SELECT * FROM Cognitiolympics2k20.player_master;
//
INSERT INTO Cognitiolympics2k20.player_details (sport_id, player_id, player_det_twitter,
player_det_insta, player_det_youtube)
VALUES
(1, 1, 'rprescod1', 'reeceprescod', null),
(2, 2, 'Pvsindhu1', 'pvsindhu1', null),
(3, 3, 'StephenCurry30', 'stephencurry30', 'officialstephcurry30'),
(4, 4, 'boxervijender', 'singhvijender', null),
(5, 5, 'richie_porte', 'richie_porte', null),
(6, 6, 'AntoGriezmann', 'antogriezmann', 'AntoineGriezmann'),
(7, 7, 'McIlroyRory', 'mcIlroyrory', 'RoryMcIlroyOfficial'),
(8, 8, 'Simone_Biles', 'simonebiles', null),
(9, 9, 'manpreetpawar07', 'manpreetsingh07', null),
(10, 10, 'keinishikori', 'keinishikori', null),
(11, 11, 'ardiesavea', 'ardiesavea', null),
(12, 12, 'apurvichandela', 'apurvichandela', null),
(13, 13, 'manikabatra_TT', 'manikabatra_15', null),
(14, 14, 'MaxwellHolt', 'maxwellholt', null),
(15, 15, 'Phogat_Vinesh', 'vineshphogat', null);
SELECT * FROM Cognitiolympics2k20.player_details;
SELECT
CONCAT(pm.player_firstNmae, " ", pm.player_lastName) player_name,
pm.player_id ,
pm.player_nation,
sm.sport_name
FROM Cognitiolympics2k20.player_master pm
JOIN Cognitiolympics2k20.sport_master sm
USING(sport_id) WHERE sm.sport_id = 2;

SELECT
CONCAT(pm.player_firstNmae, " ", pm.player_lastName) player_name,
pm.player_nation,
sm.sport_name,
pd.player_det_twitter,
pd.player_det_insta,
pd.player_det_youtube
FROM Cognitiolympics2k20.player_master pm
JOIN Cognitiolympics2k20.sport_master sm USING(sport_id)
JOIN Cognitiolympics2k20.player_details pd USING(sport_id)
WHERE sm.sport_id = 2 AND pm.player_id = 3;
CREATE PROCEDURE Cognitiolympics2k20.allSports()
BEGIN
SELECT * FROM Cognitiolympics2k20.sport_master;
END
CALL Cognitiolympics2k20.allSports();

CREATE PROCEDURE Cognitiolympics2k20.allPlayersSportsWise(sport_id INT)
BEGIN
SELECT
CONCAT(pm.player_firstNmae, " ", pm.player_lastName) player_name,
pm.player_id ,
pm.player_nation,
sm.sport_name
FROM Cognitiolympics2k20.player_master pm
JOIN Cognitiolympics2k20.sport_master sm
USING(sport_id) WHERE sm.sport_id = sport_id;
END
CALL Cognitiolympics2k20.allPlayersSportsWise(3);
CREATE PROCEDURE Cognitiolympics2k20.singlePlayerDetails
(sport_id INT,
player_id INT)
BEGIN
SELECT
CONCAT(pm.player_firstNmae, " ", pm.player_lastName) player_name,
pm.player_nation,
sm.sport_name,
pd.player_det_twitter,
pd.player_det_insta,
pd.player_det_youtube
FROM Cognitiolympics2k20.player_master pm
JOIN Cognitiolympics2k20.sport_master sm USING(sport_id)
JOIN Cognitiolympics2k20.player_details pd USING(sport_id)
WHERE sm.sport_id = sport_id AND pm.player_id = player_id ;
END
CALL Cognitiolympics2k20.singlePlayerDetails(2, 3);
