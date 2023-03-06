--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

INSERT INTO public.games VALUES (1, 503, 6);
INSERT INTO public.games VALUES (2, 189, 6);
INSERT INTO public.games VALUES (3, 103, 7);
INSERT INTO public.games VALUES (4, 825, 7);
INSERT INTO public.games VALUES (5, 899, 6);
INSERT INTO public.games VALUES (6, 349, 6);
INSERT INTO public.games VALUES (7, 458, 6);
INSERT INTO public.games VALUES (8, 1, 8);
INSERT INTO public.games VALUES (9, 587, 8);
INSERT INTO public.games VALUES (10, 99, 9);
INSERT INTO public.games VALUES (11, 134, 9);
INSERT INTO public.games VALUES (12, 186, 8);
INSERT INTO public.games VALUES (13, 345, 8);
INSERT INTO public.games VALUES (14, 451, 8);
INSERT INTO public.games VALUES (15, 11, 1);
INSERT INTO public.games VALUES (16, 1, 10);
INSERT INTO public.games VALUES (17, 105, 10);
INSERT INTO public.games VALUES (18, 498, 11);
INSERT INTO public.games VALUES (19, 473, 11);
INSERT INTO public.games VALUES (20, 445, 10);
INSERT INTO public.games VALUES (21, 31, 10);
INSERT INTO public.games VALUES (22, 302, 10);
INSERT INTO public.games VALUES (23, 179, 12);
INSERT INTO public.games VALUES (24, 383, 12);
INSERT INTO public.games VALUES (25, 635, 13);
INSERT INTO public.games VALUES (26, 152, 13);
INSERT INTO public.games VALUES (27, 741, 12);
INSERT INTO public.games VALUES (28, 41, 12);
INSERT INTO public.games VALUES (29, 340, 12);
INSERT INTO public.games VALUES (30, 1, 14);
INSERT INTO public.games VALUES (31, 70, 14);
INSERT INTO public.games VALUES (32, 317, 15);
INSERT INTO public.games VALUES (33, 180, 15);
INSERT INTO public.games VALUES (34, 917, 14);
INSERT INTO public.games VALUES (35, 184, 14);
INSERT INTO public.games VALUES (36, 989, 14);
INSERT INTO public.games VALUES (37, 796, 16);
INSERT INTO public.games VALUES (38, 703, 16);
INSERT INTO public.games VALUES (39, 813, 17);
INSERT INTO public.games VALUES (40, 542, 17);
INSERT INTO public.games VALUES (41, 300, 16);
INSERT INTO public.games VALUES (42, 219, 16);
INSERT INTO public.games VALUES (43, 280, 16);
INSERT INTO public.games VALUES (44, 1, 18);
INSERT INTO public.games VALUES (45, 675, 18);
INSERT INTO public.games VALUES (46, 135, 19);
INSERT INTO public.games VALUES (47, 11, 19);
INSERT INTO public.games VALUES (48, 959, 18);
INSERT INTO public.games VALUES (49, 40, 18);
INSERT INTO public.games VALUES (50, 679, 18);
INSERT INTO public.games VALUES (51, 543, 20);
INSERT INTO public.games VALUES (52, 265, 20);
INSERT INTO public.games VALUES (53, 451, 21);
INSERT INTO public.games VALUES (54, 737, 21);
INSERT INTO public.games VALUES (55, 699, 20);
INSERT INTO public.games VALUES (56, 857, 20);
INSERT INTO public.games VALUES (57, 469, 20);
INSERT INTO public.games VALUES (58, 379, 22);
INSERT INTO public.games VALUES (59, 895, 22);
INSERT INTO public.games VALUES (60, 844, 23);
INSERT INTO public.games VALUES (61, 520, 23);
INSERT INTO public.games VALUES (62, 242, 22);
INSERT INTO public.games VALUES (63, 836, 22);
INSERT INTO public.games VALUES (64, 862, 22);
INSERT INTO public.games VALUES (65, 284, 24);
INSERT INTO public.games VALUES (66, 689, 24);
INSERT INTO public.games VALUES (67, 948, 25);
INSERT INTO public.games VALUES (68, 513, 25);
INSERT INTO public.games VALUES (69, 717, 24);
INSERT INTO public.games VALUES (70, 695, 24);
INSERT INTO public.games VALUES (71, 374, 24);
INSERT INTO public.games VALUES (72, 1, 26);
INSERT INTO public.games VALUES (73, 886, 26);
INSERT INTO public.games VALUES (74, 621, 27);
INSERT INTO public.games VALUES (75, 898, 27);
INSERT INTO public.games VALUES (76, 444, 26);
INSERT INTO public.games VALUES (77, 853, 26);
INSERT INTO public.games VALUES (78, 130, 26);
INSERT INTO public.games VALUES (79, 356, 28);
INSERT INTO public.games VALUES (80, 770, 28);
INSERT INTO public.games VALUES (81, 580, 29);
INSERT INTO public.games VALUES (82, 868, 29);
INSERT INTO public.games VALUES (83, 205, 28);
INSERT INTO public.games VALUES (84, 346, 28);
INSERT INTO public.games VALUES (85, 149, 28);
INSERT INTO public.games VALUES (86, 390, 30);
INSERT INTO public.games VALUES (87, 375, 30);
INSERT INTO public.games VALUES (88, 305, 31);
INSERT INTO public.games VALUES (89, 291, 31);
INSERT INTO public.games VALUES (90, 757, 30);
INSERT INTO public.games VALUES (91, 691, 30);
INSERT INTO public.games VALUES (92, 973, 30);
INSERT INTO public.games VALUES (93, 365, 32);
INSERT INTO public.games VALUES (94, 400, 32);
INSERT INTO public.games VALUES (95, 598, 33);
INSERT INTO public.games VALUES (96, 162, 33);
INSERT INTO public.games VALUES (97, 833, 32);
INSERT INTO public.games VALUES (98, 842, 32);
INSERT INTO public.games VALUES (99, 358, 32);
INSERT INTO public.games VALUES (100, 1, 34);
INSERT INTO public.games VALUES (101, 778, 34);
INSERT INTO public.games VALUES (102, 111, 35);
INSERT INTO public.games VALUES (103, 778, 35);
INSERT INTO public.games VALUES (104, 425, 34);
INSERT INTO public.games VALUES (105, 318, 34);
INSERT INTO public.games VALUES (106, 440, 34);
INSERT INTO public.games VALUES (107, 820, 36);
INSERT INTO public.games VALUES (108, 111, 36);
INSERT INTO public.games VALUES (109, 388, 37);
INSERT INTO public.games VALUES (110, 623, 37);
INSERT INTO public.games VALUES (111, 770, 36);
INSERT INTO public.games VALUES (112, 886, 36);
INSERT INTO public.games VALUES (113, 467, 36);
INSERT INTO public.games VALUES (114, 323, 38);
INSERT INTO public.games VALUES (115, 916, 38);
INSERT INTO public.games VALUES (116, 184, 39);
INSERT INTO public.games VALUES (117, 886, 39);
INSERT INTO public.games VALUES (118, 32, 38);
INSERT INTO public.games VALUES (119, 830, 38);
INSERT INTO public.games VALUES (120, 960, 38);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'vitor');
INSERT INTO public.users VALUES (2, 'user_1678119640890');
INSERT INTO public.users VALUES (3, 'user_1678119640889');
INSERT INTO public.users VALUES (4, 'user_1678119736041');
INSERT INTO public.users VALUES (5, 'user_1678119736040');
INSERT INTO public.users VALUES (6, 'user_1678120577339');
INSERT INTO public.users VALUES (7, 'user_1678120577338');
INSERT INTO public.users VALUES (8, 'user_1678120603465');
INSERT INTO public.users VALUES (9, 'user_1678120603464');
INSERT INTO public.users VALUES (10, 'user_1678120881486');
INSERT INTO public.users VALUES (11, 'user_1678120881485');
INSERT INTO public.users VALUES (12, 'user_1678120945323');
INSERT INTO public.users VALUES (13, 'user_1678120945322');
INSERT INTO public.users VALUES (14, 'user_1678120968077');
INSERT INTO public.users VALUES (15, 'user_1678120968076');
INSERT INTO public.users VALUES (16, 'user_1678120986272');
INSERT INTO public.users VALUES (17, 'user_1678120986271');
INSERT INTO public.users VALUES (18, 'user_1678121142393');
INSERT INTO public.users VALUES (19, 'user_1678121142392');
INSERT INTO public.users VALUES (20, 'user_1678121159128');
INSERT INTO public.users VALUES (21, 'user_1678121159127');
INSERT INTO public.users VALUES (22, 'user_1678121398296');
INSERT INTO public.users VALUES (23, 'user_1678121398295');
INSERT INTO public.users VALUES (24, 'user_1678121409367');
INSERT INTO public.users VALUES (25, 'user_1678121409366');
INSERT INTO public.users VALUES (26, 'user_1678121451557');
INSERT INTO public.users VALUES (27, 'user_1678121451556');
INSERT INTO public.users VALUES (28, 'user_1678121460954');
INSERT INTO public.users VALUES (29, 'user_1678121460953');
INSERT INTO public.users VALUES (30, 'user_1678121472799');
INSERT INTO public.users VALUES (31, 'user_1678121472798');
INSERT INTO public.users VALUES (32, 'user_1678121496261');
INSERT INTO public.users VALUES (33, 'user_1678121496260');
INSERT INTO public.users VALUES (34, 'user_1678121504744');
INSERT INTO public.users VALUES (35, 'user_1678121504743');
INSERT INTO public.users VALUES (36, 'user_1678121518325');
INSERT INTO public.users VALUES (37, 'user_1678121518324');
INSERT INTO public.users VALUES (38, 'user_1678121532004');
INSERT INTO public.users VALUES (39, 'user_1678121532003');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 120, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


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