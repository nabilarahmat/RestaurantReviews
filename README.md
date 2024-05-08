# MALAYSIA'S RESTAURANT REVIEWS DATA TRANSFORMATION AND VISUALIZATION USING SQL AND GOOGLE LOOKER STUDIO

    Project Management tool   : Atlassian Jira
    Documentation tool        : Atlassian Confluence
    Data Analysis tool        : Microsoft Excel
    Database SQL Server       : PostgreSQL
    Data Transformation Tool  : DBeaver
    Data Visualization Tool   : Google Looker Studio
    Cloud Database Server     : Google Cloud BigQuery


## Milestone 1 - Data Dashboard on Local

### STEP 1 - PROJECT MANAGEMENT

From the end-to-end project roadmap as attached below, a project timeline and project board was created to facilitate task tracking for the whole project. 

i. Project Roadmap

![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/2b9a6378-7162-4e1c-b9b2-f18fe8492635)

ii. Project Timeline

![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/28c8c49a-db42-45a1-83ab-c771061d5d04)

iii. Project Board (Kanban - Tracker)

![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/d1beee88-b88e-4839-87c8-be82f5804c97)


### STEP 2 - DATASOURCE

Datasource Link: https://www.kaggle.com/datasets/bwandowando/malaysian-cities-food-panda-resto-reviews .
From the link, all 18 csv files were chosen for data analysis and transformation. 


### STEP 3 - DATA ANALYSIS

Data attributes & data types from all 18 csv's were identified using Microsoft Excel. Then, the Questions and Answers set were created to create a visualization dashboard. A dashboard wireframes was drafted on paper to visualize. Finally, view table format were drafted for serving data purpose.


### STEP 4 - SETUP A LOCAL DATABASE

Local database server was setup using PostgreSQL connected to DBeaver database client for table creation, data transformation and view table creation.


### STEP 5 - LOAD DATA 

18 tables for raw data were created. Data for each csv was uploaded to each raw table.


### STEP 6 - TRANSFORM DATA

SQL 'Select' scripts were designed to transform data to required state. The transformed/serving data were saved in views table. The final data were exported into csv files. The following view tables were created for serving data purposes:

    view_restaurantlists.sql
    view_reviews.sql
    view_foodtype.sql
    view_city.sql


### STEP 7 - DATA VISUALIZATION (DASHBOARD)

The Google Looker Studio is chosen for data visualization dashboard due to its capability to publish the visualization report to the public. The 4 cleaned csv files were loaded into Looker Studio for visualization dashboard creation. Similar dashboard can be created using Power BI and Tableau, however, it can't be shared to the public due to subscription issues. 

i. Malaysia's Restaurant Reviews Interactive Dashboard

Looker Studio Link : https://lookerstudio.google.com/s/k-qHmMJMXFc

<img width="649" alt="image" src="https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/91df62a1-c3ba-4e95-86a7-3eaac87afcf4">


## Milestone 2 - Publish a Data Dashboard on Cloud Connected to Live DB

### STEP 1 - SETUP CLOUD DB

Cloud database server was setup using Google Cloud BigQuery due to its seamless integration with Google Looker Studio.

### STEP 2 - LOAD DATA IN CLOUD DB

The cleaned 4 csv files were loaded into the Cloud DB. Data for each csv was uploaded into respective dataset.

### STEP 3 - BUILD VISUALIZATION ON CLOUD DB

Setup Cloud DB connection to replace CSV files. The previous visualization dashboard was refreshed to reflect data from Cloud DB. 

Looker Studio Link - https://lookerstudio.google.com/s/vsCoPiP2WMU

*Note: Details of each steps were documented on Confluence and will be uploaded into this repo as a separate files later on.*
