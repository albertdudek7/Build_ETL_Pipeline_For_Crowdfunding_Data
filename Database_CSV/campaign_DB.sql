
CREATE TABLE IF NOT EXISTS Category (
    category_id varchar(200) NOT NULL,
    category varchar(200) NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        category_id
     )
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
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id
     )
);

DROP TABLE Campaign;

ALTER TABLE campaign ADD CONSTRAINT campaign_unique_key UNIQUE (contact_id, category_id, subcategory_id);


CREATE TABLE Subcategory (
    subcategory_id varchar(200) NOT NULL,
    subcategory varchar(200) NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE Contacts (
    contact_id int NOT NULL,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    email varchar(200) NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        contact_id
     )
);


--adding foreign key constraint

ALTER TABLE Category
	ADD FOREIGN KEY(category_id)REFERENCES Campaign (category_id);

ALTER TABLE Subcategory 
	ADD FOREIGN KEY(subcategory_id) REFERENCES Campaign (subcategory_id);

ALTER TABLE Contacts
	ADD FOREIGN KEY(contact_id) REFERENCES Campaign (contact_id);

