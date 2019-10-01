CREATE TABLE equipment_info(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    license_plate_num VARCHAR(20) NOT NULL,
    license_plate_state INTEGER REFERENCES states(id) NOT NULL,
    vin VARCHAR(17) NOT NULL UNIQUE,
    annual_inspection_exp DATE,
    cab_card_exp DATE
);