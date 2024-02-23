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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 414, 19);
INSERT INTO public.games VALUES (2, 280, 19);
INSERT INTO public.games VALUES (3, 280, 20);
INSERT INTO public.games VALUES (4, 404, 20);
INSERT INTO public.games VALUES (5, 897, 19);
INSERT INTO public.games VALUES (6, 0, 19);
INSERT INTO public.games VALUES (7, 327, 19);
INSERT INTO public.games VALUES (8, 789, 21);
INSERT INTO public.games VALUES (9, 281, 21);
INSERT INTO public.games VALUES (10, 52, 22);
INSERT INTO public.games VALUES (11, 174, 22);
INSERT INTO public.games VALUES (12, 390, 21);
INSERT INTO public.games VALUES (13, 0, 21);
INSERT INTO public.games VALUES (14, 512, 21);
INSERT INTO public.games VALUES (15, 372, 23);
INSERT INTO public.games VALUES (16, 922, 23);
INSERT INTO public.games VALUES (17, 926, 24);
INSERT INTO public.games VALUES (18, 558, 24);
INSERT INTO public.games VALUES (19, 391, 23);
INSERT INTO public.games VALUES (20, 1, 23);
INSERT INTO public.games VALUES (21, 427, 23);
INSERT INTO public.games VALUES (22, 258, 25);
INSERT INTO public.games VALUES (23, 883, 25);
INSERT INTO public.games VALUES (24, 526, 26);
INSERT INTO public.games VALUES (25, 650, 26);
INSERT INTO public.games VALUES (26, 288, 25);
INSERT INTO public.games VALUES (27, 1, 25);
INSERT INTO public.games VALUES (28, 598, 25);
INSERT INTO public.games VALUES (29, 696, 27);
INSERT INTO public.games VALUES (30, 848, 27);
INSERT INTO public.games VALUES (31, 612, 28);
INSERT INTO public.games VALUES (32, 784, 28);
INSERT INTO public.games VALUES (33, 777, 27);
INSERT INTO public.games VALUES (34, 1, 27);
INSERT INTO public.games VALUES (35, 353, 27);
INSERT INTO public.games VALUES (36, 300, 29);
INSERT INTO public.games VALUES (37, 300, 29);
INSERT INTO public.games VALUES (38, 733, 30);
INSERT INTO public.games VALUES (39, 167, 30);
INSERT INTO public.games VALUES (40, 458, 29);
INSERT INTO public.games VALUES (41, 929, 29);
INSERT INTO public.games VALUES (42, 350, 29);
INSERT INTO public.games VALUES (43, 582, 31);
INSERT INTO public.games VALUES (44, 607, 31);
INSERT INTO public.games VALUES (45, 376, 32);
INSERT INTO public.games VALUES (46, 85, 32);
INSERT INTO public.games VALUES (47, 316, 31);
INSERT INTO public.games VALUES (48, 945, 31);
INSERT INTO public.games VALUES (49, 110, 31);
INSERT INTO public.games VALUES (50, 571, 33);
INSERT INTO public.games VALUES (51, 295, 33);
INSERT INTO public.games VALUES (52, 531, 34);
INSERT INTO public.games VALUES (53, 515, 34);
INSERT INTO public.games VALUES (54, 46, 33);
INSERT INTO public.games VALUES (55, 689, 33);
INSERT INTO public.games VALUES (56, 13, 33);
INSERT INTO public.games VALUES (57, 331, 35);
INSERT INTO public.games VALUES (58, 314, 35);
INSERT INTO public.games VALUES (59, 452, 36);
INSERT INTO public.games VALUES (60, 945, 36);
INSERT INTO public.games VALUES (61, 798, 35);
INSERT INTO public.games VALUES (62, 397, 35);
INSERT INTO public.games VALUES (63, 729, 35);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1708714319579');
INSERT INTO public.users VALUES (2, 'user_1708714319578');
INSERT INTO public.users VALUES (3, 'user_1708714966441');
INSERT INTO public.users VALUES (4, 'user_1708714966440');
INSERT INTO public.users VALUES (5, 'user_1708714974376');
INSERT INTO public.users VALUES (6, 'user_1708714974375');
INSERT INTO public.users VALUES (7, 'user_1708715239061');
INSERT INTO public.users VALUES (8, 'user_1708715239060');
INSERT INTO public.users VALUES (9, 'user_1708715428429');
INSERT INTO public.users VALUES (10, 'user_1708715428428');
INSERT INTO public.users VALUES (11, 'user_1708715800011');
INSERT INTO public.users VALUES (12, 'user_1708715800010');
INSERT INTO public.users VALUES (13, 'user_1708715970696');
INSERT INTO public.users VALUES (14, 'user_1708715970695');
INSERT INTO public.users VALUES (15, 'user_1708716103697');
INSERT INTO public.users VALUES (16, 'user_1708716103696');
INSERT INTO public.users VALUES (17, 'user_1708716619963');
INSERT INTO public.users VALUES (18, 'user_1708716619962');
INSERT INTO public.users VALUES (19, 'user_1708717457699');
INSERT INTO public.users VALUES (20, 'user_1708717457698');
INSERT INTO public.users VALUES (21, 'user_1708717483147');
INSERT INTO public.users VALUES (22, 'user_1708717483146');
INSERT INTO public.users VALUES (23, 'user_1708717556144');
INSERT INTO public.users VALUES (24, 'user_1708717556143');
INSERT INTO public.users VALUES (25, 'user_1708717606343');
INSERT INTO public.users VALUES (26, 'user_1708717606342');
INSERT INTO public.users VALUES (27, 'user_1708717638492');
INSERT INTO public.users VALUES (28, 'user_1708717638491');
INSERT INTO public.users VALUES (29, 'user_1708717779964');
INSERT INTO public.users VALUES (30, 'user_1708717779963');
INSERT INTO public.users VALUES (31, 'user_1708717824960');
INSERT INTO public.users VALUES (32, 'user_1708717824959');
INSERT INTO public.users VALUES (33, 'user_1708717873690');
INSERT INTO public.users VALUES (34, 'user_1708717873689');
INSERT INTO public.users VALUES (35, 'user_1708717913447');
INSERT INTO public.users VALUES (36, 'user_1708717913446');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


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

