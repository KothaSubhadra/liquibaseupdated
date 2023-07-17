--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: RECIPE_INGREDIENTS TABLE CREATION

-------------------------------------------------------------

--- CHANGELOG
 -- DATE                 USER               CHANGE ID        COMMENT
 -- 07-07-2023           SUBHADRA            1               INITIAL VERSION
 -- 13-07-2023           SUBHADRA            2               LOADING DATA


--------------------------------------------------------------

-- changeset TABLE_RECIPE_INGREDIENTS:1

CREATE TABLE IF NOT EXISTS RECIPE_INGREDIENTS (

   RECIPE_ID                    INTEGER                 REFERENCES RECIPES(RECIPE_ID),
   INGREDIENT_ID                INTEGER                 REFERENCES INGREDIENTS(INGREDIENT_ID),
   QUANTITY                     VARCHAR(50),
   UNIT                         VARCHAR(20),
                                PRIMARY KEY (RECIPE_ID, INGREDIENT_ID)
);

-- changeset TABLE_RECIPE_INGREDIENTS:2
COPY RECIPE_INGREDIENTS(RECIPE_ID,INGREDIENT_ID,QUANTITY,UNIT)
FROM '${CSV_FOLDER_PATH}recipe_ingredients.CSV' DELIMITER ',' CSV HEADER;

