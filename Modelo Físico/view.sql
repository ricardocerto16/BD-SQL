USE leiExpress;

CREATE VIEW VistaDosClientes AS
SELECT Id_Cliente, Nome FROM Cliente 
ORDER BY Nome


CREATE VIEW VistaDosBilhetesDosClientes AS
SELECT Id_Bilhete,Carruagem,NumeroLugar,PrecoBilhete,Data,Viagem,Cliente_Id_Cliente FROM Bilhete
ORDER BY Cliente_Id_Cliente ASC

CREATE VIEW VistaPercursos AS 
SELECT Id_Percurso AS 'Identificador do Percurso',
	   HoraPartida AS 'Hora de Partida',
       HoraChegada AS 'Hora de Chegada',
       Linha AS 'Linha',
       PrecoPercurso AS 'Preço do Percurso',
       Comboio_ID AS 'Idenficador do Comboio',
       Estacao_id_Origem AS 'Estação Origem',
       Estacao_id_Destino AS 'Estação Destino'
FROM PERCURSO
INNER JOIN Estacao AS EO on EO.Id_Estacao = Estacao_id_Origem 
INNER JOIN Estacao AS EP on EP.Id_Estacao = Estacao_id_Destino
ORDER BY HoraPartida ASC


CREATE VIEW Top3PercursosMaisCaros AS
SELECT Id_Percurso AS 'Identificador do Percurso',
	   PrecoPercurso AS  'Preco do Percurso',
       EO.nome AS 'Estação de Origem',
       EP.nome AS 'Estação de Destino',
       Estacao_id_Origem AS 'Identificador da Estação Origem',
       Estacao_id_Destino AS 'Identificador da Estação Destino'
FROM Percurso
INNER JOIN Estacao AS EO on EO.Id_Estacao = Estacao_id_Origem 
INNER JOIN Estacao AS EP on EP.Id_Estacao = Estacao_id_Destino
ORDER BY PrecoPercurso DESC
LIMIT 3;


CREATE VIEW MostrarBilhetesNacionaisAntesDoFim2016 AS
SELECT Id_Bilhete AS 'Identificador do Bilhete',
	   Viagem AS 'Tipo Viagem',
       Data AS 'Data da Viagem',
       Cliente_Id_Cliente AS 'Identificador do Cliente' 
FROM Bilhete AS B
INNER JOIN Cliente AS C on C.Id_Cliente = B.Cliente_Id_Cliente
WHERE (Viagem = 'N') AND B.Data > DATE_SUB('2016-12-31', INTERVAL 1 YEAR)
ORDER BY B.Data DESC;

	   





