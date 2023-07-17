--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: IMAGES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA


--------------------------------------------------------------

-- changeset TABLE_IMAGES:1
CREATE TABLE IF NOT EXISTS IMAGES (

   IMAGE_ID         SERIAL          PRIMARY KEY,
   IMAGE_URL        TEXT            NOT NULL

);

-- changeset TABLE_IMAGES:2
COPY IMAGES(IMAGE_ID,IMAGE_URL)
FROM '${CSV_FOLDER_PATH}images.csv' DELIMITER ',' CSV HEADER;