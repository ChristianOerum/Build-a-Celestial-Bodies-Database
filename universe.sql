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
    name character varying NOT NULL,
    diameter_in_ly integer,
    surface_temp_in_celcius numeric,
    inhabitable boolean,
    gas_based boolean,
    supercluster_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_in_km integer,
    surface_temp_in_celcius numeric,
    inhabitable boolean,
    gas_based boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_in_km integer,
    surface_temp_in_celcius numeric,
    inhabitable boolean,
    gas_based boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_in_km integer,
    surface_temp_in_celcius numeric,
    inhabitable boolean,
    gas_based boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: supercluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supercluster (
    supercluster_id integer NOT NULL,
    name character varying NOT NULL,
    diameter_in_ly integer,
    description text
);


ALTER TABLE public.supercluster OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 10000, 6000, false, true, 1);
INSERT INTO public.galaxy VALUES (1, 'Milky way', 105700, 450, true, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 600, false, true, 1);
INSERT INTO public.galaxy VALUES (4, 'Antennae', 115000000, 6000, false, true, 1);
INSERT INTO public.galaxy VALUES (5, 'Black eye', 52700, 6000, false, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Cosmos redshift 7', 100000000, 6000, false, true, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 3475, 100, false, false, 1);
INSERT INTO public.moon VALUES (2, 'placeholder2', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (3, 'placeholder3', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (5, 'placeholder4', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (4, 'placeholder5', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (6, 'placeholder6', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (7, 'placeholder7', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (8, 'placeholder8', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (9, 'placeholder9', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (10, 'placeholder10', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (11, 'placeholder11', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (12, 'placeholder12', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (13, 'placeholder13', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (14, 'placeholder14', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (15, 'placeholder15', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (16, 'placeholder16', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (17, 'placeholder17', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (18, 'placeholder18', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (19, 'placeholder19', 2000, 100, false, false, 4);
INSERT INTO public.moon VALUES (20, 'placeholder20', 2000, 100, false, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 15, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 7000, 200, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 20000, 100, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 50000, 80, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 35000, 80, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Murcury', 4000, 400, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 20000, 0, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 1000, 0, false, false, 1);
INSERT INTO public.planet VALUES (9, 'HD 50568', 1000, 0, false, false, 2);
INSERT INTO public.planet VALUES (10, 'HIP 3568', 1000, 0, false, false, 2);
INSERT INTO public.planet VALUES (11, 'HD 3348', 1000, 0, false, false, 2);
INSERT INTO public.planet VALUES (12, 'WSAP-3', 1000, 0, false, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1392700, 6000, false, true, 1);
INSERT INTO public.star VALUES (2, 'Antares', 945000000, 3200, false, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 675000000, 3200, false, true, 1);
INSERT INTO public.star VALUES (4, 'KW Sagittari', 725000000, 5200, false, true, 1);
INSERT INTO public.star VALUES (5, 'MU Cepheei', 425000000, 6200, false, true, 1);
INSERT INTO public.star VALUES (6, 'UY Scuti', 925000000, 3200, false, true, 1);


--
-- Data for Name: supercluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supercluster VALUES (1, 'Laniakea supercluster', 500000000, NULL);
INSERT INTO public.supercluster VALUES (2, 'Virgo supercluster', 110000000, NULL);
INSERT INTO public.supercluster VALUES (3, 'Hydra-centaurus supercluster', 150000000, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: supercluster supercluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_pkey PRIMARY KEY (supercluster_id);


--
-- Name: supercluster supercluster_supercluster_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_supercluster_id_key UNIQUE (supercluster_id);


--
-- Name: galaxy galaxy_parent_supercluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_parent_supercluster_id_fkey FOREIGN KEY (supercluster_id) REFERENCES public.supercluster(supercluster_id);


--
-- Name: moon moon_parent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_parent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_parent_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_parent_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_parent_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parent_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

