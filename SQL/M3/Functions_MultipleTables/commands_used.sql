
/* Write a query that calculates the total cost of all animal rescues in the PETRESCUE table. */
SELECT SUM(COST) FROM PETRESCUE;

/*You can further assign a label to the query SUM_OF_COST.*/
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

/* Write a query that displays the maximum quantity of animals rescued (of any kind).*/
SELECT MAX(QUANTITY) FROM PETRESCUE;

/*The query can easily be changed to display the minimum quantity using the MIN function instead. */
SELECT MIN(QUANTITY) FROM PETRESCUE;

-- Write a query that displays the average cost of animals rescued.
SELECT AVG(COST) FROM PETRESCUE;
/* */