#!/bin/sh
#export LD_LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "dmezhibo/Kapusta13@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF

INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (1,'Malachi','107-942 Ornare Ave','1-818-970-0091');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (2,'Heather','890-1366 Ac St.','1-929-715-7548');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (3,'Craig','Ap #889-133 Ligula. Ave','1-794-362-7261');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (4,'Ted','P.O. Box 164, 7939 Nonummy Rd.','1-446-642-8894');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (5,'Kirk','7567 Libero Rd.','1-547-663-7062');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (6,'Driscoll','P.O. Box 703, 7378 Ornare Av.','1-799-794-7740');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (7,'Sybill','P.O. Box 186, 36 Bibendum St.','1-627-336-0645');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (8,'Devin','457-5861 Ornare, Rd.','1-517-502-1403');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (9,'Damon','3995 Dictum St.','1-541-808-0149');
INSERT INTO  CUSTOMER  ( C_ID , C_NAME , ADDRESS , CONTACT_INFO ) VALUES (10,'Hilel','258-1710 Hymenaeos. Road','1-950-442-6287');

INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (1,'Shad',5,'N8I 1G8');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (2,'Ima',3,'P0G 4O7');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (3,'Zachary',4,'E3W 4P4');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (4,'Risa',1,'D8A 6T9');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (5,'Tara',5,'I7D 5J9');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (6,'Hammett',5,'N6O 9J4');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (7,'Ruby',2,'W5N 1C0');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (8,'Myra',2,'A2T 6D5');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (9,'Joy',3,'O9R 6B5');
INSERT INTO  DRIVER  ( D_ID , D_NAME , RATING , VEHICLE_INFO ) VALUES (10,'Daria',1,'Q4J 3P4');

INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (1,'Phasellus Company','sandwiches');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (2,'In LLP','pies');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (3,'Ullamcorper Magna Corporation','stews');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (4,'Sit Amet Consectetuer Ltd','seafood');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (5,'Ac Turpis Corporation','pies');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (6,'Ultrices A Industries','salads');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (7,'Nibh Ltd','soups');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (8,'Libero Ltd','seafood');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (9,'Vivamus Sit Amet Corporation','desserts');
INSERT INTO  GROCERY_STORE  ( V_ID , V_NAME , PRODUCT_TYPE ) VALUES (10,'Nec Institute','salads');

INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (1,'Ap #636-3567 Sem Av.','1-663-763-6104',1);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (2,'Ap #629-7741 Ac Road','1-194-696-2450',1);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (3,'P.O. Box 389, 8715 Erat St.','1-522-611-9282',5);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (4,'6169 Et, St.','1-886-513-3692',6);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (5,'P.O. Box 309, 1761 Eu Street','1-785-202-7682',2);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (6,'Ap #962-7865 Purus Rd.','1-987-944-8843',7);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (7,'P.O. Box 710, 3883 Aliquam Street','1-136-142-4544',2);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (8,'P.O. Box 934, 1330 Amet, St.','1-375-990-1919',5);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (9,'460-5792 Metus. Road','1-413-501-4711',7);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (10,'793-9489 Vel St.','1-189-701-6252',8);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (11,'P.O. Box 189, 9360 Laoreet Rd.','1-237-703-1752',10);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (12,'4059 Amet, Ave','1-621-201-8228',8);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (13,'8567 In St.','1-966-745-0912',3);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (14,'268-9781 Amet St.','1-990-346-7055',2);
INSERT INTO STORE_BRANCH (G_ID,G_LOCATION,G_PHONE,V_ID) VALUES (15,'P.O. Box 276, 7135 Laoreet, Rd.','1-884-682-8447',1);

INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (1,'Ipsum LLC','Antarctica');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (2,'Ornare Elit Elit Industries','Gabon');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (3,'Enim LLC','Fiji');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (4,'Commodo Hendrerit Industries','Austria');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (5,'Tincidunt Tempus Corporation','Mayotte');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (6,'Ante Limited','Bonaire, Eustatius');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (7,'Arcu Vivamus Sit Industries','Chad');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (8,'Vitae Posuere At Industries','Netherlands');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (9,'Vel Quam Dignissim Incorporated','Zambia');
INSERT INTO  RESTAURANT  ( V_ID , V_NAME , CUISINE ) VALUES (10,'Mauris Industries','Hong Kong');

INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (1,'Ap #224-1385 Congue, Street','1-506-379-6149',2);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (2,'Ap #944-3026 Lorem Avenue','1-318-808-0845',5);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (3,'3283 Auctor, Street','1-149-692-9882',3);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (4,'798-512 Fermentum Avenue','1-539-769-3127',10);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (5,'6546 Suscipit, Rd.','1-712-928-8223',9);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (6,'691-8316 Nisi Rd.','1-265-333-3566',7);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (7,'P.O. Box 606, 3686 Malesuada Avenue','1-103-785-4329',6);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (8,'207-1444 Mi Rd.','1-768-424-5844',1);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (9,'624-5336 Sit Rd.','1-786-157-3135',4);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (10,'948-5805 Leo, Road','1-659-764-8685',8);
INSERT INTO  RESTAURANT_BRANCH  ( R_ID , R_LOCATION , R_PHONE , V_ID ) VALUES (11,'123-2345 Big, st','1-123-222-2222',9);


INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (1,'Kosher',15);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (2,'Regular',4);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (3,'Kosher',2);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (4,'Kosher',11);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (5,'Kosher',13);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (6,'Kosher',2);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (7,'Regular',1);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (8,'Kosher',6);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (9,'Kosher',7);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (10,'Regular',8);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (11,'Regular',14);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (12,'Kosher',13);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (13,'Kosher',12);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (14,'Kosher',6);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (15,'Kosher',13);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (16,'Kosher',4);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (17,'Regular',13);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (18,'Regular',13);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (19,'Kosher',14);
INSERT INTO CATALOG (CAT_ID,CAT,G_ID) VALUES (20,'Organic',7);

INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Watermelon','72.13',100,'vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat',11);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Chicken','29.48',13,'non',5);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Nuts','56.25',76,'dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.',12);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Pasta','32.92',25,'posuere, enim nisl elementum purus, accumsan interdum libero',19);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Avocado','25.78',55,'molestie tortor nibh',20);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Beef','35.40',17,'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In',11);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Juice','76.81',35,'dictum.',20);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Pork','60.06',91,'Duis a mi fringilla mi lacinia mattis. Integer eu lacus.',19);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Noodles','29.66',0,'nunc ac mattis ornare, lectus ante dictum mi, ac',19);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Olive Oil','60.62',196,'senectus et netus et malesuada fames ac turpis egestas. Fusce',15);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Cereal','96.78',196,'aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie',8);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Rice','92.34',105,'semper et, lacinia vitae,',8);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Onion','10.15',137,'eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu',5);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Ice Cream','59.99',86,'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor',14);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Candy','93.96',171,'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis',16);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Lemon','42.00',186,'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque',9);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Apple','26.00',146,'hendrerit a, arcu. Sed et libero. Proin mi.',17);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Lays','66.33',0,'convallis in, cursus et, eros.',1);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Butter','1.03',151,'nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat',19);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Cracker','40.49',17,'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc',15);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Seaweed','93.55',89,'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,',12);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Egg','98.62',132,'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget',13);
INSERT INTO PRODUCT (P_NAME,PRICE,QUANTITY,DESCRIPTION,CAT_ID) VALUES ('Flour','58.49',161,'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac',10);


INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (1,'cereals',1);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (2,'stews',3);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (3,'sandwiches',5);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (4,'seafood',10);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (5,'sandwiches',2);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (6,'cereals',6);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (7,'stews',4);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (8,'salads',8);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (9,'cereals',7);
INSERT INTO  MENU  ( M_ID , CAT, R_ID ) VALUES (10,'cereals',9);

INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('seafood','83.33',13,'magna. Nam ligula elit, pretium et, rutrum non, hendrerit id,',1);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('cake','2.00',55,'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.',3);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('burger','24.71',79,'leo elementum sem, vitae aliquam eros turpis non enim. Mauris',6);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('mashed potatoes','41.51',49,'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat',2);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('chicken','33.52',13,'sem, vitae aliquam eros turpis non enim. Mauris quis turpis',8);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('chili','57.73',80,'facilisi. Sed neque. Sed eget lacus. Mauris non dui nec',10);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('salads','98.19',33,'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus',10);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('sandwiches','49.78',59,'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,',2);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('poutine','81.68',51,'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed',7);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('nachos','77.12',0,'faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.',4);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('onion rings','36.81',28,'rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem',5);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('cereals','76.16',50,'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia',7);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('bagel','60.40',97,'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,',9);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('noodles','0.69',82,'mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,',2);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('desserts','51.04',97,'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada',4);
INSERT INTO FOOD (F_NAME,PRICE,QUANTITY,DESCRIPTION,M_ID) VALUES ('pies','69.34',70,'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris',4);

INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (1,'Pickup',to_date('2021-01-6','YYYY-MM-DD'),'Egg',8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (2,'Pickup',to_date('2019-02-20','YYYY-MM-DD'),'Cracker',1);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (3,'Pickup',to_date('2020-05-05','YYYY-MM-DD'),'Seaweed',7);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (4,'Pickup',to_date('2021-01-15','YYYY-MM-DD'),'Flour',8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (5,'Pickup',to_date('2021-01-22','YYYY-MM-DD'),'Butter',3);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (6,'Pickup',to_date('2020-04-05','YYYY-MM-DD'),'Candy',8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID) VALUES (7,'Pickup',to_date('2021-03-10','YYYY-MM-DD'),'Chicken',2);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (8,'Delivery',to_date('2021-4-20','YYYY-MM-DD'),'Pork',6,2);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (9,'Delivery',to_date('2021-6-5','YYYY-MM-DD'),'Apple',9,4);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (15,'Delivery',to_date('2020-12-17','YYYY-MM-DD'),'sandwiches',6,9);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (16,'Delivery',to_date('2019-8-10','YYYY-MM-DD'),'salads',10,10);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (17,'Delivery',to_date('2021-1-19','YYYY-MM-DD'),'salads',8,5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (18,'Delivery',to_date('2020-7-30','YYYY-MM-DD'),'cereals',7,9);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (19,'Delivery',to_date('2021-4-3','YYYY-MM-DD'),'noodles',5,5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (20,'Delivery',to_date('2021-5-19','YYYY-MM-DD'),'noodles',3,10);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (21,'Delivery',to_date('2020-6-12','YYYY-MM-DD'),'cereals',9,9);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (22,'Delivery',to_date('2019-11-11','YYYY-MM-DD'),'salads',9,10);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (23,'Delivery',to_date('2020-4-9','YYYY-MM-DD'),'desserts',1,6);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (24,'Delivery',to_date('2021-4-20','YYYY-MM-DD'),'seafood',8,8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (25,'Delivery',to_date('2020-9-26','YYYY-MM-DD'),'seafood',1,6);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID,D_ID) VALUES (26,'Delivery',to_date('2021-1-25','YYYY-MM-DD'),'sandwiches',9,3);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (27,'Delivery',to_date('2020-2-11','YYYY-MM-DD'),'Beef',3,10);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (11,'Delivery',to_date('2020-5-5','YYYY-MM-DD'),'Nuts',5,2);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (12,'Delivery',to_date('2019-11-10','YYYY-MM-DD'),'Watermelon',5,5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (13,'Delivery',to_date('2020-3-10','YYYY-MM-DD'),'Apple',9,7);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,P_NAME,C_ID,D_ID) VALUES (14,'Delivery',to_date('2020-4-12','YYYY-MM-DD'),'Rice',1,5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (35,'Pickup',to_date('2020-9-22','YYYY-MM-DD'),'cereals',6);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (36,'Pickup',to_date('2021-5-5','YYYY-MM-DD'),'desserts',6);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (28,'Pickup',to_date('2021-4-22','YYYY-MM-DD'),'seafood',8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (29,'Pickup',to_date('2020-9-17','YYYY-MM-DD'),'noodles',5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (30,'Pickup',to_date('2021-10-4','YYYY-MM-DD'),'desserts',8);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (31,'Pickup',to_date('2021-9-29','YYYY-MM-DD'),'desserts',9);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (32,'Pickup',to_date('2020-7-27','YYYY-MM-DD'),'nachos',5);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (33,'Pickup',to_date('2020-5-29','YYYY-MM-DD'),'sandwiches',9);
INSERT INTO C_ORDER (O_ID,O_TYPE,O_DATE,F_NAME,C_ID) VALUES (34,'Pickup',to_date('2021-9-17','YYYY-MM-DD'),'salads',10);



exit;

EOF