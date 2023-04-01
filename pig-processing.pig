-- Load data from HDFS
data = LOAD '/mydirectory' USING PigStorage('\t') AS (id:int, name:chararray, age:int);

-- Filter data
filtered_data = FILTER data BY age > 20;

-- Group and aggregate data
grouped_data = GROUP filtered_data BY name;
agg_data = FOREACH grouped_data GENERATE group AS name, SUM(filtered_data.age) AS total_age;

-- Join data with another dataset
other_data = LOAD '/otherdirectory' USING PigStorage(',') AS (name:chararray, location:chararray);
joined_data = JOIN agg_data BY name, other_data BY name;
final_data = FOREACH joined_data GENERATE agg_data::name, total_age, other_data::location;

-- Store data in HDFS
STORE final_data INTO '/outputdirectory' USING PigStorage(',');
