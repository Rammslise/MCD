#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (50) NOT NULL ,
        firstname Varchar (50) NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: genders
#------------------------------------------------------------

CREATE TABLE genders(
        id     Int  Auto_increment  NOT NULL ,
        gender Varchar (50) NOT NULL
	,CONSTRAINT genders_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: authors
#------------------------------------------------------------

CREATE TABLE authors(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (50) NOT NULL ,
        firstname Varchar (50) NOT NULL
	,CONSTRAINT authors_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: books
#------------------------------------------------------------

CREATE TABLE books(
        id         Int  Auto_increment  NOT NULL ,
        title      Varchar (100) NOT NULL ,
        id_genders Int NOT NULL ,
        id_authors Int NOT NULL
	,CONSTRAINT books_PK PRIMARY KEY (id)

	,CONSTRAINT books_genders_FK FOREIGN KEY (id_genders) REFERENCES genders(id)
	,CONSTRAINT books_authors0_FK FOREIGN KEY (id_authors) REFERENCES authors(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: registers
#------------------------------------------------------------

CREATE TABLE registers(
        id            Int  Auto_increment  NOT NULL ,
        borrowingDate Date NOT NULL ,
        returnDate    Date ,
        id_books      Int NOT NULL ,
        id_clients    Int NOT NULL
	,CONSTRAINT registers_PK PRIMARY KEY (id)

	,CONSTRAINT registers_books_FK FOREIGN KEY (id_books) REFERENCES books(id)
	,CONSTRAINT registers_clients0_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
)ENGINE=InnoDB;
