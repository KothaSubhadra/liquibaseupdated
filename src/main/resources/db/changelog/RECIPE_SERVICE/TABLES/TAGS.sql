--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: TAGS TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------
-- changeset TABLE_TAGS:1

CREATE TABLE IF NOT EXISTS TAGS (

   TAG_ID               SERIAL              PRIMARY KEY,
   TAG_NAME             VARCHAR(255)        NOT NULL

);

-- changeset TABLE_TAGS:2
COPY TAGS(TAG_ID, TAG_NAME)
FROM '${CSV_FOLDER_PATH}tags.csv' DELIMITER ',' CSV HEADER;
