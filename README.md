# Crowdfunding ETL pipeline

Build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, create four CSV files and use the CSV file data to create an ERD and a table schema. Upload the CSV file data into a Postgres database.

Steps
Create the Category and Subcategory DataFrames
Create the Campaign DataFrame
Create the Contacts DataFrame
Create the Crowdfunding Database
Create the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/2bd2e9bb-22b3-484b-b72a-260747d72c86)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/acaa97a9-5cda-4557-a4a2-62cf9e945ac8)

A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/8b5015fa-d3a2-47a0-8e5c-486862e8513a)


A "category" column that contains only the category titles

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/a6e8345a-1fd8-4638-a167-25d968cbed77)


Create the Campaign DataFrame
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame:

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/7d49d3a9-7d12-4361-805b-7e2336a4d8d5)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/0b9bebd1-b926-4753-8b53-473a42650633)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/ad2bb811-37e0-4b07-85fc-2174018a81f6)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/9fc45b9d-3afb-4959-8a4b-f101e9edcc5b)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/4586e9ef-918f-4468-a0e2-6c56a37a728e)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/0f4f6559-33c2-4828-a28f-36bb0cbd8de9)


Create the Contacts DataFrame

Use Python dictionary methods.

Import the contacts.xlsx file into a DataFrame.
Iterate through the DataFrame, converting each row to a dictionary.
Iterate through each dictionary, doing the following:
Extract the dictionary values from the keys by using a Python list comprehension.
Add the values for each row to a new list.
Create a new DataFrame that contains the extracted data.
Split each "name" column value into a first and last name, and place each in a new column.
Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/812b1040-082d-4715-8e25-cdd296027d30)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/78df34a9-9905-415f-a193-171e48c85ec2)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/52a12d04-5771-434e-92e9-f80b968878fa)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/11580a93-77b8-4f62-bbf9-4a9bc9330dc3)

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/5e515a75-4c31-48e8-a263-8fff76b1529f)


Create the Crowdfunding Database
Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

Use the information from the ERD to create a table schema for each CSV file.

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/81769dcb-95ae-417a-9462-761b34b23f0f)


Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.

