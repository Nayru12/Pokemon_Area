drop database if exists PkArea;
create database if not exists PkArea;
use PkArea;

Drop table if exists Utilisateur ;
Drop table if exists Carte ;
Drop table if exists Collection;

Create Table if not exists Utilisateur(
Pseudo varchar(15) primary key not null,
Email varchar(30) not null,
Mdp varchar(15) not null,
note float 
);
alter table Utilisateur
add check (note <=5);

Create Table if not exists Carte(
IDCarte integer primary key not null,
Extension varchar(30) not null,
Nom varchar(30) not null,
Numero integer not null ,
TypeC varchar(10) not null,
rareté varchar(15) not null,
image varchar(200)
);

Create table if not exists Collection(
Pseudo varchar(15) not null, 
IDCarte integer not null,
Etat varchar(15) not null
);
alter table Collection 
add constraint Pseudo foreign key (Pseudo) References Utilisateur(Pseudo),
add constraint IDCarte foreign key (IDCarte) References Carte(IDCarte);

create table if not exists Offre(
ID integer primary key,
Pseudo1 varchar(15),
IDCarte1 integer,
Etat1 varchar(15),
price1 float,
Pseudo2 varchar(15),
IDCarte2 integer,
Etat2 varchar(15),
price2 float
);
alter table Offre 
add constraint Pseudo1 foreign key (Pseudo1) References Utilisateur(Pseudo),
add constraint IDCarte1 foreign key (IDCarte1) References Carte(IDCarte),
add constraint Pseudo2 foreign key (Pseudo2) References Utilisateur(Pseudo),
add constraint IDCarte2 foreign key (IDCarte2) References Carte(IDCarte);


