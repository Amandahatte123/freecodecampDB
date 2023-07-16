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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: gabriel; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gabriel (
    "mañoso" character varying(45) NOT NULL,
    enojon character varying(45) NOT NULL,
    name character varying(45) NOT NULL,
    gabriel_id integer NOT NULL
);


ALTER TABLE public.gabriel OWNER TO freecodecamp;

--
-- Name: gabriel_gabriel_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gabriel_gabriel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gabriel_gabriel_id_seq OWNER TO freecodecamp;

--
-- Name: gabriel_gabriel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gabriel_gabriel_id_seq OWNED BY public.gabriel.gabriel_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: gabriel gabriel_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gabriel ALTER COLUMN gabriel_id SET DEFAULT nextval('public.gabriel_gabriel_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: gabriel; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gabriel VALUES ('SI', 'SI', 'SI', 1);
INSERT INTO public.gabriel VALUES ('SIR', 'SIR', 'SIR', 2);
INSERT INTO public.gabriel VALUES ('SIRR', 'SRIR', 'SRIR', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'terra', 1, 1, 2, 'terra', true);
INSERT INTO public.galaxy VALUES (2, 'TIERRA', 1, 2, 2, 'teirra', true);
INSERT INTO public.galaxy VALUES (3, 'TIERRA', 1, 2, 2, 'teirra', true);
INSERT INTO public.galaxy VALUES (4, 'yierra', 3, 3, 3, 'yerra', false);
INSERT INTO public.galaxy VALUES (5, 'popo', 3, 4, 5, 'popo', false);
INSERT INTO public.galaxy VALUES (6, 'sasa', 1, 2, 3, 'star', true);
INSERT INTO public.galaxy VALUES (7, 'sisi', 4, 4, 5, 'yuyu', false);
INSERT INTO public.galaxy VALUES (8, 'rere', 3, 4, 5, 'pipi', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'planet', 1, 2, 3, 'planet', false, 1);
INSERT INTO public.moon VALUES (2, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (3, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (4, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (5, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (6, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (7, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (8, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (9, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (10, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (11, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (12, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (13, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (14, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (15, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (16, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (17, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (18, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (19, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);
INSERT INTO public.moon VALUES (20, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.moon VALUES (21, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.moon VALUES (22, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet', 1, 2, 3, 'planet', false, 1);
INSERT INTO public.planet VALUES (2, 'sasa', 1, 2, 3, 'star', true, 1);
INSERT INTO public.planet VALUES (3, 'sisi', 4, 4, 5, 'yuyu', false, 1);
INSERT INTO public.planet VALUES (4, 'rere', 3, 4, 5, 'pipi', true, 1);
INSERT INTO public.planet VALUES (5, 'sadsa', 1, 2, 3, 'stdar', true, 2);
INSERT INTO public.planet VALUES (6, 'sidsi', 4, 4, 5, 'yduyu', false, 2);
INSERT INTO public.planet VALUES (7, 'drere', 3, 4, 5, 'pipi', true, 2);
INSERT INTO public.planet VALUES (8, 'sa3dsa', 1, 2, 3, 'stdar', true, 3);
INSERT INTO public.planet VALUES (9, 'siddsi', 4, 4, 5, 'yduyu', false, 3);
INSERT INTO public.planet VALUES (10, 'dvrere', 3, 4, 5, 'pipi', true, 3);
INSERT INTO public.planet VALUES (11, 'sa3fdsa', 1, 2, 3, 'stdafr', true, 4);
INSERT INTO public.planet VALUES (12, 'sidfdsi', 4, 4, 5, 'yduyu', false, 4);
INSERT INTO public.planet VALUES (13, 'dvrerfe', 3, 4, 5, 'pipi', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star', 1, 2, 3, 'star', false, 1);
INSERT INTO public.star VALUES (2, 'sasa', 1, 2, 3, 'star', true, 1);
INSERT INTO public.star VALUES (3, 'sasa', 1, 2, 3, 'star', true, 2);
INSERT INTO public.star VALUES (4, 'sisi', 4, 4, 5, 'yuyu', false, 3);
INSERT INTO public.star VALUES (5, 'sasa', 1, 2, 3, 'star', true, 2);
INSERT INTO public.star VALUES (6, 'sisi', 4, 4, 5, 'yuyu', false, 3);
INSERT INTO public.star VALUES (7, 'rere', 3, 4, 5, 'pipi', true, 2);


--
-- Name: gabriel_gabriel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gabriel_gabriel_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: gabriel gabriel_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gabriel
    ADD CONSTRAINT gabriel_id UNIQUE (gabriel_id);


--
-- Name: gabriel gabriel_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gabriel
    ADD CONSTRAINT gabriel_pkey PRIMARY KEY (gabriel_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

