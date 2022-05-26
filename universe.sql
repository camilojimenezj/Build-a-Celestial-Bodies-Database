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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    radius_thousands_light_years integer,
    constellation character varying(30)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    orbital_period_days integer,
    gravity numeric(3,2),
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
    has_life boolean NOT NULL,
    description text,
    has_moon boolean,
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
    surface_temperature_kelvin integer,
    age_million_years integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky_way', 'Spiral', 53, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 110, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 30, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Black_eye', 'Spiral', 26, 'Coma_Berenices');
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'Elliptical', 18, 'Ursa_Major');
INSERT INTO public.galaxy VALUES (6, 'Hoags', 'Ring', 60, 'Serpens');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Elliptical', 'Is a type of galaxy with an approximately ellipsoidal shape and a smooth, nearly featureless image');
INSERT INTO public.galaxy_types VALUES (2, 'Spiral', 'Typically has a rotating disc with spiral "arms" that curve out from a dense central region');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Is a galaxy tha does not have a distinct regular shape');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 4, 1.31, 5);
INSERT INTO public.moon VALUES (2, 'Moon', 27, 1.62, 1);
INSERT INTO public.moon VALUES (3, 'Ganymede', 7, 1.43, 5);
INSERT INTO public.moon VALUES (4, 'Io', 2, 1.76, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 17, 1.24, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', 1, 0.02, 5);
INSERT INTO public.moon VALUES (7, 'Himalia', 248, 0.06, 5);
INSERT INTO public.moon VALUES (9, 'Valetudo', 526, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Carme', 702, 0.02, 5);
INSERT INTO public.moon VALUES (11, 'Ananke', 630, 0.01, 5);
INSERT INTO public.moon VALUES (12, 'Phobos', 1, 0.01, 4);
INSERT INTO public.moon VALUES (13, 'Deimos', 1, 0.01, 4);
INSERT INTO public.moon VALUES (14, 'Titan', 16, 1.35, 6);
INSERT INTO public.moon VALUES (15, 'Enceladus', 1, 0.11, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 1, 0.06, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 9, 0.37, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 13, 0.35, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 6, 0.77, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', 1, 0.07, 8);
INSERT INTO public.moon VALUES (21, 'Miranda', 1, 0.08, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'the only one known to have current geological activity', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'Second planet in solar system, close in size to Earth', false, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', false, 'Closest planet to the Sun', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'Shows ancient geological activity', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, '2.5 times the mass of all the other planets put together', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Has arround 82 moons', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Has the lowest mass of the outer planets', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Smaller than Uranus but more massive', true, 1);
INSERT INTO public.planet VALUES (9, 'Upsilon_Andromedae_b', false, 'Its mass is 0.6876 Jupiters', false, 2);
INSERT INTO public.planet VALUES (10, 'Upsilon_Andromedae_c', false, 'Its mass is 13.98 Jupiters', false, 2);
INSERT INTO public.planet VALUES (11, 'Upsilon_Andromedae_d', false, 'Its mass is 10.25 Jupiters', true, 2);
INSERT INTO public.planet VALUES (12, '7_Canis_Majoris_b', false, 'Its mass is 1.85 Jupiters', NULL, 5);
INSERT INTO public.planet VALUES (13, '7_Canis_Majoris_c', false, 'Its mass is 0.87 Jupiters', NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Alpha_Andromedae', 13000, 60, 2);
INSERT INTO public.star VALUES (3, 'VY_Canis_Majoris', 3490, 8, 1);
INSERT INTO public.star VALUES (1, 'Sun', 5778, 4500, 1);
INSERT INTO public.star VALUES (6, 'KY_Cygni', 3500, 942, 1);
INSERT INTO public.star VALUES (2, 'Upsilon_Andromedae', 6213, 3100, 2);
INSERT INTO public.star VALUES (5, '7_Canis_majoris', 4785, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy galaxy_radius_light_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_radius_light_years_key UNIQUE (radius_thousands_light_years);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: star star_surface_temperature_kelvin_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_surface_temperature_kelvin_key UNIQUE (surface_temperature_kelvin);


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

