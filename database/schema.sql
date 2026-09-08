CREATE DATABASE Rabbis;
\CONNECT Rabbis

CREATE TABLE RabbiInfo 
(
	Rabbi_id int NOT NULL PRIMARY KEY, 
	Rabbi_Acronym varchar(60) NOT NULL, 
	Rabbi_FullName varchar(60) NOT NULL,
	Rabbi_YearBorn int,
	Rabbi_YearDied int,
	Location varchar(60) 
);

CREATE TABLE Works 
(
	work_id int PRIMARY KEY,
	titles varchar(60),
	division varchar(60) 
);

CREATE TABLE RabbiWorks
(
	Rabbi_id int NOT NULL,
	work_id int NOT NULL, 
	sefaria_path varchar(500) NOT NULL, 
	PRIMARY KEY (Rabbi_id, work_id),
    FOREIGN KEY (Rabbi_id) REFERENCES RabbiInfo(Rabbi_id),
    FOREIGN KEY (work_id) REFERENCES Works(work_id) 
);
