CREATE TABLE TRACK (
	cID int FOREIGN KEY REFERENCES CD (cID),
	Num int NOT NULL PRIMARY KEY,
	Title CHAR(20) NOT NULL,
	TimeCol int NOT NULL,
	aID int FOREIGN KEY REFERENCES ARTIST (aID),
);