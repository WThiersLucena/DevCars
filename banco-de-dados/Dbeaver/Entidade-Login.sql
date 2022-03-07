CREATE TABLE login (
  id int NOT NULL AUTO_INCREMENT,
  email varchar(100)NOT NULL,
  senha varchar(80) NOT NULL,
  usuario varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`) 
  );
  
INSERT INTO login VALUES(1, "augusto.meireles@devcars.com", "augusto", "Augusto");
INSERT INTO login VALUES(2,"guilherme.viana@devcars.com", "guilherme", "Guilherme");
INSERT INTO login VALUES(3, "larissa.bandeira@devcars.com", "larissa", "Larissa");
INSERT INTO login VALUES(4,"lidia.maciel@devcars.com", "lidia", "Lidia");
INSERT INTO login VALUES(5, "wanderson.thiers@devcars.com", "wanderson", "Wanderson");


SELECT * FROM login;

