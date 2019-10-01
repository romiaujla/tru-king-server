CREATE TABLE truck_assignment(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    truck_id INTEGER REFERENCES trucks(id) NOT NULL,
    driver_id INTEGER REFERENCES driver(id) NOT NULL,
    co_driver_id INTEGER REFERENCES driver(id),
    CONSTRAINT not_same_diver CHECK (driver_id <> co_driver_id) -- Constraint to make sure that the driver and co driver are not the same
);