--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: CATEGORIES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------

-- changeset TABLE_CATEGORIES:1
CREATE TABLE IF NOT EXISTS CATEGORIES (

   CATEGORY_ID          SERIAL                  PRIMARY KEY,
   CATEGORY_NAME        VARCHAR(255)            NOT NULL

);

-- changeset TABLE_CATEGORIES:2
COPY CATEGORIES(CATEGORY_ID,CATEGORY_NAME)
FROM '${CSV_FOLDER_PATH}categories.csv' DELIMITER ',' CSV HEADER;
