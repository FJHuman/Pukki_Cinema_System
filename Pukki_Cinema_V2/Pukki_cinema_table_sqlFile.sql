USE [Pukki_Cinema]
GO



CREATE TABLE GENRES(
Genre_ID	int 		IDENTITY(1,1) PRIMARY KEY,
Description	varchar(20)
);

CREATE TABLE FILMS(
Film_ID		int		IDENTITY(1,1) PRIMARY KEY,
Title		varchar(100),
Film_Cost	money,
Selling_Price	smallmoney,
Length		int,
Age_Restriction int,
Genre_ID	int	FOREIGN KEY REFERENCES GENRES(Genre_ID),
Status bit
);


CREATE TABLE THEATRES(
Theatre_ID	int		IDENTITY(1,1) PRIMARY KEY,
Capacity	int
);

CREATE TABLE USERS(
Users_ID	int		IDENTITY(1,1) PRIMARY KEY,
Username	varchar(20),
Password	varchar(20),
IsAdmin		bit
);

CREATE TABLE TIME_ALLOCATIONS(
Time_ID		int 		IDENTITY(1,1) PRIMARY KEY,
Time		time
);

CREATE TABLE SCHEDULES(
Schedule_ID	int 		IDENTITY(1,1) PRIMARY KEY,
Film_ID		int	FOREIGN KEY REFERENCES FILMS(Film_ID),
Theatre_ID	int	FOREIGN KEY REFERENCES THEATRES(Theatre_ID),
Time_ID		int 	FOREIGN KEY REFERENCES TIME_ALLOCATIONS(Time_ID),
Film_Date	date,
Ticket_Counter	int
);

