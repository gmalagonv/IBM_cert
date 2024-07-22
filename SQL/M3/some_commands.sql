--String Patterns

/* Say you need to retrieve the first names F_NAME and last names L_NAME of all employees 
who live in Elgin, IL. You can use the LIKE operator to retrieve strings that contain 
the said text. The code will look as shown below.*/

SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';


/*Now assume that you want to identify the employees who were born during the 70s. 
The query above can be modified to:*/
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE B_DATE LIKE '197%';

/* Let us retrieve all employee records in department 5 where salary is between 60000 
and 70000. The query that will be used is  */
SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;


--Sorting

/*Sorting is done using the ORDER BY clause in your SQL query. By default, the ORDER BY 
clause sorts the records in ascending order. */
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;

/*Now, get the output of the same query in descending order of department ID, and within 
each deaprtment, the records should be ordered in descending alphabetical order by last name. 
For descending order, you can make use of the DESC clause. */
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;



--Grouping

/* A good example of grouping would be if For each department ID, we wish to retrieve the 
number of employees in the department.*/
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

/* Now, for each department, retrieve the number of employees in the department and the average 
employee salary in the department. For this, you can use COUNT(*) to retrieve the total count 
of a column, and AVG() function to compute average salaries, and then GROUP BY.*/
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

/* You can refine your outut by using appropriate labels for the columns of data retrieved. 
Label the computed columns in the result set of the last problem as NUM_EMPLOYEES and AVG_SALARY.*/
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID;

/*You can also combine the usage of GROUP BY and ORDER BY statements to sort the output of each group 
in accordance with a specific parameter. It is important to note that in such a case, ORDER BY clause 
must be used after the GROUP BY clause. For example, we can sort the result of the previous query 
by average salary. The SQL query would thus become */
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

/*In case you need to filter a grouped response, you have to use the HAVING clause. In the previous example, 
if we wish to limit the result to departments with fewer than 4 employees, We will have to use HAVING after 
the GROUP BY, and use the count() function in the HAVING clause instead of the column label. */
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;

/* */
/* */
/* */
/* */
/* */
/* */
