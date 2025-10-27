-- DataSchema.sql (example) - PostgreSQL
CREATE TABLE public.example_entity (
    id SERIAL PRIMARY KEY,
    code VARCHAR(32) NOT NULL,
    title VARCHAR(160) NOT NULL,
    created_at DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT chk_code_kebab CHECK (code ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$')
);
