#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: types
#------------------------------------------------------------

CREATE TABLE types(
        id    Int  Auto_increment  NOT NULL ,
        types Varchar (100) NOT NULL
	,CONSTRAINT types_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: properties
#------------------------------------------------------------

CREATE TABLE properties(
        id       Int  Auto_increment  NOT NULL ,
        name     Varchar (50) NOT NULL ,
        zip      Int NOT NULL ,
        price    Int NOT NULL ,
        id_types Int NOT NULL
	,CONSTRAINT properties_PK PRIMARY KEY (id)

	,CONSTRAINT properties_types_FK FOREIGN KEY (id_types) REFERENCES types(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (100) NOT NULL ,
        firstname Varchar (100) NOT NULL ,
        birthDate Date NOT NULL ,
        email     Varchar (100) NOT NULL ,
        budget    Int NOT NULL ,
        id_types  Int NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)

	,CONSTRAINT clients_types_FK FOREIGN KEY (id_types) REFERENCES types(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: timeSlots
#------------------------------------------------------------

CREATE TABLE timeSlots(
        id   Int  Auto_increment  NOT NULL ,
        time Datetime NOT NULL
	,CONSTRAINT timeSlots_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appointments
#------------------------------------------------------------

CREATE TABLE appointments(
        id            Int  Auto_increment  NOT NULL ,
        date          Date NOT NULL ,
        id_timeSlots  Int NOT NULL ,
        id_clients    Int NOT NULL ,
        id_properties Int NOT NULL
	,CONSTRAINT appointments_PK PRIMARY KEY (id)

	,CONSTRAINT appointments_timeSlots_FK FOREIGN KEY (id_timeSlots) REFERENCES timeSlots(id)
	,CONSTRAINT appointments_clients0_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
	,CONSTRAINT appointments_properties1_FK FOREIGN KEY (id_properties) REFERENCES properties(id)
)ENGINE=InnoDB;

