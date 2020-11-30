#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "dmezhibo/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF
SELECT * FROM customer_driver_pair WHERE (LENGTH(D_NAME)<4 OR LENGTH(C_NAME)<4);
SELECT * FROM order_food_price WHERE PRICE>20 ORDER BY PRICE ASC;
exit;
EOF