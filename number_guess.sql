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
    guesses integer
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
    username character varying(22)
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

INSERT INTO public.games VALUES (1, 1, 985);
INSERT INTO public.games VALUES (2, 1, 642);
INSERT INTO public.games VALUES (3, 2, 803);
INSERT INTO public.games VALUES (4, 2, 715);
INSERT INTO public.games VALUES (5, 1, 357);
INSERT INTO public.games VALUES (6, 1, 173);
INSERT INTO public.games VALUES (7, 1, 861);
INSERT INTO public.games VALUES (8, 3, 410);
INSERT INTO public.games VALUES (9, 3, 168);
INSERT INTO public.games VALUES (10, 4, 371);
INSERT INTO public.games VALUES (11, 4, 644);
INSERT INTO public.games VALUES (12, 3, 916);
INSERT INTO public.games VALUES (13, 3, 275);
INSERT INTO public.games VALUES (14, 3, 357);
INSERT INTO public.games VALUES (15, 5, 612);
INSERT INTO public.games VALUES (16, 5, 967);
INSERT INTO public.games VALUES (17, 6, 187);
INSERT INTO public.games VALUES (18, 6, 19);
INSERT INTO public.games VALUES (19, 5, 143);
INSERT INTO public.games VALUES (20, 5, 131);
INSERT INTO public.games VALUES (21, 5, 687);
INSERT INTO public.games VALUES (22, 7, 478);
INSERT INTO public.games VALUES (23, 7, 706);
INSERT INTO public.games VALUES (24, 8, 487);
INSERT INTO public.games VALUES (25, 8, 356);
INSERT INTO public.games VALUES (26, 7, 799);
INSERT INTO public.games VALUES (27, 7, 310);
INSERT INTO public.games VALUES (28, 7, 194);
INSERT INTO public.games VALUES (29, 9, 225);
INSERT INTO public.games VALUES (30, 9, 994);
INSERT INTO public.games VALUES (31, 10, 637);
INSERT INTO public.games VALUES (32, 10, 858);
INSERT INTO public.games VALUES (33, 9, 917);
INSERT INTO public.games VALUES (34, 9, 912);
INSERT INTO public.games VALUES (35, 9, 14);
INSERT INTO public.games VALUES (36, 11, 524);
INSERT INTO public.games VALUES (37, 11, 48);
INSERT INTO public.games VALUES (38, 12, 568);
INSERT INTO public.games VALUES (39, 12, 783);
INSERT INTO public.games VALUES (40, 11, 409);
INSERT INTO public.games VALUES (41, 11, 50);
INSERT INTO public.games VALUES (42, 11, 475);
INSERT INTO public.games VALUES (43, 13, 760);
INSERT INTO public.games VALUES (44, 13, 184);
INSERT INTO public.games VALUES (45, 14, 784);
INSERT INTO public.games VALUES (46, 14, 885);
INSERT INTO public.games VALUES (47, 13, 540);
INSERT INTO public.games VALUES (48, 13, 648);
INSERT INTO public.games VALUES (49, 13, 987);
INSERT INTO public.games VALUES (50, 15, 401);
INSERT INTO public.games VALUES (51, 15, 827);
INSERT INTO public.games VALUES (52, 16, 76);
INSERT INTO public.games VALUES (53, 16, 428);
INSERT INTO public.games VALUES (54, 15, 979);
INSERT INTO public.games VALUES (55, 15, 904);
INSERT INTO public.games VALUES (56, 15, 446);
INSERT INTO public.games VALUES (57, 17, 374);
INSERT INTO public.games VALUES (58, 17, 901);
INSERT INTO public.games VALUES (59, 18, 855);
INSERT INTO public.games VALUES (60, 18, 565);
INSERT INTO public.games VALUES (61, 17, 325);
INSERT INTO public.games VALUES (62, 17, 545);
INSERT INTO public.games VALUES (63, 17, 594);
INSERT INTO public.games VALUES (64, 19, 943);
INSERT INTO public.games VALUES (65, 19, 724);
INSERT INTO public.games VALUES (66, 20, 653);
INSERT INTO public.games VALUES (67, 20, 769);
INSERT INTO public.games VALUES (68, 19, 527);
INSERT INTO public.games VALUES (69, 19, 801);
INSERT INTO public.games VALUES (70, 19, 549);
INSERT INTO public.games VALUES (71, 21, 752);
INSERT INTO public.games VALUES (72, 21, 424);
INSERT INTO public.games VALUES (73, 22, 293);
INSERT INTO public.games VALUES (74, 22, 161);
INSERT INTO public.games VALUES (75, 21, 681);
INSERT INTO public.games VALUES (76, 21, 131);
INSERT INTO public.games VALUES (77, 21, 141);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1750065520452');
INSERT INTO public.users VALUES (2, 'user_1750065520451');
INSERT INTO public.users VALUES (3, 'user_1750065538316');
INSERT INTO public.users VALUES (4, 'user_1750065538315');
INSERT INTO public.users VALUES (5, 'user_1750065720959');
INSERT INTO public.users VALUES (6, 'user_1750065720958');
INSERT INTO public.users VALUES (7, 'user_1750065879636');
INSERT INTO public.users VALUES (8, 'user_1750065879635');
INSERT INTO public.users VALUES (9, 'user_1750066225278');
INSERT INTO public.users VALUES (10, 'user_1750066225277');
INSERT INTO public.users VALUES (11, 'user_1750067661445');
INSERT INTO public.users VALUES (12, 'user_1750067661444');
INSERT INTO public.users VALUES (13, 'user_1750067724670');
INSERT INTO public.users VALUES (14, 'user_1750067724669');
INSERT INTO public.users VALUES (15, 'user_1750067852164');
INSERT INTO public.users VALUES (16, 'user_1750067852163');
INSERT INTO public.users VALUES (17, 'user_1750068120742');
INSERT INTO public.users VALUES (18, 'user_1750068120741');
INSERT INTO public.users VALUES (19, 'user_1750068568009');
INSERT INTO public.users VALUES (20, 'user_1750068568008');
INSERT INTO public.users VALUES (21, 'user_1750069077199');
INSERT INTO public.users VALUES (22, 'user_1750069077198');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

