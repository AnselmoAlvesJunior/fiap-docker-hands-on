#Create and excute a container for a PostgreSQL database
#-p selects the port on which to run
docker run -p 5432:5432 -d \
-e POSTGRES_USER="fiap" \
-e POSTGRES_PASSWORD="fiap" \
-e POSTGRES_DB="fiap_db" \
--name pg-container \
postgres

#this command list all containers
docker ps -a

#execute the command inside of container
docker exec -it <id_container> bin/bash

#log on postgres inside of container
#U: user
#-d: database
psql -U fiap -d fiap_db

# Create table and test datas
CREATE TABLE my_table (
    id INT PRIMARY KEY NOT NULL,
    value TEXT NOT NULL
);

# Insert test datas
INSERT INTO
    my_table(id, value)
VALUES
    (1, 'test data 1'),
    (2, 'test data 2'),
    (3, 'test data 3');

# Exit of PSQL
\q

# Exit of container
exit
