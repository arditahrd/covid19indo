--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: data_indo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_indo (
    "ID" integer NOT NULL,
    "Kode_prov" integer,
    "Province" character varying,
    "Positive" bigint,
    "Cured" bigint,
    "Death" bigint
);


ALTER TABLE public.data_indo OWNER TO postgres;

--
-- Data for Name: data_indo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_indo ("ID", "Kode_prov", "Province", "Positive", "Cured", "Death") FROM stdin;
5	15	Jambi	193	116	4
11	31	DKI Jakarta	23936	15006	901
1	11	Aceh	483	91	18
2	12	Sumatera Utara	4477	1860	212
4	14	Riau	621	360	13
8	19	Kepulauan Bangka Belitung	191	173	2
6	16	Sumatera Selatan	3602	2009	179
7	17	Bengkulu	240	135	20
9	18	Lampung	299	219	13
12	32	Jawa Barat	6995	4252	217
13	33	Jawa Tengah	10151	6309	700
10	21	Kepulauan Riau	500	321	19
3	13	Sumatera Barat	1038	787	34
14	34	Daerah Istimewa Yogyakarta	819	497	21
15	35	Jawa Timur	24115	16732	1817
16	36	Banten	1979	1455	94
17	51	Bali	3644	3168	48
18	52	Nusa Tenggara Barat	2224	1378	122
19	53	Nusa Tenggara Timur	152	129	1
20	61	Kalimantan Barat	394	371	4
21	62	Kalimantan Tengah	1874	1310	95
22	63	Kalimantan Selatan	6478	3730	298
23	64	Kalimantan Timur	1701	1078	42
24	65	Kalimantan Utara	291	265	2
25	71	Sulawesi Utara	2822	1457	135
26	72	Sulawesi Tengah	215	194	7
27	73	Sulawesi Selatan	10169	7010	330
28	74	Sulawesi Tenggara	951	664	16
29	75	Gorontalo	1431	915	38
30	76	Sulawesi Barat	265	151	5
31	81	Maluku	1221	779	25
32	82	Maluku Utara	1582	850	49
33	94	Papua	3192	1520	34
34	91	Papua Barat	492	345	6
\.


--
-- Name: data_indo data_indo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_indo
    ADD CONSTRAINT data_indo_pkey PRIMARY KEY ("ID");


--
-- PostgreSQL database dump complete
--

