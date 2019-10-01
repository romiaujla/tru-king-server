-- Create a domain so when an email is saved it checks for the email format
-- This will be used to save all the emails thru the database;
CREATE EXTENSION citext;
CREATE DOMAIN email AS citext
    CHECK (VALUE ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );