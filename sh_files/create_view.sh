#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "dmezhibo/Kapusta13@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF
CREATE VIEW customer_driver_pair AS (SELECT c.C_ID,c.C_NAME,d.D_ID,d.D_NAME FROM CUSTOMER c , DRIVER d, C_ORDER o WHERE o.D_ID IS NOT NULL AND c.C_ID=o.C_ID AND d.D_ID=o.D_ID);
CREATE VIEW order_food_price as (SELECT o.C_ID, o.O_DATE, o.F_NAME, f.PRICE FROM C_ORDER o, FOOD f WHERE o.P_NAME IS NULL AND o.F_NAME=f.F_NAME);
exit;
EOF