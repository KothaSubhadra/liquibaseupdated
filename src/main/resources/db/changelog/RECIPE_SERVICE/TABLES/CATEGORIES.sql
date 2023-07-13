--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: CATEGORIES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE         USER               CHANGE ID        COMMENT
--07-06-2023

--------------------------------------------------------------

-- changeset TABLE_CATEGORIES:1
CREATE TABLE IF NOT EXISTS CATEGORIES (

   CATEGORY_ID          SERIAL                  PRIMARY KEY,
   CATEGORY_NAME        VARCHAR(255)            NOT NULL

);

-- changeset TABLE_CATEGORIES:2
COPY CATEGORIES(CATEGORY_ID,CATEGORY_NAME)
FROM 'D:\Users\ksubhadra\SpringInitializer\Liquibase\categories.csv' DELIMITER ',' CSV HEADER;
