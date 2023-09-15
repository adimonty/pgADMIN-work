-- Table: public.AccountType

-- DROP TABLE IF EXISTS public."AccountType";

CREATE TABLE IF NOT EXISTS public."AccountType"
(
    id bigint NOT NULL,
    type character varying(10) COLLATE pg_catalog."default",
    price double precision,
    CONSTRAINT "Account_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."AccountType"
    OWNER to postgres;