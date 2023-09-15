-- Table: public.Artist

-- DROP TABLE IF EXISTS public."Artist";

CREATE TABLE IF NOT EXISTS public."Artist"
(
    id bigint NOT NULL DEFAULT nextval('"Artist_id_seq"'::regclass),
    artist_name character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT "Artist_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Artist"
    OWNER to postgres;