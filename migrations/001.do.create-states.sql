CREATE TABLE states (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    state_id VARCHAR(2) NOT NULL,
    state_name TEXT NOT NULL   
);