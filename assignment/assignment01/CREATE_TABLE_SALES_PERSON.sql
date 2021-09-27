CREATE TABLE SALES_PERSON(
	Salesperson_number	int 			NOT NULL PRIMARY KEY,
	Sfirstname			char(25)		NOT NULL,
	Slastname			char(25)		NOT NULL,
	Hiredate			Date			NULL,
	WageRate			Numeric(8,2)	NULL,
	ComRate				Numeric(8,2)    NULL,
	Sphone				char(12)		NULL,
	SEmailAddress		char(50)		NOT NULL UNIQUE
);