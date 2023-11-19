CREATE DATABASE IF NOT EXISTS ConnectEvent;


CREATE TABLE `organisateurs` (
Id_organisateurs INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(255),
role VARCHAR(255),
email VARCHAR(255),
phone VARCHAR(255)
)



CREATE TABLE `sponsors`(
    Id_sponsors INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    secteur VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255)
    )


CREATE TABLE `partisipants`(
Id_participants INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(255),
prenom VARCHAR(255),
phone VARCHAR(255),
mail VARCHAR(255)
)


CREATE TABLE `lieux`(
Id_lieux INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(255),
lieux_description VARCHAR(255)
)



CREATE TABLE `evenements` (
    Id_evenements INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    lieu_evenements INT, 
    type VARCHAR(255),
    evenements_description TEXT,
    FOREIGN KEY (lieu_evenements) REFERENCES lieux(Id_lieux) 
)



CREATE TABLE `billets`(
Id_billets INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(255),
prix INT,
prticipants INT,
evenement INT,
FOREIGN KEY (prticipants) REFERENCES partisipants(Id_participants),
FOREIGN KEY (evenement) REFERENCES evenements(Id_evenements)
)



CREATE TABLE `organiser`(
Id_organiser INT PRIMARY KEY AUTO_INCREMENT,
organisateur INT,
evenement INT,
FOREIGN KEY (organisateur) REFERENCES organisateurs(Id_organisateurs),
FOREIGN KEY (evenement) REFERENCES evenements(Id_evenements)
)



CREATE TABLE `finance`(
Id_finance INT PRIMARY KEY AUTO_INCREMENT,
sponsor INT,
evenement INT,
FOREIGN KEY (sponsor) REFERENCES sponsors(Id_sponsors),
FOREIGN KEY (evenement) REFERENCES evenements(Id_evenements)
)






/*--------------------------------------insertion---------------------------------------*/



INSERT INTO organisateurs (nom, role, email, phone) 
VALUES ('simplone', 'pedagogie', 'simplone_org@gmail.com', '272727373');



INSERT INTO sponsors (nom, secteur, email, phone) 
VALUES ('OCP', 'phosphate', 'GROUP_OCP@gmail.com', '0861828289');



INSERT INTO partisipants (nom, prenom, phone, mail) 
VALUES ('Mohamed', 'Haki', '0641725930', 'Mohamedhaki70@Gmail.com');


INSERT INTO lieux (nom, lieux_description) 
VALUES ('Youcode', 'Ecole de code a youssoufia cree avec une  collaboration entre simplone et group ocp');



INSERT INTO evenements (nom, lieu_evenement, type, evenements_description) 
VALUES ('Jour_dintegration', 1, 'Défis', 'Défis entre squads en defferences jeux pour supprimer les lines qui siparrer les etudiants a lecole et cree des relations entre eux');


INSERT INTO billets (nom, prix, prticipants, evenement) 
VALUES ('Billet VIP', 100, 1, 1)
       
