CREATE TABLE invoices
(
    id                INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_id       INT,
    transaction_date  DATETIME,
    courier           VARCHAR(100),
    shipping_price    INT,
    items_price_total INT,
    grand_total       INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
