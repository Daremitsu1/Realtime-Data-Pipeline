# Import data from a MySQL database
sqoop import \
--connect jdbc:mysql://localhost/mydatabase \
--username myuser \
--password mypassword \
--table mytable \
--target-dir /mydirectory \
--split-by mycolumn \
--fields-terminated-by '\t'

# Export data to a MySQL database
sqoop export \
--connect jdbc:mysql://localhost/mydatabase \
--username myuser \
--password mypassword \
--table mytable \
--export-dir /mydirectory \
--input-fields-terminated-by '\t'
