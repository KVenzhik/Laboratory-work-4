-- DataSchemaModified.sql (intentionally bad style to fail rules)
create  table   public.example_entity   (
id serial primary key,
CODE VARCHAR(32) NOT NULL, -- wrong case + spacing
title varchar(160) not null,
created_at date    not null default current_date,
CONSTRAINT chk_code_kebab CHECK (CODE ~ '^[A-Z]+$') -- wrong regex for kebab-case
);
