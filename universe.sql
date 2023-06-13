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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer,
    distance integer,
    brightness numeric(4,1) NOT NULL,
    description text,
    explored boolean,
    landed boolean
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
    name character varying(50) NOT NULL,
    radius integer,
    pressure integer,
    brightness numeric(4,1) NOT NULL,
    description text,
    explored boolean,
    landed boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    radius integer,
    pressure integer,
    brightness numeric(4,1) NOT NULL,
    description text,
    explored boolean,
    landed boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    radius integer,
    pressure integer,
    brightness numeric(4,1) NOT NULL,
    description text,
    explored boolean,
    landed boolean,
    galaxy_id integer
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(50) NOT NULL,
    brightness numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 2000, 1000, 100.1, 'the original one', false, false);
INSERT INTO public.galaxy VALUES (2, 'angel way', 5000, 2000, 444.4, 'the infamous', false, false);
INSERT INTO public.galaxy VALUES (3, 'andrometer', 2222, 2222, 222.2, 'milkys gutter', false, false);
INSERT INTO public.galaxy VALUES (4, 'someother way', 4444, 4444, 444.4, 'milkys opposite', false, false);
INSERT INTO public.galaxy VALUES (5, 'farfar away', 555, 5555, 555.5, 'in a galaxy', true, true);
INSERT INTO public.galaxy VALUES (6, 'proto way', 666, 6666, 666.6, 'orkaway tu', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ah223', 1, 1, 11.1, 'baby moon', false, false, 1);
INSERT INTO public.moon VALUES (2, 'rf441', 2, 2, 22.2, 'central spanner', true, false, 2);
INSERT INTO public.moon VALUES (3, 'ty435', 3, 3, 333.3, 'distant', true, true, 3);
INSERT INTO public.moon VALUES (4, 'ik122', 4, 4, 44.4, 'crateous', false, false, 4);
INSERT INTO public.moon VALUES (5, 'rr555', 5, 5, 55.5, 'hidden oasis', true, false, 5);
INSERT INTO public.moon VALUES (6, 'gt677', 6, 6, 66.6, 'lunar mount', false, false, 6);
INSERT INTO public.moon VALUES (7, 'iu666', 7, 7, 77.7, 'crystal lake', true, true, 7);
INSERT INTO public.moon VALUES (8, 'mt677', 8, 8, 88.8, 'gas giant', false, false, 8);
INSERT INTO public.moon VALUES (9, 'ws333', 9, 9, 99.9, 'icy plain', false, false, 9);
INSERT INTO public.moon VALUES (10, 'qq234', 10, 10, 100.0, 'subterrean', false, false, 10);
INSERT INTO public.moon VALUES (11, 'eah223', 11, 11, 111.1, 'babmoon', false, false, 1);
INSERT INTO public.moon VALUES (12, 'erf441', 12, 12, 122.2, 'centanner', true, false, 12);
INSERT INTO public.moon VALUES (13, 'ety435', 13, 3, 333.3, 'tant', true, true, 12);
INSERT INTO public.moon VALUES (14, 'eik122', 4, 4, 44.4, 'cras', false, false, 4);
INSERT INTO public.moon VALUES (15, 'err555', 5, 5, 55.5, 'hisis', true, false, 5);
INSERT INTO public.moon VALUES (16, 'egt677', 6, 6, 66.6, ' mount', false, false, 6);
INSERT INTO public.moon VALUES (17, 'eiu666', 7, 7, 77.7, 'crystal', true, true, 7);
INSERT INTO public.moon VALUES (18, 'emt677', 8, 8, 88.8, 'giant', false, false, 8);
INSERT INTO public.moon VALUES (19, 'ews333', 9, 9, 99.9, 'plain', false, false, 9);
INSERT INTO public.moon VALUES (20, 'eqq234', 10, 10, 100.0, 'terrean', false, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', 11, 111, 111.1, 'scorched earth', false, false, 1);
INSERT INTO public.planet VALUES (2, 'pluto', 22, 222, 222.2, 'promising', true, true, 2);
INSERT INTO public.planet VALUES (3, 'neptune', 333, 333, 333.3, 'stretch goal', true, true, 3);
INSERT INTO public.planet VALUES (4, 'mercury', 4444, 4444, 444.4, 'just oshi', true, false, 3);
INSERT INTO public.planet VALUES (5, 'venus', 555, 555, 555.5, 'cold', true, true, 4);
INSERT INTO public.planet VALUES (6, 'earth', 666, 6666, 666.6, 'green one', true, true, 5);
INSERT INTO public.planet VALUES (7, 'jupiter', 11, 111, 111.1, 'big boy', false, false, 6);
INSERT INTO public.planet VALUES (8, 'saturn', 22, 222, 222.2, 'lucky 22', true, true, 2);
INSERT INTO public.planet VALUES (9, 'uranus', 333, 333, 333.3, 'jokestar', true, true, 3);
INSERT INTO public.planet VALUES (10, 'ceres', 4444, 4444, 444.4, 'dwarf', true, false, 3);
INSERT INTO public.planet VALUES (11, 'haumus', 555, 555, 555.5, 'little dwarf', true, true, 4);
INSERT INTO public.planet VALUES (12, 'makemake', 666, 6666, 666.6, 'make one', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'satoshi', 11, 111, 111.1, 'godfather', false, false, 1);
INSERT INTO public.star VALUES (2, 'halfinney', 22, 222, 222.2, 'the runner', true, true, 2);
INSERT INTO public.star VALUES (3, 'cobie', 333, 333, 333.3, 'gone for now', true, true, 3);
INSERT INTO public.star VALUES (4, 'pentoshi', 4444, 4444, 444.4, 'lengendary light', true, false, 3);
INSERT INTO public.star VALUES (5, 'duck', 555, 555, 555.5, 'galaxy pond', true, true, 4);
INSERT INTO public.star VALUES (6, 'wolf', 666, 6666, 666.6, 'dust', false, false, 5);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'our sun', 950.9, 1);
INSERT INTO public.sun VALUES (2, 'dead sun', 1.0, 2);
INSERT INTO public.sun VALUES (3, 'macca', 323.2, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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
-- Name: sun sun_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

