CREATE TABLE MEETING(
	CustomerID			int			 NOT NULL,
	Salesperson_number	int			 NOT NULL,
	Remarks				varchar(150) NULL,
	PRIMARY KEY(CustomerID),
	CONSTRAINT MeetingCustomer_FK FOREIGN KEY(CustomerID) REFERENCES CUSTOMER(CustomerID),
	PRIMARY KEY(Salesperson_number),
	CONSTRAINT MeetingSalesperson_FK FOREIGN KEY(Salesperson_number) REFERENCES SALES_PERSON(Salesperson_number),
);