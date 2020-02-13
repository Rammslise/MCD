#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: timeSlots
#------------------------------------------------------------

CREATE TABLE timeSlots(
        id   Int  Auto_increment  NOT NULL ,
        time Time NOT NULL
	,CONSTRAINT timeSlots_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: specialities
#------------------------------------------------------------

CREATE TABLE specialities(
        id         Int  Auto_increment  NOT NULL ,
        speciality Varchar (100) NOT NULL
	,CONSTRAINT specialities_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: doctors
#------------------------------------------------------------

CREATE TABLE doctors(
        id              Int  Auto_increment  NOT NULL ,
        lastname        Varchar (100) NOT NULL ,
        firstname       Varchar (100) NOT NULL ,
        id_specialities Int NOT NULL
	,CONSTRAINT doctors_PK PRIMARY KEY (id)

	,CONSTRAINT doctors_specialities_FK FOREIGN KEY (id_specialities) REFERENCES specialities(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: patients
#------------------------------------------------------------

CREATE TABLE patients(
        id         Int  Auto_increment  NOT NULL ,
        lastname   Varchar (100) NOT NULL ,
        firstname  Varchar (100) NOT NULL ,
        id_doctors Int NOT NULL
	,CONSTRAINT patients_PK PRIMARY KEY (id)

	,CONSTRAINT patients_doctors_FK FOREIGN KEY (id_doctors) REFERENCES doctors(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appointments
#------------------------------------------------------------

CREATE TABLE appointments(
        id           Int  Auto_increment  NOT NULL ,
        date         Date NOT NULL ,
        id_doctors   Int NOT NULL ,
        id_patients  Int NOT NULL ,
        id_timeSlots Int NOT NULL
	,CONSTRAINT appointments_PK PRIMARY KEY (id)

	,CONSTRAINT appointments_doctors_FK FOREIGN KEY (id_doctors) REFERENCES doctors(id)
	,CONSTRAINT appointments_patients0_FK FOREIGN KEY (id_patients) REFERENCES patients(id)
	,CONSTRAINT appointments_timeSlots1_FK FOREIGN KEY (id_timeSlots) REFERENCES timeSlots(id)
)ENGINE=InnoDB;

