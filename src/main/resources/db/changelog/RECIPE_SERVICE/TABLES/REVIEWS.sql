--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: REVIEWS TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------
-- changeset TABLE_REVIEWS:1

CREATE TABLE IF NOT EXISTS REVIEWS (

   REVIEW_ID            SERIAL                  PRIMARY KEY,
   RECIPE_ID            INTEGER                 REFERENCES RECIPES(RECIPE_ID),
   USER_ID              INTEGER                 REFERENCES USERS(USER_ID),
   RATING               DECIMAL(8,2),
   REVIEW_TEXT          TEXT,
   CREATION_DATE        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);

-- changeset TABLE_REVIEWS:2

COPY REVIEWS(REVIEW_ID,RECIPE_ID,USER_ID,RATING,REVIEW_TEXT)
FROM '${CSV_FOLDER_PATH}reviews.csv' DELIMITER ',' CSV HEADER;