--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: FAVOURITES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE         USER               CHANGE ID        COMMENT
--07-06-2023

--------------------------------------------------------------

-- changeset TABLE_FAVOURITES:1

CREATE TABLE IF NOT EXISTS FAVOURITES (

   USER_ID          INTEGER             REFERENCES USERS(USER_ID),
   RECIPE_ID        INTEGER             REFERENCES RECIPES(RECIPE_ID)

);


-- changeset TABLE_FAVOURITES:2

COPY FAVOURITES(USER_ID,RECIPE_ID)
FROM 'D:\Users\ksubhadra\SpringInitializer\Liquibase\\favourites.csv' DELIMITER ',' CSV HEADER;