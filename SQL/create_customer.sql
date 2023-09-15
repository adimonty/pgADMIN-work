-- Table: public.Customer

-- DROP TABLE IF EXISTS public."Customer";

CREATE TABLE IF NOT EXISTS public."Customer"
(
    id bigint NOT NULL DEFAULT nextval('"Customer_id_seq"'::regclass),
    firstname character varying(50) COLLATE pg_catalog."default",
    lastname character varying(50) COLLATE pg_catalog."default",
    birthdate date,
    CONSTRAINT "Customer_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customer"
    OWNER to postgres;