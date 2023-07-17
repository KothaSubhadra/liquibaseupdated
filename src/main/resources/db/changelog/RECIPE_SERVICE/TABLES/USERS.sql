--liquibase formatted sql

-----------------------------------------------------------
-- CREATE DATE: 07-07-2023
-- CREATE USER: SUBHADRA
-- PROJECT: RECIPE_SERVICE
-- DESCRIPTION: USERS TABLE CREATION

-------------------------------------------------------------

-- CHANGELOG
-- DATE                 USER               CHANGE ID        COMMENT
-- 07-07-2023           SUBHADRA            1               INITIAL VERSION
-- 13-07-2023           SUBHADRA            2               LOADING DATA

--------------------------------------------------------------
-- changeset TABLE_USERS:1

CREATE TABLE IF NOT EXISTS USERS(

   USER_ID SERIAL PRIMARY KEY,
   EMAIL VARCHAR(255) NOT NULL,
   FIRST_NAME VARCHAR(255),
   LAST_NAME VARCHAR(255),
   GENDER VARCHAR(10),
   PHONE_NUMBER VARCHAR(20),
   USER_SPECIALITY VARCHAR(50),
   USER_LOCATION VARCHAR(255),
   REGISTRATION_DATE TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);

-- changeset TABLE_USERS:2
COPY USERS (USER_ID, EMAIL, FIRST_NAME, LAST_NAME, GENDER, PHONE_NUMBER, USER_SPECIALITY, USER_LOCATION)
FROM '${CSV_FOLDER_PATH}users.csv' DELIMITER ',' CSV HEADER;

