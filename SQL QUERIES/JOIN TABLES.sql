create table table1(OrderID number,	CustomerID	number, OrderDate date);

desc table1;

insert into table1 VALUES(101, 2011, '29-JUN-04');
insert into table1 VALUES(102, 2012, '30-FEB-04');
insert into table1 VALUES(103, 2013, '29-Aug-17');
insert into table1 VALUES(104, 2014, '19-JUN-14');
insert into table1 VALUES(101, 2011, '29-JUN-24');

select * from table1;


--table2

create table table2(OrderID number,	ProductID	number, OrderDate date);

insert into table2 VALUES(101, 2011, '29-JUN-04');
insert into table2 VALUES(102, 2012, '30-FEB-04');
insert into table2 VALUES(103, 2013, '19-Aug-17');
insert into table2 VALUES(104, 2014, '19-JUN-14');
insert into table2 VALUES(101, 2011, '19-JUN-24');

select * from table2;


--simple join -->based on a common field between TABLES

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
JOIN TABLE2
ON TABLE1.OrderID=TABLE2.OrderID;


--INNER JOIN-->INNER JOIN is the same as JOIN

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
INNER JOIN TABLE2
ON TABLE1.OrderID=TABLE2.OrderID
ORDER BY TABLE2.ORDERDATE;


/*
LEFT JOIN:

The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in the right table (table2). 
The result is NULL in the right side when there is no match.
In some databases LEFT JOIN is called LEFT OUTER JOIN.

*/

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
LEFT JOIN TABLE2
ON  TABLE1.OrderID=TABLE2.PRODUCTID;

--OR 

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
LEFT OUTER JOIN TABLE2
ON TABLE1.OrderID=TABLE2.PRODUCTID;

--NOW TRY INNER JOIN

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
INNER JOIN TABLE2
ON TABLE1.OrderID=TABLE2.PRODUCTID
ORDER BY TABLE2.ORDERDATE;

--The LEFT JOIN keyword returns all the rows from the left table, even if there are no matches in the right table.


--RIGHT JOIN
/*

The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows in the left table (table1). 
The result is NULL in the left side when there is no match.
In some databases RIGHT JOIN is called RIGHT OUTER JOIN.

Note: The RIGHT JOIN keyword returns all the rows from the right table, 
even if there are no matches in the left table.
*/

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
RIGHT JOIN TABLE2
ON TABLE1.OrderID=TABLE2.PRODUCTID;


--FULL OUTER JOIN 

SELECT TABLE1.OrderID, TABLE2.PRODUCTID, TABLE1.CustomerID, TABLE1.OrderDate
FROM TABLE1
FULL OUTER JOIN TABLE2
ON TABLE1.OrderID=TABLE2.OrderID;
