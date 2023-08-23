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
-- Name: discovery; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discovery (
    discovery_id integer NOT NULL,
    discovery_date date NOT NULL,
    discovery_type character varying,
    description text,
    published boolean,
    name character varying
);


ALTER TABLE public.discovery OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying,
    distance_from_earth_ integer,
    size numeric,
    stars_in_bil character varying,
    black_holes character varying,
    nebulae integer,
    visible boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    liquid_water boolean,
    visible boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    atmosphere text,
    habitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    spectral_type character varying,
    mass double precision,
    radius double precision,
    temperature double precision,
    luminosity double precision,
    age double precision,
    habitable_zone boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: discovery; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.discovery (discovery_id, discovery_date, discovery_type, description, published, name) FROM stdin;
1	2007-07-04	UNKNOW	detection of brief radio burs	t	Fast Radio Bursts
2	2012-07-04	UNKNOW	confirm de higgs field	t	higgs boson
3	2015-09-14	UNKNOW	first direct detection of gravitational waves	t	gravitational waves
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, type, distance_from_earth_, size, stars_in_bil, black_holes, nebulae, visible) FROM stdin;
1	Milky Way	Spiral	27000	100	100	100 million	300000	t
2	Andromeda	Spiral	2500	220	1	100 million	10000	t
3	Triangulum	Spiral	3000	70	40 billions	10 million	2000	t
4	mESSIER 87	eLLIPTICAL	53000	120	2 trill	10 mill	1000	t
5	Sombrero Galaxy	Spiral	290000	50	100 billion	1million	500	t
6	 large Magellanic Cloud	Irregular	163000	14	10 bill	1 mill	300	t
7	Centaurus A	Elliptical	13000	25	100 bill	10000	50	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, type, liquid_water, visible, planet_id) FROM stdin;
1	MOON	Natural	f	t	1
2	Phobos	natural	f	t	2
3	Ganymede	natural	t	t	3
4	Titan	natural	t	t	4
5	Europa	natural	t	t	3
6	Triton	natural	t	t	5
7	callisto	natural	t	t	3
8	Deimos	natural	f	t	2
9	Io	natural	f	t	3
10	Enceladus	natural	t	t	4
11	charon	nat	f	t	8
12	MIRANDA	nat	f	t	7
13	HYPERION	nat	f	t	4
14	obreon	nat	f	t	7
15	titania	nat	f	t	7
16	proteus	nat	f	t	5
17	iapetus	nat	f	t	4
18	rhea	nat	f	t	4
19	phoebe	nat	f	t	4
20	ariel	nat	f	t	7
21	dione	nat	f	t	4
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, type, atmosphere, habitable, star_id) FROM stdin;
1	Earth	Terrestrial	traces of other gases	t	1
2	Mars	Terrestrial	carbon and dioxide	f	1
3	Jupiter	Gas Giant	hydrogen and helium	f	2
4	Saturn	Gas Giant	Hydrogen and helium	f	2
5	Neptune	Ice Giant	hydrogen, helium and traces of methane	f	2
6	Venus	Terrestrial	Thick carbon dioxide atmosphere	f	1
7	Uranus	Ice Giant	Hidrogen, helium, and methane	f	2
8	 Mercury	Terrestrial	Virtually no atmosphere	f	1
9	Pluto	Dwarf Planet	thin nitrogen, methane and carbon mmonoxide	f	1
10	Kepler-452b	Exoplanet	unknow	f	3
11	Proxima Centauri	Exoplanet	Unknow	f	4
12	Trappist-1e	Exoplanet	Unknow	f	5
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, spectral_type, mass, radius, temperature, luminosity, age, habitable_zone, galaxy_id) FROM stdin;
1	SUN	G2V	1	1	5778	1	4600	t	1
2	Sirius	AV	2.02	1.71	9940	25.4	240	f	1
3	Alpha Centauri A	G2V	1.1	1.233	5790	1.519	6000	t	1
4	Alpha Centauri B	K1V	0.907	0.865	5260	0.5	6000	t	1
5	Proxima Centauri	M5.5V	0.1221	0.1542	3042	0.0016	4850	t	1
6	Betelgeuse	M1-2Ia-Iab	15	887	3500	126000	10	f	1
7	Vega	A0V	2.135	2.362	9602	40	455	f	1
8	Pollux	K0III	1.72	8.8	4575	32.9	724	f	1
9	Antares	M1.5Iab-Ib	12	680	3500	60000	12	f	1
110	Rigel	B8Ia	23	78.9	11000	85000	10	f	1
\.


--
-- Name: discovery discovery_discovery_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_discovery_date_key UNIQUE (discovery_date);


--
-- Name: discovery discovery_discovery_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_discovery_id_key UNIQUE (discovery_id);


--
-- Name: discovery discovery_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_pkey PRIMARY KEY (discovery_id);


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

