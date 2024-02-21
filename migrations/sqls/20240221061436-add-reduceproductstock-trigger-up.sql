CREATE TRIGGER `ReduceProductStock` AFTER INSERT ON `item_transactions` 
FOR EACH ROW 
BEGIN
    UPDATE products
    SET stock = stock - NEW.quantity
    WHERE id = NEW.product_id;
END;