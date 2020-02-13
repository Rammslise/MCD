#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: types
#------------------------------------------------------------

CREATE TABLE types(
        id   Int  Auto_increment  NOT NULL ,
        type Varchar (50) NOT NULL
	,CONSTRAINT types_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: properties
#------------------------------------------------------------

CREATE TABLE properties(
        id         Int  Auto_increment  NOT NULL ,
        name       Varchar (100) NOT NULL ,
        postalCode Int ,
        price      Float NOT NULL ,
        id_types   Int NOT NULL
	,CONSTRAINT properties_PK PRIMARY KEY (id)

	,CONSTRAINT properties_types_FK FOREIGN KEY (id_types) REFERENCES types(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (50) NOT NULL ,
        firstname Varchar (50) NOT NULL ,
        birthDate Date ,
        mail      Varchar (50) ,
        budget    Int NOT NULL ,
        id_types  Int NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)

	,CONSTRAINT clients_types_FK FOREIGN KEY (id_types) REFERENCES types(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: timeSlots
#------------------------------------------------------------

CREATE TABLE timeSlots(
        id       Int  Auto_increment  NOT NULL ,
        timeSlot Time NOT NULL
	,CONSTRAINT timeSlots_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appointments
#------------------------------------------------------------

CREATE TABLE appointments(
        id            Int  Auto_increment  NOT NULL ,
        date          Date NOT NULL ,
        id_clients    Int NOT NULL ,
        id_properties Int NOT NULL ,
        id_timeSlots  Int NOT NULL
	,CONSTRAINT appointments_PK PRIMARY KEY (id)

	,CONSTRAINT appointments_clients_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
	,CONSTRAINT appointments_properties0_FK FOREIGN KEY (id_properties) REFERENCES properties(id)
	,CONSTRAINT appointments_timeSlots1_FK FOREIGN KEY (id_timeSlots) REFERENCES timeSlots(id)
)ENGINE=InnoDB;

