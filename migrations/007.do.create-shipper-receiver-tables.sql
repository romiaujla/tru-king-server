CREATE TABLE load_shipper (
    load_id INTEGER REFERENCES loads(id),
    shipper_id INTEGER REFERENCES warehouse(id),
    pickup_date DATE DEFAULT NOW() NOT NULL,
    pickup_start_time TIME DEFAULT NOW(),
    pickup_end_time TIME DEFAULT NOW(),
    PRIMARY KEY (load_id, shipper_id)
);

CREATE TABLE load_receiver (
    load_id INTEGER REFERENCES loads(id),
    receiver_id INTEGER REFERENCES warehouse(id),
    delivery_date DATE DEFAULT NOW() NOT NULL,
    delivery_start_time TIME DEFAULT NOW(),
    delivery_end_time TIME DEFAULT NOW(),
    PRIMARY KEY (load_id, receiver_id)
);