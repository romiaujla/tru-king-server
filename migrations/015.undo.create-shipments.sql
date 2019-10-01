CREATE TYPE shipment_status_enum as ENUM (
    'dispatched',
    'loading',
    'in transit',
    'equipment breakdown',
    'other issue',
    'unloading',
    'delivered'
);

CREATE TYPE payroll_status_enum AS ENUM (
    'unpaid',
    'paid'
);

CREATE TYPE team_solo_enum AS ENUM(
    'team',
    'solo'
);

CREATE TABLE shipments(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    load_id INTEGER REFERENCES loads(id) NOT NULL,
    trailer_id INTEGER REFERENCES trailers(id) NOT NULL,
    truck_assigment_id INTEGER REFERENCES truck_assigment(id) NOT NULL,
    shipment_status shipment_status_enum DEFAULT 'dispatched' NOT NULL,
    remarks TEXT
);

CREATE TABLE driver_logs(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    shipment_id INTEGER REFERENCES shipments(id) NOT NULL,
    team_solo team_solo_enum DEFAULT 'solo' NOT NULL,
    payroll_status payroll_status_enum DEFAULT 'unpaid' NOT NULL,
    deductions NUMERIC(7,2) DEFAULT '0.00',
    driver_pay NUMERIC(7,2) DEFAULT '0.00' NOT NULL
);