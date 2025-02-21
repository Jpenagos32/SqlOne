DELIMITER $$

DROP TRIGGER IF EXISTS tg_facturacion_delete;

CREATE TRIGGER IF NOT EXISTS tg_facturacion_delete
AFTER DELETE ON items
FOR EACH ROW BEGIN
    CALL sp_triggers;
END $$
DELIMITER ;