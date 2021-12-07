drop database if exists CSRF;
create database CSRF;

use CSRF;

CREATE TABLE AncAte
(
  numero        INT         NOT NULL AUTO_INCREMENT,
  dateEnre      VARCHAR(30) NULL    ,
  dateheureProg VARCHAR(30) NULL    ,
  duree         INT         NULL    ,
  nbPlace       INT         NULL    ,
  theme         VARCHAR(30) NULL    ,
  PRIMARY KEY (numero)
);

CREATE TABLE AncParticiper
(
  numeroAncC  int          NOT NULL,
  numeroAncA  INT          NOT NULL,
  commentaire VARCHAR(100) NULL    
);

CREATE TABLE Ateliers
(
  numero        INT         NOT NULL AUTO_INCREMENT,
  dateEnre      VARCHAR(30) NULL    ,
  dateheureProg VARCHAR(30) NULL    ,
  duree         INT         NULL    ,
  nbPlace       INT         NULL    ,
  theme         VARCHAR(30) NULL    ,
  PRIMARY KEY (numero)
);

CREATE TABLE Client
(
  numero int         NOT NULL AUTO_INCREMENT,
  nom    VARCHAR(30) NULL    ,
  prenom VARCHAR(30) NULL    ,
  login  VARCHAR(30) NULL    ,
  mdp    VARCHAR(30) NULL    ,
  ville  VARCHAR(30) NULL    ,
  PRIMARY KEY (numero)
);

CREATE TABLE Commentaire
(
  numero  INT          NOT NULL,
  libelle VARCHAR(100) NULL    ,
  PRIMARY KEY (numero)
);

CREATE TABLE Participer
(
  numeroClt int NOT NULL,
  numeroAte INT NOT NULL
);

ALTER TABLE Participer
  ADD CONSTRAINT FK_Client_TO_Participer
    FOREIGN KEY (numeroClt)
    REFERENCES Client (numero);

ALTER TABLE Participer
  ADD CONSTRAINT FK_Ateliers_TO_Participer
    FOREIGN KEY (numeroAte)
    REFERENCES Ateliers (numero);

ALTER TABLE AncParticiper
  ADD CONSTRAINT FK_Client_TO_AncParticiper
    FOREIGN KEY (numeroAncC)
    REFERENCES Client (numero);

ALTER TABLE AncParticiper
  ADD CONSTRAINT FK_AncAte_TO_AncParticiper
    FOREIGN KEY (numeroAncA)
    REFERENCES AncAte (numero);
  
        
insert into Client (`nom`,`prenom`,`login`,`mdp`,`ville`) values ('LUKOMBO',"Desanges","desanges","azerty","Nogent");
insert into Client (`nom`,`prenom`,`login`,`mdp`,`ville`) values ("BARNIS","Pierre","pierre","azertyy","Nogent");
insert into Client (`nom`,`prenom`,`login`,`mdp`,`ville`) values ("JADIS","Benoit","benoit","azertyyy","Nogent");

insert into Ateliers (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("10-04-2021","10-04-2021 15:00",2,25,"Lecture");
insert into Ateliers (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("11-04-2021","11-04-2021 18:00",4,85,"Football");
insert into Ateliers (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("12-04-2021","12-04-2021 12:00",3,4,"Basket");
insert into Ateliers (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("13-04-2021","13-04-2021 17:00",1,1,"Documentation");
insert into Ateliers (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("14-04-2021","14-04-2021 22:00",8,32,"Cinema");

insert into Participer values (1,1);
insert into Participer values (1,2);
insert into Participer values (1,3);
insert into Participer values (2,1);
insert into Participer values (3,2);

insert into AncAte (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("10-04-2021","10-04-2021 15:00",2,25,"Jeux de carte");
insert into AncAte (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("11-04-2021","11-04-2021 18:00",4,85,"Baseball");
insert into AncAte (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("12-04-2021","12-04-2021 12:00",3,4,"Tir à l'arc");
insert into AncAte (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("13-04-2021","13-04-2021 17:00",1,1,"Equitation");
insert into AncAte (`dateEnre`,`dateheureProg`,`duree`,`nbPlace`,`theme`)values("14-04-2021","14-04-2021 22:00",8,32,"Natation");

insert into AncParticiper values (1,1,NULL);
insert into AncParticiper values (1,2,NULL);
insert into AncParticiper values (1,3,NULL);
insert into AncParticiper values (2,1,NULL);
insert into AncParticiper values (3,2,NULL);

select * from Client;

select * from Ateliers;

select * from Participer;
