USE leiExpress;

INSERT INTO Pais(nome,Id_Pais)
VALUES 
	('Portugal',1), 
	('Espanha',2),
	('França',3),
	('Inglaterra',4);

INSERT INTO Cidade(nome,Id_Cidade,Paises)
VALUES 
	('Porto',1,1),
	('Lisboa',2,1),
    ('Madrid',3,2),
    ('Paris',4,3),
    ('Londres',5,4);

INSERT INTO Estação(nome,id_Estacao,Cidades)
VALUES 
	('Estação LX',1,1),
    ('Estação das Antas',2,2),
    ('Estácion Blanca',3,3),
    ('Gare Royal',4,4),
    ('Great Central',5,5);

INSERT INTO Comboio(Id_Comboio,Capacidade)
VALUES
	(1,15),
    (2,15),
    (3,15),
    (4,15),
    (5,15);

INSERT INTO Lugares(NumeroLugar,Carruagem,Tipo,Comboio_id_Comboio)
VALUES
	(1,1,1,1),
    (2,1,1,1),
    (3,1,1,1),
    (4,1,1,1),
    (5,1,1,1),
    (6,2,2,1),
    (7,2,2,1),
    (8,2,2,1),
    (9,2,2,1),
    (10,2,3,1),
    (11,3,2,1),
    (12,3,2,1),
    (13,3,2,1),
    (14,3,2,1),
    (15,3,3,1),
    (1,1,1,2),
    (2,1,1,2),
    (3,1,1,2),
    (4,1,1,2),
    (5,1,1,2),
    (6,2,2,2),
    (7,2,2,2),
    (8,2,2,2),
    (9,2,2,2),
    (10,2,3,2),
    (11,3,2,2),
    (12,3,2,2),
    (13,3,2,2),
    (14,3,2,2),
    (15,3,3,2),
    (1,1,1,3),
    (2,1,1,3),
    (3,1,1,3),
    (4,1,1,3),
    (5,1,1,3),
    (6,2,2,3),
    (7,2,2,3),
    (8,2,2,3),
    (9,2,2,3),
    (10,2,3,3),
    (11,3,2,3),
    (12,3,2,3),
    (13,3,2,3),
    (14,3,2,3),
    (15,3,3,3),
    (1,1,1,4),
    (2,1,1,4),
    (3,1,1,4),
    (4,1,1,4),
    (5,1,1,4),
    (6,2,2,4),
    (7,2,2,4),
    (8,2,2,4),
    (9,2,2,4),
    (10,2,3,4),
    (11,3,2,4),
    (12,3,2,4),
    (13,3,2,4),
    (14,3,2,4),
    (15,3,3,4),
    (1,1,1,5),
    (2,1,1,5),
    (3,1,1,5),
    (4,1,1,5),
    (5,1,1,5),
    (6,2,2,5),
    (7,2,2,5),
    (8,2,2,5),
    (9,2,2,5),
    (10,2,3,5),
    (11,3,2,5),
    (12,3,2,5),
    (13,3,2,5),
    (14,3,2,5),
    (15,3,3,5);
    

INSERT INTO Cliente(Id_Cliente,Email,Nome,Password,Saldo)
VALUES 
	(1,'oqueimportaetersaude@gmail.com','Renato Portões','pussycat',170.50),
    (2,'saralexx@gmail.com','Sara Pereira','lindinha123',87.00),
    (3,'josefasjoga@live.com','Josefas Dionísia','tacaca5478',500.00),
    (4,'iwishyouamerrychristmas@gmail.com','Márcio Faria','whoelse',729.43),
    (5,'omelettedufromage@gmail.com','Dexter Ferreira','laboratorio',144.00),
    (6,'barcasorridente@gmail.com','Raúl Cunha','doispontossegredo',81.00),
    (7,'snoopydog@gmail.com','Rodolfo Bacelar','canil231',62.69),
    (8,'gigapreto@gmail.com','Rasputin Fonseca','pauliteiro5',155.55),
    (9,'galatushka@gmail.com','Shazod Yusupov','naoqueriaserokenny',47.00),
    (10,'thisismyhorse@gmail.com','João Amílcar','filipa71',213.79),
    (11,'unicorndinossaur45@gmail.com','João Paulo','yodameister',145.00),
    (12,'voluntarioahahah@gmail.com','António Valente','pensamentodouniverso',627.00),
	(13,'dijeioito@gmail.com','Carlos Ribeiro','parademeimitar',0);

INSERT INTO Percurso(Id_Percurso,HoraPartida,HoraChegada,Linha,precoPercurso,Comboio_Id,Estacao_id_Origem,Estacao_id_Destino)
VALUES	
	(1,'20:00','22:00',2,20,1,5,4),
    (2,'11:00','14:00',2,20,2,5,4),
    (3,'17:00','19:00',2,20,1,4,5),
    (4,'5:00','7:00',2,20,2,4,5),
    (5,'9:00','12:00',3,25,3,2,1),
    (6,'17:00','20:00',3,25,3,2,1),
    (7,'13:00','16:00',3,25,3,1,2),
    (8,'21:00','00:00',3,25,3,1,2),
    (9,'10:00','15:00',4,50,4,2,3),
    (10,'22:00','02:00',4,50,4,2,3),
    (11,'16:00','21:00',4,50,4,3,2),
    (12,'03:00','08:00',4,50,4,3,2),
    (13,'06:00','12:00',5,60,5,1,3),
    (14,'13:00','19:00',5,60,5,3,1),
    (15,'04:00','16:00',1,80,1,3,4),
    (16,'23:00','11:00',1,80,1,4,3);

