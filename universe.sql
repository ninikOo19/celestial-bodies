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
-- Name: additional; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional (
    additional_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    kali integer
);


ALTER TABLE public.additional OWNER TO freecodecamp;

--
-- Name: additional_additional_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_additional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_additional_id_seq OWNER TO freecodecamp;

--
-- Name: additional_additional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_additional_id_seq OWNED BY public.additional.additional_id;


--
-- Name: additional_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_id_seq OWNER TO freecodecamp;

--
-- Name: additional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_id_seq OWNED BY public.additional.id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    distance integer,
    description text,
    kali integer
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
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    diameter integer,
    distance numeric,
    has_life boolean,
    kali integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.id;


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
    name character varying(30),
    id integer NOT NULL,
    distance integer,
    has_life boolean,
    kali integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.id;


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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    distance integer,
    has_life boolean,
    kali integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


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
-- Name: additional additional_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional ALTER COLUMN additional_id SET DEFAULT nextval('public.additional_additional_id_seq'::regclass);


--
-- Name: additional id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional ALTER COLUMN id SET DEFAULT nextval('public.additional_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: additional; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional VALUES (1, 'a', 1, NULL);
INSERT INTO public.additional VALUES (2, 'b', 2, NULL);
INSERT INTO public.additional VALUES (3, 'c', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'large magellanic cloud', 1, 158200, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'smal magellanic cloud', 2, 200000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromeda galaxy', 3, 2500000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'triangulum galaxy', 4, 3000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'centaurus A', 5, 10000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'bodes galaxy', 6, 12000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, NULL, 7, 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, NULL, 8, 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, NULL, 9, 6, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, NULL, 10, 7, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, NULL, 11, 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, NULL, 12, 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, NULL, 13, 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, NULL, 14, 11, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, NULL, 15, 12, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, NULL, 16, 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, NULL, 17, 14, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, NULL, 18, 15, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, NULL, 19, 16, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, NULL, 20, 17, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lunara', 1, 3400, 384000, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'phobos minor', 2, 12, 9376, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'deimos major', 3, 20, 23460, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'ganymede prime', 4, 5268, 1070000, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'callisto beta', 5, 3821, 1883000, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'europa delta', 6, 3122, 671000, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'lo gamma', 7, 3643, 422000, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'titan alpha', 8, 5149, 1221870, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'rhea zeta', 9, 1527, 527108, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'dione epsilon', 10, 1123, 377396, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'tethys eta', 11, 1062, 294619, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'miranda lota', 12, 471, 129390, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'ariel kappa', 13, 1157, 190093, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'umbriel lambda', 14, 1169, 265970, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'titania mu', 15, 1578, 435910, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'oberon nu', 16, 1523, 582600, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'triton omega', 17, 2707, 354759, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'proteus sigma', 18, 436, 117647, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'nereid pi', 19, 340, 5513820, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'charon tau', 20, 1212, 19571, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 4500, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', 2, 4500, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'earth', 3, 4500, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'mars', 4, 4500, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', 5, 4500, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'saturn', 6, 4500, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'uranus', 7, 4500, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'neptune', 8, 4500, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'aetheria', 9, 140000, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'terra nova', 10, 13000, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'xylos', 11, 8000, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'kryos', 12, 50000, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, NULL, 13, 10, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, NULL, 14, 10, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, NULL, 15, 11, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, NULL, 16, 12, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, NULL, 17, 13, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, NULL, 18, 14, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, NULL, 19, 15, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, NULL, 20, 16, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'proxima centauri', 1, 4, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'alpha centauri', 2, 4, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'aplha centauri b', 3, 4, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'barnards star', 4, 6, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'wolf 359', 5, 8, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'sirius', 6, 9, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, NULL, 7, 10, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, NULL, 8, 10, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, NULL, 9, 11, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, NULL, 10, 12, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, NULL, 11, 13, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, NULL, 12, 14, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, NULL, 13, 15, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, NULL, 14, 16, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, NULL, 15, 17, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, NULL, 16, 18, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, NULL, 17, 19, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, NULL, 18, 20, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, NULL, 19, 21, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, NULL, 20, 22, NULL, NULL, 20);


--
-- Name: additional_additional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_additional_id_seq', 3, true);


--
-- Name: additional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 20, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: additional additional_kali_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_kali_key UNIQUE (kali);


--
-- Name: additional additional_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_pkey PRIMARY KEY (additional_id);


--
-- Name: galaxy galaxy_kali_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_kali_key UNIQUE (kali);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_kali_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_kali_key UNIQUE (kali);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_kali_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_kali_key UNIQUE (kali);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_kali_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_kali_key UNIQUE (kali);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


