Languages: Python, HTML
Framework: Django framework, cx_Oracle
Database: Oracle XE, Oracle SQL developer


For Installation:
Make sure that your machine is running and has the following setup + programs:
* Windows OS
* Python version 3.8 +
* Django version 3.1.3
* Oracle XE 18c
* SQL developer 11g (19.2.1)


For creating users, please do the following:
**NOTE: please make sure that you set the following credentials for your users:
Username: c##user1
Password: password
* https://docs.oracle.com/cd/E17781_01/admin.112/e18585/toc.htm#XEGSG110


Additional programs might be required in order to finish the setup. The following links below will help overcome some of the issues that we have encountered.


* https://www.oracle.com/database/technologies/instant-client/microsoft-windows-32-downloads.html#ic_win_inst
* https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html#id2


 
For setting up and running code:
* Create an user for the local database via SQL Plus (SQL Plus is installed while installing Oracle XE)
* Add system variable ORACLE_HOME to the home of your database
* Navigate to the “/back-end/” folder (the one that contains manage.py) via command prompt
* Type in the following command:
   * >>> python manage.py makemigrations
   * >>> python manage.py migrate
* After the command prompt done loading, type the following:
   * >>> python manage.py runserver
* In your browser, type in : >>> localhost:8000, the first page will contain the option to create tables. The rest of the functionality will follow accordingly.
For admin account set up:
* Type in the following command:
   * >>> python manage.py createsuperuser
   * Follow the instructions until the account is created.

SQL Code and Bat Scripts: back_end\dbms\bat_files
HTML Files: back_end\dbms\templates