INSERT INTO Bilhete(Id_Bilhete,Carruagem,NumeroLugar,PrecoBilhete,Tipo,Data,Viagem,Cliente_Id_Cliente,Percurso_Id_Percurso)
VALUES
    (1,1,1,37.5,1,'2016-12-15','N',1,6),
	(2,1,2,37.5,1,'2016-12-15','N',3,6),
	(3,2,6,25,2,'2016-12-15','N',2,6),
    (4,3,15,25,3,'2016-12-15','N',4,6),
    (5,1,1,37.5,1,'2016-12-15','N',2,6),
	(6,2,7,25,2,'2016-12-25','N',3,6),
	(7,2,6,25,2,'2016-12-25','N',1,6),
    (8,2,10,25,3,'2016-12-25','N',4,6),
    (9,1,1,30,1,'2016-12-10','I',5,3),
	(10,2,10,20,3,'2016-12-10','I',10,3),
	(11,3,8,20,2,'2016-12-10','I',12,3),
    (12,2,7,20,2,'2016-12-10','I',6,3),
    (13,1,2,30,1,'2016-12-11','I',1,3),
	(14,2,6,20,2,'2016-12-11','I',11,3),
	(15,2,5,20,2,'2016-12-11','I',13,3),
    (16,3,11,20,2,'2016-12-11','I',3,3),
    (17,1,1,75,1,'2016-12-9','I',1,9),
	(18,1,2,75,1,'2016-12-9','I',2,9),
	(19,1,3,75,1,'2016-12-9','I',3,9),
    (20,1,4,75,1,'2016-12-9','I',4,9),
    (21,1,5,75,1,'2016-12-9','I',11,9),
	(22,2,9,50,2,'2016-12-9','I',6,9),
	(23,2,10,50,3,'2016-12-9','I',7,9),
    (24,3,14,50,3,'2016-12-9','I',8,9),
    (25,3,15,50,3,'2016-12-9','I',8,9),
    (26,2,7,20,2,'2017-01-1','I',4,1),
    (27,3,11,60,2,'2017-01-1','I',12,14),
    (28,1,1,120,1,'2017-01-12','I',10,16);
    
CREATE USER 'gestor'@'localhost'
	identified by 'gestorpassword';
    
REVOKE DROP, CREATE, DELETE
	ON *.*
    FROM 'gestor'@'localhost';

    
CREATE USER 'cliente'@'localhost'
	identified BY 'clientepassword';
    
GRANT SELECT ON leiExpress.Percurso TO 'cliente'@'localhost';

GRANT SELECT ON leiExpress.Bilhete TO 'cliente'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT 
ON *.*
FROM 'cliente'@'localhost';


CREATE USER 'admin'@'localhost'
	identified by 'adminpassword';

GRANT ALL ON *.* TO 'admin'@'localhost';

DELIMITTER $$ 
CREATE TRIGGER atualizaQuantidade
AFTER INSERT ON Lugares
FOR EACH ROW
BEGIN
	UPDATE Comboio
    SET Capacidade = Capacidade+1
    WHERE Comboio.Id_Comboio = NEW.Comboio_Id_Comboio;
END $$


DELIMITER $$
CREATE PROCEDURE destinoestacao
	(IN Nomeestacao VARCHAR(45))
BEGIN
SELECT COUNT(b.Id_Bilhete) FROM Bilhete b
INNER JOIN Percurso p ON p.Id_Percurso=b.Percurso_Id_Percurso
INNER JOIN Estacao e  ON e.id_Estacao=p.Estacao_id_Destino
WHERE e.nome=Nomeestacao;
END$$

CALL destinoestacao('Estação LX');


DELIMITER $$
CREATE PROCEDURE LugaresDiaPercurso
	(IN Viagem INT,IN Dia DATE)
BEGIN
SELECT Lugares.NumeroLugar,Lugares.Carruagem FROM Percurso 
	INNER JOIN Lugares 
    ON Lugares.Comboio_Id_Comboio = Percurso.Comboio_Id
		INNER JOIN Comboio 
		ON Comboio.Id_Comboio = Lugares.Comboio_Id_Comboio
WHERE Percurso.Id_Percurso = Viagem 
	  AND Lugares.NumeroLugar NOT IN (
								SELECT b.NumeroLugar FROM Bilhete b
								WHERE  b.data = Dia and b.Percurso_Id_Percurso = Viagem);
END$$

CALL LugaresDiaPercurso(9,'2016-12-09');

DELIMITER $$
CREATE PROCEDURE ClientesSaldoSup
	(IN Quantidade FLOAT)
BEGIN
	SELECT  Nome,Saldo from Cliente
WHERE Saldo>Quantidade
ORDER BY Saldo DESC;
END $$

CALL ClientesSaldoSup(100);


SELECT Nome, Count(*) num FROM Cliente c 
INNER JOIN Bilhete b ON c.Id_Cliente=b.Cliente_Id_Cliente
GROUP BY Nome 
ORDER BY num DESC
LIMIT 3;

SELECT Tipo, Count(*) num FROM Bilhete b
GROUP BY Tipo 
ORDER BY num ASC
LIMIT 1;

DELIMITER $$
CREATE PROCEDURE emailcliente
	(IN Ano Int)
BEGIN
SELECT c.Email from Cliente c
INNER JOIN Bilhete b ON c.Id_Cliente=b.Cliente_Id_Cliente
WHERE year(b.data) = Ano
GROUP BY c.Email;
END $$

CALL emailcliente(2017);