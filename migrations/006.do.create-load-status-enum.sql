CREATE TYPE load_status_enum as ENUM (
    'booked',
    'billed',
    'paid',
    'cancelled'
);