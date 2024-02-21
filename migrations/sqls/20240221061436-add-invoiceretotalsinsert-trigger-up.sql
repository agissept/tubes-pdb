CREATE TRIGGER `InvoiceReTotalsInsert` AFTER INSERT ON `item_transactions` 
FOR EACH ROW 
BEGIN
    UPDATE invoices
    SET items_price_total = items_price_total + NEW.sub_total,
        grand_total = grand_total + NEW.sub_total + (SELECT shipping_price FROM invoices WHERE id = NEW.invoice_id)
    WHERE id = NEW.invoice_id;
END;