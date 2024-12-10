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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    number_of_stars integer NOT NULL,
    size_in_light_years numeric(7,3) NOT NULL,
    type character varying(20)
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
-- Name: life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_forms (
    life_forms_id integer NOT NULL,
    name character varying(30) NOT NULL,
    species text,
    quantity_of_legs integer,
    description text,
    planet_id integer
);


ALTER TABLE public.life_forms OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_forms_life_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_forms_life_form_id_seq OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_forms_life_form_id_seq OWNED BY public.life_forms.life_forms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_crators integer,
    can_be_colonized boolean,
    planet_id integer,
    has_resources boolean NOT NULL
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
    name character varying(30) NOT NULL,
    size numeric(5,3),
    has_life boolean NOT NULL,
    description text,
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
    name character varying(30),
    age integer,
    galaxy_id integer,
    issuper_nova boolean NOT NULL,
    size_of_star numeric(5,2)
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
-- Name: life_forms life_forms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms ALTER COLUMN life_forms_id SET DEFAULT nextval('public.life_forms_life_form_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 432132, 5432.234, 'Elliptical');
INSERT INTO public.galaxy VALUES (2, 'Baroks', 543233, 3234.543, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Clasiat', 2346421, 1938.382, 'Irregular');
INSERT INTO public.galaxy VALUES (4, 'Linex', 583910, 9817.384, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Kinsite', 937819, 3892.487, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'Posoh', 593827, 4972.492, 'Irregular');


--
-- Data for Name: life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_forms VALUES (1, 'Brondo', 'mammals', 4, 'Long leg animal so they can reach fruits on the trees, very fragile because of low pressure ', 1);
INSERT INTO public.life_forms VALUES (2, 'Seitonian', 'humanoid', 2, 'Humantype species,after a worldwide conflict after creating firearms, rearanged their goals and started to progress in science, colonizing planet that next to them', 9);
INSERT INTO public.life_forms VALUES (3, 'Ezh', 'Ezh', 4, 'Just Ezh', 9);
INSERT INTO public.life_forms VALUES (4, 'Numospelatu', 'bacteria', 0, 'The simpliest bacteria, nothing special', 12);
INSERT INTO public.life_forms VALUES (5, '???', '???', 0, 'Maybe someon managed to escape before end?', 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'xm-32', 43, true, 1, true);
INSERT INTO public.moon VALUES (2, 'm1', 5, false, 4, false);
INSERT INTO public.moon VALUES (3, 'm2', 3, false, 4, false);
INSERT INTO public.moon VALUES (4, 'm3', 54, false, 4, false);
INSERT INTO public.moon VALUES (5, 'm4', 23, false, 4, false);
INSERT INTO public.moon VALUES (6, 'Oc31', 4, false, 6, true);
INSERT INTO public.moon VALUES (7, 'OC2', 32, true, 6, true);
INSERT INTO public.moon VALUES (8, 'CR1', 0, false, 7, true);
INSERT INTO public.moon VALUES (9, 'CR2', 0, false, 7, true);
INSERT INTO public.moon VALUES (10, 'CR3', 0, false, 7, true);
INSERT INTO public.moon VALUES (11, 'Zoondrac', 3, true, 9, true);
INSERT INTO public.moon VALUES (12, 'Mildrac', 23, true, 9, true);
INSERT INTO public.moon VALUES (13, 'pLx32mn', 65, false, 11, false);
INSERT INTO public.moon VALUES (14, 'dox3l12', 22, false, 11, false);
INSERT INTO public.moon VALUES (15, 'Europe', 0, true, 11, true);
INSERT INTO public.moon VALUES (16, 'leox234.2', 89, false, 11, false);
INSERT INTO public.moon VALUES (17, 'nmci33n2', 20, false, 11, false);
INSERT INTO public.moon VALUES (18, 'PZH34AP', 8, false, 11, false);
INSERT INTO public.moon VALUES (19, 'odq508c', 3, false, 11, false);
INSERT INTO public.moon VALUES (20, 'F1', 97, true, 12, true);
INSERT INTO public.moon VALUES (21, 'F2', 83, false, 12, false);
INSERT INTO public.moon VALUES (22, 'F3', 8, false, 12, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Soma', 45.332, true, 'Planet with small gravity, full of very tall creatures', 1);
INSERT INTO public.planet VALUES (2, 'Palet', 85.732, false, 'Massive gas giante', 1);
INSERT INTO public.planet VALUES (3, 'Colic', 1.234, true, 'Planet of some small guy with a rose', 2);
INSERT INTO public.planet VALUES (4, 'Chasong', 37.443, false, 'Basicly a Rock with a lot of useful metals', 2);
INSERT INTO public.planet VALUES (5, 'lola', 45.234, true, 'Planet made out of candy, life had to adapt and now lives in ethernal sweetdream', 3);
INSERT INTO public.planet VALUES (6, 'silon', 84.340, true, 'Mostly water planet with high pressure whish helpped develop truly enormous underwate creatures', 3);
INSERT INTO public.planet VALUES (7, 'Cristas', 32.513, false, 'Plannet that consists of minerals in crystal form which are covering 90% of it_s surface. There is a legend that a starship that goes nearby it will burn if it will turn on the lights', 4);
INSERT INTO public.planet VALUES (8, 'Perpora', 22.232, false, 'Planet that still forming, lava and errupting volcans is everywhere', 4);
INSERT INTO public.planet VALUES (9, 'Seito', 23.212, true, 'High technological civilization is here, cappable of planet travel', 5);
INSERT INTO public.planet VALUES (11, 'Iod', 99.323, false, 'A trully masive gas giant', 6);
INSERT INTO public.planet VALUES (12, 'Septorix', 23.443, true, 'The life just began to form in the easeast life form who knows how it will look like in the future...', 6);
INSERT INTO public.planet VALUES (13, 'Forgoten', 0.000, false, 'Once a planet full of life, was destroied by it_s star death, when it became supernova, it_s blast made this planet nothing more than some dust drifting in the space', 7);
INSERT INTO public.planet VALUES (10, 'Landays', 12.322, false, ' Dead planet which Seito_s people started to colonized for resures so they can solve theyr economical problems', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Centaur', 482713, 1, false, 837.43);
INSERT INTO public.star VALUES (2, 'Flami', 483727, 2, false, 573.46);
INSERT INTO public.star VALUES (3, 'Phantom', 872673, 3, false, 847.38);
INSERT INTO public.star VALUES (4, 'Lesli', 728376, 4, false, 567.43);
INSERT INTO public.star VALUES (5, 'Fenix', 783947, 5, false, 938.45);
INSERT INTO public.star VALUES (6, 'Crieg', 372983, 6, false, 478.39);
INSERT INTO public.star VALUES (7, 'Terore', 372613, 3, true, 999.38);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_forms_life_form_id_seq', 5, true);


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
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life_forms life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_name_key UNIQUE (name);


--
-- Name: life_forms life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_forms_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: life_forms unique_life_form_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT unique_life_form_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: life_forms life_forms_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

