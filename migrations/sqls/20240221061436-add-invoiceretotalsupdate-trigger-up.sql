CREATE TRIGGER `InvoiceReTotalsUpdate` AFTER UPDATE ON `item_transactions` 
FOR EACH ROW 
BEGIN
    DECLARE newItemsPriceTotal INT;
    DECLARE newGrandTotal INT;

    -- Hitung ulang items_price_total untuk invoice yang bersangkutan
    SELECT SUM(sub_total) INTO newItemsPriceTotal
    FROM item_transactions
    WHERE invoice_id = NEW.invoice_id;

    -- Dapatkan shipping_price untuk invoice yang bersangkutan
    SELECT shipping_price INTO @shippingPrice
    FROM invoices
    WHERE id = NEW.invoice_id;

    -- Hitung ulang grand_total
    SET newGrandTotal = newItemsPriceTotal + @shippingPrice;

    -- Perbarui invoice dengan total yang baru
    UPDATE invoices
    SET items_price_total = newItemsPriceTotal,
        grand_total = newGrandTotal
    WHERE id = NEW.invoice_id;
END;
