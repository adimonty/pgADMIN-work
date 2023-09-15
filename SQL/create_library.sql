-- Table: public.Library

-- DROP TABLE IF EXISTS public."Library";

CREATE TABLE IF NOT EXISTS public."Library"
(
    id bigint NOT NULL DEFAULT nextval('"Library_id_seq"'::regclass),
    account_id bigint,
    media_id bigint,
    CONSTRAINT "Library_pkey" PRIMARY KEY (id),
    CONSTRAINT account_id FOREIGN KEY (account_id)
        REFERENCES public."Account" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT media_id FOREIGN KEY (media_id)
        REFERENCES public."Media" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Library"
    OWNER to postgres;