-- create a database
CREATE DATABASE IF NOT EXISTS mydatabase;

-- switch to the database
USE mydatabase;

-- create a table
CREATE TABLE IF NOT EXISTS mytable (
    id INT,
    name STRING,
    age INT
);

-- load data into the table
LOAD DATA INPATH '/path/to/data/file' INTO TABLE mytable;

-- run a query to analyze the data
SELECT name, AVG(age) FROM mytable GROUP BY name;
