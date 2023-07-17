--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: RECIPE_IMAGES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA


--------------------------------------------------------------

-- changeset TABLE_RECIPE_IMAGES:1


CREATE TABLE IF NOT EXISTS RECIPE_IMAGES (

   RECIPE_IMAGE_ID              SERIAL              PRIMARY KEY,
   IMAGE_ID                     INTEGER             REFERENCES IMAGES(IMAGE_ID),
   RECIPE_ID                    INTEGER             REFERENCES RECIPES(RECIPE_ID)

);


-- changeset TABLE_RECIPE_IMAGES:2
COPY RECIPE_IMAGES(RECIPE_IMAGE_ID,IMAGE_ID,RECIPE_ID)
FROM '${CSV_FOLDER_PATH}recipe_images.csv' DELIMITER ',' CSV HEADER;