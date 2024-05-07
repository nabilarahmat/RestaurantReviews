*MALAYSIA'S RESTAURANT REVIEWS DATA TRANSFORMATION AND VISUALIZATION USING SQL AND GOOGLE LOOKER STUDIO*

    Project Management tool   : Atlassian Jira
    Documentation tool        : Atlassian Confluence
    Data Analysis tool        : Microsoft Excel
    Database SQL Server       : PostgreSQL
    Data Transformation Tool  : DBeaver
    Data Visualization Tool   : Google Looker Studio

STEP 1 - PROJECT MANAGEMENT

From the end-to-end project roadmap as attached below, a project timeline and project board was created to facilitate task tracking for the whole project. 

i. Project Roadmap
![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/debeba98-e599-41a5-96af-a438efc6d4c0)

ii. Project Timeline
![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/28c8c49a-db42-45a1-83ab-c771061d5d04)

iii. Project Board (Kanban - Tracker)
![image](https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/d1beee88-b88e-4839-87c8-be82f5804c97)

STEP 2 - DATASOURCE

Datasource Link: https://www.kaggle.com/datasets/bwandowando/malaysian-cities-food-panda-resto-reviews
From the link above, all 18 csv files were chosen for data analysis and transformation. 

STEP 3 - DATA ANALYSIS

Data attributes & data types from all 18 csv's were identified using Microsoft Excel. Then, the Questions and Answers set were created to create a visualization dashboard. A dashboard wireframes was drafted on paper to visualize. Finally, view table format were drafted for serving data purpose.

STEP 4 - SETUP A LOCAL DATABASE

Local database server was setup using PostgreSQL connected to DBeaver database client for table creation, data transformation and view table creation.

STEP 5 - LOAD DATA 

18 tables for raw data were created. Data for each csv was uploaded to each raw table.

STEP 6 - TRANSFORM DATA

SQL 'Select' scripts were designed to transform data to required state. The transformed/serving data were saved in views table. The final data were exported into csv files. The following view tables were created for serving data purposes:

    view_restaurantlists.sql
    view_reviews.sql
    view_foodtype.sql
    view_city.sql

STEP 7 - DATA VISUALIZATION (DASHBOARD)

The Google Looker Studio is chosen for data visualization dashboard due to its capability to publish the visualization report to the public. Similar dashboard can be created using Power BI and Tableau, however, it can't be shared to the public due to subscription issues. 

i. Malaysia's Restaurant Reviews Dashboard
<img width="649" alt="image" src="https://github.com/nabilarahmat/data-transformation-and-visualization/assets/168509585/91df62a1-c3ba-4e95-86a7-3eaac87afcf4">

Note: Details of each steps were documented on Confluence and will be uploaded into this repo as a separate files later on.
