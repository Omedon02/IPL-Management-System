#Creating the DATABASE
CREATE DATABASE IPL;
USE IPL;

#Creating the Tables
#1.)Team Table
CREATE 	TABLE Team(
team_code VARCHAR(255) PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

# 2.)Player Table
CREATE TABLE Player(
player_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
nationality VARCHAR(255) NOT NULL,
date_of_birth DATE NOT NULL,
role VARCHAR(255) NOT NULL,
team_code VARCHAR(255) NOT NULL,
matches_played INT NOT NULL,
runs INT NOT NULL,
wickets INT NOT NULL,
strike_rate FLOAT NOT NULL,
economy FLOAT NOT NULL
);

#3.)Points Table
CREATE TABLE Points_table (
team_code VARCHAR(255) PRIMARY KEY,
matches_played INT NOT NULL,
wins INT NOT NULL,
losses INT NOT NULL,
no_result INT NOT NULL,
net_rr DOUBLE NOT NULL,
points INT NOT NULL,
rank_ INT NOT NULL
);

#4.)Matchs Table
CREATE TABLE Match_(
match_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
team1 VARCHAR(255) NOT NULL,
team2 VARCHAR(255) NOT NULL,
date DATE NOT NULL,
stadium_name VARCHAR(255) NOT NULL
);

#5.) Match Stats Table
CREATE TABLE Match_stats(
match_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_batting_team VARCHAR(255) NOT NULL,
runs1 INT NOT NULL,
wickets1 INT NOT NULL,
runs2 INT NOT NULL,
wickets2 INT NOT NULL,
plays_or_not TINYINT(1) NOT NULL,
result VARCHAR(255) NOT NULL
);

#6.) Venue Table
CREATE TABLE Venue(
stadium_name VARCHAR(255) PRIMARY KEY,
city VARCHAR(255) NOT NULL,
stadium_capacity INT NOT NULL
);

#Adding the Foreign Key constraints on all the tables

ALTER TABLE Player
ADD CONSTRAINT player_team_code_foreign
FOREIGN KEY (team_code) REFERENCES Team(team_code);

ALTER TABLE Match_
ADD CONSTRAINT match_team1_foreign
FOREIGN KEY(team1) REFERENCES Team(team_code);

ALTER TABLE Match_
ADD CONSTRAINT match_team2_foreign
FOREIGN KEY(team2) REFERENCES Team(team_code);

ALTER TABLE Points_table
ADD CONSTRAINT points_table_team_code_foreign
FOREIGN KEY(team_code) REFERENCES Team(team_code);

ALTER TABLE Match_
ADD CONSTRAINT match_stadium_name_foreign
FOREIGN KEY(stadium_name) REFERENCES Venue(stadium_name);

ALTER TABLE Match_stats
ADD CONSTRAINT match_stats_match_id_foreign
FOREIGN KEY(match_id) REFERENCES Match_(match_id);

       # INSERTING DATA 
#Insertion into the Team Table
INSERT INTO Team
VALUES('CSK','Chennai Super Kings'),('MI','Mumbai Indians'),('KKR','Kolkata Knight Riders'),('DC','Delhi Captitals'),
('RCB','Royal Challengers Banglore'),('SRH','Sunrisers Hyderabad');

#Insertion into Points Table
INSERT INTO Points_table































