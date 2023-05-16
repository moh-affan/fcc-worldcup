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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (149, 2018, 'Final', 155, 156, 4, 2);
INSERT INTO public.games VALUES (150, 2018, 'Third Place', 157, 158, 2, 0);
INSERT INTO public.games VALUES (151, 2018, 'Semi-Final', 156, 158, 2, 1);
INSERT INTO public.games VALUES (152, 2018, 'Semi-Final', 155, 157, 1, 0);
INSERT INTO public.games VALUES (153, 2018, 'Quarter-Final', 156, 164, 3, 2);
INSERT INTO public.games VALUES (154, 2018, 'Quarter-Final', 158, 166, 2, 0);
INSERT INTO public.games VALUES (155, 2018, 'Quarter-Final', 157, 168, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Quarter-Final', 155, 170, 2, 0);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 158, 172, 2, 1);
INSERT INTO public.games VALUES (158, 2018, 'Eighth-Final', 166, 174, 1, 0);
INSERT INTO public.games VALUES (159, 2018, 'Eighth-Final', 157, 176, 3, 2);
INSERT INTO public.games VALUES (160, 2018, 'Eighth-Final', 168, 178, 2, 0);
INSERT INTO public.games VALUES (161, 2018, 'Eighth-Final', 156, 180, 2, 1);
INSERT INTO public.games VALUES (162, 2018, 'Eighth-Final', 164, 182, 2, 1);
INSERT INTO public.games VALUES (163, 2018, 'Eighth-Final', 170, 184, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Eighth-Final', 155, 186, 4, 3);
INSERT INTO public.games VALUES (165, 2014, 'Final', 187, 186, 1, 0);
INSERT INTO public.games VALUES (166, 2014, 'Third Place', 189, 168, 3, 0);
INSERT INTO public.games VALUES (167, 2014, 'Semi-Final', 186, 189, 1, 0);
INSERT INTO public.games VALUES (168, 2014, 'Semi-Final', 187, 168, 7, 1);
INSERT INTO public.games VALUES (169, 2014, 'Quarter-Final', 189, 196, 1, 0);
INSERT INTO public.games VALUES (170, 2014, 'Quarter-Final', 186, 157, 1, 0);
INSERT INTO public.games VALUES (171, 2014, 'Quarter-Final', 168, 172, 2, 1);
INSERT INTO public.games VALUES (172, 2014, 'Quarter-Final', 187, 155, 1, 0);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 168, 204, 2, 1);
INSERT INTO public.games VALUES (174, 2014, 'Eighth-Final', 172, 170, 2, 0);
INSERT INTO public.games VALUES (175, 2014, 'Eighth-Final', 155, 208, 2, 0);
INSERT INTO public.games VALUES (176, 2014, 'Eighth-Final', 187, 210, 2, 1);
INSERT INTO public.games VALUES (177, 2014, 'Eighth-Final', 189, 178, 2, 1);
INSERT INTO public.games VALUES (178, 2014, 'Eighth-Final', 196, 214, 2, 1);
INSERT INTO public.games VALUES (179, 2014, 'Eighth-Final', 186, 174, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Eighth-Final', 157, 218, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (155, 'France');
INSERT INTO public.teams VALUES (156, 'Croatia');
INSERT INTO public.teams VALUES (157, 'Belgium');
INSERT INTO public.teams VALUES (158, 'England');
INSERT INTO public.teams VALUES (164, 'Russia');
INSERT INTO public.teams VALUES (166, 'Sweden');
INSERT INTO public.teams VALUES (168, 'Brazil');
INSERT INTO public.teams VALUES (170, 'Uruguay');
INSERT INTO public.teams VALUES (172, 'Colombia');
INSERT INTO public.teams VALUES (174, 'Switzerland');
INSERT INTO public.teams VALUES (176, 'Japan');
INSERT INTO public.teams VALUES (178, 'Mexico');
INSERT INTO public.teams VALUES (180, 'Denmark');
INSERT INTO public.teams VALUES (182, 'Spain');
INSERT INTO public.teams VALUES (184, 'Portugal');
INSERT INTO public.teams VALUES (186, 'Argentina');
INSERT INTO public.teams VALUES (187, 'Germany');
INSERT INTO public.teams VALUES (189, 'Netherlands');
INSERT INTO public.teams VALUES (196, 'Costa Rica');
INSERT INTO public.teams VALUES (204, 'Chile');
INSERT INTO public.teams VALUES (208, 'Nigeria');
INSERT INTO public.teams VALUES (210, 'Algeria');
INSERT INTO public.teams VALUES (214, 'Greece');
INSERT INTO public.teams VALUES (218, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 180, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 218, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

