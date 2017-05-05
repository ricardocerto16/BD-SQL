USE `leiExpress`

DELIMITER $$

CREATE PROCEDURE inserirLugar (
	IN Id_Comb	INT,
    IN Cap	    INT,
    IN NrLugar 	INT,
    IN Carr		INT,
    IN Tip		INT)

BEGIN 
	DECLARE Erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET Erro = 1;
    START TRANSACTION;
    
INSERT INTO Comboio
	    (Id_Comboio,Capacidade)
        VALUES
        (Id_Comb,Cap);

INSERT INTO Lugares
	    (NumeroLugar,Carruagem,Tipo,Comboio_Id_Comboio)
        VALUES 
        (NrLugar, Carr, Tip, Id_Comb);

IF erro
THEN ROLLBACK;
ELSE COMMIT;
END IF;
END $$


