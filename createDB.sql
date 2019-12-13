DROP TABLE OFFICER CASCADE CONSTRAINTS;
DROP TABLE SHOOTING CASCADE CONSTRAINTS;
DROP TABLE VICTIM CASCADE CONSTRAINTS;
DROP SEQUENCE seqOID;
DROP SEQUENCE seqSID;
DROP SEQUENCE seqVID;
CREATE TABLE OFFICER(
	Badge		     Int			NOT NULL,
    Name			Char(25)		NOT NULL,
	State           Char(2)        NOT NULL,
	County			Char(25)		NULL,
	CONSTRAINT			OFFICER_PK		PRIMARY KEY(Badge)
	);
    CREATE SEQUENCE seqOID INCREMENT BY 1 START WITH 1;
    
CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

CREATE SEQUENCE seqVID INCREMENT BY 1 START WITH 1;

CREATE TABLE VICTIM(
	SSN			Int				        NOT NULL,
	VName			Char(25)		NOT NULL,
	Age			Int		                NULL,
	Race		Char(15)		 NULL,
    Gender      Char(1)                 NULL,
    MentalIllness       Char(5)              NULL,
    Weapon               char(20)               NULL,
	CONSTRAINT			VICTIM_PK		PRIMARY KEY(SSN)
	);
    CREATE TABLE SHOOTING(
ShootingID			Int				NOT NULL,
   State               Char(2)        NOT NULL,
    County               Char(25)        NOT NULL,
    Dte                Char(10)             NOT NULL,
    Legal                   Int             NOT NULL,
	Badge			Int				NOT NULL,
    SSN             Int             NOT NULL,
    CONSTRAINT			OFFICER_FK	FOREIGN KEY (Badge)
							REFERENCES OFFICER(Badge),
   CONSTRAINT          VICTIM_FK FOREIGN KEY (SSN) 
                            REFERENCES VICTIM(SSN),
CONSTRAINT			SHOOTING_PK	PRIMARY KEY (ShootingID)
);
