-- Table: public.Media

-- DROP TABLE IF EXISTS public."Media";

CREATE TABLE IF NOT EXISTS public."Media"
(
    id bigint NOT NULL DEFAULT nextval('"Media_id_seq"'::regclass),
    title character varying COLLATE pg_catalog."default",
    duration bigint,
    genre character varying COLLATE pg_catalog."default",
    is_music boolean,
    is_podcast boolean,
    artist_id bigint,
    CONSTRAINT "Media_pkey" PRIMARY KEY (id),
    CONSTRAINT artist_id FOREIGN KEY (artist_id)
        REFERENCES public."Artist" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Media"
    OWNER to postgres;