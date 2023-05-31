/* Calculate eucildian distance*/
Select round(sqrt((SQUARE(MAX(LAT_N)-MIN(LAT_N)))+(SQUARE(MAX(LONG_W)-MIN(LONG_W)))),4) from STATION;

/*Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.*/

SELECT c.company_code,c.founder,
COUNT(DISTINCT lm.lead_manager_code),
   COUNT(DISTINCT  sm.senior_manager_code) ,
   COUNT(DISTINCT   m.manager_code ),
   COUNT(DISTINCT  e.employee_code)
FROM Company AS c
INNER JOIN Lead_Manager AS lm
    ON c.company_code =lm.company_code
INNER JOIN Senior_Manager AS sm
     ON lm.company_code =sm.company_code
INNER JOIN Manager AS m
   ON sm.company_code =m.company_code
INNER JOIN Employee AS e
    ON m.company_code =e.company_code
GROUP BY  c.company_code,
    c.founder ORDER BY c.company_code ASC ; 