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
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

The "cf_id" column

The "contact_id" column

The "company_name" column

The "blurb" column, renamed to "description"

The "goal" column, converted to the float data type

The "pledged" column, converted to the float data type

The "outcome" column

The "backers_count" column

The "country" column

The "currency" column

The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

The following image shows this campaign DataFrame:

campaign DataFrame

Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

Create the Contacts DataFrame
Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

Option 1: Use Python dictionary methods.

Option 2: Use regular expressions.

If you chose Option 1, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Iterate through the DataFrame, converting each row to a dictionary.
Iterate through each dictionary, doing the following:
Extract the dictionary values from the keys by using a Python list comprehension.
Add the values for each row to a new list.
Create a new DataFrame that contains the extracted data.
Split each "name" column value into a first and last name, and place each in a new column.
Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
If you chose Option 2, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Extract the "contact_id", "name", and "email" columns by using regular expressions.
Create a new DataFrame with the extracted data.
Convert the "contact_id" column to the integer type.
Split each "name" column value into a first and a last name, and place each in a new column.
Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
Check that your final DataFrame resembles the one in the following image:

final contact DataFrame

Create the Crowdfunding Database
Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

Use the information from the ERD to create a table schema for each CSV file.

![image](https://github.com/albertdudek7/Build_ETL_Pipeline_For_Crowdfunding_Data/assets/127783844/81769dcb-95ae-417a-9462-761b34b23f0f)


Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.