INSERT INTO Carte VALUES (1001,'Set de base','Alakazam',001,'Psy','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/1.jpg');
INSERT INTO Carte VALUES (1002,'Set de base','Tortank',002,'Eau','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/2.jpg');
INSERT INTO Carte VALUES (1003,'Set de base','Leveinard',003,'Normal','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/3.jpg');
INSERT INTO Carte VALUES (1004,'Set de base','Dracaufeu',004,'Feu','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/4.jpg');
INSERT INTO Carte VALUES (1005,'Set de base','Mélofée',005,'Normal','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/5.jpg');
INSERT INTO Carte VALUES (1006,'Set de base','Léviator',006,'Eau','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/6.jpg');
INSERT INTO Carte VALUES (1007,'Set de base','Tygnon',007,'Combat','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/7.jpg');
INSERT INTO Carte VALUES (1008,'Set de base','Mackogneur',008,'Combat','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/8.jpg');
INSERT INTO Carte VALUES (1009,'Set de base','Magneton',009,'Electrique','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/9.jpg');
INSERT INTO Carte VALUES (1010,'Set de base','Mewtwo',010,'Psy','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/10.jpg');
INSERT INTO Carte VALUES (1011,'Set de base','Nidoking',011,'Plante','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/11.jpg');
INSERT INTO Carte VALUES (1012,'Set de base','Feunard',012,'Feu','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/12.jpg');
INSERT INTO Carte VALUES (1013,'Set de base','Tartard',013,'Eau','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/13.jpg');
INSERT INTO Carte VALUES (1014,'Set de base','Raichu',014,'Electrique','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/14.jpg');
INSERT INTO Carte VALUES (1015,'Set de base','Florizarre',015,'Plante','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/15.jpg');
INSERT INTO Carte VALUES (1016,'Set de base','Electhor',016,'Electrique','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/16.jpg');
INSERT INTO Carte VALUES (1017,'Set de base','Dardargnan',017,'Plante','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/17.jpg');
INSERT INTO Carte VALUES (1018,'Set de base','Draco',018,'Normal','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/18.jpg');
INSERT INTO Carte VALUES (1019,'Set de base','Triopikeur',019,'Combat','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/19.jpg');
INSERT INTO Carte VALUES (1020,'Set de base','Elektek',020,'Electrique','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/20.jpg');
INSERT INTO Carte VALUES (1021,'Set de base','Électrode',021,'Electrique','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/21.jpg'	);
INSERT INTO Carte VALUES (1022,'Set de base','Roucoups',022,'Normal','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/22.jpg');
INSERT INTO Carte VALUES (1023,'Set de base','Arcanin',023,'Feu','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/23.jpg');
INSERT INTO Carte VALUES (1024,'Set de base','Reptincel',024,'Feu','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/24.jpg');
INSERT INTO Carte VALUES (1025,'Set de base','Lamantine',025,'Eau','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/25.jpg');
INSERT INTO Carte VALUES (1026,'Set de base','Minidraco',026,'Normal','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/26.jpg');
INSERT INTO Carte VALUES (1027,'Set de base','Canarticho',027,'Normal','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/27.jpg');
INSERT INTO Carte VALUES (1028,'Set de base','Caninos',028,'Feu','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/28.jpg');
INSERT INTO Carte VALUES (1029,'Set de base','Spectrum',029,'Psy','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/29.jpg');
INSERT INTO Carte VALUES (1030,'Set de base','Herbizarre',030,'Plante','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/30.jpg');
INSERT INTO Carte VALUES (1031,'Set de base','Lippoutou',031,'Psy','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/31.jpg');
INSERT INTO Carte VALUES (1032,'Set de base','Kadabra',032,'Psy','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/32.jpg');
INSERT INTO Carte VALUES (1033,'Set de base','Coconfort',033,'Plante','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/33.jpg');
INSERT INTO Carte VALUES (1034,'Set de base','Machopeur',034,'Combat','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/34.jpg');
INSERT INTO Carte VALUES (1035,'Set de base','Magicarpe',035,'Eau','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/35.jpg');
INSERT INTO Carte VALUES (1036,'Set de base','Magmar',036,'Feu','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/36.jpg');
INSERT INTO Carte VALUES (1037,'Set de base','Nidorino',037,'Plante','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/37.jpg');
INSERT INTO Carte VALUES (1038,'Set de base','Têtarte',038,'Eau','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/38.jpg');
INSERT INTO Carte VALUES (1039,'Set de base','Porygon',039,'Normal','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/39.jpg');
INSERT INTO Carte VALUES (1040,'Set de base','Rattatac',040,'Normal','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/40.jpg');
INSERT INTO Carte VALUES (1041,'Set de base','Otaria',041,'Eau','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/41.jpg');
INSERT INTO Carte VALUES (1042,'Set de base','Carabaffe',042,'Eau','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/42.jpg');
INSERT INTO Carte VALUES (1043,'Set de base','Abra',043,'Psy','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/43.jpg');
INSERT INTO Carte VALUES (1044,'Set de base','Bulbizarre',044,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/44.jpg');
INSERT INTO Carte VALUES (1045,'Set de base','Chenipan',045,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/45.jpg');
INSERT INTO Carte VALUES (1046,'Set de base','Salamèche',046,'Feu','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/46.jpg');
INSERT INTO Carte VALUES (1047,'Set de base','Taupiqueur',047,'Combat','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/47.jpg');
INSERT INTO Carte VALUES (1048,'Set de base','Doduo',048,'Normal','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/48.jpg');
INSERT INTO Carte VALUES (1049,'Set de base','Soporifik',049,'Psy','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/49.jpg');
INSERT INTO Carte VALUES (1050,'Set de base','Fantominus',50,'Psy','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/50.jpg');
INSERT INTO Carte VALUES (1051,'Set de base','Smogo',51,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/51.jpg');
INSERT INTO Carte VALUES (1052,'Set de base','Machoc',52,'Combat','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/52.jpg');
INSERT INTO Carte VALUES (1053,'Set de base','Magneti',53,'Electrique','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/53.jpg');
INSERT INTO Carte VALUES (1054,'Set de base','Chrysacier',54,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/54.jpg');
INSERT INTO Carte VALUES (1055,'Set de base','Nidoran',55,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/55.jpg');
INSERT INTO Carte VALUES (1056,'Set de base','Onix',56,'Combat','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/56.jpg');
INSERT INTO Carte VALUES (1057,'Set de base','Roucool',57,'Normal','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/57.jpg');
INSERT INTO Carte VALUES (1058,'Set de base','Pikachu',58,'Electrique','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/58.jpg');
INSERT INTO Carte VALUES (1059,'Set de base','Ptitard',59,'Eau','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/59.jpg');
INSERT INTO Carte VALUES (1060,'Set de base','Ponyta',60,'Feu','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/60.jpg');
INSERT INTO Carte VALUES (1061,'Set de base','Rattata',61,'Normal','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/61.jpg');
INSERT INTO Carte VALUES (1062,'Set de base','Sabelette',62,'Combat','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/62.jpg');
INSERT INTO Carte VALUES (1063,'Set de base','Carapuce',63,'Eau','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/63.jpg');
INSERT INTO Carte VALUES (1064,'Set de base','Staross ',64,'Eau','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/64.jpg');
INSERT INTO Carte VALUES (1065,'Set de base','Stari',65,'Eau','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/65.jpg');
INSERT INTO Carte VALUES (1066,'Set de base','Saquedeneu',66,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/66.jpg');
INSERT INTO Carte VALUES (1067,'Set de base','Voltorbe',67,'Electrique','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/67.jpg');
INSERT INTO Carte VALUES (1068,'Set de base','Goupix',68,'Feu','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/68.jpg');
INSERT INTO Carte VALUES (1069,'Set de base','Aspicot',69,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/69.jpg');
INSERT INTO Carte VALUES (1070,'Set de base','Peluche Mélofée',70,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/70.jpg');
INSERT INTO Carte VALUES (1071,'Set de base','Recherche Informatique',71,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/71.jpg');
INSERT INTO Carte VALUES (1072,'Set de base','Vaporisateur Rétrograde',72,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/72.jpg');
INSERT INTO Carte VALUES (1073,'Set de base','Faux Professeur Chen',73,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/73.jpg');
INSERT INTO Carte VALUES (1074,'Set de base','Récupérateur',74,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/74.jpg');
INSERT INTO Carte VALUES (1075,'Set de base','Fillette',75,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/75.jpg');
INSERT INTO Carte VALUES (1076,'Set de base','Eleveur de Pokémon',76,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/76.jpg');
INSERT INTO Carte VALUES (1077,'Set de base','Marchand de Pokémon',77,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/77.jpg');
INSERT INTO Carte VALUES (1078,'Set de base','Rappel',78,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/78.jpg');
INSERT INTO Carte VALUES (1079,'Set de base','Double Suppression d Énergie',79,'Dresseur','Rare','https://www.pokecardex.com/assets/images/sets/BS/HD/79.jpg');
INSERT INTO Carte VALUES (1080,'Set de base','Defender',80,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/80.jpg');
INSERT INTO Carte VALUES (1081,'Set de base','Sauvegarde d Énergie',81,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/81.jpg');
INSERT INTO Carte VALUES (1082,'Set de base','Guérison Totale',82,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/82.jpg');
INSERT INTO Carte VALUES (1083,'Set de base','Entretien',83,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/83.jpg');
INSERT INTO Carte VALUES (1084,'Set de base','PlusPower',84,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/84.jpg');
INSERT INTO Carte VALUES (1085,'Set de base','Centre Pokémon',85,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/85.jpg');
INSERT INTO Carte VALUES (1086,'Set de base','Flûte Pokémon',86,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/86.jpg');
INSERT INTO Carte VALUES (1087,'Set de base','Pokédex',87,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/87.jpg');
INSERT INTO Carte VALUES (1088,'Set de base','Professeur Chen',88,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/88.jpg');
INSERT INTO Carte VALUES (1089,'Set de base','Réanimation',89,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/89.jpg');
INSERT INTO Carte VALUES (1090,'Set de base','Super Potion',90,'Dresseur','Peu Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/90.jpg');
INSERT INTO Carte VALUES (1091,'Set de base','Léo',91,'Dresseur','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/91.jpg');
INSERT INTO Carte VALUES (1092,'Set de base','Suppression d Energie',92,'Dresseur','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/92.jpg');
INSERT INTO Carte VALUES (1093,'Set de base','Rafale de vent ',93,'Dresseur','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/93.jpg');
INSERT INTO Carte VALUES (1094,'Set de base','Potion',94,'Dresseur','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/94.jpg');
INSERT INTO Carte VALUES (1095,'Set de base','Transfert',95,'Dresseur','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/95.jpg');
INSERT INTO Carte VALUES (1096,'Set de base','Double Energie Incolore',96,'Normal','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/96.jpg');
INSERT INTO Carte VALUES (1097,'Set de base','Energie Combat',96,'Combat','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/97.jpg');
INSERT INTO Carte VALUES (1098,'Set de base','Energie Feu',98,'Feu','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/98.jpg');
INSERT INTO Carte VALUES (1099,'Set de base','Energie Plante',99,'Plante','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/99.jpg');
INSERT INTO Carte VALUES (1100,'Set de base','Energie Electrique',100,'Electrique','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/100.jpg');
INSERT INTO Carte VALUES (1101,'Set de base','Energie Psy',101,'Psy','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/101.jpg');
INSERT INTO Carte VALUES (1102,'Set de base','Energie Eau',102,'Eau','Commune','https://www.pokecardex.com/assets/images/sets/BS/HD/102.jpg');

INSERT INTO Utilisateur VALUES ('Arthur_SCELLES','scellesarthur@gmail.com' ,'mdp',5);
INSERT INTO Utilisateur VALUES ('Guillaume','G@gmail.com' ,'mdp',5);
INSERT INTO Utilisateur VALUES ('User02','identifiant' ,'mdp',0);
INSERT INTO Utilisateur VALUES ('User03','identifiant' ,'mdp',0);
INSERT INTO Utilisateur VALUES ('User04','identifiant' ,'mdp',0);
INSERT INTO Utilisateur VALUES ('User05','identifiant' ,'mdp',0);

INSERT INTO Collection VALUES ('Guillaume',1002,'Bon');
INSERT INTO Collection VALUES ('Guillaume',1003,'Bon');
INSERT INTO Collection VALUES ('Guillaume',1004,'Bon');
INSERT INTO Collection VALUES ('Guillaume',1052,'Bon');
INSERT INTO Collection VALUES ('Guillaume',1062,'Bon');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1001,'Bon');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1101,'Mauvais');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1045,'Parfait');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1045,'Tres Mauvais');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1072,'Bon');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1042,'Bon');
INSERT INTO Collection VALUES ('Arthur_SCELLES',1002,'Bon');
INSERT INTO Collection VALUES ('User02',1001,'Bon');
INSERT INTO Collection VALUES ('User02',1021,'Bon');
INSERT INTO Collection VALUES ('User03',1060,'Bon');
INSERT INTO Collection VALUES ('User03',1060,'Bon');
INSERT INTO Collection VALUES ('User03',1060,'Parfait');
INSERT INTO Collection VALUES ('User03',1061,'Mauvais');

Insert into Offre values (1,'Arthur_SCELLES',1001,'Bon',0,'User02',1021,'Parfait',0);
Insert into Offre values (2,'Arthur_SCELLES',1045,'Très Mauvais',0,'User02',1021,'Parfait',0);



#Se conecter avec email et mdp
select Pseudo from Utilisateur where Email='scellesarthur@gmail.com' and mdp='mdp';
#Afficher la colection
select Numero,Nom,TypeC,rareté,Etat from Collection natural join Carte where Collection.Pseudo='Arthur_SCELLES';
#Rechercher par Type
select * from Carte where typeC='Eau';
#Offre Valide
select ID,Pseudo1,idcarte1,etat1,price1,pseudo2,idcarte2,etat2,price2 
from Offre,Collection where (Pseudo1=Pseudo and IDCarte1=IDCARTE and Etat1=Etat );

select * from Offre;


select * from Collection natural join Carte where Collection.Pseudo='Arthur_SCELLES';

select * from Utilisateur;