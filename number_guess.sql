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
    username character varying(25) NOT NULL
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

INSERT INTO public.games VALUES (1, 642, 2);
INSERT INTO public.games VALUES (2, 43, 2);
INSERT INTO public.games VALUES (3, 617, 3);
INSERT INTO public.games VALUES (4, 217, 3);
INSERT INTO public.games VALUES (5, 249, 2);
INSERT INTO public.games VALUES (6, 136, 2);
INSERT INTO public.games VALUES (7, 712, 2);
INSERT INTO public.games VALUES (8, 15, 4);
INSERT INTO public.games VALUES (9, 352, 5);
INSERT INTO public.games VALUES (10, 89, 5);
INSERT INTO public.games VALUES (11, 81, 6);
INSERT INTO public.games VALUES (12, 1000, 6);
INSERT INTO public.games VALUES (13, 383, 5);
INSERT INTO public.games VALUES (14, 934, 5);
INSERT INTO public.games VALUES (15, 486, 5);
INSERT INTO public.games VALUES (16, 1, 7);
INSERT INTO public.games VALUES (17, 994, 7);
INSERT INTO public.games VALUES (18, 421, 8);
INSERT INTO public.games VALUES (19, 123, 8);
INSERT INTO public.games VALUES (20, 445, 7);
INSERT INTO public.games VALUES (21, 12, 7);
INSERT INTO public.games VALUES (22, 152, 7);
INSERT INTO public.games VALUES (23, 295, 9);
INSERT INTO public.games VALUES (24, 866, 9);
INSERT INTO public.games VALUES (25, 932, 10);
INSERT INTO public.games VALUES (26, 423, 10);
INSERT INTO public.games VALUES (27, 306, 9);
INSERT INTO public.games VALUES (28, 914, 9);
INSERT INTO public.games VALUES (29, 502, 9);
INSERT INTO public.games VALUES (30, 999, 11);
INSERT INTO public.games VALUES (31, 856, 11);
INSERT INTO public.games VALUES (32, 15, 12);
INSERT INTO public.games VALUES (33, 61, 12);
INSERT INTO public.games VALUES (34, 394, 11);
INSERT INTO public.games VALUES (35, 289, 11);
INSERT INTO public.games VALUES (36, 450, 11);
INSERT INTO public.games VALUES (37, 367, 13);
INSERT INTO public.games VALUES (38, 723, 13);
INSERT INTO public.games VALUES (39, 980, 14);
INSERT INTO public.games VALUES (40, 659, 14);
INSERT INTO public.games VALUES (41, 574, 13);
INSERT INTO public.games VALUES (42, 946, 13);
INSERT INTO public.games VALUES (43, 436, 13);
INSERT INTO public.games VALUES (44, 959, 15);
INSERT INTO public.games VALUES (45, 673, 15);
INSERT INTO public.games VALUES (46, 198, 16);
INSERT INTO public.games VALUES (47, 372, 16);
INSERT INTO public.games VALUES (48, 848, 15);
INSERT INTO public.games VALUES (49, 196, 15);
INSERT INTO public.games VALUES (50, 755, 15);
INSERT INTO public.games VALUES (51, 100, 17);
INSERT INTO public.games VALUES (52, 665, 17);
INSERT INTO public.games VALUES (53, 74, 18);
INSERT INTO public.games VALUES (54, 97, 18);
INSERT INTO public.games VALUES (55, 394, 17);
INSERT INTO public.games VALUES (56, 99, 17);
INSERT INTO public.games VALUES (57, 975, 17);
INSERT INTO public.games VALUES (58, 16, 1);
INSERT INTO public.games VALUES (59, 87, 19);
INSERT INTO public.games VALUES (60, 926, 19);
INSERT INTO public.games VALUES (61, 979, 20);
INSERT INTO public.games VALUES (62, 71, 20);
INSERT INTO public.games VALUES (63, 631, 19);
INSERT INTO public.games VALUES (64, 48, 19);
INSERT INTO public.games VALUES (65, 298, 19);
INSERT INTO public.games VALUES (66, 454, 21);
INSERT INTO public.games VALUES (67, 94, 21);
INSERT INTO public.games VALUES (68, 111, 22);
INSERT INTO public.games VALUES (69, 231, 22);
INSERT INTO public.games VALUES (70, 266, 21);
INSERT INTO public.games VALUES (71, 107, 21);
INSERT INTO public.games VALUES (72, 90, 21);
INSERT INTO public.games VALUES (73, 14, 23);
INSERT INTO public.games VALUES (74, 21, 24);
INSERT INTO public.games VALUES (75, 506, 24);
INSERT INTO public.games VALUES (76, 270, 25);
INSERT INTO public.games VALUES (77, 115, 25);
INSERT INTO public.games VALUES (78, 235, 24);
INSERT INTO public.games VALUES (79, 416, 24);
INSERT INTO public.games VALUES (80, 74, 24);
INSERT INTO public.games VALUES (81, 317, 26);
INSERT INTO public.games VALUES (82, 733, 26);
INSERT INTO public.games VALUES (83, 585, 27);
INSERT INTO public.games VALUES (84, 897, 27);
INSERT INTO public.games VALUES (85, 427, 27);
INSERT INTO public.games VALUES (86, 630, 28);
INSERT INTO public.games VALUES (87, 112, 28);
INSERT INTO public.games VALUES (88, 679, 29);
INSERT INTO public.games VALUES (89, 229, 29);
INSERT INTO public.games VALUES (90, 771, 28);
INSERT INTO public.games VALUES (91, 998, 28);
INSERT INTO public.games VALUES (92, 663, 28);
INSERT INTO public.games VALUES (93, 181, 30);
INSERT INTO public.games VALUES (94, 100, 30);
INSERT INTO public.games VALUES (95, 507, 31);
INSERT INTO public.games VALUES (96, 385, 31);
INSERT INTO public.games VALUES (97, 195, 30);
INSERT INTO public.games VALUES (98, 354, 30);
INSERT INTO public.games VALUES (99, 254, 30);
INSERT INTO public.games VALUES (100, 1, 32);
INSERT INTO public.games VALUES (101, 613, 32);
INSERT INTO public.games VALUES (102, 403, 33);
INSERT INTO public.games VALUES (103, 398, 33);
INSERT INTO public.games VALUES (104, 378, 32);
INSERT INTO public.games VALUES (105, 906, 32);
INSERT INTO public.games VALUES (106, 885, 32);
INSERT INTO public.games VALUES (107, 139, 34);
INSERT INTO public.games VALUES (108, 141, 34);
INSERT INTO public.games VALUES (109, 575, 35);
INSERT INTO public.games VALUES (110, 428, 35);
INSERT INTO public.games VALUES (111, 636, 34);
INSERT INTO public.games VALUES (112, 274, 34);
INSERT INTO public.games VALUES (113, 625, 34);
INSERT INTO public.games VALUES (114, 698, 36);
INSERT INTO public.games VALUES (115, 764, 36);
INSERT INTO public.games VALUES (116, 1, 37);
INSERT INTO public.games VALUES (117, 962, 37);
INSERT INTO public.games VALUES (118, 761, 36);
INSERT INTO public.games VALUES (119, 178, 36);
INSERT INTO public.games VALUES (120, 785, 36);
INSERT INTO public.games VALUES (121, 49, 38);
INSERT INTO public.games VALUES (122, 518, 38);
INSERT INTO public.games VALUES (123, 148, 39);
INSERT INTO public.games VALUES (124, 278, 39);
INSERT INTO public.games VALUES (125, 319, 38);
INSERT INTO public.games VALUES (126, 515, 38);
INSERT INTO public.games VALUES (127, 87, 38);
INSERT INTO public.games VALUES (128, 590, 40);
INSERT INTO public.games VALUES (129, 514, 40);
INSERT INTO public.games VALUES (130, 138, 41);
INSERT INTO public.games VALUES (131, 604, 41);
INSERT INTO public.games VALUES (132, 298, 40);
INSERT INTO public.games VALUES (133, 494, 40);
INSERT INTO public.games VALUES (134, 280, 40);
INSERT INTO public.games VALUES (135, 1, 42);
INSERT INTO public.games VALUES (136, 616, 42);
INSERT INTO public.games VALUES (137, 61, 43);
INSERT INTO public.games VALUES (138, 340, 43);
INSERT INTO public.games VALUES (139, 588, 42);
INSERT INTO public.games VALUES (140, 411, 42);
INSERT INTO public.games VALUES (141, 11, 42);
INSERT INTO public.games VALUES (142, 512, 44);
INSERT INTO public.games VALUES (143, 521, 44);
INSERT INTO public.games VALUES (144, 573, 45);
INSERT INTO public.games VALUES (145, 318, 45);
INSERT INTO public.games VALUES (146, 540, 44);
INSERT INTO public.games VALUES (147, 800, 44);
INSERT INTO public.games VALUES (148, 351, 44);
INSERT INTO public.games VALUES (149, 1, 46);
INSERT INTO public.games VALUES (150, 139, 46);
INSERT INTO public.games VALUES (151, 787, 47);
INSERT INTO public.games VALUES (152, 128, 47);
INSERT INTO public.games VALUES (153, 852, 46);
INSERT INTO public.games VALUES (154, 371, 46);
INSERT INTO public.games VALUES (155, 551, 46);
INSERT INTO public.games VALUES (156, 383, 48);
INSERT INTO public.games VALUES (157, 937, 48);
INSERT INTO public.games VALUES (158, 897, 49);
INSERT INTO public.games VALUES (159, 963, 49);
INSERT INTO public.games VALUES (160, 514, 48);
INSERT INTO public.games VALUES (161, 535, 48);
INSERT INTO public.games VALUES (162, 557, 48);
INSERT INTO public.games VALUES (163, 1, 50);
INSERT INTO public.games VALUES (164, 268, 50);
INSERT INTO public.games VALUES (165, 1, 51);
INSERT INTO public.games VALUES (166, 649, 51);
INSERT INTO public.games VALUES (167, 143, 50);
INSERT INTO public.games VALUES (168, 455, 50);
INSERT INTO public.games VALUES (169, 249, 50);
INSERT INTO public.games VALUES (170, 857, 52);
INSERT INTO public.games VALUES (171, 297, 52);
INSERT INTO public.games VALUES (172, 481, 53);
INSERT INTO public.games VALUES (173, 151, 53);
INSERT INTO public.games VALUES (174, 951, 52);
INSERT INTO public.games VALUES (175, 151, 52);
INSERT INTO public.games VALUES (176, 667, 52);
INSERT INTO public.games VALUES (177, 963, 54);
INSERT INTO public.games VALUES (178, 153, 54);
INSERT INTO public.games VALUES (179, 1, 55);
INSERT INTO public.games VALUES (180, 433, 55);
INSERT INTO public.games VALUES (181, 822, 55);
INSERT INTO public.games VALUES (182, 231, 56);
INSERT INTO public.games VALUES (183, 208, 56);
INSERT INTO public.games VALUES (184, 892, 57);
INSERT INTO public.games VALUES (185, 398, 57);
INSERT INTO public.games VALUES (186, 665, 56);
INSERT INTO public.games VALUES (187, 612, 56);
INSERT INTO public.games VALUES (188, 273, 56);
INSERT INTO public.games VALUES (189, 84, 58);
INSERT INTO public.games VALUES (190, 277, 58);
INSERT INTO public.games VALUES (191, 988, 59);
INSERT INTO public.games VALUES (192, 281, 59);
INSERT INTO public.games VALUES (193, 301, 58);
INSERT INTO public.games VALUES (194, 494, 58);
INSERT INTO public.games VALUES (195, 363, 58);
INSERT INTO public.games VALUES (196, 1, 60);
INSERT INTO public.games VALUES (197, 718, 60);
INSERT INTO public.games VALUES (198, 570, 61);
INSERT INTO public.games VALUES (199, 423, 61);
INSERT INTO public.games VALUES (200, 876, 60);
INSERT INTO public.games VALUES (201, 39, 60);
INSERT INTO public.games VALUES (202, 732, 60);
INSERT INTO public.games VALUES (203, 696, 62);
INSERT INTO public.games VALUES (204, 591, 62);
INSERT INTO public.games VALUES (205, 606, 63);
INSERT INTO public.games VALUES (206, 965, 63);
INSERT INTO public.games VALUES (207, 582, 62);
INSERT INTO public.games VALUES (208, 319, 62);
INSERT INTO public.games VALUES (209, 605, 62);
INSERT INTO public.games VALUES (210, 669, 64);
INSERT INTO public.games VALUES (211, 279, 64);
INSERT INTO public.games VALUES (212, 1, 65);
INSERT INTO public.games VALUES (213, 95, 65);
INSERT INTO public.games VALUES (214, 105, 64);
INSERT INTO public.games VALUES (215, 833, 64);
INSERT INTO public.games VALUES (216, 925, 64);
INSERT INTO public.games VALUES (217, 687, 66);
INSERT INTO public.games VALUES (218, 255, 66);
INSERT INTO public.games VALUES (219, 821, 67);
INSERT INTO public.games VALUES (220, 828, 67);
INSERT INTO public.games VALUES (221, 635, 66);
INSERT INTO public.games VALUES (222, 170, 66);
INSERT INTO public.games VALUES (223, 246, 66);
INSERT INTO public.games VALUES (224, 140, 68);
INSERT INTO public.games VALUES (225, 911, 68);
INSERT INTO public.games VALUES (226, 488, 69);
INSERT INTO public.games VALUES (227, 582, 69);
INSERT INTO public.games VALUES (228, 637, 68);
INSERT INTO public.games VALUES (229, 562, 68);
INSERT INTO public.games VALUES (230, 660, 68);
INSERT INTO public.games VALUES (231, 377, 70);
INSERT INTO public.games VALUES (232, 33, 70);
INSERT INTO public.games VALUES (233, 977, 71);
INSERT INTO public.games VALUES (234, 918, 71);
INSERT INTO public.games VALUES (235, 720, 70);
INSERT INTO public.games VALUES (236, 819, 70);
INSERT INTO public.games VALUES (237, 701, 70);
INSERT INTO public.games VALUES (238, 750, 72);
INSERT INTO public.games VALUES (239, 737, 72);
INSERT INTO public.games VALUES (240, 62, 73);
INSERT INTO public.games VALUES (241, 88, 73);
INSERT INTO public.games VALUES (242, 107, 72);
INSERT INTO public.games VALUES (243, 942, 72);
INSERT INTO public.games VALUES (244, 654, 72);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'saddi');
INSERT INTO public.users VALUES (2, 'user_1689722757673');
INSERT INTO public.users VALUES (3, 'user_1689722757672');
INSERT INTO public.users VALUES (4, 'gene');
INSERT INTO public.users VALUES (5, 'user_1689722822478');
INSERT INTO public.users VALUES (6, 'user_1689722822477');
INSERT INTO public.users VALUES (7, 'user_1689722873666');
INSERT INTO public.users VALUES (8, 'user_1689722873665');
INSERT INTO public.users VALUES (9, 'user_1689723182877');
INSERT INTO public.users VALUES (10, 'user_1689723182876');
INSERT INTO public.users VALUES (11, 'user_1689723223965');
INSERT INTO public.users VALUES (12, 'user_1689723223964');
INSERT INTO public.users VALUES (13, 'user_1689723239392');
INSERT INTO public.users VALUES (14, 'user_1689723239391');
INSERT INTO public.users VALUES (15, 'user_1689723285792');
INSERT INTO public.users VALUES (16, 'user_1689723285791');
INSERT INTO public.users VALUES (17, 'user_1689723326758');
INSERT INTO public.users VALUES (18, 'user_1689723326757');
INSERT INTO public.users VALUES (19, 'user_1689723381794');
INSERT INTO public.users VALUES (20, 'user_1689723381793');
INSERT INTO public.users VALUES (21, 'user_1689723615193');
INSERT INTO public.users VALUES (22, 'user_1689723615192');
INSERT INTO public.users VALUES (23, 'sadd');
INSERT INTO public.users VALUES (24, 'user_1689723682011');
INSERT INTO public.users VALUES (25, 'user_1689723682010');
INSERT INTO public.users VALUES (26, 'user_1689723729589');
INSERT INTO public.users VALUES (27, 'user_1689723729590');
INSERT INTO public.users VALUES (28, 'user_1689723743460');
INSERT INTO public.users VALUES (29, 'user_1689723743459');
INSERT INTO public.users VALUES (30, 'user_1689723789677');
INSERT INTO public.users VALUES (31, 'user_1689723789676');
INSERT INTO public.users VALUES (32, 'user_1689723826619');
INSERT INTO public.users VALUES (33, 'user_1689723826618');
INSERT INTO public.users VALUES (34, 'user_1689723879978');
INSERT INTO public.users VALUES (35, 'user_1689723879977');
INSERT INTO public.users VALUES (36, 'user_1689723924837');
INSERT INTO public.users VALUES (37, 'user_1689723924836');
INSERT INTO public.users VALUES (38, 'user_1689723978269');
INSERT INTO public.users VALUES (39, 'user_1689723978268');
INSERT INTO public.users VALUES (40, 'user_1689724035759');
INSERT INTO public.users VALUES (41, 'user_1689724035758');
INSERT INTO public.users VALUES (42, 'user_1689724085628');
INSERT INTO public.users VALUES (43, 'user_1689724085627');
INSERT INTO public.users VALUES (44, 'user_1689724159644');
INSERT INTO public.users VALUES (45, 'user_1689724159643');
INSERT INTO public.users VALUES (46, 'user_1689724203217');
INSERT INTO public.users VALUES (47, 'user_1689724203216');
INSERT INTO public.users VALUES (48, 'user_1689724267340');
INSERT INTO public.users VALUES (49, 'user_1689724267339');
INSERT INTO public.users VALUES (50, 'user_1689724343918');
INSERT INTO public.users VALUES (51, 'user_1689724343917');
INSERT INTO public.users VALUES (52, 'user_1689724357974');
INSERT INTO public.users VALUES (53, 'user_1689724357973');
INSERT INTO public.users VALUES (54, 'user_1689724380639');
INSERT INTO public.users VALUES (55, 'user_1689724380640');
INSERT INTO public.users VALUES (56, 'user_1689724443081');
INSERT INTO public.users VALUES (57, 'user_1689724443080');
INSERT INTO public.users VALUES (58, 'user_1689724458877');
INSERT INTO public.users VALUES (59, 'user_1689724458876');
INSERT INTO public.users VALUES (60, 'user_1689724496293');
INSERT INTO public.users VALUES (61, 'user_1689724496292');
INSERT INTO public.users VALUES (62, 'user_1689724563878');
INSERT INTO public.users VALUES (63, 'user_1689724563877');
INSERT INTO public.users VALUES (64, 'user_1689724593258');
INSERT INTO public.users VALUES (65, 'user_1689724593257');
INSERT INTO public.users VALUES (66, 'user_1689724628975');
INSERT INTO public.users VALUES (67, 'user_1689724628974');
INSERT INTO public.users VALUES (68, 'user_1689724651877');
INSERT INTO public.users VALUES (69, 'user_1689724651876');
INSERT INTO public.users VALUES (70, 'user_1689724810064');
INSERT INTO public.users VALUES (71, 'user_1689724810063');
INSERT INTO public.users VALUES (72, 'user_1689725066034');
INSERT INTO public.users VALUES (73, 'user_1689725066033');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 244, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 73, true);


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
