--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 894, 893);
INSERT INTO public.games VALUES (2, 9, 744, 743);
INSERT INTO public.games VALUES (3, 10, 942, 941);
INSERT INTO public.games VALUES (4, 10, 539, 538);
INSERT INTO public.games VALUES (5, 9, 1000, 997);
INSERT INTO public.games VALUES (6, 9, 457, 455);
INSERT INTO public.games VALUES (7, 9, 699, 698);
INSERT INTO public.games VALUES (8, 11, 721, 720);
INSERT INTO public.games VALUES (9, 11, 852, 851);
INSERT INTO public.games VALUES (10, 12, 159, 158);
INSERT INTO public.games VALUES (11, 12, 641, 640);
INSERT INTO public.games VALUES (12, 11, 516, 513);
INSERT INTO public.games VALUES (13, 11, 332, 330);
INSERT INTO public.games VALUES (14, 11, 270, 269);
INSERT INTO public.games VALUES (15, 13, 915, 914);
INSERT INTO public.games VALUES (16, 13, 943, 942);
INSERT INTO public.games VALUES (17, 14, 727, 726);
INSERT INTO public.games VALUES (18, 14, 629, 628);
INSERT INTO public.games VALUES (19, 13, 112, 109);
INSERT INTO public.games VALUES (20, 13, 623, 621);
INSERT INTO public.games VALUES (21, 13, 731, 730);
INSERT INTO public.games VALUES (22, 15, 676, 675);
INSERT INTO public.games VALUES (23, 15, 913, 912);
INSERT INTO public.games VALUES (24, 16, 685, 684);
INSERT INTO public.games VALUES (25, 16, 761, 760);
INSERT INTO public.games VALUES (26, 15, 315, 312);
INSERT INTO public.games VALUES (27, 15, 563, 561);
INSERT INTO public.games VALUES (28, 15, 44, 43);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1709916332059');
INSERT INTO public.users VALUES (2, 'user_1709916332058');
INSERT INTO public.users VALUES (3, 'user_1709916541200');
INSERT INTO public.users VALUES (4, 'user_1709916541199');
INSERT INTO public.users VALUES (5, 'user_1709916612043');
INSERT INTO public.users VALUES (6, 'user_1709916612042');
INSERT INTO public.users VALUES (7, 'rafael');
INSERT INTO public.users VALUES (8, 'RAFAEL');
INSERT INTO public.users VALUES (9, 'user_1709917697566');
INSERT INTO public.users VALUES (10, 'user_1709917697565');
INSERT INTO public.users VALUES (11, 'user_1709918160551');
INSERT INTO public.users VALUES (12, 'user_1709918160550');
INSERT INTO public.users VALUES (13, 'user_1709918199724');
INSERT INTO public.users VALUES (14, 'user_1709918199723');
INSERT INTO public.users VALUES (15, 'user_1709918238188');
INSERT INTO public.users VALUES (16, 'user_1709918238187');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

