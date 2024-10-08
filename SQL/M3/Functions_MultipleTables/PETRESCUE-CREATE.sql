DROP TABLE IF EXISTS PETRESCUE;

CREATE TABLE PETRESCUE (
    ID INT NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INT,
    COST DECIMAL(6,2),
    RESCUEDATE DATE,
    PRIMARY KEY (ID)
);

INSERT INTO PETRESCUE VALUES 
    (1, 'Cat', 9, 450.09, '2018-05-29'),
    (2, 'Dog', 3, 666.66, '2018-06-01'),
    (3, 'Dog', 1, 100.00, '2018-06-04'),
    (4, 'Parrot', 2, 50.00, '2018-06-04'),
    (5, 'Dog', 1, 75.75, '2018-06-10'),
    (6, 'Hamster', 6, 60.60, '2018-06-11'),
    (7, 'Cat', 1, 44.44, '2018-06-11'),
    (8, 'Goldfish', 24, 48.48, '2018-06-14'),
    (9, 'Dog', 2, 222.22, '2018-06-15');
