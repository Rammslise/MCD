#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: teachers
#------------------------------------------------------------

CREATE TABLE teachers(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (50) NOT NULL ,
        firstname Varchar (50) NOT NULL ,
        email     Varchar (100) NOT NULL
	,CONSTRAINT teachers_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: classrooms
#------------------------------------------------------------

CREATE TABLE classrooms(
        id          Int  Auto_increment  NOT NULL ,
        name        Varchar (20) NOT NULL ,
        id_teachers Int NOT NULL
	,CONSTRAINT classrooms_PK PRIMARY KEY (id)

	,CONSTRAINT classrooms_teachers_FK FOREIGN KEY (id_teachers) REFERENCES teachers(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: students
#------------------------------------------------------------

CREATE TABLE students(
        id            Int  Auto_increment  NOT NULL ,
        lastname      Varchar (50) NOT NULL ,
        firstname     Varchar (50) NOT NULL ,
        id_classrooms Int NOT NULL
	,CONSTRAINT students_PK PRIMARY KEY (id)

	,CONSTRAINT students_classrooms_FK FOREIGN KEY (id_classrooms) REFERENCES classrooms(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: subjects
#------------------------------------------------------------

CREATE TABLE subjects(
        id   Int  Auto_increment  NOT NULL ,
        name Varchar (20) NOT NULL
	,CONSTRAINT subjects_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: results
#------------------------------------------------------------

CREATE TABLE results(
        id          Int  Auto_increment  NOT NULL ,
        score       Float NOT NULL ,
        id_subjects Int NOT NULL ,
        id_students Int NOT NULL
	,CONSTRAINT results_PK PRIMARY KEY (id)

	,CONSTRAINT results_subjects_FK FOREIGN KEY (id_subjects) REFERENCES subjects(id)
	,CONSTRAINT results_students0_FK FOREIGN KEY (id_students) REFERENCES students(id)
)ENGINE=InnoDB;

