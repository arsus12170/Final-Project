--
-- PostgreSQL database dump
--

\restrict 4gKSL5frMoqtAqKm6JX56z2nyaYUGZIT6wPvIXbVQo1ae2oyTYBMeGaLHi7X1zX

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-12-14 23:08:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 17077)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    customer_name character varying(50),
    customer_last_name character varying(50),
    phone_number character varying(10)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17076)
-- Name: costumer_costumer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.costumer_costumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.costumer_costumer_id_seq OWNER TO postgres;

--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 219
-- Name: costumer_costumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.costumer_costumer_id_seq OWNED BY public.customer.customer_id;


--
-- TOC entry 218 (class 1259 OID 17070)
-- Name: marketer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marketer (
    marketer_id integer NOT NULL,
    marketer_name character varying(50)
);


ALTER TABLE public.marketer OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17069)
-- Name: marketer_marketer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marketer_marketer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marketer_marketer_id_seq OWNER TO postgres;

--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 217
-- Name: marketer_marketer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marketer_marketer_id_seq OWNED BY public.marketer.marketer_id;


--
-- TOC entry 224 (class 1259 OID 17091)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_type_id integer,
    marketer_id integer,
    name character varying(100)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17090)
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_product_id_seq OWNER TO postgres;

--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 223
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- TOC entry 222 (class 1259 OID 17084)
-- Name: product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_type (
    type_id integer NOT NULL,
    type_name character varying(50)
);


ALTER TABLE public.product_type OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17083)
-- Name: product_type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_type_type_id_seq OWNER TO postgres;

--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 221
-- Name: product_type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_type_type_id_seq OWNED BY public.product_type.type_id;


--
-- TOC entry 226 (class 1259 OID 17108)
-- Name: purchase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase (
    purchase_id integer NOT NULL,
    marketer_id integer,
    customer_id integer,
    product_id integer
);


ALTER TABLE public.purchase OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17107)
-- Name: purchase_purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_purchase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_purchase_id_seq OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 225
-- Name: purchase_purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_purchase_id_seq OWNED BY public.purchase.purchase_id;


--
-- TOC entry 4716 (class 2604 OID 17080)
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.costumer_costumer_id_seq'::regclass);


--
-- TOC entry 4715 (class 2604 OID 17073)
-- Name: marketer marketer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketer ALTER COLUMN marketer_id SET DEFAULT nextval('public.marketer_marketer_id_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 17094)
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- TOC entry 4717 (class 2604 OID 17087)
-- Name: product_type type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type ALTER COLUMN type_id SET DEFAULT nextval('public.product_type_type_id_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 17111)
-- Name: purchase purchase_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase ALTER COLUMN purchase_id SET DEFAULT nextval('public.purchase_purchase_id_seq'::regclass);


--
-- TOC entry 4883 (class 0 OID 17077)
-- Dependencies: 220
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, customer_name, customer_last_name, phone_number) FROM stdin;
1	Garry	Kasparov	0551123123
2	Robert	Fischer	0555123123
3	Mikhail	Tal	0551321321
4	Magnus	Carlsen	0555321321
5	Tigran	Petrosyan	0551787878
\.


--
-- TOC entry 4881 (class 0 OID 17070)
-- Dependencies: 218
-- Data for Name: marketer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marketer (marketer_id, marketer_name) FROM stdin;
1	Gucci
2	Alpen_Gold
3	IKEA
4	Adidas
5	Apple
\.


--
-- TOC entry 4887 (class 0 OID 17091)
-- Dependencies: 224
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, product_type_id, marketer_id, name) FROM stdin;
1	2	1	Hoodie
2	3	2	Chocolate_Bar
3	4	3	Chair
4	5	4	Boxing_Gloves
5	6	5	iPhone17
\.


--
-- TOC entry 4885 (class 0 OID 17084)
-- Dependencies: 222
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_type (type_id, type_name) FROM stdin;
1	Others
2	Clothes
3	Groceries
4	Household Goods
5	Sports Equipment
6	Hardware
\.


--
-- TOC entry 4889 (class 0 OID 17108)
-- Dependencies: 226
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchase (purchase_id, marketer_id, customer_id, product_id) FROM stdin;
1	1	1	2
2	2	2	1
\.


--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 219
-- Name: costumer_costumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.costumer_costumer_id_seq', 5, true);


--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 217
-- Name: marketer_marketer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marketer_marketer_id_seq', 5, true);


--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 223
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 5, true);


--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 221
-- Name: product_type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_type_type_id_seq', 6, true);


--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 225
-- Name: purchase_purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_purchase_id_seq', 2, true);


--
-- TOC entry 4723 (class 2606 OID 17082)
-- Name: customer costumer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT costumer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4721 (class 2606 OID 17075)
-- Name: marketer marketer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketer
    ADD CONSTRAINT marketer_pkey PRIMARY KEY (marketer_id);


--
-- TOC entry 4727 (class 2606 OID 17096)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4725 (class 2606 OID 17089)
-- Name: product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (type_id);


--
-- TOC entry 4729 (class 2606 OID 17113)
-- Name: purchase purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (purchase_id);


--
-- TOC entry 4730 (class 2606 OID 17102)
-- Name: product product_marketer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_marketer_id_fkey FOREIGN KEY (marketer_id) REFERENCES public.marketer(marketer_id);


--
-- TOC entry 4731 (class 2606 OID 17097)
-- Name: product product_product_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_product_type_id_fkey FOREIGN KEY (product_type_id) REFERENCES public.product_type(type_id);


--
-- TOC entry 4732 (class 2606 OID 17119)
-- Name: purchase purchase_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);


--
-- TOC entry 4733 (class 2606 OID 17114)
-- Name: purchase purchase_marketer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_marketer_id_fkey FOREIGN KEY (marketer_id) REFERENCES public.marketer(marketer_id);


--
-- TOC entry 4734 (class 2606 OID 17124)
-- Name: purchase purchase_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


-- Completed on 2025-12-14 23:08:10

--
-- PostgreSQL database dump complete
--

\unrestrict 4gKSL5frMoqtAqKm6JX56z2nyaYUGZIT6wPvIXbVQo1ae2oyTYBMeGaLHi7X1zX

