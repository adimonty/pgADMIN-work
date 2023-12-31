toc.dat                                                                                             0000600 0004000 0002000 00000032174 14501072155 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       -                    {           Bitrock Streaming Service    15.4    15.4 2    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         3           1262    16712    Bitrock Streaming Service    DATABASE     �   CREATE DATABASE "Bitrock Streaming Service" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 +   DROP DATABASE "Bitrock Streaming Service";
                postgres    false         �            1259    24919    Account    TABLE     n   CREATE TABLE public."Account" (
    id bigint NOT NULL,
    account_type_id bigint,
    customer_id bigint
);
    DROP TABLE public."Account";
       public         heap    postgres    false         �            1259    16720    AccountType    TABLE     z   CREATE TABLE public."AccountType" (
    id bigint NOT NULL,
    type character varying(10),
    price double precision
);
 !   DROP TABLE public."AccountType";
       public         heap    postgres    false         �            1259    24918    AccountType_id_seq    SEQUENCE     }   CREATE SEQUENCE public."AccountType_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."AccountType_id_seq";
       public          postgres    false    219         4           0    0    AccountType_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."AccountType_id_seq" OWNED BY public."Account".id;
          public          postgres    false    218         �            1259    16723    Account_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Account_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Account_id_seq";
       public          postgres    false    216         5           0    0    Account_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Account_id_seq" OWNED BY public."AccountType".id;
          public          postgres    false    217         �            1259    24933    Artist    TABLE     `   CREATE TABLE public."Artist" (
    id bigint NOT NULL,
    artist_name character varying(30)
);
    DROP TABLE public."Artist";
       public         heap    postgres    false         �            1259    24932    Artist_id_seq    SEQUENCE     x   CREATE SEQUENCE public."Artist_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Artist_id_seq";
       public          postgres    false    223         6           0    0    Artist_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Artist_id_seq" OWNED BY public."Artist".id;
          public          postgres    false    222         �            1259    16714    Customer    TABLE     �   CREATE TABLE public."Customer" (
    id bigint NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    birthdate date
);
    DROP TABLE public."Customer";
       public         heap    postgres    false         �            1259    16713    Customer_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Customer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Customer_id_seq";
       public          postgres    false    215         7           0    0    Customer_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Customer_id_seq" OWNED BY public."Customer".id;
          public          postgres    false    214         �            1259    24940    Library    TABLE     f   CREATE TABLE public."Library" (
    id bigint NOT NULL,
    account_id bigint,
    media_id bigint
);
    DROP TABLE public."Library";
       public         heap    postgres    false         �            1259    24939    Library_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Library_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Library_id_seq";
       public          postgres    false    225         8           0    0    Library_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Library_id_seq" OWNED BY public."Library".id;
          public          postgres    false    224         �            1259    24926    Media    TABLE     �   CREATE TABLE public."Media" (
    id bigint NOT NULL,
    title character varying,
    duration bigint,
    genre character varying,
    is_music boolean,
    is_podcast boolean,
    artist_id bigint
);
    DROP TABLE public."Media";
       public         heap    postgres    false         �            1259    24925    Media_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Media_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Media_id_seq";
       public          postgres    false    221         9           0    0    Media_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Media_id_seq" OWNED BY public."Media".id;
          public          postgres    false    220                    2604    24922 
   Account id    DEFAULT     p   ALTER TABLE ONLY public."Account" ALTER COLUMN id SET DEFAULT nextval('public."AccountType_id_seq"'::regclass);
 ;   ALTER TABLE public."Account" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219         �           2604    24936 	   Artist id    DEFAULT     j   ALTER TABLE ONLY public."Artist" ALTER COLUMN id SET DEFAULT nextval('public."Artist_id_seq"'::regclass);
 :   ALTER TABLE public."Artist" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223         ~           2604    16717    Customer id    DEFAULT     n   ALTER TABLE ONLY public."Customer" ALTER COLUMN id SET DEFAULT nextval('public."Customer_id_seq"'::regclass);
 <   ALTER TABLE public."Customer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215         �           2604    24943 
   Library id    DEFAULT     l   ALTER TABLE ONLY public."Library" ALTER COLUMN id SET DEFAULT nextval('public."Library_id_seq"'::regclass);
 ;   ALTER TABLE public."Library" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225         �           2604    24929    Media id    DEFAULT     h   ALTER TABLE ONLY public."Media" ALTER COLUMN id SET DEFAULT nextval('public."Media_id_seq"'::regclass);
 9   ALTER TABLE public."Media" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221         '          0    24919    Account 
   TABLE DATA           E   COPY public."Account" (id, account_type_id, customer_id) FROM stdin;
    public          postgres    false    219       3367.dat $          0    16720    AccountType 
   TABLE DATA           8   COPY public."AccountType" (id, type, price) FROM stdin;
    public          postgres    false    216       3364.dat +          0    24933    Artist 
   TABLE DATA           3   COPY public."Artist" (id, artist_name) FROM stdin;
    public          postgres    false    223       3371.dat #          0    16714    Customer 
   TABLE DATA           H   COPY public."Customer" (id, firstname, lastname, birthdate) FROM stdin;
    public          postgres    false    215       3363.dat -          0    24940    Library 
   TABLE DATA           =   COPY public."Library" (id, account_id, media_id) FROM stdin;
    public          postgres    false    225       3373.dat )          0    24926    Media 
   TABLE DATA           ^   COPY public."Media" (id, title, duration, genre, is_music, is_podcast, artist_id) FROM stdin;
    public          postgres    false    221       3369.dat :           0    0    AccountType_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."AccountType_id_seq"', 1, false);
          public          postgres    false    218         ;           0    0    Account_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Account_id_seq"', 1, false);
          public          postgres    false    217         <           0    0    Artist_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Artist_id_seq"', 1, false);
          public          postgres    false    222         =           0    0    Customer_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Customer_id_seq"', 1, false);
          public          postgres    false    214         >           0    0    Library_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Library_id_seq"', 1, false);
          public          postgres    false    224         ?           0    0    Media_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Media_id_seq"', 1, false);
          public          postgres    false    220         �           2606    24924    Account AccountType_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT "AccountType_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Account" DROP CONSTRAINT "AccountType_pkey";
       public            postgres    false    219         �           2606    16729    AccountType Account_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."AccountType"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."AccountType" DROP CONSTRAINT "Account_pkey";
       public            postgres    false    216         �           2606    24938    Artist Artist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Artist" DROP CONSTRAINT "Artist_pkey";
       public            postgres    false    223         �           2606    16719    Customer Customer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public            postgres    false    215         �           2606    24945    Library Library_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT "Library_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Library" DROP CONSTRAINT "Library_pkey";
       public            postgres    false    225         �           2606    24931    Media Media_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT "Media_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Media" DROP CONSTRAINT "Media_pkey";
       public            postgres    false    221         �           2606    24974    Library account_id    FK CONSTRAINT     z   ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT account_id FOREIGN KEY (account_id) REFERENCES public."Account"(id);
 >   ALTER TABLE ONLY public."Library" DROP CONSTRAINT account_id;
       public          postgres    false    219    225    3208         �           2606    24959    Account account_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_type_id FOREIGN KEY (account_type_id) REFERENCES public."AccountType"(id);
 C   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_type_id;
       public          postgres    false    216    219    3206         �           2606    24964    Media artist_id    FK CONSTRAINT     u   ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT artist_id FOREIGN KEY (artist_id) REFERENCES public."Artist"(id);
 ;   ALTER TABLE ONLY public."Media" DROP CONSTRAINT artist_id;
       public          postgres    false    223    221    3212         �           2606    24954    Account customer_id    FK CONSTRAINT     }   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public."Customer"(id);
 ?   ALTER TABLE ONLY public."Account" DROP CONSTRAINT customer_id;
       public          postgres    false    215    219    3204         �           2606    24969    Library media_id    FK CONSTRAINT     t   ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT media_id FOREIGN KEY (media_id) REFERENCES public."Media"(id);
 <   ALTER TABLE ONLY public."Library" DROP CONSTRAINT media_id;
       public          postgres    false    221    3210    225                                                                                                                                                                                                                                                                                                                                                                                                            3367.dat                                                                                            0000600 0004000 0002000 00000000043 14501072155 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	1
2	3	3
3	3	4
4	3	5
5	1	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3364.dat                                                                                            0000600 0004000 0002000 00000000054 14501072155 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	free	0
2	premium	9.99
3	family	13.99
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3371.dat                                                                                            0000600 0004000 0002000 00000000116 14501072155 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	blink-182
2	green day
3	the beatles
4	kiss
5	Fake Doctors Real Friends
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3363.dat                                                                                            0000600 0004000 0002000 00000000205 14501072155 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	john	smith	1990-01-01
2	alice	johnson	1985-02-14
3	david	stone	1990-07-05
4	emily	brown	1988-09-22
5	michael	davis	1998-12-10
\.


                                                                                                                                                                                                                                                                                                                                                                                           3373.dat                                                                                            0000600 0004000 0002000 00000000122 14501072155 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	3	7
3	2	4
4	5	10
5	1	9
6	4	5
7	2	8
8	1	3
9	5	2
10	3	6
11	4	1
12	1	10
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                              3369.dat                                                                                            0000600 0004000 0002000 00000000646 14501072155 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Hey Jude	431	Rock/Pop	t	f	3
2	All The Small Things	168	Pop-Punk/Alternative Rock	t	f	1
3	Basket Case	182	Punk Rock	t	f	2
4	Rock and Roll All Nite	178	Glam Rock	t	f	4
5	Yesterday	125	Rock/Pop	t	f	3
6	I miss you	227	Pop-Punk/Alternative Rock	t	f	1
7	American Idiot	176	Punk Rock	t	f	2
8	Detroit Rock City	217	Hard Rock/ Glam Rock	t	f	4
9	The Pilot/My First Day	3960	Podcast	f	t	5
10	102: My Mentor	3532	Podcast	f	t	5
\.


                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000025207 14501072155 0015372 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Bitrock Streaming Service";
--
-- Name: Bitrock Streaming Service; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Bitrock Streaming Service" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';


ALTER DATABASE "Bitrock Streaming Service" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Bitrock Streaming Service'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Account" (
    id bigint NOT NULL,
    account_type_id bigint,
    customer_id bigint
);


ALTER TABLE public."Account" OWNER TO postgres;

--
-- Name: AccountType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AccountType" (
    id bigint NOT NULL,
    type character varying(10),
    price double precision
);


ALTER TABLE public."AccountType" OWNER TO postgres;

--
-- Name: AccountType_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AccountType_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AccountType_id_seq" OWNER TO postgres;

--
-- Name: AccountType_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AccountType_id_seq" OWNED BY public."Account".id;


--
-- Name: Account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Account_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Account_id_seq" OWNER TO postgres;

--
-- Name: Account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Account_id_seq" OWNED BY public."AccountType".id;


--
-- Name: Artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Artist" (
    id bigint NOT NULL,
    artist_name character varying(30)
);


ALTER TABLE public."Artist" OWNER TO postgres;

--
-- Name: Artist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Artist_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Artist_id_seq" OWNER TO postgres;

--
-- Name: Artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Artist_id_seq" OWNED BY public."Artist".id;


--
-- Name: Customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Customer" (
    id bigint NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    birthdate date
);


ALTER TABLE public."Customer" OWNER TO postgres;

--
-- Name: Customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Customer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Customer_id_seq" OWNER TO postgres;

--
-- Name: Customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Customer_id_seq" OWNED BY public."Customer".id;


--
-- Name: Library; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Library" (
    id bigint NOT NULL,
    account_id bigint,
    media_id bigint
);


ALTER TABLE public."Library" OWNER TO postgres;

--
-- Name: Library_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Library_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Library_id_seq" OWNER TO postgres;

--
-- Name: Library_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Library_id_seq" OWNED BY public."Library".id;


--
-- Name: Media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Media" (
    id bigint NOT NULL,
    title character varying,
    duration bigint,
    genre character varying,
    is_music boolean,
    is_podcast boolean,
    artist_id bigint
);


ALTER TABLE public."Media" OWNER TO postgres;

--
-- Name: Media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Media_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Media_id_seq" OWNER TO postgres;

--
-- Name: Media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Media_id_seq" OWNED BY public."Media".id;


--
-- Name: Account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account" ALTER COLUMN id SET DEFAULT nextval('public."AccountType_id_seq"'::regclass);


--
-- Name: Artist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artist" ALTER COLUMN id SET DEFAULT nextval('public."Artist_id_seq"'::regclass);


--
-- Name: Customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer" ALTER COLUMN id SET DEFAULT nextval('public."Customer_id_seq"'::regclass);


--
-- Name: Library id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library" ALTER COLUMN id SET DEFAULT nextval('public."Library_id_seq"'::regclass);


--
-- Name: Media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Media" ALTER COLUMN id SET DEFAULT nextval('public."Media_id_seq"'::regclass);


--
-- Data for Name: Account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Account" (id, account_type_id, customer_id) FROM stdin;
\.
COPY public."Account" (id, account_type_id, customer_id) FROM '$$PATH$$/3367.dat';

--
-- Data for Name: AccountType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AccountType" (id, type, price) FROM stdin;
\.
COPY public."AccountType" (id, type, price) FROM '$$PATH$$/3364.dat';

--
-- Data for Name: Artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Artist" (id, artist_name) FROM stdin;
\.
COPY public."Artist" (id, artist_name) FROM '$$PATH$$/3371.dat';

--
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Customer" (id, firstname, lastname, birthdate) FROM stdin;
\.
COPY public."Customer" (id, firstname, lastname, birthdate) FROM '$$PATH$$/3363.dat';

--
-- Data for Name: Library; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Library" (id, account_id, media_id) FROM stdin;
\.
COPY public."Library" (id, account_id, media_id) FROM '$$PATH$$/3373.dat';

--
-- Data for Name: Media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Media" (id, title, duration, genre, is_music, is_podcast, artist_id) FROM stdin;
\.
COPY public."Media" (id, title, duration, genre, is_music, is_podcast, artist_id) FROM '$$PATH$$/3369.dat';

--
-- Name: AccountType_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AccountType_id_seq"', 1, false);


--
-- Name: Account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Account_id_seq"', 1, false);


--
-- Name: Artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Artist_id_seq"', 1, false);


--
-- Name: Customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_id_seq"', 1, false);


--
-- Name: Library_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Library_id_seq"', 1, false);


--
-- Name: Media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Media_id_seq"', 1, false);


--
-- Name: Account AccountType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT "AccountType_pkey" PRIMARY KEY (id);


--
-- Name: AccountType Account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountType"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);


--
-- Name: Artist Artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_pkey" PRIMARY KEY (id);


--
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);


--
-- Name: Library Library_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT "Library_pkey" PRIMARY KEY (id);


--
-- Name: Media Media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT "Media_pkey" PRIMARY KEY (id);


--
-- Name: Library account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT account_id FOREIGN KEY (account_id) REFERENCES public."Account"(id);


--
-- Name: Account account_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_type_id FOREIGN KEY (account_type_id) REFERENCES public."AccountType"(id);


--
-- Name: Media artist_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT artist_id FOREIGN KEY (artist_id) REFERENCES public."Artist"(id);


--
-- Name: Account customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public."Customer"(id);


--
-- Name: Library media_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library"
    ADD CONSTRAINT media_id FOREIGN KEY (media_id) REFERENCES public."Media"(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         