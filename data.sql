CREATE TABLE Cognitiolympics2k20.sport_master
(sport_id int AUTO_INCREMENT PRIMARY KEY,
sport_name varchar(50) UNIQUE NOT NULL,
sport_desc varchar(400));
CREATE TABLE Cognitiolympics2k20.player_master
(player_id int AUTO_INCREMENT PRIMARY KEY,
sport_id int NOT NULL,
player_lastName VARCHAR(60) NOT NULL,
player_firstNmae VARCHAR(60),
FOREIGN KEY (sport_id) REFERENCES Cognitiolympics2k20.sport_master(sport_id));
CREATE TABLE Cognitiolympics2k20.player_details
(player_det_id int AUTO_INCREMENT PRIMARY KEY,
sport_id int NOT NULL,
player_id int NOT NULL,
player_det_twitter VARCHAR(500),
player_det_insta VARCHAR(500),
player_det_youtube VARCHAR(500),
FOREIGN KEY (sport_id) REFERENCES Cognitiolympics2k20.sport_master(sport_id),
FOREIGN KEY (player_id) REFERENCES Cognitiolympics2k20.player_master(player_id));
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
('Vollyball', null),
('Wrestling', null);
SELECT * FROM Cognitiolympics2k20.sport_master;
INSERT INTO Cognitiolympics2k20.player_master(sport_id, player_firstNmae,
player_lastName, player_nation)
VALUES
(1, 'Reece', 'Prescod', 'Britain'),
(2, 'Pusarla Venkata', 'Sindhu', 'India'),
(3, 'Stephen', 'Curry', 'USA'),
(4, 'Vijender', 'Singh', 'India'),
(5, 'Richie', 'Porte', 'Australia'),
(6, 'Antoine', 'Griezmann', 'France'),
(7, 'Rory', 'McIlroy', 'Ireland'),
(8, 'Simone', 'Biles', 'USA'),
(9, 'Manpreet', 'Singh', 'India'),
(10, 'Kei', 'Nishikori', 'Japan'),
(11, 'Ardie', 'Savea', 'New Zealand'),

(12, 'Apurvi', 'Chandela', 'India'),
(13, 'Manika', 'Batra', 'India'),
(14, 'Maxwell', 'Holt', 'USA'),
(15, 'Vinesh', 'Phogat', 'India');
SELECT * FROM Cognitiolympics2k20.player_master;
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
