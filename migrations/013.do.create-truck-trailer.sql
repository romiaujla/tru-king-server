CREATE TABLE trucks(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    truck_num VARCHAR(10) DEFAULT 'n/a' NOT NUlL,
    equipment_info_id INTEGER REFERENCES equipment_info(id) NOT NULL
);

CREATE TABLE trailers(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    trailer_num VARCHAR(10) DEFAULT 'n/a' NOT NUlL,
    equipment_info_id INTEGER REFERENCES equipment_info(id) NOT NULL
);