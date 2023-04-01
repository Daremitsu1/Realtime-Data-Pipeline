# Realtime-Data-Pipeline

1. Data Collection: Flume will be used to collect data from various sources such as web servers, social media platforms, and sensors. The data will be collected in real-time and stored in HDFS.

2. Data Ingestion: Sqoop will be used to ingest data from external systems such as relational databases or data warehouses. The data will be transformed and stored in HDFS.

3. Data Processing: MapReduce and Pig will be used for data processing. MapReduce will be used for complex data transformations and Pig will be used for high-level data processing tasks.

4. Data Storage: HBase will be used to store data in real-time. HBase provides a column-family-based data model that is optimized for read and write operations. HBase is also fault-tolerant and provides automatic sharding and replication.

5. Data Analysis: Hive will be used for data analysis. Hive provides a SQL-like interface for querying data stored in HDFS and HBase. Hive queries can be used to generate reports, dashboards, and visualizations.

6. Workflow Management: Oozie will be used for workflow management. Oozie provides a platform for scheduling and executing Hadoop jobs. Workflows can be created to chain multiple jobs together and manage dependencies.
