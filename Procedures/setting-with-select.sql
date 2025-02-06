CREATE DEFINER=`root`@`%` PROCEDURE `mostar_sabor`(vCodigo VARCHAR(15))
BEGIN
	DECLARE vSabor VARCHAR(20);
	SELECT SABOR INTO vSabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vCodigo;
  SELECT vSabor;
END