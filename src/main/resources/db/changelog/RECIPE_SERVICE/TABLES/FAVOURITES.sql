--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: FAVOURITES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA


--------------------------------------------------------------

-- changeset TABLE_FAVOURITES:1

CREATE TABLE IF NOT EXISTS FAVOURITES (

   USER_ID          INTEGER             REFERENCES USERS(USER_ID),
   RECIPE_ID        INTEGER             REFERENCES RECIPES(RECIPE_ID)

);


-- changeset TABLE_FAVOURITES:2

COPY FAVOURITES(USER_ID,RECIPE_ID)
FROM '${CSV_FOLDER_PATH}favourites.csv' DELIMITER ',' CSV HEADER;