--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: INGREDIENTS TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------

-- changeset TABLE_INGREDIENTS:1

CREATE TABLE IF NOT EXISTS INGREDIENTS (

   INGREDIENT_ID             SERIAL           PRIMARY KEY,
   INGREDIENT_NAME           VARCHAR(255)     NOT NULL,
   INGREDIENT_IMAGE_URL      TEXT

);


-- changeset TABLE_INGREDIENTS:2
COPY INGREDIENTS(INGREDIENT_ID,INGREDIENT_NAME,INGREDIENT_IMAGE_URL)
FROM '${CSV_FOLDER_PATH}ingredients.csv' DELIMITER ',' CSV HEADER;


