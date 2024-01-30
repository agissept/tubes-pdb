CREATE TABLE item_transactions
(
    id         INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    invoice_id INT,
    product_id INT,
    quantity   INT,
    sub_total  INT,
    FOREIGN KEY (invoice_id) REFERENCES invoices (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);
