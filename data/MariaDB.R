library("RMariaDB")
library("DBI")

con <- DBI::dbConnect(
RMariaDB::MariaDB(),
username="root",
password="MelonSK998", 
dbname ="TableroExperimentos", 
host="localhost"
)


#DBI::dbListTables(con)
