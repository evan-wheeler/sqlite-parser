SELECT a, b FROM table1
INTERSECT
SELECT * FROM (SELECT a, b FROM table2
EXCEPT
SELECT a, b FROM table3);

SELECT a, b FROM table1
union
SELECT * FROM (SELECT a, b FROM table2
EXCEPT
SELECT a, b FROM table3)