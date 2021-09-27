CREATE TABLE CUSTOMER(
	CustomerID		int			NOT NULL PRIMARY KEY,
	LastName		char(25)	NOT NULL,
	FirstName		char(25)	NOT NULL,
	Address			char(25)	NULL,
	City			char(25)	NULL,
	State			char(25)	NULL,
	ZIP				char(6)		NULL,
	EmailAddress	char(50)	NOT NULL UNIQUE
);