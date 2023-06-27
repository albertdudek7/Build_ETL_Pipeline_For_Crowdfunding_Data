---Creat tables

CREATE TABLE IF NOT EXISTS Category (
    category_id varchar(200) NOT NULL,
    category varchar(200) NOT NULL,
    	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id varchar(200) NOT NULL,
    subcategory varchar(200) NOT NULL,
    	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
    contact_id int NOT NULL,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    email varchar(200) NOT NULL,
    	PRIMARY KEY (contact_id)
);

CREATE TABLE IF NOT EXISTS Campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(200) NOT NULL,
    description varchar(200) NOT NULL,
    goal decimal NOT NULL,
    pledged decimal NOT NULL,
    outcome varchar(200) NOT NULL,
    backers_count int NOT NULL,
    country varchar(200) NOT NULL,
    currency varchar NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(200) NOT NULL,
    subcategory_id varchar(200) NOT NULL,
    	PRIMARY KEY (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);

---Verify Database is working correctly

---Campaign 
select *
from Campaign;

---Category
select *
from Category;

---Subcategory
select *
from subcategory;

---Contacts
select *
from contacts;

