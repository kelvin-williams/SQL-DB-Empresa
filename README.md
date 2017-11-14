# SQL-DB-Empresa
MariaDB Database created for educational purposes, as final assignment from a discipline.


#Instructions

##To run this:
    First you have to install mariadb-server (sudo apt install mariadb-server)
    Then just open the terminal on the directory the file is in
    Run mysql (mariadb): sudo mysql -u root -p
    No need to create the DB, the script does it for you
    On the terminal type: MariaDB [(none)]> source Empresa.sql
    It will create the database and leave you there to do what you want with it

##If you made changes on the DB and want to reload it:
    MariaDB [(none)]> DROP DATABASE Empresa;
    MariaDB [(none)]> source Empresa.sql


#To the people populating this DB

    To load the "population" just do the same thing you did to load the DB (source ...).
    Don't delete or change stuff other people have put in, even if it's wrong, warn me and I'll check.