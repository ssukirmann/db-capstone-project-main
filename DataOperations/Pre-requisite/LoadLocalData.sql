#You must also edit the connection of your MySQL Connection, navigate to the advance tab and add in " OPT_LOCAL_INFILE=1"
#See associated screenshots

SET GLOBAL local_infile=1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

