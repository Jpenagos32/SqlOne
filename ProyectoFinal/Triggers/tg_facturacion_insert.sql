DELIMITER $$

DROP TRIGGER IF EXISTS tg_facturacion_insert;

CREATE TRIGGER IF NOT EXISTS tg_facturacion_insert
AFTER INSERT ON items
FOR EACH ROW BEGIN
    CALL sp_triggers;
END $$

DELIMITER;