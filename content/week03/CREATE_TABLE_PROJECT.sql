CREATE TABLE PROJECT(
	ProjectID 			Int 			NOT NULL,
	ProjectName			Char(50)		NOT NULL,	
	Department			Char(35)		NOT NULL,
	MaxHours			Numeric(8,2)	NOT NULL DEFAULT 100,
	StartDate			Date			NULL,
	EndDate				Date			NULL,
	CONSTRAINT PROJECT_PK PRIMARY KEY(ProjectID),
	CONSTRAINT PROJ_DEPART_FK FOREIGN KEY(Department) REFERENCES DEPARTMENT(DepartmentName) ON UPDATE CASCADE	
);
