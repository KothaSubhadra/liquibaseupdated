--liquibase formatted sql

-----------------------------------------------------------

-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: RECIPES TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE         USER               CHANGE ID        COMMENT
--07-06-2023

--------------------------------------------------------------

-- changeset TABLE_RECIPES:1
CREATE TABLE IF NOT EXISTS RECIPES (

   RECIPE_ID                SERIAL              PRIMARY KEY,
   RECIPE_TITLE             VARCHAR(255)        NOT NULL,
   DESCRIPTION              TEXT,
   PREPARATION_STEPS        TEXT,
   COOKING_TIME             VARCHAR(20),
   SERVINGS                 INTEGER,
   DIFFICULTY_LEVEL         INTEGER,
   AVERAGE_RATING           DECIMAL(3,2),
   CREATION_DATE            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   LAST_MODIFIED_DATE       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   USER_ID                  INTEGER              NOT NULL,
   CALORIES_PER_SERVING     INTEGER,
   DIETARY_RESTRICTION      VARCHAR(50),
   CUISINE                  VARCHAR(50),
   ADDITIONAL_INFO          TEXT,
   FOREIGN KEY (USER_ID)    REFERENCES            USERS(USER_ID)

);



-- changeset TABLE_RECIPES:2
COPY recipes(RECIPE_ID,RECIPE_TITLE,DESCRIPTION,CUISINE,DIETARY_RESTRICTION,COOKING_TIME,PREPARATION_STEPS,SERVINGS,DIFFICULTY_LEVEL,AVERAGE_RATING,USER_ID,CALORIES_PER_SERVING,ADDITIONAL_INFO)
FROM 'D:\Users\ksubhadra\SpringInitializer\Liquibase\\recipes.csv' DELIMITER ',' CSV HEADER;



