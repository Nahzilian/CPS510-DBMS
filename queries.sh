#!/bin/sh
#export LD_LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "dmezhibo/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF

SELECT DISTINCT O_ID,O_TYPE,O_DATE,P_NAME,F_NAME,D_NAME,RATING FROM C_ORDER o, DRIVER d, CUSTOMER c WHERE EXISTS ( SELECT C_ID, O_ID , O_DATE FROM C_ORDER WHERE c.C_ID = o.C_ID AND d.D_ID = o.D_ID) AND o.O_TYPE = 'Delivery' AND O_DATE BETWEEN to_date('2020-8-10','YYYY-MM-DD') AND to_date('2021-8-10','YYYY-MM-DD') ORDER BY o.O_DATE DESC;

--PROMPT List the most popular food(s) item(the one with most quantity);

select * from FOOD where quantity = (SELECT MAX(quantity) from FOOD);

--PROMPT List the most expensive grocery order and the name of the customer that owns that order.;

select c.C_NAME, o.*, p.Price from C_ORDER o, Product p, Customer c where c.C_ID = o.C_ID and o.P_name = p.P_name and p.Price=(select MAX(price) from Product);

SELECT ROUND(AVG(PRICE),2) as Average, V_NAME as Vendor FROM MENU m, FOOD f , RESTAURANT_BRANCH r, RESTAURANT v WHERE EXISTS (SELECT M_ID, R_ID FROM MENU WHERE v.V_ID = r.V_ID AND r.R_ID = m.R_ID AND f.M_ID = m.M_ID) GROUP BY v.V_NAME;

select count(*) AS number_of_trips  from (select * from C_ORDER where D_ID=5 and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 7),'YYYY-MM') = to_date('2021-01', 'YYYY-MM')) ;

select count(*) AS number_of_orders from c_order where c_id=9 and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 4),'YYYY') = to_date('2021', 'YYYY');

select O_type as Type, count(*) as Total from (SELECT * FROM C_ORDER WHERE to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 7),'YYYY-MM') = to_date('2021-01', 'YYYY-MM')) group by O_Type;

SELECT c.C_NAME as NAME, COUNT(*) as ORDERS from C_ORDER o, Customer c where c.C_ID=o.C_ID group by c.C_NAME order by COUNT(*) DESC;

select D_ID, count(*) AS Trips from C_ORDER where O_Type='Delivery' and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 4),'YYYY') = to_date('2021', 'YYYY') group by D_ID order by count(*) DESC;

SELECT O_ID,O_TYPE,O_DATE,o.F_NAME,P_NAME,PRICE FROM C_ORDER o,FOOD f1 WHERE o.P_NAME is NULL AND f1.F_NAME=o.F_NAME AND EXISTS (SELECT F_NAME FROM FOOD f WHERE f.PRICE>90 AND f.F_NAME=o.F_NAME) UNION SELECT O_ID,O_TYPE,O_DATE,F_NAME,o.P_NAME,PRICE FROM C_ORDER o,PRODUCT p1 WHERE o.F_NAME is NULL AND p1.P_NAME=o.P_NAME AND EXISTS (SELECT P_NAME FROM PRODUCT p WHERE p.PRICE>90 AND p.P_NAME=o.P_NAME);

exit;
EOF