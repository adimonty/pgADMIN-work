-- Table: public.Account

-- DROP TABLE IF EXISTS public."Account";

CREATE TABLE IF NOT EXISTS public."Account"
(
    id bigint NOT NULL DEFAULT nextval('"AccountType_id_seq"'::regclass),
    account_type_id bigint,
    customer_id bigint,
    CONSTRAINT "AccountType_pkey" PRIMARY KEY (id),
    CONSTRAINT account_type_id FOREIGN KEY (account_type_id)
        REFERENCES public."AccountType" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT customer_id FOREIGN KEY (customer_id)
        REFERENCES public."Customer" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Account"
    OWNER to postgres;