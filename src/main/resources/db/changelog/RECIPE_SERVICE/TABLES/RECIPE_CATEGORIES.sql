--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: RECIPE_CATEGORIES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA


--------------------------------------------------------------

-- changeset TABLE_RECIPE_CATEGORIES:1

CREATE TABLE IF NOT EXISTS RECIPE_CATEGORIES (

     RECIPE_ID                    INTEGER               REFERENCES RECIPES(RECIPE_ID),
     CATEGORY_ID                  INTEGER               REFERENCES CATEGORIES(CATEGORY_ID),
                                  PRIMARY KEY (RECIPE_ID, CATEGORY_ID)

);



-- changeset TABLE_RECIPE_CATEGORIES:2
COPY RECIPE_CATEGORIES(RECIPE_ID, CATEGORY_ID)
FROM '${CSV_FOLDER_PATH}recipe_categories.csv' DELIMITER ',' CSV HEADER;