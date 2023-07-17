--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: RECIPE_TAGS TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------
-- changeset TABLE_RECIPE_TAGS:1

CREATE TABLE IF NOT EXISTS RECIPE_TAGS (

   RECIPE_ID                INTEGER             REFERENCES RECIPES(RECIPE_ID),
   TAG_ID                    INTEGER             REFERENCES TAGS(TAG_ID)

);


-- changeset TABLE_RECIPE_TAGS:2
COPY RECIPE_TAGS(RECIPE_ID,TAG_ID)
FROM '${CSV_FOLDER_PATH}recipe_tags.csv' DELIMITER ',' CSV HEADER;