USE Sample_Schema;

CREATE TABLE customer_info (
CustomersID integer,
CustomersNames varchar(255),
Address varchar(255)
);

INSERT INTO customer_info (CustomersID, CustomersNames, Address) VALUES
(1, "Alex", "36/2 block 7"),
(2, "Rima", "45/1 block 3"),
(3, "Nuba", "11/7 block 6"),
(4, "Ramisha", NULL),
(5, "Progya", NULL);

SELECT *
FROM customer_info
WHERE Address IS NULL;

SELECT *
FROM customer_info
WHERE Address IS NOT NULL;


