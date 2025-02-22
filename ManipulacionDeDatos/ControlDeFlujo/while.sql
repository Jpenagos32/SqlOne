DELIMITER $$

CREATE PROCEDURE `looping` (valorInicial INT, valorFinal INT)
BEGIN
	DECLARE vContador INT;
    DELETE FROM tb_looping
    SET vContador = valorInicial;
    while vContador <= valorFinal
    do
		INSERT INTO tb_looping values (vContador);
		SET vContador = vContador+1;
	END WHILE;
    SELECT * FROM tb_looping;
END $$

CALL looping(1, 10);
