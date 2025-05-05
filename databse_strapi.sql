--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2025-05-05 11:28:54 IST

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
-- TOC entry 242 (class 1259 OID 5314000)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 5313999)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5765 (class 0 OID 0)
-- Dependencies: 241
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 280 (class 1259 OID 5314219)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 5314218)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5766 (class 0 OID 0)
-- Dependencies: 279
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- TOC entry 246 (class 1259 OID 5314024)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 5314023)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- TOC entry 5767 (class 0 OID 0)
-- Dependencies: 245
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 244 (class 1259 OID 5314012)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 5314011)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- TOC entry 5768 (class 0 OID 0)
-- Dependencies: 243
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 282 (class 1259 OID 5314231)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 5314230)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5769 (class 0 OID 0)
-- Dependencies: 281
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- TOC entry 340 (class 1259 OID 5315024)
-- Name: chackais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chackais (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.chackais OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 5315010)
-- Name: chackais_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chackais_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.chackais_cmps OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 5315009)
-- Name: chackais_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chackais_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chackais_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5770 (class 0 OID 0)
-- Dependencies: 337
-- Name: chackais_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chackais_cmps_id_seq OWNED BY public.chackais_cmps.id;


--
-- TOC entry 339 (class 1259 OID 5315023)
-- Name: chackais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chackais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chackais_id_seq OWNER TO postgres;

--
-- TOC entry 5771 (class 0 OID 0)
-- Dependencies: 339
-- Name: chackais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chackais_id_seq OWNED BY public.chackais.id;


--
-- TOC entry 546 (class 1259 OID 5316698)
-- Name: components_academics_cts_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_cts_programs (
    id integer NOT NULL
);


ALTER TABLE public.components_academics_cts_programs OWNER TO postgres;

--
-- TOC entry 548 (class 1259 OID 5316714)
-- Name: components_academics_cts_programs_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_cts_programs_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_academics_cts_programs_cmps OWNER TO postgres;

--
-- TOC entry 547 (class 1259 OID 5316713)
-- Name: components_academics_cts_programs_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_cts_programs_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_cts_programs_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5772 (class 0 OID 0)
-- Dependencies: 547
-- Name: components_academics_cts_programs_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_cts_programs_cmps_id_seq OWNED BY public.components_academics_cts_programs_cmps.id;


--
-- TOC entry 545 (class 1259 OID 5316697)
-- Name: components_academics_cts_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_cts_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_cts_programs_id_seq OWNER TO postgres;

--
-- TOC entry 5773 (class 0 OID 0)
-- Dependencies: 545
-- Name: components_academics_cts_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_cts_programs_id_seq OWNED BY public.components_academics_cts_programs.id;


--
-- TOC entry 552 (class 1259 OID 5316749)
-- Name: components_academics_pmkvies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_pmkvies (
    id integer NOT NULL
);


ALTER TABLE public.components_academics_pmkvies OWNER TO postgres;

--
-- TOC entry 550 (class 1259 OID 5316735)
-- Name: components_academics_pmkvies_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_pmkvies_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_academics_pmkvies_cmps OWNER TO postgres;

--
-- TOC entry 549 (class 1259 OID 5316734)
-- Name: components_academics_pmkvies_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_pmkvies_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_pmkvies_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5774 (class 0 OID 0)
-- Dependencies: 549
-- Name: components_academics_pmkvies_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_pmkvies_cmps_id_seq OWNED BY public.components_academics_pmkvies_cmps.id;


--
-- TOC entry 551 (class 1259 OID 5316748)
-- Name: components_academics_pmkvies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_pmkvies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_pmkvies_id_seq OWNER TO postgres;

--
-- TOC entry 5775 (class 0 OID 0)
-- Dependencies: 551
-- Name: components_academics_pmkvies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_pmkvies_id_seq OWNED BY public.components_academics_pmkvies.id;


--
-- TOC entry 556 (class 1259 OID 5316778)
-- Name: components_academics_stts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_stts (
    id integer NOT NULL
);


ALTER TABLE public.components_academics_stts OWNER TO postgres;

--
-- TOC entry 554 (class 1259 OID 5316764)
-- Name: components_academics_stts_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_academics_stts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_academics_stts_cmps OWNER TO postgres;

--
-- TOC entry 553 (class 1259 OID 5316763)
-- Name: components_academics_stts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_stts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_stts_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5776 (class 0 OID 0)
-- Dependencies: 553
-- Name: components_academics_stts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_stts_cmps_id_seq OWNED BY public.components_academics_stts_cmps.id;


--
-- TOC entry 555 (class 1259 OID 5316777)
-- Name: components_academics_stts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_academics_stts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_academics_stts_id_seq OWNER TO postgres;

--
-- TOC entry 5777 (class 0 OID 0)
-- Dependencies: 555
-- Name: components_academics_stts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_academics_stts_id_seq OWNED BY public.components_academics_stts.id;


--
-- TOC entry 510 (class 1259 OID 5316461)
-- Name: components_admission_admission_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_admission_admission_links (
    id integer NOT NULL,
    link text
);


ALTER TABLE public.components_admission_admission_links OWNER TO postgres;

--
-- TOC entry 509 (class 1259 OID 5316460)
-- Name: components_admission_admission_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_admission_admission_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_admission_admission_links_id_seq OWNER TO postgres;

--
-- TOC entry 5778 (class 0 OID 0)
-- Dependencies: 509
-- Name: components_admission_admission_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_admission_admission_links_id_seq OWNED BY public.components_admission_admission_links.id;


--
-- TOC entry 504 (class 1259 OID 5316418)
-- Name: components_admission_prospectuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_admission_prospectuses (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_admission_prospectuses OWNER TO postgres;

--
-- TOC entry 502 (class 1259 OID 5316404)
-- Name: components_admission_prospectuses_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_admission_prospectuses_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_admission_prospectuses_cmps OWNER TO postgres;

--
-- TOC entry 501 (class 1259 OID 5316403)
-- Name: components_admission_prospectuses_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_admission_prospectuses_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_admission_prospectuses_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5779 (class 0 OID 0)
-- Dependencies: 501
-- Name: components_admission_prospectuses_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_admission_prospectuses_cmps_id_seq OWNED BY public.components_admission_prospectuses_cmps.id;


--
-- TOC entry 503 (class 1259 OID 5316417)
-- Name: components_admission_prospectuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_admission_prospectuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_admission_prospectuses_id_seq OWNER TO postgres;

--
-- TOC entry 5780 (class 0 OID 0)
-- Dependencies: 503
-- Name: components_admission_prospectuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_admission_prospectuses_id_seq OWNED BY public.components_admission_prospectuses.id;


--
-- TOC entry 508 (class 1259 OID 5316446)
-- Name: components_admission_user_manuals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_admission_user_manuals (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_admission_user_manuals OWNER TO postgres;

--
-- TOC entry 506 (class 1259 OID 5316432)
-- Name: components_admission_user_manuals_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_admission_user_manuals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_admission_user_manuals_cmps OWNER TO postgres;

--
-- TOC entry 505 (class 1259 OID 5316431)
-- Name: components_admission_user_manuals_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_admission_user_manuals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_admission_user_manuals_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5781 (class 0 OID 0)
-- Dependencies: 505
-- Name: components_admission_user_manuals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_admission_user_manuals_cmps_id_seq OWNED BY public.components_admission_user_manuals_cmps.id;


--
-- TOC entry 507 (class 1259 OID 5316445)
-- Name: components_admission_user_manuals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_admission_user_manuals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_admission_user_manuals_id_seq OWNER TO postgres;

--
-- TOC entry 5782 (class 0 OID 0)
-- Dependencies: 507
-- Name: components_admission_user_manuals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_admission_user_manuals_id_seq OWNED BY public.components_admission_user_manuals.id;


--
-- TOC entry 382 (class 1259 OID 5315565)
-- Name: components_download_circulars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_circulars (
    id integer NOT NULL
);


ALTER TABLE public.components_download_circulars OWNER TO postgres;

--
-- TOC entry 380 (class 1259 OID 5315551)
-- Name: components_download_circulars_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_circulars_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_download_circulars_cmps OWNER TO postgres;

--
-- TOC entry 379 (class 1259 OID 5315550)
-- Name: components_download_circulars_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_circulars_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_circulars_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5783 (class 0 OID 0)
-- Dependencies: 379
-- Name: components_download_circulars_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_circulars_cmps_id_seq OWNED BY public.components_download_circulars_cmps.id;


--
-- TOC entry 381 (class 1259 OID 5315564)
-- Name: components_download_circulars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_circulars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_circulars_id_seq OWNER TO postgres;

--
-- TOC entry 5784 (class 0 OID 0)
-- Dependencies: 381
-- Name: components_download_circulars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_circulars_id_seq OWNED BY public.components_download_circulars.id;


--
-- TOC entry 370 (class 1259 OID 5315455)
-- Name: components_download_forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_forms (
    id integer NOT NULL
);


ALTER TABLE public.components_download_forms OWNER TO postgres;

--
-- TOC entry 368 (class 1259 OID 5315441)
-- Name: components_download_forms_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_forms_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_download_forms_cmps OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 5315440)
-- Name: components_download_forms_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_forms_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_forms_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5785 (class 0 OID 0)
-- Dependencies: 367
-- Name: components_download_forms_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_forms_cmps_id_seq OWNED BY public.components_download_forms_cmps.id;


--
-- TOC entry 369 (class 1259 OID 5315454)
-- Name: components_download_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_forms_id_seq OWNER TO postgres;

--
-- TOC entry 5786 (class 0 OID 0)
-- Dependencies: 369
-- Name: components_download_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_forms_id_seq OWNED BY public.components_download_forms.id;


--
-- TOC entry 376 (class 1259 OID 5315511)
-- Name: components_download_ranklists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_ranklists (
    id integer NOT NULL
);


ALTER TABLE public.components_download_ranklists OWNER TO postgres;

--
-- TOC entry 374 (class 1259 OID 5315497)
-- Name: components_download_ranklists_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_download_ranklists_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_download_ranklists_cmps OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 5315496)
-- Name: components_download_ranklists_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_ranklists_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_ranklists_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5787 (class 0 OID 0)
-- Dependencies: 373
-- Name: components_download_ranklists_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_ranklists_cmps_id_seq OWNED BY public.components_download_ranklists_cmps.id;


--
-- TOC entry 375 (class 1259 OID 5315510)
-- Name: components_download_ranklists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_download_ranklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_download_ranklists_id_seq OWNER TO postgres;

--
-- TOC entry 5788 (class 0 OID 0)
-- Dependencies: 375
-- Name: components_download_ranklists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_download_ranklists_id_seq OWNED BY public.components_download_ranklists.id;


--
-- TOC entry 436 (class 1259 OID 5315965)
-- Name: components_facilities_hostels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_hostels (
    id integer NOT NULL
);


ALTER TABLE public.components_facilities_hostels OWNER TO postgres;

--
-- TOC entry 434 (class 1259 OID 5315951)
-- Name: components_facilities_hostels_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_hostels_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_facilities_hostels_cmps OWNER TO postgres;

--
-- TOC entry 433 (class 1259 OID 5315950)
-- Name: components_facilities_hostels_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_hostels_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_hostels_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5789 (class 0 OID 0)
-- Dependencies: 433
-- Name: components_facilities_hostels_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_hostels_cmps_id_seq OWNED BY public.components_facilities_hostels_cmps.id;


--
-- TOC entry 435 (class 1259 OID 5315964)
-- Name: components_facilities_hostels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_hostels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_hostels_id_seq OWNER TO postgres;

--
-- TOC entry 5790 (class 0 OID 0)
-- Dependencies: 435
-- Name: components_facilities_hostels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_hostels_id_seq OWNED BY public.components_facilities_hostels.id;


--
-- TOC entry 444 (class 1259 OID 5316031)
-- Name: components_facilities_industry_tie_ups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_industry_tie_ups (
    id integer NOT NULL
);


ALTER TABLE public.components_facilities_industry_tie_ups OWNER TO postgres;

--
-- TOC entry 442 (class 1259 OID 5316017)
-- Name: components_facilities_industry_tie_ups_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_industry_tie_ups_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_facilities_industry_tie_ups_cmps OWNER TO postgres;

--
-- TOC entry 441 (class 1259 OID 5316016)
-- Name: components_facilities_industry_tie_ups_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_industry_tie_ups_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_industry_tie_ups_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5791 (class 0 OID 0)
-- Dependencies: 441
-- Name: components_facilities_industry_tie_ups_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_industry_tie_ups_cmps_id_seq OWNED BY public.components_facilities_industry_tie_ups_cmps.id;


--
-- TOC entry 443 (class 1259 OID 5316030)
-- Name: components_facilities_industry_tie_ups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_industry_tie_ups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_industry_tie_ups_id_seq OWNER TO postgres;

--
-- TOC entry 5792 (class 0 OID 0)
-- Dependencies: 443
-- Name: components_facilities_industry_tie_ups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_industry_tie_ups_id_seq OWNED BY public.components_facilities_industry_tie_ups.id;


--
-- TOC entry 430 (class 1259 OID 5315911)
-- Name: components_facilities_libraries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_libraries (
    id integer NOT NULL
);


ALTER TABLE public.components_facilities_libraries OWNER TO postgres;

--
-- TOC entry 428 (class 1259 OID 5315897)
-- Name: components_facilities_libraries_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_libraries_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_facilities_libraries_cmps OWNER TO postgres;

--
-- TOC entry 427 (class 1259 OID 5315896)
-- Name: components_facilities_libraries_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_libraries_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_libraries_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5793 (class 0 OID 0)
-- Dependencies: 427
-- Name: components_facilities_libraries_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_libraries_cmps_id_seq OWNED BY public.components_facilities_libraries_cmps.id;


--
-- TOC entry 429 (class 1259 OID 5315910)
-- Name: components_facilities_libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_libraries_id_seq OWNER TO postgres;

--
-- TOC entry 5794 (class 0 OID 0)
-- Dependencies: 429
-- Name: components_facilities_libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_libraries_id_seq OWNED BY public.components_facilities_libraries.id;


--
-- TOC entry 458 (class 1259 OID 5316119)
-- Name: components_facilities_other_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_other_activities (
    id integer NOT NULL
);


ALTER TABLE public.components_facilities_other_activities OWNER TO postgres;

--
-- TOC entry 456 (class 1259 OID 5316105)
-- Name: components_facilities_other_activities_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_other_activities_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_facilities_other_activities_cmps OWNER TO postgres;

--
-- TOC entry 455 (class 1259 OID 5316104)
-- Name: components_facilities_other_activities_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_other_activities_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_other_activities_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5795 (class 0 OID 0)
-- Dependencies: 455
-- Name: components_facilities_other_activities_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_other_activities_cmps_id_seq OWNED BY public.components_facilities_other_activities_cmps.id;


--
-- TOC entry 457 (class 1259 OID 5316118)
-- Name: components_facilities_other_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_other_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_other_activities_id_seq OWNER TO postgres;

--
-- TOC entry 5796 (class 0 OID 0)
-- Dependencies: 457
-- Name: components_facilities_other_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_other_activities_id_seq OWNED BY public.components_facilities_other_activities.id;


--
-- TOC entry 450 (class 1259 OID 5316070)
-- Name: components_facilities_women_cells; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_women_cells (
    id integer NOT NULL
);


ALTER TABLE public.components_facilities_women_cells OWNER TO postgres;

--
-- TOC entry 448 (class 1259 OID 5316056)
-- Name: components_facilities_women_cells_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facilities_women_cells_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_facilities_women_cells_cmps OWNER TO postgres;

--
-- TOC entry 447 (class 1259 OID 5316055)
-- Name: components_facilities_women_cells_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_women_cells_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_women_cells_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5797 (class 0 OID 0)
-- Dependencies: 447
-- Name: components_facilities_women_cells_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_women_cells_cmps_id_seq OWNED BY public.components_facilities_women_cells_cmps.id;


--
-- TOC entry 449 (class 1259 OID 5316069)
-- Name: components_facilities_women_cells_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facilities_women_cells_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_facilities_women_cells_id_seq OWNER TO postgres;

--
-- TOC entry 5798 (class 0 OID 0)
-- Dependencies: 449
-- Name: components_facilities_women_cells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facilities_women_cells_id_seq OWNED BY public.components_facilities_women_cells.id;


--
-- TOC entry 334 (class 1259 OID 5314908)
-- Name: components_home_homes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_homes (
    id integer NOT NULL,
    iti_name character varying(255),
    iti_url character varying(255),
    mis_code character varying(255),
    phone_number character varying(255),
    iti_email character varying(255)
);


ALTER TABLE public.components_home_homes OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 5314978)
-- Name: components_home_homes_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_home_homes_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_home_homes_cmps OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 5314977)
-- Name: components_home_homes_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_homes_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_homes_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5799 (class 0 OID 0)
-- Dependencies: 335
-- Name: components_home_homes_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_homes_cmps_id_seq OWNED BY public.components_home_homes_cmps.id;


--
-- TOC entry 333 (class 1259 OID 5314907)
-- Name: components_home_homes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_home_homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_home_homes_id_seq OWNER TO postgres;

--
-- TOC entry 5800 (class 0 OID 0)
-- Dependencies: 333
-- Name: components_home_homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_home_homes_id_seq OWNED BY public.components_home_homes.id;


--
-- TOC entry 516 (class 1259 OID 5316493)
-- Name: components_institute_awards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_awards (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_awards OWNER TO postgres;

--
-- TOC entry 514 (class 1259 OID 5316479)
-- Name: components_institute_awards_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_awards_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_awards_cmps OWNER TO postgres;

--
-- TOC entry 513 (class 1259 OID 5316478)
-- Name: components_institute_awards_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_awards_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_awards_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5801 (class 0 OID 0)
-- Dependencies: 513
-- Name: components_institute_awards_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_awards_cmps_id_seq OWNED BY public.components_institute_awards_cmps.id;


--
-- TOC entry 515 (class 1259 OID 5316492)
-- Name: components_institute_awards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_awards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_awards_id_seq OWNER TO postgres;

--
-- TOC entry 5802 (class 0 OID 0)
-- Dependencies: 515
-- Name: components_institute_awards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_awards_id_seq OWNED BY public.components_institute_awards.id;


--
-- TOC entry 522 (class 1259 OID 5316530)
-- Name: components_institute_certifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_certifications (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_certifications OWNER TO postgres;

--
-- TOC entry 520 (class 1259 OID 5316516)
-- Name: components_institute_certifications_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_certifications_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_certifications_cmps OWNER TO postgres;

--
-- TOC entry 519 (class 1259 OID 5316515)
-- Name: components_institute_certifications_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_certifications_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_certifications_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5803 (class 0 OID 0)
-- Dependencies: 519
-- Name: components_institute_certifications_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_certifications_cmps_id_seq OWNED BY public.components_institute_certifications_cmps.id;


--
-- TOC entry 521 (class 1259 OID 5316529)
-- Name: components_institute_certifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_certifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_certifications_id_seq OWNER TO postgres;

--
-- TOC entry 5804 (class 0 OID 0)
-- Dependencies: 521
-- Name: components_institute_certifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_certifications_id_seq OWNED BY public.components_institute_certifications.id;


--
-- TOC entry 542 (class 1259 OID 5316663)
-- Name: components_institute_gradings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_gradings (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_gradings OWNER TO postgres;

--
-- TOC entry 540 (class 1259 OID 5316649)
-- Name: components_institute_gradings_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_gradings_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_gradings_cmps OWNER TO postgres;

--
-- TOC entry 539 (class 1259 OID 5316648)
-- Name: components_institute_gradings_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_gradings_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_gradings_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5805 (class 0 OID 0)
-- Dependencies: 539
-- Name: components_institute_gradings_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_gradings_cmps_id_seq OWNED BY public.components_institute_gradings_cmps.id;


--
-- TOC entry 541 (class 1259 OID 5316662)
-- Name: components_institute_gradings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_gradings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_gradings_id_seq OWNER TO postgres;

--
-- TOC entry 5806 (class 0 OID 0)
-- Dependencies: 541
-- Name: components_institute_gradings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_gradings_id_seq OWNED BY public.components_institute_gradings.id;


--
-- TOC entry 350 (class 1259 OID 5315214)
-- Name: components_institute_imcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_imcs (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_imcs OWNER TO postgres;

--
-- TOC entry 538 (class 1259 OID 5316628)
-- Name: components_institute_imcs_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_imcs_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_imcs_cmps OWNER TO postgres;

--
-- TOC entry 537 (class 1259 OID 5316627)
-- Name: components_institute_imcs_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_imcs_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_imcs_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5807 (class 0 OID 0)
-- Dependencies: 537
-- Name: components_institute_imcs_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_imcs_cmps_id_seq OWNED BY public.components_institute_imcs_cmps.id;


--
-- TOC entry 349 (class 1259 OID 5315213)
-- Name: components_institute_imcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_imcs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_imcs_id_seq OWNER TO postgres;

--
-- TOC entry 5808 (class 0 OID 0)
-- Dependencies: 349
-- Name: components_institute_imcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_imcs_id_seq OWNED BY public.components_institute_imcs.id;


--
-- TOC entry 528 (class 1259 OID 5316567)
-- Name: components_institute_infrastructures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_infrastructures (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_infrastructures OWNER TO postgres;

--
-- TOC entry 526 (class 1259 OID 5316553)
-- Name: components_institute_infrastructures_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_infrastructures_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_infrastructures_cmps OWNER TO postgres;

--
-- TOC entry 525 (class 1259 OID 5316552)
-- Name: components_institute_infrastructures_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_infrastructures_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_infrastructures_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5809 (class 0 OID 0)
-- Dependencies: 525
-- Name: components_institute_infrastructures_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_infrastructures_cmps_id_seq OWNED BY public.components_institute_infrastructures_cmps.id;


--
-- TOC entry 527 (class 1259 OID 5316566)
-- Name: components_institute_infrastructures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_infrastructures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_infrastructures_id_seq OWNER TO postgres;

--
-- TOC entry 5810 (class 0 OID 0)
-- Dependencies: 527
-- Name: components_institute_infrastructures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_infrastructures_id_seq OWNED BY public.components_institute_infrastructures.id;


--
-- TOC entry 344 (class 1259 OID 5315126)
-- Name: components_institute_institutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_institutes (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_institutes OWNER TO postgres;

--
-- TOC entry 558 (class 1259 OID 5316792)
-- Name: components_institute_institutes_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_institutes_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_institutes_cmps OWNER TO postgres;

--
-- TOC entry 557 (class 1259 OID 5316791)
-- Name: components_institute_institutes_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_institutes_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_institutes_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5811 (class 0 OID 0)
-- Dependencies: 557
-- Name: components_institute_institutes_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_institutes_cmps_id_seq OWNED BY public.components_institute_institutes_cmps.id;


--
-- TOC entry 343 (class 1259 OID 5315125)
-- Name: components_institute_institutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_institutes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_institutes_id_seq OWNER TO postgres;

--
-- TOC entry 5812 (class 0 OID 0)
-- Dependencies: 343
-- Name: components_institute_institutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_institutes_id_seq OWNED BY public.components_institute_institutes.id;


--
-- TOC entry 534 (class 1259 OID 5316605)
-- Name: components_institute_ptas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_ptas (
    id integer NOT NULL
);


ALTER TABLE public.components_institute_ptas OWNER TO postgres;

--
-- TOC entry 532 (class 1259 OID 5316591)
-- Name: components_institute_ptas_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_institute_ptas_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_institute_ptas_cmps OWNER TO postgres;

--
-- TOC entry 531 (class 1259 OID 5316590)
-- Name: components_institute_ptas_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_ptas_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_ptas_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5813 (class 0 OID 0)
-- Dependencies: 531
-- Name: components_institute_ptas_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_ptas_cmps_id_seq OWNED BY public.components_institute_ptas_cmps.id;


--
-- TOC entry 533 (class 1259 OID 5316604)
-- Name: components_institute_ptas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_institute_ptas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_institute_ptas_id_seq OWNER TO postgres;

--
-- TOC entry 5814 (class 0 OID 0)
-- Dependencies: 533
-- Name: components_institute_ptas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_institute_ptas_id_seq OWNED BY public.components_institute_ptas.id;


--
-- TOC entry 394 (class 1259 OID 5315687)
-- Name: components_notifications_quotations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_notifications_quotations (
    id integer NOT NULL
);


ALTER TABLE public.components_notifications_quotations OWNER TO postgres;

--
-- TOC entry 392 (class 1259 OID 5315673)
-- Name: components_notifications_quotations_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_notifications_quotations_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_notifications_quotations_cmps OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 5315672)
-- Name: components_notifications_quotations_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_notifications_quotations_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_notifications_quotations_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5815 (class 0 OID 0)
-- Dependencies: 391
-- Name: components_notifications_quotations_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_notifications_quotations_cmps_id_seq OWNED BY public.components_notifications_quotations_cmps.id;


--
-- TOC entry 393 (class 1259 OID 5315686)
-- Name: components_notifications_quotations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_notifications_quotations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_notifications_quotations_id_seq OWNER TO postgres;

--
-- TOC entry 5816 (class 0 OID 0)
-- Dependencies: 393
-- Name: components_notifications_quotations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_notifications_quotations_id_seq OWNED BY public.components_notifications_quotations.id;


--
-- TOC entry 388 (class 1259 OID 5315624)
-- Name: components_notifications_tenders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_notifications_tenders (
    id integer NOT NULL
);


ALTER TABLE public.components_notifications_tenders OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 5315610)
-- Name: components_notifications_tenders_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_notifications_tenders_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_notifications_tenders_cmps OWNER TO postgres;

--
-- TOC entry 385 (class 1259 OID 5315609)
-- Name: components_notifications_tenders_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_notifications_tenders_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_notifications_tenders_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5817 (class 0 OID 0)
-- Dependencies: 385
-- Name: components_notifications_tenders_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_notifications_tenders_cmps_id_seq OWNED BY public.components_notifications_tenders_cmps.id;


--
-- TOC entry 387 (class 1259 OID 5315623)
-- Name: components_notifications_tenders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_notifications_tenders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_notifications_tenders_id_seq OWNER TO postgres;

--
-- TOC entry 5818 (class 0 OID 0)
-- Dependencies: 387
-- Name: components_notifications_tenders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_notifications_tenders_id_seq OWNED BY public.components_notifications_tenders.id;


--
-- TOC entry 410 (class 1259 OID 5315797)
-- Name: components_placement_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_events (
    id integer NOT NULL
);


ALTER TABLE public.components_placement_events OWNER TO postgres;

--
-- TOC entry 408 (class 1259 OID 5315783)
-- Name: components_placement_events_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_events_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_placement_events_cmps OWNER TO postgres;

--
-- TOC entry 407 (class 1259 OID 5315782)
-- Name: components_placement_events_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_events_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_events_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5819 (class 0 OID 0)
-- Dependencies: 407
-- Name: components_placement_events_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_events_cmps_id_seq OWNED BY public.components_placement_events_cmps.id;


--
-- TOC entry 409 (class 1259 OID 5315796)
-- Name: components_placement_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_events_id_seq OWNER TO postgres;

--
-- TOC entry 5820 (class 0 OID 0)
-- Dependencies: 409
-- Name: components_placement_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_events_id_seq OWNED BY public.components_placement_events.id;


--
-- TOC entry 416 (class 1259 OID 5315834)
-- Name: components_placement_industrial_expereinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_industrial_expereinces (
    id integer NOT NULL
);


ALTER TABLE public.components_placement_industrial_expereinces OWNER TO postgres;

--
-- TOC entry 414 (class 1259 OID 5315820)
-- Name: components_placement_industrial_expereinces_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_industrial_expereinces_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_placement_industrial_expereinces_cmps OWNER TO postgres;

--
-- TOC entry 413 (class 1259 OID 5315819)
-- Name: components_placement_industrial_expereinces_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_industrial_expereinces_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_industrial_expereinces_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5821 (class 0 OID 0)
-- Dependencies: 413
-- Name: components_placement_industrial_expereinces_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_industrial_expereinces_cmps_id_seq OWNED BY public.components_placement_industrial_expereinces_cmps.id;


--
-- TOC entry 415 (class 1259 OID 5315833)
-- Name: components_placement_industrial_expereinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_industrial_expereinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_industrial_expereinces_id_seq OWNER TO postgres;

--
-- TOC entry 5822 (class 0 OID 0)
-- Dependencies: 415
-- Name: components_placement_industrial_expereinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_industrial_expereinces_id_seq OWNED BY public.components_placement_industrial_expereinces.id;


--
-- TOC entry 404 (class 1259 OID 5315756)
-- Name: components_placement_notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_notifications (
    id integer NOT NULL
);


ALTER TABLE public.components_placement_notifications OWNER TO postgres;

--
-- TOC entry 402 (class 1259 OID 5315742)
-- Name: components_placement_notifications_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_notifications_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_placement_notifications_cmps OWNER TO postgres;

--
-- TOC entry 401 (class 1259 OID 5315741)
-- Name: components_placement_notifications_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_notifications_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_notifications_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5823 (class 0 OID 0)
-- Dependencies: 401
-- Name: components_placement_notifications_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_notifications_cmps_id_seq OWNED BY public.components_placement_notifications_cmps.id;


--
-- TOC entry 403 (class 1259 OID 5315755)
-- Name: components_placement_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_notifications_id_seq OWNER TO postgres;

--
-- TOC entry 5824 (class 0 OID 0)
-- Dependencies: 403
-- Name: components_placement_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_notifications_id_seq OWNED BY public.components_placement_notifications.id;


--
-- TOC entry 420 (class 1259 OID 5315862)
-- Name: components_placement_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_results (
    id integer NOT NULL
);


ALTER TABLE public.components_placement_results OWNER TO postgres;

--
-- TOC entry 418 (class 1259 OID 5315848)
-- Name: components_placement_results_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_placement_results_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_placement_results_cmps OWNER TO postgres;

--
-- TOC entry 417 (class 1259 OID 5315847)
-- Name: components_placement_results_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_results_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_results_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5825 (class 0 OID 0)
-- Dependencies: 417
-- Name: components_placement_results_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_results_cmps_id_seq OWNED BY public.components_placement_results_cmps.id;


--
-- TOC entry 419 (class 1259 OID 5315861)
-- Name: components_placement_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_placement_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_placement_results_id_seq OWNER TO postgres;

--
-- TOC entry 5826 (class 0 OID 0)
-- Dependencies: 419
-- Name: components_placement_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_placement_results_id_seq OWNED BY public.components_placement_results.id;


--
-- TOC entry 490 (class 1259 OID 5316320)
-- Name: components_shared_a_lumni_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_a_lumni_lists (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    mobile integer,
    batch character varying(255),
    industry character varying(255)
);


ALTER TABLE public.components_shared_a_lumni_lists OWNER TO postgres;

--
-- TOC entry 489 (class 1259 OID 5316319)
-- Name: components_shared_a_lumni_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_a_lumni_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_a_lumni_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5827 (class 0 OID 0)
-- Dependencies: 489
-- Name: components_shared_a_lumni_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_a_lumni_lists_id_seq OWNED BY public.components_shared_a_lumni_lists.id;


--
-- TOC entry 472 (class 1259 OID 5316208)
-- Name: components_shared_achievements_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_achievements_lists (
    id integer NOT NULL,
    year date,
    heading character varying(255),
    description text
);


ALTER TABLE public.components_shared_achievements_lists OWNER TO postgres;

--
-- TOC entry 471 (class 1259 OID 5316207)
-- Name: components_shared_achievements_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_achievements_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_achievements_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5828 (class 0 OID 0)
-- Dependencies: 471
-- Name: components_shared_achievements_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_achievements_lists_id_seq OWNED BY public.components_shared_achievements_lists.id;


--
-- TOC entry 478 (class 1259 OID 5316246)
-- Name: components_shared_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_activities (
    id integer NOT NULL,
    year date,
    heading character varying(255),
    description text
);


ALTER TABLE public.components_shared_activities OWNER TO postgres;

--
-- TOC entry 477 (class 1259 OID 5316245)
-- Name: components_shared_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_activities_id_seq OWNER TO postgres;

--
-- TOC entry 5829 (class 0 OID 0)
-- Dependencies: 477
-- Name: components_shared_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_activities_id_seq OWNED BY public.components_shared_activities.id;


--
-- TOC entry 332 (class 1259 OID 5314880)
-- Name: components_shared_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_addresses (
    id integer NOT NULL,
    pin integer
);


ALTER TABLE public.components_shared_addresses OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 5314866)
-- Name: components_shared_addresses_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_addresses_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_addresses_cmps OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 5314865)
-- Name: components_shared_addresses_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_addresses_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_addresses_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5830 (class 0 OID 0)
-- Dependencies: 329
-- Name: components_shared_addresses_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_addresses_cmps_id_seq OWNED BY public.components_shared_addresses_cmps.id;


--
-- TOC entry 331 (class 1259 OID 5314879)
-- Name: components_shared_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_addresses_id_seq OWNER TO postgres;

--
-- TOC entry 5831 (class 0 OID 0)
-- Dependencies: 331
-- Name: components_shared_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_addresses_id_seq OWNED BY public.components_shared_addresses.id;


--
-- TOC entry 348 (class 1259 OID 5315191)
-- Name: components_shared_announcements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_announcements (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_announcements OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 5315190)
-- Name: components_shared_announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_announcements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_announcements_id_seq OWNER TO postgres;

--
-- TOC entry 5832 (class 0 OID 0)
-- Dependencies: 347
-- Name: components_shared_announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_announcements_id_seq OWNED BY public.components_shared_announcements.id;


--
-- TOC entry 398 (class 1259 OID 5315716)
-- Name: components_shared_auctions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_auctions (
    id integer NOT NULL,
    reference_number character varying(255),
    title character varying(255),
    date date,
    starting_bid character varying(255),
    location character varying(255),
    auction_status character varying(255)
);


ALTER TABLE public.components_shared_auctions OWNER TO postgres;

--
-- TOC entry 396 (class 1259 OID 5315702)
-- Name: components_shared_auctions_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_auctions_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_auctions_cmps OWNER TO postgres;

--
-- TOC entry 395 (class 1259 OID 5315701)
-- Name: components_shared_auctions_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_auctions_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_auctions_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5833 (class 0 OID 0)
-- Dependencies: 395
-- Name: components_shared_auctions_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_auctions_cmps_id_seq OWNED BY public.components_shared_auctions_cmps.id;


--
-- TOC entry 397 (class 1259 OID 5315715)
-- Name: components_shared_auctions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_auctions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_auctions_id_seq OWNER TO postgres;

--
-- TOC entry 5834 (class 0 OID 0)
-- Dependencies: 397
-- Name: components_shared_auctions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_auctions_id_seq OWNED BY public.components_shared_auctions.id;


--
-- TOC entry 512 (class 1259 OID 5316472)
-- Name: components_shared_awards_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_awards_lists (
    id integer NOT NULL,
    heading character varying(255),
    year date
);


ALTER TABLE public.components_shared_awards_lists OWNER TO postgres;

--
-- TOC entry 511 (class 1259 OID 5316471)
-- Name: components_shared_awards_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_awards_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_awards_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5835 (class 0 OID 0)
-- Dependencies: 511
-- Name: components_shared_awards_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_awards_lists_id_seq OWNED BY public.components_shared_awards_lists.id;


--
-- TOC entry 440 (class 1259 OID 5316000)
-- Name: components_shared_bullet_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_bullet_points (
    id integer NOT NULL,
    points text
);


ALTER TABLE public.components_shared_bullet_points OWNER TO postgres;

--
-- TOC entry 439 (class 1259 OID 5315999)
-- Name: components_shared_bullet_points_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_bullet_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_bullet_points_id_seq OWNER TO postgres;

--
-- TOC entry 5836 (class 0 OID 0)
-- Dependencies: 439
-- Name: components_shared_bullet_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_bullet_points_id_seq OWNED BY public.components_shared_bullet_points.id;


--
-- TOC entry 518 (class 1259 OID 5316507)
-- Name: components_shared_certfication_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_certfication_lists (
    id integer NOT NULL,
    certfications text
);


ALTER TABLE public.components_shared_certfication_lists OWNER TO postgres;

--
-- TOC entry 517 (class 1259 OID 5316506)
-- Name: components_shared_certfication_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_certfication_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_certfication_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5837 (class 0 OID 0)
-- Dependencies: 517
-- Name: components_shared_certfication_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_certfication_lists_id_seq OWNED BY public.components_shared_certfication_lists.id;


--
-- TOC entry 460 (class 1259 OID 5316135)
-- Name: components_shared_contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_contacts (
    id integer NOT NULL,
    women_cell_office character varying(255),
    email character varying(255),
    helpline_number integer
);


ALTER TABLE public.components_shared_contacts OWNER TO postgres;

--
-- TOC entry 459 (class 1259 OID 5316134)
-- Name: components_shared_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_contacts_id_seq OWNER TO postgres;

--
-- TOC entry 5838 (class 0 OID 0)
-- Dependencies: 459
-- Name: components_shared_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_contacts_id_seq OWNED BY public.components_shared_contacts.id;


--
-- TOC entry 378 (class 1259 OID 5315544)
-- Name: components_shared_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_data (
    id integer NOT NULL,
    category character varying(255),
    date date
);


ALTER TABLE public.components_shared_data OWNER TO postgres;

--
-- TOC entry 377 (class 1259 OID 5315543)
-- Name: components_shared_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_data_id_seq OWNER TO postgres;

--
-- TOC entry 5839 (class 0 OID 0)
-- Dependencies: 377
-- Name: components_shared_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_data_id_seq OWNED BY public.components_shared_data.id;


--
-- TOC entry 364 (class 1259 OID 5315378)
-- Name: components_shared_descriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_descriptions (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_descriptions OWNER TO postgres;

--
-- TOC entry 363 (class 1259 OID 5315377)
-- Name: components_shared_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_descriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_descriptions_id_seq OWNER TO postgres;

--
-- TOC entry 5840 (class 0 OID 0)
-- Dependencies: 363
-- Name: components_shared_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_descriptions_id_seq OWNED BY public.components_shared_descriptions.id;


--
-- TOC entry 328 (class 1259 OID 5314857)
-- Name: components_shared_districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_districts (
    id integer NOT NULL,
    ml character varying(255),
    en character varying(255)
);


ALTER TABLE public.components_shared_districts OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 5314856)
-- Name: components_shared_districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_districts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_districts_id_seq OWNER TO postgres;

--
-- TOC entry 5841 (class 0 OID 0)
-- Dependencies: 327
-- Name: components_shared_districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_districts_id_seq OWNED BY public.components_shared_districts.id;


--
-- TOC entry 346 (class 1259 OID 5315159)
-- Name: components_shared_educations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_educations (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_educations OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 5315158)
-- Name: components_shared_educations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_educations_id_seq OWNER TO postgres;

--
-- TOC entry 5842 (class 0 OID 0)
-- Dependencies: 345
-- Name: components_shared_educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_educations_id_seq OWNED BY public.components_shared_educations.id;


--
-- TOC entry 320 (class 1259 OID 5314811)
-- Name: components_shared_event_contents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_event_contents (
    id integer NOT NULL,
    ml character varying(255),
    en text,
    youtube_link character varying(255)
);


ALTER TABLE public.components_shared_event_contents OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 5314810)
-- Name: components_shared_event_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_event_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_event_contents_id_seq OWNER TO postgres;

--
-- TOC entry 5843 (class 0 OID 0)
-- Dependencies: 319
-- Name: components_shared_event_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_event_contents_id_seq OWNED BY public.components_shared_event_contents.id;


--
-- TOC entry 318 (class 1259 OID 5314804)
-- Name: components_shared_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_events (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_events OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 5314790)
-- Name: components_shared_events_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_events_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_events_cmps OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 5314789)
-- Name: components_shared_events_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_events_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_events_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5844 (class 0 OID 0)
-- Dependencies: 315
-- Name: components_shared_events_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_events_cmps_id_seq OWNED BY public.components_shared_events_cmps.id;


--
-- TOC entry 317 (class 1259 OID 5314803)
-- Name: components_shared_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_events_id_seq OWNER TO postgres;

--
-- TOC entry 5845 (class 0 OID 0)
-- Dependencies: 317
-- Name: components_shared_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_events_id_seq OWNED BY public.components_shared_events.id;


--
-- TOC entry 366 (class 1259 OID 5315434)
-- Name: components_shared_form_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_form_data (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_form_data OWNER TO postgres;

--
-- TOC entry 365 (class 1259 OID 5315433)
-- Name: components_shared_form_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_form_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_form_data_id_seq OWNER TO postgres;

--
-- TOC entry 5846 (class 0 OID 0)
-- Dependencies: 365
-- Name: components_shared_form_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_form_data_id_seq OWNED BY public.components_shared_form_data.id;


--
-- TOC entry 312 (class 1259 OID 5314766)
-- Name: components_shared_galleries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_galleries (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_galleries OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 5314752)
-- Name: components_shared_galleries_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_galleries_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_galleries_cmps OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 5314751)
-- Name: components_shared_galleries_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_galleries_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_galleries_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5847 (class 0 OID 0)
-- Dependencies: 309
-- Name: components_shared_galleries_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_galleries_cmps_id_seq OWNED BY public.components_shared_galleries_cmps.id;


--
-- TOC entry 311 (class 1259 OID 5314765)
-- Name: components_shared_galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_galleries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_galleries_id_seq OWNER TO postgres;

--
-- TOC entry 5848 (class 0 OID 0)
-- Dependencies: 311
-- Name: components_shared_galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_galleries_id_seq OWNED BY public.components_shared_galleries.id;


--
-- TOC entry 314 (class 1259 OID 5314773)
-- Name: components_shared_gallery_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_gallery_lists (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_gallery_lists OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 5314772)
-- Name: components_shared_gallery_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_gallery_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_gallery_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5849 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_shared_gallery_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_gallery_lists_id_seq OWNED BY public.components_shared_gallery_lists.id;


--
-- TOC entry 432 (class 1259 OID 5315944)
-- Name: components_shared_hostels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_hostels (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_hostels OWNER TO postgres;

--
-- TOC entry 438 (class 1259 OID 5315979)
-- Name: components_shared_hostels_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_hostels_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_hostels_cmps OWNER TO postgres;

--
-- TOC entry 437 (class 1259 OID 5315978)
-- Name: components_shared_hostels_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_hostels_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_hostels_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5850 (class 0 OID 0)
-- Dependencies: 437
-- Name: components_shared_hostels_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_hostels_cmps_id_seq OWNED BY public.components_shared_hostels_cmps.id;


--
-- TOC entry 431 (class 1259 OID 5315943)
-- Name: components_shared_hostels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_hostels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_hostels_id_seq OWNER TO postgres;

--
-- TOC entry 5851 (class 0 OID 0)
-- Dependencies: 431
-- Name: components_shared_hostels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_hostels_id_seq OWNED BY public.components_shared_hostels.id;


--
-- TOC entry 536 (class 1259 OID 5316619)
-- Name: components_shared_imc_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_imc_lists (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255)
);


ALTER TABLE public.components_shared_imc_lists OWNER TO postgres;

--
-- TOC entry 535 (class 1259 OID 5316618)
-- Name: components_shared_imc_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_imc_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_imc_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5852 (class 0 OID 0)
-- Dependencies: 535
-- Name: components_shared_imc_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_imc_lists_id_seq OWNED BY public.components_shared_imc_lists.id;


--
-- TOC entry 412 (class 1259 OID 5315811)
-- Name: components_shared_industrial_experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_industrial_experiences (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    company_name character varying(255),
    experience text
);


ALTER TABLE public.components_shared_industrial_experiences OWNER TO postgres;

--
-- TOC entry 411 (class 1259 OID 5315810)
-- Name: components_shared_industrial_experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_industrial_experiences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_industrial_experiences_id_seq OWNER TO postgres;

--
-- TOC entry 5853 (class 0 OID 0)
-- Dependencies: 411
-- Name: components_shared_industrial_experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_industrial_experiences_id_seq OWNED BY public.components_shared_industrial_experiences.id;


--
-- TOC entry 446 (class 1259 OID 5316045)
-- Name: components_shared_industry_tie_ups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_industry_tie_ups (
    id integer NOT NULL,
    name character varying(255),
    expertise character varying(255),
    description text,
    programs character varying(255)
);


ALTER TABLE public.components_shared_industry_tie_ups OWNER TO postgres;

--
-- TOC entry 445 (class 1259 OID 5316044)
-- Name: components_shared_industry_tie_ups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_industry_tie_ups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_industry_tie_ups_id_seq OWNER TO postgres;

--
-- TOC entry 5854 (class 0 OID 0)
-- Dependencies: 445
-- Name: components_shared_industry_tie_ups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_industry_tie_ups_id_seq OWNED BY public.components_shared_industry_tie_ups.id;


--
-- TOC entry 524 (class 1259 OID 5316544)
-- Name: components_shared_infrastrture_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_infrastrture_lists (
    id integer NOT NULL,
    heading character varying(255),
    description text
);


ALTER TABLE public.components_shared_infrastrture_lists OWNER TO postgres;

--
-- TOC entry 523 (class 1259 OID 5316543)
-- Name: components_shared_infrastrture_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_infrastrture_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_infrastrture_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5855 (class 0 OID 0)
-- Dependencies: 523
-- Name: components_shared_infrastrture_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_infrastrture_lists_id_seq OWNED BY public.components_shared_infrastrture_lists.id;


--
-- TOC entry 288 (class 1259 OID 5314619)
-- Name: components_shared_iti_descriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_iti_descriptions (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_iti_descriptions OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 5314618)
-- Name: components_shared_iti_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_iti_descriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_iti_descriptions_id_seq OWNER TO postgres;

--
-- TOC entry 5856 (class 0 OID 0)
-- Dependencies: 287
-- Name: components_shared_iti_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_iti_descriptions_id_seq OWNED BY public.components_shared_iti_descriptions.id;


--
-- TOC entry 426 (class 1259 OID 5315890)
-- Name: components_shared_libraries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_libraries (
    id integer NOT NULL,
    book_name character varying(255),
    trade_name character varying(255),
    category character varying(255),
    stock character varying(255),
    year character varying(255)
);


ALTER TABLE public.components_shared_libraries OWNER TO postgres;

--
-- TOC entry 425 (class 1259 OID 5315889)
-- Name: components_shared_libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_libraries_id_seq OWNER TO postgres;

--
-- TOC entry 5857 (class 0 OID 0)
-- Dependencies: 425
-- Name: components_shared_libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_libraries_id_seq OWNED BY public.components_shared_libraries.id;


--
-- TOC entry 326 (class 1259 OID 5314848)
-- Name: components_shared_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_locations (
    id integer NOT NULL,
    ml character varying(255),
    en character varying(255)
);


ALTER TABLE public.components_shared_locations OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 5314847)
-- Name: components_shared_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_locations_id_seq OWNER TO postgres;

--
-- TOC entry 5858 (class 0 OID 0)
-- Dependencies: 325
-- Name: components_shared_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_locations_id_seq OWNED BY public.components_shared_locations.id;


--
-- TOC entry 322 (class 1259 OID 5314830)
-- Name: components_shared_maps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_maps (
    id integer NOT NULL,
    latitude numeric(10,2),
    longitude numeric(10,2)
);


ALTER TABLE public.components_shared_maps OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 5314829)
-- Name: components_shared_maps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_maps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_maps_id_seq OWNER TO postgres;

--
-- TOC entry 5859 (class 0 OID 0)
-- Dependencies: 321
-- Name: components_shared_maps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_maps_id_seq OWNED BY public.components_shared_maps.id;


--
-- TOC entry 352 (class 1259 OID 5315234)
-- Name: components_shared_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_members (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255)
);


ALTER TABLE public.components_shared_members OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 5315233)
-- Name: components_shared_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_members_id_seq OWNER TO postgres;

--
-- TOC entry 5860 (class 0 OID 0)
-- Dependencies: 351
-- Name: components_shared_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_members_id_seq OWNED BY public.components_shared_members.id;


--
-- TOC entry 290 (class 1259 OID 5314635)
-- Name: components_shared_missions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_missions (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_missions OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 5314634)
-- Name: components_shared_missions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_missions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_missions_id_seq OWNER TO postgres;

--
-- TOC entry 5861 (class 0 OID 0)
-- Dependencies: 289
-- Name: components_shared_missions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_missions_id_seq OWNED BY public.components_shared_missions.id;


--
-- TOC entry 296 (class 1259 OID 5314671)
-- Name: components_shared_news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_news (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_news OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 5314657)
-- Name: components_shared_news_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_news_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_news_cmps OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 5314656)
-- Name: components_shared_news_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_news_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_news_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5862 (class 0 OID 0)
-- Dependencies: 293
-- Name: components_shared_news_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_news_cmps_id_seq OWNED BY public.components_shared_news_cmps.id;


--
-- TOC entry 300 (class 1259 OID 5314694)
-- Name: components_shared_news_contents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_news_contents (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_news_contents OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 5314693)
-- Name: components_shared_news_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_news_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_news_contents_id_seq OWNER TO postgres;

--
-- TOC entry 5863 (class 0 OID 0)
-- Dependencies: 299
-- Name: components_shared_news_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_news_contents_id_seq OWNED BY public.components_shared_news_contents.id;


--
-- TOC entry 298 (class 1259 OID 5314678)
-- Name: components_shared_news_headings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_news_headings (
    id integer NOT NULL,
    ml character varying(255),
    en character varying(255)
);


ALTER TABLE public.components_shared_news_headings OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 5314677)
-- Name: components_shared_news_headings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_news_headings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_news_headings_id_seq OWNER TO postgres;

--
-- TOC entry 5864 (class 0 OID 0)
-- Dependencies: 297
-- Name: components_shared_news_headings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_news_headings_id_seq OWNED BY public.components_shared_news_headings.id;


--
-- TOC entry 295 (class 1259 OID 5314670)
-- Name: components_shared_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_news_id_seq OWNER TO postgres;

--
-- TOC entry 5865 (class 0 OID 0)
-- Dependencies: 295
-- Name: components_shared_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_news_id_seq OWNED BY public.components_shared_news.id;


--
-- TOC entry 384 (class 1259 OID 5315601)
-- Name: components_shared_notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_notifications (
    id integer NOT NULL,
    reference_number character varying(255),
    date date,
    department character varying(255),
    title character varying(255)
);


ALTER TABLE public.components_shared_notifications OWNER TO postgres;

--
-- TOC entry 383 (class 1259 OID 5315600)
-- Name: components_shared_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_notifications_id_seq OWNER TO postgres;

--
-- TOC entry 5866 (class 0 OID 0)
-- Dependencies: 383
-- Name: components_shared_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_notifications_id_seq OWNED BY public.components_shared_notifications.id;


--
-- TOC entry 484 (class 1259 OID 5316283)
-- Name: components_shared_nss_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_nss_activities (
    id integer NOT NULL,
    heading character varying(255),
    description text
);


ALTER TABLE public.components_shared_nss_activities OWNER TO postgres;

--
-- TOC entry 483 (class 1259 OID 5316282)
-- Name: components_shared_nss_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_nss_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_nss_activities_id_seq OWNER TO postgres;

--
-- TOC entry 5867 (class 0 OID 0)
-- Dependencies: 483
-- Name: components_shared_nss_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_nss_activities_id_seq OWNED BY public.components_shared_nss_activities.id;


--
-- TOC entry 454 (class 1259 OID 5316096)
-- Name: components_shared_other_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_other_activities (
    id integer NOT NULL,
    name character varying(255),
    description text,
    coordinator character varying(255),
    mobile integer
);


ALTER TABLE public.components_shared_other_activities OWNER TO postgres;

--
-- TOC entry 453 (class 1259 OID 5316095)
-- Name: components_shared_other_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_other_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_other_activities_id_seq OWNER TO postgres;

--
-- TOC entry 5868 (class 0 OID 0)
-- Dependencies: 453
-- Name: components_shared_other_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_other_activities_id_seq OWNED BY public.components_shared_other_activities.id;


--
-- TOC entry 424 (class 1259 OID 5315876)
-- Name: components_shared_placed_companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_placed_companies (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.components_shared_placed_companies OWNER TO postgres;

--
-- TOC entry 423 (class 1259 OID 5315875)
-- Name: components_shared_placed_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_placed_companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_placed_companies_id_seq OWNER TO postgres;

--
-- TOC entry 5869 (class 0 OID 0)
-- Dependencies: 423
-- Name: components_shared_placed_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_placed_companies_id_seq OWNED BY public.components_shared_placed_companies.id;


--
-- TOC entry 400 (class 1259 OID 5315735)
-- Name: components_shared_placement_notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_placement_notifications (
    id integer NOT NULL,
    company_name character varying(255),
    description text,
    eligibility text,
    venue character varying(255),
    "time" time without time zone
);


ALTER TABLE public.components_shared_placement_notifications OWNER TO postgres;

--
-- TOC entry 399 (class 1259 OID 5315734)
-- Name: components_shared_placement_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_placement_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_placement_notifications_id_seq OWNER TO postgres;

--
-- TOC entry 5870 (class 0 OID 0)
-- Dependencies: 399
-- Name: components_shared_placement_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_placement_notifications_id_seq OWNED BY public.components_shared_placement_notifications.id;


--
-- TOC entry 422 (class 1259 OID 5315869)
-- Name: components_shared_placement_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_placement_results (
    id integer NOT NULL,
    department character varying(255),
    total_students integer,
    highest_package integer,
    avarage_package integer,
    year date,
    placed integer
);


ALTER TABLE public.components_shared_placement_results OWNER TO postgres;

--
-- TOC entry 421 (class 1259 OID 5315868)
-- Name: components_shared_placement_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_placement_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_placement_results_id_seq OWNER TO postgres;

--
-- TOC entry 5871 (class 0 OID 0)
-- Dependencies: 421
-- Name: components_shared_placement_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_placement_results_id_seq OWNED BY public.components_shared_placement_results.id;


--
-- TOC entry 406 (class 1259 OID 5315774)
-- Name: components_shared_plcement_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_plcement_events (
    id integer NOT NULL,
    heading character varying(255),
    date date,
    description text,
    venue character varying(255)
);


ALTER TABLE public.components_shared_plcement_events OWNER TO postgres;

--
-- TOC entry 405 (class 1259 OID 5315773)
-- Name: components_shared_plcement_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_plcement_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_plcement_events_id_seq OWNER TO postgres;

--
-- TOC entry 5872 (class 0 OID 0)
-- Dependencies: 405
-- Name: components_shared_plcement_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_plcement_events_id_seq OWNED BY public.components_shared_plcement_events.id;


--
-- TOC entry 342 (class 1259 OID 5315082)
-- Name: components_shared_principles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_principles (
    id integer NOT NULL,
    active boolean,
    message text,
    name character varying(255),
    email character varying(255),
    phone integer,
    office_phone character varying(255)
);


ALTER TABLE public.components_shared_principles OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 5315081)
-- Name: components_shared_principles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_principles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_principles_id_seq OWNER TO postgres;

--
-- TOC entry 5873 (class 0 OID 0)
-- Dependencies: 341
-- Name: components_shared_principles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_principles_id_seq OWNED BY public.components_shared_principles.id;


--
-- TOC entry 544 (class 1259 OID 5316677)
-- Name: components_shared_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_programs (
    id integer NOT NULL,
    trade character varying(255),
    no_of_units integer,
    seating_capacity_per_unit integer,
    total_seating_capacity integer,
    affiliation_date date
);


ALTER TABLE public.components_shared_programs OWNER TO postgres;

--
-- TOC entry 543 (class 1259 OID 5316676)
-- Name: components_shared_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_programs_id_seq OWNER TO postgres;

--
-- TOC entry 5874 (class 0 OID 0)
-- Dependencies: 543
-- Name: components_shared_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_programs_id_seq OWNED BY public.components_shared_programs.id;


--
-- TOC entry 530 (class 1259 OID 5316582)
-- Name: components_shared_pta_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_pta_lists (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    mobile integer
);


ALTER TABLE public.components_shared_pta_lists OWNER TO postgres;

--
-- TOC entry 529 (class 1259 OID 5316581)
-- Name: components_shared_pta_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_pta_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_pta_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5875 (class 0 OID 0)
-- Dependencies: 529
-- Name: components_shared_pta_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_pta_lists_id_seq OWNED BY public.components_shared_pta_lists.id;


--
-- TOC entry 390 (class 1259 OID 5315657)
-- Name: components_shared_quotations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_quotations (
    id integer NOT NULL,
    reference_number character varying(255),
    title character varying(255),
    department character varying(255),
    date date
);


ALTER TABLE public.components_shared_quotations OWNER TO postgres;

--
-- TOC entry 389 (class 1259 OID 5315656)
-- Name: components_shared_quotations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_quotations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_quotations_id_seq OWNER TO postgres;

--
-- TOC entry 5876 (class 0 OID 0)
-- Dependencies: 389
-- Name: components_shared_quotations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_quotations_id_seq OWNED BY public.components_shared_quotations.id;


--
-- TOC entry 372 (class 1259 OID 5315490)
-- Name: components_shared_ranklists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_ranklists (
    id integer NOT NULL,
    date date
);


ALTER TABLE public.components_shared_ranklists OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 5315489)
-- Name: components_shared_ranklists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_ranklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_ranklists_id_seq OWNER TO postgres;

--
-- TOC entry 5877 (class 0 OID 0)
-- Dependencies: 371
-- Name: components_shared_ranklists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_ranklists_id_seq OWNED BY public.components_shared_ranklists.id;


--
-- TOC entry 362 (class 1259 OID 5315358)
-- Name: components_shared_table_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_table_data (
    id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.components_shared_table_data OWNER TO postgres;

--
-- TOC entry 361 (class 1259 OID 5315357)
-- Name: components_shared_table_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_table_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_table_data_id_seq OWNER TO postgres;

--
-- TOC entry 5878 (class 0 OID 0)
-- Dependencies: 361
-- Name: components_shared_table_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_table_data_id_seq OWNED BY public.components_shared_table_data.id;


--
-- TOC entry 354 (class 1259 OID 5315272)
-- Name: components_shared_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_tables (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_tables OWNER TO postgres;

--
-- TOC entry 360 (class 1259 OID 5315344)
-- Name: components_shared_tables_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_tables_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_tables_cmps OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 5315343)
-- Name: components_shared_tables_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_tables_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_tables_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5879 (class 0 OID 0)
-- Dependencies: 359
-- Name: components_shared_tables_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_tables_cmps_id_seq OWNED BY public.components_shared_tables_cmps.id;


--
-- TOC entry 353 (class 1259 OID 5315271)
-- Name: components_shared_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_tables_id_seq OWNER TO postgres;

--
-- TOC entry 5880 (class 0 OID 0)
-- Dependencies: 353
-- Name: components_shared_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_tables_id_seq OWNED BY public.components_shared_tables.id;


--
-- TOC entry 308 (class 1259 OID 5314735)
-- Name: components_shared_trade_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trade_lists (
    id integer NOT NULL,
    ml character varying(255),
    en character varying(255)
);


ALTER TABLE public.components_shared_trade_lists OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 5314734)
-- Name: components_shared_trade_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trade_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trade_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5881 (class 0 OID 0)
-- Dependencies: 307
-- Name: components_shared_trade_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trade_lists_id_seq OWNED BY public.components_shared_trade_lists.id;


--
-- TOC entry 306 (class 1259 OID 5314726)
-- Name: components_shared_trade_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trade_names (
    id integer NOT NULL,
    ml character varying(255),
    en character varying(255)
);


ALTER TABLE public.components_shared_trade_names OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 5314725)
-- Name: components_shared_trade_names_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trade_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trade_names_id_seq OWNER TO postgres;

--
-- TOC entry 5882 (class 0 OID 0)
-- Dependencies: 305
-- Name: components_shared_trade_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trade_names_id_seq OWNED BY public.components_shared_trade_names.id;


--
-- TOC entry 304 (class 1259 OID 5314719)
-- Name: components_shared_trades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trades (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_trades OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 5314705)
-- Name: components_shared_trades_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trades_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_trades_cmps OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 5314704)
-- Name: components_shared_trades_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trades_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trades_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5883 (class 0 OID 0)
-- Dependencies: 301
-- Name: components_shared_trades_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trades_cmps_id_seq OWNED BY public.components_shared_trades_cmps.id;


--
-- TOC entry 303 (class 1259 OID 5314718)
-- Name: components_shared_trades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trades_id_seq OWNER TO postgres;

--
-- TOC entry 5884 (class 0 OID 0)
-- Dependencies: 303
-- Name: components_shared_trades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trades_id_seq OWNED BY public.components_shared_trades.id;


--
-- TOC entry 466 (class 1259 OID 5316176)
-- Name: components_shared_trainnees_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trainnees_lists (
    id integer NOT NULL,
    trade character varying(255),
    no_of_units character varying(255)
);


ALTER TABLE public.components_shared_trainnees_lists OWNER TO postgres;

--
-- TOC entry 465 (class 1259 OID 5316175)
-- Name: components_shared_trainnees_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trainnees_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trainnees_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5885 (class 0 OID 0)
-- Dependencies: 465
-- Name: components_shared_trainnees_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trainnees_lists_id_seq OWNED BY public.components_shared_trainnees_lists.id;


--
-- TOC entry 496 (class 1259 OID 5316359)
-- Name: components_shared_trainnes_council_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_trainnes_council_lists (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    trade character varying(255)
);


ALTER TABLE public.components_shared_trainnes_council_lists OWNER TO postgres;

--
-- TOC entry 495 (class 1259 OID 5316358)
-- Name: components_shared_trainnes_council_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_trainnes_council_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_trainnes_council_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5886 (class 0 OID 0)
-- Dependencies: 495
-- Name: components_shared_trainnes_council_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_trainnes_council_lists_id_seq OWNED BY public.components_shared_trainnes_council_lists.id;


--
-- TOC entry 324 (class 1259 OID 5314839)
-- Name: components_shared_useful_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_useful_links (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_shared_useful_links OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 5314838)
-- Name: components_shared_useful_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_useful_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_useful_links_id_seq OWNER TO postgres;

--
-- TOC entry 5887 (class 0 OID 0)
-- Dependencies: 323
-- Name: components_shared_useful_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_useful_links_id_seq OWNED BY public.components_shared_useful_links.id;


--
-- TOC entry 292 (class 1259 OID 5314646)
-- Name: components_shared_visions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_visions (
    id integer NOT NULL,
    ml text,
    en text
);


ALTER TABLE public.components_shared_visions OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 5314645)
-- Name: components_shared_visions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_visions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_visions_id_seq OWNER TO postgres;

--
-- TOC entry 5888 (class 0 OID 0)
-- Dependencies: 291
-- Name: components_shared_visions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_visions_id_seq OWNED BY public.components_shared_visions.id;


--
-- TOC entry 452 (class 1259 OID 5316084)
-- Name: components_shared_women_cells; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_women_cells (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    trade character varying(255),
    email character varying(255),
    mobile integer
);


ALTER TABLE public.components_shared_women_cells OWNER TO postgres;

--
-- TOC entry 451 (class 1259 OID 5316083)
-- Name: components_shared_women_cells_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_women_cells_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_women_cells_id_seq OWNER TO postgres;

--
-- TOC entry 5889 (class 0 OID 0)
-- Dependencies: 451
-- Name: components_shared_women_cells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_women_cells_id_seq OWNED BY public.components_shared_women_cells.id;


--
-- TOC entry 470 (class 1259 OID 5316201)
-- Name: components_trainees_achievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_achievements (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_achievements OWNER TO postgres;

--
-- TOC entry 468 (class 1259 OID 5316187)
-- Name: components_trainees_achievements_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_achievements_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_achievements_cmps OWNER TO postgres;

--
-- TOC entry 467 (class 1259 OID 5316186)
-- Name: components_trainees_achievements_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_achievements_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_achievements_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5890 (class 0 OID 0)
-- Dependencies: 467
-- Name: components_trainees_achievements_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_achievements_cmps_id_seq OWNED BY public.components_trainees_achievements_cmps.id;


--
-- TOC entry 469 (class 1259 OID 5316200)
-- Name: components_trainees_achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_achievements_id_seq OWNER TO postgres;

--
-- TOC entry 5891 (class 0 OID 0)
-- Dependencies: 469
-- Name: components_trainees_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_achievements_id_seq OWNED BY public.components_trainees_achievements.id;


--
-- TOC entry 476 (class 1259 OID 5316239)
-- Name: components_trainees_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_activities (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_activities OWNER TO postgres;

--
-- TOC entry 474 (class 1259 OID 5316225)
-- Name: components_trainees_activities_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_activities_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_activities_cmps OWNER TO postgres;

--
-- TOC entry 473 (class 1259 OID 5316224)
-- Name: components_trainees_activities_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_activities_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_activities_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5892 (class 0 OID 0)
-- Dependencies: 473
-- Name: components_trainees_activities_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_activities_cmps_id_seq OWNED BY public.components_trainees_activities_cmps.id;


--
-- TOC entry 475 (class 1259 OID 5316238)
-- Name: components_trainees_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_activities_id_seq OWNER TO postgres;

--
-- TOC entry 5893 (class 0 OID 0)
-- Dependencies: 475
-- Name: components_trainees_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_activities_id_seq OWNED BY public.components_trainees_activities.id;


--
-- TOC entry 488 (class 1259 OID 5316313)
-- Name: components_trainees_alumni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_alumni (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_alumni OWNER TO postgres;

--
-- TOC entry 486 (class 1259 OID 5316299)
-- Name: components_trainees_alumni_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_alumni_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_alumni_cmps OWNER TO postgres;

--
-- TOC entry 485 (class 1259 OID 5316298)
-- Name: components_trainees_alumni_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_alumni_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_alumni_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5894 (class 0 OID 0)
-- Dependencies: 485
-- Name: components_trainees_alumni_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_alumni_cmps_id_seq OWNED BY public.components_trainees_alumni_cmps.id;


--
-- TOC entry 487 (class 1259 OID 5316312)
-- Name: components_trainees_alumni_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_alumni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_alumni_id_seq OWNER TO postgres;

--
-- TOC entry 5895 (class 0 OID 0)
-- Dependencies: 487
-- Name: components_trainees_alumni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_alumni_id_seq OWNED BY public.components_trainees_alumni.id;


--
-- TOC entry 482 (class 1259 OID 5316276)
-- Name: components_trainees_nsses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_nsses (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_nsses OWNER TO postgres;

--
-- TOC entry 480 (class 1259 OID 5316262)
-- Name: components_trainees_nsses_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_nsses_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_nsses_cmps OWNER TO postgres;

--
-- TOC entry 479 (class 1259 OID 5316261)
-- Name: components_trainees_nsses_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_nsses_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_nsses_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5896 (class 0 OID 0)
-- Dependencies: 479
-- Name: components_trainees_nsses_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_nsses_cmps_id_seq OWNED BY public.components_trainees_nsses_cmps.id;


--
-- TOC entry 481 (class 1259 OID 5316275)
-- Name: components_trainees_nsses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_nsses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_nsses_id_seq OWNER TO postgres;

--
-- TOC entry 5897 (class 0 OID 0)
-- Dependencies: 481
-- Name: components_trainees_nsses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_nsses_id_seq OWNED BY public.components_trainees_nsses.id;


--
-- TOC entry 500 (class 1259 OID 5316389)
-- Name: components_trainees_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_results (
    id integer NOT NULL,
    result_link character varying(255)
);


ALTER TABLE public.components_trainees_results OWNER TO postgres;

--
-- TOC entry 498 (class 1259 OID 5316375)
-- Name: components_trainees_results_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_results_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_results_cmps OWNER TO postgres;

--
-- TOC entry 497 (class 1259 OID 5316374)
-- Name: components_trainees_results_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_results_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_results_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5898 (class 0 OID 0)
-- Dependencies: 497
-- Name: components_trainees_results_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_results_cmps_id_seq OWNED BY public.components_trainees_results_cmps.id;


--
-- TOC entry 499 (class 1259 OID 5316388)
-- Name: components_trainees_results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_results_id_seq OWNER TO postgres;

--
-- TOC entry 5899 (class 0 OID 0)
-- Dependencies: 499
-- Name: components_trainees_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_results_id_seq OWNED BY public.components_trainees_results.id;


--
-- TOC entry 494 (class 1259 OID 5316352)
-- Name: components_trainees_trainees_councils; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_trainees_councils (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_trainees_councils OWNER TO postgres;

--
-- TOC entry 492 (class 1259 OID 5316338)
-- Name: components_trainees_trainees_councils_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_trainees_councils_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_trainees_councils_cmps OWNER TO postgres;

--
-- TOC entry 491 (class 1259 OID 5316337)
-- Name: components_trainees_trainees_councils_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_trainees_councils_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_trainees_councils_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5900 (class 0 OID 0)
-- Dependencies: 491
-- Name: components_trainees_trainees_councils_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_trainees_councils_cmps_id_seq OWNED BY public.components_trainees_trainees_councils_cmps.id;


--
-- TOC entry 493 (class 1259 OID 5316351)
-- Name: components_trainees_trainees_councils_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_trainees_councils_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_trainees_councils_id_seq OWNER TO postgres;

--
-- TOC entry 5901 (class 0 OID 0)
-- Dependencies: 493
-- Name: components_trainees_trainees_councils_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_trainees_councils_id_seq OWNED BY public.components_trainees_trainees_councils.id;


--
-- TOC entry 464 (class 1259 OID 5316160)
-- Name: components_trainees_trainees_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_trainees_lists (
    id integer NOT NULL
);


ALTER TABLE public.components_trainees_trainees_lists OWNER TO postgres;

--
-- TOC entry 462 (class 1259 OID 5316146)
-- Name: components_trainees_trainees_lists_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_trainees_trainees_lists_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_trainees_trainees_lists_cmps OWNER TO postgres;

--
-- TOC entry 461 (class 1259 OID 5316145)
-- Name: components_trainees_trainees_lists_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_trainees_lists_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_trainees_lists_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5902 (class 0 OID 0)
-- Dependencies: 461
-- Name: components_trainees_trainees_lists_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_trainees_lists_cmps_id_seq OWNED BY public.components_trainees_trainees_lists_cmps.id;


--
-- TOC entry 463 (class 1259 OID 5316159)
-- Name: components_trainees_trainees_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_trainees_trainees_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_trainees_trainees_lists_id_seq OWNER TO postgres;

--
-- TOC entry 5903 (class 0 OID 0)
-- Dependencies: 463
-- Name: components_trainees_trainees_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_trainees_trainees_lists_id_seq OWNED BY public.components_trainees_trainees_lists.id;


--
-- TOC entry 222 (class 1259 OID 5313870)
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 5314124)
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 5314123)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5904 (class 0 OID 0)
-- Dependencies: 263
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- TOC entry 221 (class 1259 OID 5313869)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- TOC entry 5905 (class 0 OID 0)
-- Dependencies: 221
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 262 (class 1259 OID 5314112)
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 5314111)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO postgres;

--
-- TOC entry 5906 (class 0 OID 0)
-- Dependencies: 261
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- TOC entry 226 (class 1259 OID 5313904)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 5313903)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- TOC entry 5907 (class 0 OID 0)
-- Dependencies: 225
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 250 (class 1259 OID 5314048)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 5314047)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5908 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 284 (class 1259 OID 5314244)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 5314243)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5909 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 248 (class 1259 OID 5314036)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 5314035)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 5910 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 256 (class 1259 OID 5314084)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 5314083)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- TOC entry 5911 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 220 (class 1259 OID 5313861)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 5313860)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- TOC entry 5912 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 260 (class 1259 OID 5314102)
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 5314101)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO postgres;

--
-- TOC entry 5913 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- TOC entry 216 (class 1259 OID 5313847)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 5313846)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5914 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 218 (class 1259 OID 5313854)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 5313853)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO postgres;

--
-- TOC entry 5915 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- TOC entry 230 (class 1259 OID 5313928)
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 5313927)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- TOC entry 5916 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 268 (class 1259 OID 5314148)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 5314147)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5917 (class 0 OID 0)
-- Dependencies: 267
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- TOC entry 228 (class 1259 OID 5313916)
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 5313915)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- TOC entry 5918 (class 0 OID 0)
-- Dependencies: 227
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 254 (class 1259 OID 5314072)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 5314071)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5919 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 286 (class 1259 OID 5314256)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 5314255)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5920 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 252 (class 1259 OID 5314060)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 5314059)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 5921 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 258 (class 1259 OID 5314093)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 5314092)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- TOC entry 5922 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 232 (class 1259 OID 5313940)
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 5313939)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO postgres;

--
-- TOC entry 5923 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- TOC entry 270 (class 1259 OID 5314160)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 5314159)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5924 (class 0 OID 0)
-- Dependencies: 269
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 234 (class 1259 OID 5313952)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 5313951)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO postgres;

--
-- TOC entry 5925 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- TOC entry 274 (class 1259 OID 5314183)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 5314182)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5926 (class 0 OID 0)
-- Dependencies: 273
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 272 (class 1259 OID 5314171)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 5314170)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5927 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 236 (class 1259 OID 5313964)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 5313963)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5928 (class 0 OID 0)
-- Dependencies: 235
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 276 (class 1259 OID 5314195)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 5314194)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5929 (class 0 OID 0)
-- Dependencies: 275
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- TOC entry 238 (class 1259 OID 5313976)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 5313975)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- TOC entry 5930 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 240 (class 1259 OID 5313988)
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 5313987)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- TOC entry 5931 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 278 (class 1259 OID 5314207)
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 5314206)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5932 (class 0 OID 0)
-- Dependencies: 277
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- TOC entry 224 (class 1259 OID 5313888)
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 5313887)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- TOC entry 5933 (class 0 OID 0)
-- Dependencies: 223
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 266 (class 1259 OID 5314136)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 5314135)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO postgres;

--
-- TOC entry 5934 (class 0 OID 0)
-- Dependencies: 265
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- TOC entry 358 (class 1259 OID 5315314)
-- Name: vatakaras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vatakaras (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.vatakaras OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 5315300)
-- Name: vatakaras_cmps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vatakaras_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.vatakaras_cmps OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 5315299)
-- Name: vatakaras_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vatakaras_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vatakaras_cmps_id_seq OWNER TO postgres;

--
-- TOC entry 5935 (class 0 OID 0)
-- Dependencies: 355
-- Name: vatakaras_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vatakaras_cmps_id_seq OWNED BY public.vatakaras_cmps.id;


--
-- TOC entry 357 (class 1259 OID 5315313)
-- Name: vatakaras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vatakaras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vatakaras_id_seq OWNER TO postgres;

--
-- TOC entry 5936 (class 0 OID 0)
-- Dependencies: 357
-- Name: vatakaras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vatakaras_id_seq OWNED BY public.vatakaras.id;


--
-- TOC entry 4311 (class 2604 OID 5314003)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 4330 (class 2604 OID 5314222)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 4313 (class 2604 OID 5314027)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 4312 (class 2604 OID 5314015)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 4331 (class 2604 OID 5314234)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 4360 (class 2604 OID 5315027)
-- Name: chackais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais ALTER COLUMN id SET DEFAULT nextval('public.chackais_id_seq'::regclass);


--
-- TOC entry 4359 (class 2604 OID 5315013)
-- Name: chackais_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais_cmps ALTER COLUMN id SET DEFAULT nextval('public.chackais_cmps_id_seq'::regclass);


--
-- TOC entry 4463 (class 2604 OID 5316701)
-- Name: components_academics_cts_programs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs ALTER COLUMN id SET DEFAULT nextval('public.components_academics_cts_programs_id_seq'::regclass);


--
-- TOC entry 4464 (class 2604 OID 5316717)
-- Name: components_academics_cts_programs_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_academics_cts_programs_cmps_id_seq'::regclass);


--
-- TOC entry 4466 (class 2604 OID 5316752)
-- Name: components_academics_pmkvies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies ALTER COLUMN id SET DEFAULT nextval('public.components_academics_pmkvies_id_seq'::regclass);


--
-- TOC entry 4465 (class 2604 OID 5316738)
-- Name: components_academics_pmkvies_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_academics_pmkvies_cmps_id_seq'::regclass);


--
-- TOC entry 4468 (class 2604 OID 5316781)
-- Name: components_academics_stts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts ALTER COLUMN id SET DEFAULT nextval('public.components_academics_stts_id_seq'::regclass);


--
-- TOC entry 4467 (class 2604 OID 5316767)
-- Name: components_academics_stts_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_academics_stts_cmps_id_seq'::regclass);


--
-- TOC entry 4445 (class 2604 OID 5316464)
-- Name: components_admission_admission_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_admission_links ALTER COLUMN id SET DEFAULT nextval('public.components_admission_admission_links_id_seq'::regclass);


--
-- TOC entry 4442 (class 2604 OID 5316421)
-- Name: components_admission_prospectuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses ALTER COLUMN id SET DEFAULT nextval('public.components_admission_prospectuses_id_seq'::regclass);


--
-- TOC entry 4441 (class 2604 OID 5316407)
-- Name: components_admission_prospectuses_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_admission_prospectuses_cmps_id_seq'::regclass);


--
-- TOC entry 4444 (class 2604 OID 5316449)
-- Name: components_admission_user_manuals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals ALTER COLUMN id SET DEFAULT nextval('public.components_admission_user_manuals_id_seq'::regclass);


--
-- TOC entry 4443 (class 2604 OID 5316435)
-- Name: components_admission_user_manuals_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_admission_user_manuals_cmps_id_seq'::regclass);


--
-- TOC entry 4381 (class 2604 OID 5315568)
-- Name: components_download_circulars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars ALTER COLUMN id SET DEFAULT nextval('public.components_download_circulars_id_seq'::regclass);


--
-- TOC entry 4380 (class 2604 OID 5315554)
-- Name: components_download_circulars_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_download_circulars_cmps_id_seq'::regclass);


--
-- TOC entry 4375 (class 2604 OID 5315458)
-- Name: components_download_forms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms ALTER COLUMN id SET DEFAULT nextval('public.components_download_forms_id_seq'::regclass);


--
-- TOC entry 4374 (class 2604 OID 5315444)
-- Name: components_download_forms_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_download_forms_cmps_id_seq'::regclass);


--
-- TOC entry 4378 (class 2604 OID 5315514)
-- Name: components_download_ranklists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists ALTER COLUMN id SET DEFAULT nextval('public.components_download_ranklists_id_seq'::regclass);


--
-- TOC entry 4377 (class 2604 OID 5315500)
-- Name: components_download_ranklists_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_download_ranklists_cmps_id_seq'::regclass);


--
-- TOC entry 4408 (class 2604 OID 5315968)
-- Name: components_facilities_hostels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_hostels_id_seq'::regclass);


--
-- TOC entry 4407 (class 2604 OID 5315954)
-- Name: components_facilities_hostels_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_hostels_cmps_id_seq'::regclass);


--
-- TOC entry 4412 (class 2604 OID 5316034)
-- Name: components_facilities_industry_tie_ups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_industry_tie_ups_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 5316020)
-- Name: components_facilities_industry_tie_ups_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_industry_tie_ups_cmps_id_seq'::regclass);


--
-- TOC entry 4405 (class 2604 OID 5315914)
-- Name: components_facilities_libraries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_libraries_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 5315900)
-- Name: components_facilities_libraries_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_libraries_cmps_id_seq'::regclass);


--
-- TOC entry 4419 (class 2604 OID 5316122)
-- Name: components_facilities_other_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_other_activities_id_seq'::regclass);


--
-- TOC entry 4418 (class 2604 OID 5316108)
-- Name: components_facilities_other_activities_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_other_activities_cmps_id_seq'::regclass);


--
-- TOC entry 4415 (class 2604 OID 5316073)
-- Name: components_facilities_women_cells id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_women_cells_id_seq'::regclass);


--
-- TOC entry 4414 (class 2604 OID 5316059)
-- Name: components_facilities_women_cells_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_facilities_women_cells_cmps_id_seq'::regclass);


--
-- TOC entry 4357 (class 2604 OID 5314911)
-- Name: components_home_homes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes ALTER COLUMN id SET DEFAULT nextval('public.components_home_homes_id_seq'::regclass);


--
-- TOC entry 4358 (class 2604 OID 5314981)
-- Name: components_home_homes_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_home_homes_cmps_id_seq'::regclass);


--
-- TOC entry 4448 (class 2604 OID 5316496)
-- Name: components_institute_awards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards ALTER COLUMN id SET DEFAULT nextval('public.components_institute_awards_id_seq'::regclass);


--
-- TOC entry 4447 (class 2604 OID 5316482)
-- Name: components_institute_awards_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_awards_cmps_id_seq'::regclass);


--
-- TOC entry 4451 (class 2604 OID 5316533)
-- Name: components_institute_certifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications ALTER COLUMN id SET DEFAULT nextval('public.components_institute_certifications_id_seq'::regclass);


--
-- TOC entry 4450 (class 2604 OID 5316519)
-- Name: components_institute_certifications_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_certifications_cmps_id_seq'::regclass);


--
-- TOC entry 4461 (class 2604 OID 5316666)
-- Name: components_institute_gradings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings ALTER COLUMN id SET DEFAULT nextval('public.components_institute_gradings_id_seq'::regclass);


--
-- TOC entry 4460 (class 2604 OID 5316652)
-- Name: components_institute_gradings_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_gradings_cmps_id_seq'::regclass);


--
-- TOC entry 4365 (class 2604 OID 5315217)
-- Name: components_institute_imcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs ALTER COLUMN id SET DEFAULT nextval('public.components_institute_imcs_id_seq'::regclass);


--
-- TOC entry 4459 (class 2604 OID 5316631)
-- Name: components_institute_imcs_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_imcs_cmps_id_seq'::regclass);


--
-- TOC entry 4454 (class 2604 OID 5316570)
-- Name: components_institute_infrastructures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures ALTER COLUMN id SET DEFAULT nextval('public.components_institute_infrastructures_id_seq'::regclass);


--
-- TOC entry 4453 (class 2604 OID 5316556)
-- Name: components_institute_infrastructures_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_infrastructures_cmps_id_seq'::regclass);


--
-- TOC entry 4362 (class 2604 OID 5315129)
-- Name: components_institute_institutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes ALTER COLUMN id SET DEFAULT nextval('public.components_institute_institutes_id_seq'::regclass);


--
-- TOC entry 4469 (class 2604 OID 5316795)
-- Name: components_institute_institutes_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_institutes_cmps_id_seq'::regclass);


--
-- TOC entry 4457 (class 2604 OID 5316608)
-- Name: components_institute_ptas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas ALTER COLUMN id SET DEFAULT nextval('public.components_institute_ptas_id_seq'::regclass);


--
-- TOC entry 4456 (class 2604 OID 5316594)
-- Name: components_institute_ptas_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_institute_ptas_cmps_id_seq'::regclass);


--
-- TOC entry 4387 (class 2604 OID 5315690)
-- Name: components_notifications_quotations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations ALTER COLUMN id SET DEFAULT nextval('public.components_notifications_quotations_id_seq'::regclass);


--
-- TOC entry 4386 (class 2604 OID 5315676)
-- Name: components_notifications_quotations_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_notifications_quotations_cmps_id_seq'::regclass);


--
-- TOC entry 4384 (class 2604 OID 5315627)
-- Name: components_notifications_tenders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders ALTER COLUMN id SET DEFAULT nextval('public.components_notifications_tenders_id_seq'::regclass);


--
-- TOC entry 4383 (class 2604 OID 5315613)
-- Name: components_notifications_tenders_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_notifications_tenders_cmps_id_seq'::regclass);


--
-- TOC entry 4395 (class 2604 OID 5315800)
-- Name: components_placement_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events ALTER COLUMN id SET DEFAULT nextval('public.components_placement_events_id_seq'::regclass);


--
-- TOC entry 4394 (class 2604 OID 5315786)
-- Name: components_placement_events_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_placement_events_cmps_id_seq'::regclass);


--
-- TOC entry 4398 (class 2604 OID 5315837)
-- Name: components_placement_industrial_expereinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces ALTER COLUMN id SET DEFAULT nextval('public.components_placement_industrial_expereinces_id_seq'::regclass);


--
-- TOC entry 4397 (class 2604 OID 5315823)
-- Name: components_placement_industrial_expereinces_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_placement_industrial_expereinces_cmps_id_seq'::regclass);


--
-- TOC entry 4392 (class 2604 OID 5315759)
-- Name: components_placement_notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications ALTER COLUMN id SET DEFAULT nextval('public.components_placement_notifications_id_seq'::regclass);


--
-- TOC entry 4391 (class 2604 OID 5315745)
-- Name: components_placement_notifications_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_placement_notifications_cmps_id_seq'::regclass);


--
-- TOC entry 4400 (class 2604 OID 5315865)
-- Name: components_placement_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results ALTER COLUMN id SET DEFAULT nextval('public.components_placement_results_id_seq'::regclass);


--
-- TOC entry 4399 (class 2604 OID 5315851)
-- Name: components_placement_results_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_placement_results_cmps_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 5316323)
-- Name: components_shared_a_lumni_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_a_lumni_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_a_lumni_lists_id_seq'::regclass);


--
-- TOC entry 4426 (class 2604 OID 5316211)
-- Name: components_shared_achievements_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_achievements_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_achievements_lists_id_seq'::regclass);


--
-- TOC entry 4429 (class 2604 OID 5316249)
-- Name: components_shared_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_activities ALTER COLUMN id SET DEFAULT nextval('public.components_shared_activities_id_seq'::regclass);


--
-- TOC entry 4356 (class 2604 OID 5314883)
-- Name: components_shared_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses ALTER COLUMN id SET DEFAULT nextval('public.components_shared_addresses_id_seq'::regclass);


--
-- TOC entry 4355 (class 2604 OID 5314869)
-- Name: components_shared_addresses_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_addresses_cmps_id_seq'::regclass);


--
-- TOC entry 4364 (class 2604 OID 5315194)
-- Name: components_shared_announcements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_announcements ALTER COLUMN id SET DEFAULT nextval('public.components_shared_announcements_id_seq'::regclass);


--
-- TOC entry 4389 (class 2604 OID 5315719)
-- Name: components_shared_auctions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions ALTER COLUMN id SET DEFAULT nextval('public.components_shared_auctions_id_seq'::regclass);


--
-- TOC entry 4388 (class 2604 OID 5315705)
-- Name: components_shared_auctions_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_auctions_cmps_id_seq'::regclass);


--
-- TOC entry 4446 (class 2604 OID 5316475)
-- Name: components_shared_awards_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_awards_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_awards_lists_id_seq'::regclass);


--
-- TOC entry 4410 (class 2604 OID 5316003)
-- Name: components_shared_bullet_points id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_bullet_points ALTER COLUMN id SET DEFAULT nextval('public.components_shared_bullet_points_id_seq'::regclass);


--
-- TOC entry 4449 (class 2604 OID 5316510)
-- Name: components_shared_certfication_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_certfication_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_certfication_lists_id_seq'::regclass);


--
-- TOC entry 4420 (class 2604 OID 5316138)
-- Name: components_shared_contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_contacts_id_seq'::regclass);


--
-- TOC entry 4379 (class 2604 OID 5315547)
-- Name: components_shared_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_data ALTER COLUMN id SET DEFAULT nextval('public.components_shared_data_id_seq'::regclass);


--
-- TOC entry 4372 (class 2604 OID 5315381)
-- Name: components_shared_descriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_descriptions ALTER COLUMN id SET DEFAULT nextval('public.components_shared_descriptions_id_seq'::regclass);


--
-- TOC entry 4354 (class 2604 OID 5314860)
-- Name: components_shared_districts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_districts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_districts_id_seq'::regclass);


--
-- TOC entry 4363 (class 2604 OID 5315162)
-- Name: components_shared_educations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_educations ALTER COLUMN id SET DEFAULT nextval('public.components_shared_educations_id_seq'::regclass);


--
-- TOC entry 4350 (class 2604 OID 5314814)
-- Name: components_shared_event_contents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_event_contents ALTER COLUMN id SET DEFAULT nextval('public.components_shared_event_contents_id_seq'::regclass);


--
-- TOC entry 4349 (class 2604 OID 5314807)
-- Name: components_shared_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events ALTER COLUMN id SET DEFAULT nextval('public.components_shared_events_id_seq'::regclass);


--
-- TOC entry 4348 (class 2604 OID 5314793)
-- Name: components_shared_events_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_events_cmps_id_seq'::regclass);


--
-- TOC entry 4373 (class 2604 OID 5315437)
-- Name: components_shared_form_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_form_data ALTER COLUMN id SET DEFAULT nextval('public.components_shared_form_data_id_seq'::regclass);


--
-- TOC entry 4346 (class 2604 OID 5314769)
-- Name: components_shared_galleries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries ALTER COLUMN id SET DEFAULT nextval('public.components_shared_galleries_id_seq'::regclass);


--
-- TOC entry 4345 (class 2604 OID 5314755)
-- Name: components_shared_galleries_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_galleries_cmps_id_seq'::regclass);


--
-- TOC entry 4347 (class 2604 OID 5314776)
-- Name: components_shared_gallery_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_gallery_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_gallery_lists_id_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 5315947)
-- Name: components_shared_hostels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels ALTER COLUMN id SET DEFAULT nextval('public.components_shared_hostels_id_seq'::regclass);


--
-- TOC entry 4409 (class 2604 OID 5315982)
-- Name: components_shared_hostels_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_hostels_cmps_id_seq'::regclass);


--
-- TOC entry 4458 (class 2604 OID 5316622)
-- Name: components_shared_imc_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_imc_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_imc_lists_id_seq'::regclass);


--
-- TOC entry 4396 (class 2604 OID 5315814)
-- Name: components_shared_industrial_experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_industrial_experiences ALTER COLUMN id SET DEFAULT nextval('public.components_shared_industrial_experiences_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 5316048)
-- Name: components_shared_industry_tie_ups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_industry_tie_ups ALTER COLUMN id SET DEFAULT nextval('public.components_shared_industry_tie_ups_id_seq'::regclass);


--
-- TOC entry 4452 (class 2604 OID 5316547)
-- Name: components_shared_infrastrture_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_infrastrture_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_infrastrture_lists_id_seq'::regclass);


--
-- TOC entry 4334 (class 2604 OID 5314622)
-- Name: components_shared_iti_descriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_iti_descriptions ALTER COLUMN id SET DEFAULT nextval('public.components_shared_iti_descriptions_id_seq'::regclass);


--
-- TOC entry 4403 (class 2604 OID 5315893)
-- Name: components_shared_libraries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_libraries ALTER COLUMN id SET DEFAULT nextval('public.components_shared_libraries_id_seq'::regclass);


--
-- TOC entry 4353 (class 2604 OID 5314851)
-- Name: components_shared_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_locations ALTER COLUMN id SET DEFAULT nextval('public.components_shared_locations_id_seq'::regclass);


--
-- TOC entry 4351 (class 2604 OID 5314833)
-- Name: components_shared_maps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_maps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_maps_id_seq'::regclass);


--
-- TOC entry 4366 (class 2604 OID 5315237)
-- Name: components_shared_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_members ALTER COLUMN id SET DEFAULT nextval('public.components_shared_members_id_seq'::regclass);


--
-- TOC entry 4335 (class 2604 OID 5314638)
-- Name: components_shared_missions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_missions ALTER COLUMN id SET DEFAULT nextval('public.components_shared_missions_id_seq'::regclass);


--
-- TOC entry 4338 (class 2604 OID 5314674)
-- Name: components_shared_news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news ALTER COLUMN id SET DEFAULT nextval('public.components_shared_news_id_seq'::regclass);


--
-- TOC entry 4337 (class 2604 OID 5314660)
-- Name: components_shared_news_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_news_cmps_id_seq'::regclass);


--
-- TOC entry 4340 (class 2604 OID 5314697)
-- Name: components_shared_news_contents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_contents ALTER COLUMN id SET DEFAULT nextval('public.components_shared_news_contents_id_seq'::regclass);


--
-- TOC entry 4339 (class 2604 OID 5314681)
-- Name: components_shared_news_headings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_headings ALTER COLUMN id SET DEFAULT nextval('public.components_shared_news_headings_id_seq'::regclass);


--
-- TOC entry 4382 (class 2604 OID 5315604)
-- Name: components_shared_notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_notifications ALTER COLUMN id SET DEFAULT nextval('public.components_shared_notifications_id_seq'::regclass);


--
-- TOC entry 4432 (class 2604 OID 5316286)
-- Name: components_shared_nss_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_nss_activities ALTER COLUMN id SET DEFAULT nextval('public.components_shared_nss_activities_id_seq'::regclass);


--
-- TOC entry 4417 (class 2604 OID 5316099)
-- Name: components_shared_other_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_other_activities ALTER COLUMN id SET DEFAULT nextval('public.components_shared_other_activities_id_seq'::regclass);


--
-- TOC entry 4402 (class 2604 OID 5315879)
-- Name: components_shared_placed_companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placed_companies ALTER COLUMN id SET DEFAULT nextval('public.components_shared_placed_companies_id_seq'::regclass);


--
-- TOC entry 4390 (class 2604 OID 5315738)
-- Name: components_shared_placement_notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placement_notifications ALTER COLUMN id SET DEFAULT nextval('public.components_shared_placement_notifications_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 5315872)
-- Name: components_shared_placement_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placement_results ALTER COLUMN id SET DEFAULT nextval('public.components_shared_placement_results_id_seq'::regclass);


--
-- TOC entry 4393 (class 2604 OID 5315777)
-- Name: components_shared_plcement_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_plcement_events ALTER COLUMN id SET DEFAULT nextval('public.components_shared_plcement_events_id_seq'::regclass);


--
-- TOC entry 4361 (class 2604 OID 5315085)
-- Name: components_shared_principles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_principles ALTER COLUMN id SET DEFAULT nextval('public.components_shared_principles_id_seq'::regclass);


--
-- TOC entry 4462 (class 2604 OID 5316680)
-- Name: components_shared_programs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_programs ALTER COLUMN id SET DEFAULT nextval('public.components_shared_programs_id_seq'::regclass);


--
-- TOC entry 4455 (class 2604 OID 5316585)
-- Name: components_shared_pta_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_pta_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_pta_lists_id_seq'::regclass);


--
-- TOC entry 4385 (class 2604 OID 5315660)
-- Name: components_shared_quotations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_quotations ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotations_id_seq'::regclass);


--
-- TOC entry 4376 (class 2604 OID 5315493)
-- Name: components_shared_ranklists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_ranklists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_ranklists_id_seq'::regclass);


--
-- TOC entry 4371 (class 2604 OID 5315361)
-- Name: components_shared_table_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_table_data ALTER COLUMN id SET DEFAULT nextval('public.components_shared_table_data_id_seq'::regclass);


--
-- TOC entry 4367 (class 2604 OID 5315275)
-- Name: components_shared_tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables ALTER COLUMN id SET DEFAULT nextval('public.components_shared_tables_id_seq'::regclass);


--
-- TOC entry 4370 (class 2604 OID 5315347)
-- Name: components_shared_tables_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_tables_cmps_id_seq'::regclass);


--
-- TOC entry 4344 (class 2604 OID 5314738)
-- Name: components_shared_trade_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trade_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trade_lists_id_seq'::regclass);


--
-- TOC entry 4343 (class 2604 OID 5314729)
-- Name: components_shared_trade_names id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trade_names ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trade_names_id_seq'::regclass);


--
-- TOC entry 4342 (class 2604 OID 5314722)
-- Name: components_shared_trades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trades_id_seq'::regclass);


--
-- TOC entry 4341 (class 2604 OID 5314708)
-- Name: components_shared_trades_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trades_cmps_id_seq'::regclass);


--
-- TOC entry 4423 (class 2604 OID 5316179)
-- Name: components_shared_trainnees_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trainnees_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trainnees_lists_id_seq'::regclass);


--
-- TOC entry 4438 (class 2604 OID 5316362)
-- Name: components_shared_trainnes_council_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trainnes_council_lists ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trainnes_council_lists_id_seq'::regclass);


--
-- TOC entry 4352 (class 2604 OID 5314842)
-- Name: components_shared_useful_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_useful_links ALTER COLUMN id SET DEFAULT nextval('public.components_shared_useful_links_id_seq'::regclass);


--
-- TOC entry 4336 (class 2604 OID 5314649)
-- Name: components_shared_visions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_visions ALTER COLUMN id SET DEFAULT nextval('public.components_shared_visions_id_seq'::regclass);


--
-- TOC entry 4416 (class 2604 OID 5316087)
-- Name: components_shared_women_cells id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_women_cells ALTER COLUMN id SET DEFAULT nextval('public.components_shared_women_cells_id_seq'::regclass);


--
-- TOC entry 4425 (class 2604 OID 5316204)
-- Name: components_trainees_achievements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_achievements_id_seq'::regclass);


--
-- TOC entry 4424 (class 2604 OID 5316190)
-- Name: components_trainees_achievements_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_achievements_cmps_id_seq'::regclass);


--
-- TOC entry 4428 (class 2604 OID 5316242)
-- Name: components_trainees_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_activities_id_seq'::regclass);


--
-- TOC entry 4427 (class 2604 OID 5316228)
-- Name: components_trainees_activities_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_activities_cmps_id_seq'::regclass);


--
-- TOC entry 4434 (class 2604 OID 5316316)
-- Name: components_trainees_alumni id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_alumni_id_seq'::regclass);


--
-- TOC entry 4433 (class 2604 OID 5316302)
-- Name: components_trainees_alumni_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_alumni_cmps_id_seq'::regclass);


--
-- TOC entry 4431 (class 2604 OID 5316279)
-- Name: components_trainees_nsses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_nsses_id_seq'::regclass);


--
-- TOC entry 4430 (class 2604 OID 5316265)
-- Name: components_trainees_nsses_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_nsses_cmps_id_seq'::regclass);


--
-- TOC entry 4440 (class 2604 OID 5316392)
-- Name: components_trainees_results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_results_id_seq'::regclass);


--
-- TOC entry 4439 (class 2604 OID 5316378)
-- Name: components_trainees_results_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_results_cmps_id_seq'::regclass);


--
-- TOC entry 4437 (class 2604 OID 5316355)
-- Name: components_trainees_trainees_councils id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_trainees_councils_id_seq'::regclass);


--
-- TOC entry 4436 (class 2604 OID 5316341)
-- Name: components_trainees_trainees_councils_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_trainees_councils_cmps_id_seq'::regclass);


--
-- TOC entry 4422 (class 2604 OID 5316163)
-- Name: components_trainees_trainees_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_trainees_lists_id_seq'::regclass);


--
-- TOC entry 4421 (class 2604 OID 5316149)
-- Name: components_trainees_trainees_lists_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_trainees_trainees_lists_cmps_id_seq'::regclass);


--
-- TOC entry 4301 (class 2604 OID 5313873)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 4322 (class 2604 OID 5314127)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 4321 (class 2604 OID 5314115)
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- TOC entry 4303 (class 2604 OID 5313907)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 4315 (class 2604 OID 5314051)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 4332 (class 2604 OID 5314247)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 4314 (class 2604 OID 5314039)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 4318 (class 2604 OID 5314087)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 4300 (class 2604 OID 5313864)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 4320 (class 2604 OID 5314105)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 4298 (class 2604 OID 5313850)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 4299 (class 2604 OID 5313857)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 4305 (class 2604 OID 5313931)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 4324 (class 2604 OID 5314151)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 4304 (class 2604 OID 5313919)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 4317 (class 2604 OID 5314075)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 4333 (class 2604 OID 5314259)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 4316 (class 2604 OID 5314063)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 4319 (class 2604 OID 5314096)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 4306 (class 2604 OID 5313943)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 4325 (class 2604 OID 5314163)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 4307 (class 2604 OID 5313955)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 4327 (class 2604 OID 5314186)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 4326 (class 2604 OID 5314174)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 4308 (class 2604 OID 5313967)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 4328 (class 2604 OID 5314198)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 4309 (class 2604 OID 5313979)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 4310 (class 2604 OID 5313991)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 4329 (class 2604 OID 5314210)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 4302 (class 2604 OID 5313891)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 4323 (class 2604 OID 5314139)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 5315317)
-- Name: vatakaras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras ALTER COLUMN id SET DEFAULT nextval('public.vatakaras_id_seq'::regclass);


--
-- TOC entry 4368 (class 2604 OID 5315303)
-- Name: vatakaras_cmps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras_cmps ALTER COLUMN id SET DEFAULT nextval('public.vatakaras_cmps_id_seq'::regclass);


--
-- TOC entry 5443 (class 0 OID 5314000)
-- Dependencies: 242
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	qlw3dkb4bc6dphvfmti1mgj9	plugin::upload.read	{}	\N	{}	[]	2025-04-22 12:56:29.983	2025-04-22 12:56:29.983	2025-04-22 12:56:29.983	\N	\N	\N
2	se601keggo1mmalk0928zrr6	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-22 12:56:30.026	2025-04-22 12:56:30.026	2025-04-22 12:56:30.026	\N	\N	\N
3	qy7a1h5158lsjah1y3lene68	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-22 12:56:30.028	2025-04-22 12:56:30.028	2025-04-22 12:56:30.028	\N	\N	\N
4	oj9f5jff7hc7nkrqyia1ufvt	plugin::upload.assets.update	{}	\N	{}	[]	2025-04-22 12:56:30.03	2025-04-22 12:56:30.03	2025-04-22 12:56:30.03	\N	\N	\N
5	ylxujpmbfrycq9kybhjbh3e9	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-22 12:56:30.032	2025-04-22 12:56:30.032	2025-04-22 12:56:30.032	\N	\N	\N
6	syg8tzkzuvok646sswe8e505	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-22 12:56:30.034	2025-04-22 12:56:30.034	2025-04-22 12:56:30.034	\N	\N	\N
7	wlc25jcakecywiqqy36s13ty	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-04-22 12:56:30.037	2025-04-22 12:56:30.037	2025-04-22 12:56:30.037	\N	\N	\N
8	hlfof6mkhawz8n39zq8nqaus	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-22 12:56:30.039	2025-04-22 12:56:30.039	2025-04-22 12:56:30.039	\N	\N	\N
9	qxf0lncpbu30wu5kg9prucqm	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-22 12:56:30.041	2025-04-22 12:56:30.041	2025-04-22 12:56:30.041	\N	\N	\N
10	k0g7gn82drnyk4c40mriaqkw	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-04-22 12:56:30.044	2025-04-22 12:56:30.044	2025-04-22 12:56:30.044	\N	\N	\N
11	eydhy6k6wqmjmvsf5pasnyf8	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-22 12:56:30.046	2025-04-22 12:56:30.046	2025-04-22 12:56:30.046	\N	\N	\N
12	gv7y53z17fsj24fjel3hisb9	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-22 12:56:30.048	2025-04-22 12:56:30.048	2025-04-22 12:56:30.048	\N	\N	\N
16	s24u2toznrr9lpmouu81jssm	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-04-22 12:56:30.065	2025-04-22 12:56:30.065	2025-04-22 12:56:30.065	\N	\N	\N
17	n2a0ofajzkwp0lopeoyyjnk6	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-04-22 12:56:30.067	2025-04-22 12:56:30.067	2025-04-22 12:56:30.067	\N	\N	\N
18	cvd7z6nuj7d13fv5lnwhgaui	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-04-22 12:56:30.069	2025-04-22 12:56:30.069	2025-04-22 12:56:30.069	\N	\N	\N
19	qybox21j4ot24tpw4r3nqzw8	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-04-22 12:56:30.071	2025-04-22 12:56:30.071	2025-04-22 12:56:30.071	\N	\N	\N
20	rv052py62w8to979rlylyn9j	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-04-22 12:56:30.072	2025-04-22 12:56:30.072	2025-04-22 12:56:30.072	\N	\N	\N
21	kyi93z8g1lxieicyhgn3rw7b	plugin::content-type-builder.read	{}	\N	{}	[]	2025-04-22 12:56:30.074	2025-04-22 12:56:30.074	2025-04-22 12:56:30.074	\N	\N	\N
22	v8usgp2mvgcnr7wbl9iubges	plugin::email.settings.read	{}	\N	{}	[]	2025-04-22 12:56:30.076	2025-04-22 12:56:30.076	2025-04-22 12:56:30.076	\N	\N	\N
23	wy4cakh6e8hgzy40u7301y2y	plugin::upload.read	{}	\N	{}	[]	2025-04-22 12:56:30.078	2025-04-22 12:56:30.078	2025-04-22 12:56:30.078	\N	\N	\N
24	tna5qwvpmyeiekw9c2nf0w57	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-22 12:56:30.08	2025-04-22 12:56:30.08	2025-04-22 12:56:30.08	\N	\N	\N
25	f6msh47hlm49igupkzkp8lyp	plugin::upload.assets.update	{}	\N	{}	[]	2025-04-22 12:56:30.081	2025-04-22 12:56:30.081	2025-04-22 12:56:30.081	\N	\N	\N
26	npgqmfc1bm234bopcfj8p03z	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-22 12:56:30.083	2025-04-22 12:56:30.083	2025-04-22 12:56:30.083	\N	\N	\N
27	mdrhrgwq7ohdqihcm0jp3xxd	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-22 12:56:30.085	2025-04-22 12:56:30.085	2025-04-22 12:56:30.085	\N	\N	\N
28	rlro5795gsgblc2w7u6wmytn	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-22 12:56:30.086	2025-04-22 12:56:30.086	2025-04-22 12:56:30.086	\N	\N	\N
29	bwosv8dn3z7srq7egthv6e3m	plugin::upload.settings.read	{}	\N	{}	[]	2025-04-22 12:56:30.088	2025-04-22 12:56:30.088	2025-04-22 12:56:30.088	\N	\N	\N
30	niv9sv9sqnsy1v4ad83cea2z	plugin::i18n.locale.create	{}	\N	{}	[]	2025-04-22 12:56:30.089	2025-04-22 12:56:30.089	2025-04-22 12:56:30.089	\N	\N	\N
31	ogj60zvrppm6pmig7xsttde3	plugin::i18n.locale.read	{}	\N	{}	[]	2025-04-22 12:56:30.091	2025-04-22 12:56:30.091	2025-04-22 12:56:30.091	\N	\N	\N
32	fcwafvt9i98l3p4me4cvw90y	plugin::i18n.locale.update	{}	\N	{}	[]	2025-04-22 12:56:30.093	2025-04-22 12:56:30.093	2025-04-22 12:56:30.093	\N	\N	\N
33	kqxfxfpi1dgm9dtq90bv4iza	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-04-22 12:56:30.095	2025-04-22 12:56:30.095	2025-04-22 12:56:30.095	\N	\N	\N
34	rjeiot683pehxpqo34m0v7x5	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-04-22 12:56:30.097	2025-04-22 12:56:30.097	2025-04-22 12:56:30.097	\N	\N	\N
35	rmtytkfbnxfm1f7nt9n3qm1s	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-04-22 12:56:30.099	2025-04-22 12:56:30.099	2025-04-22 12:56:30.099	\N	\N	\N
36	vxxvqdsa3i2i2lqi5xquhgwz	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-04-22 12:56:30.101	2025-04-22 12:56:30.101	2025-04-22 12:56:30.101	\N	\N	\N
37	t2f1h8zsbqaquvk9fpq4ooc9	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-04-22 12:56:30.102	2025-04-22 12:56:30.102	2025-04-22 12:56:30.102	\N	\N	\N
38	b96n6j8sogtevns6u70t04mq	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-04-22 12:56:30.104	2025-04-22 12:56:30.104	2025-04-22 12:56:30.104	\N	\N	\N
39	so4zpcastboe15t2zfxr396z	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-04-22 12:56:30.105	2025-04-22 12:56:30.105	2025-04-22 12:56:30.105	\N	\N	\N
40	hm03zmaq9fs5sytpws6op2y5	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-04-22 12:56:30.107	2025-04-22 12:56:30.107	2025-04-22 12:56:30.107	\N	\N	\N
41	zc5szlfb5edf5etr9qb01nq0	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-04-22 12:56:30.108	2025-04-22 12:56:30.108	2025-04-22 12:56:30.108	\N	\N	\N
42	wmk7wpu19m0ldy3ffik85o1y	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-04-22 12:56:30.109	2025-04-22 12:56:30.109	2025-04-22 12:56:30.109	\N	\N	\N
43	b4nlkkrevz2q3u1g6232es5a	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-04-22 12:56:30.111	2025-04-22 12:56:30.111	2025-04-22 12:56:30.111	\N	\N	\N
44	qalfzlv30iqso89oyvonxvba	admin::marketplace.read	{}	\N	{}	[]	2025-04-22 12:56:30.112	2025-04-22 12:56:30.112	2025-04-22 12:56:30.112	\N	\N	\N
45	tp1l2ujadnibjdbk8sfqg6sx	admin::webhooks.create	{}	\N	{}	[]	2025-04-22 12:56:30.113	2025-04-22 12:56:30.113	2025-04-22 12:56:30.113	\N	\N	\N
46	z5cc8ycbbjey37ikjqcns9bv	admin::webhooks.read	{}	\N	{}	[]	2025-04-22 12:56:30.115	2025-04-22 12:56:30.115	2025-04-22 12:56:30.115	\N	\N	\N
47	psxn968ro1xqu1xppy0gqvij	admin::webhooks.update	{}	\N	{}	[]	2025-04-22 12:56:30.116	2025-04-22 12:56:30.116	2025-04-22 12:56:30.116	\N	\N	\N
48	qkufsfh52m32vumosewvhiot	admin::webhooks.delete	{}	\N	{}	[]	2025-04-22 12:56:30.117	2025-04-22 12:56:30.117	2025-04-22 12:56:30.117	\N	\N	\N
49	i4w10739m3m1kumfsddblzls	admin::users.create	{}	\N	{}	[]	2025-04-22 12:56:30.118	2025-04-22 12:56:30.118	2025-04-22 12:56:30.119	\N	\N	\N
50	t96rugd90l9tuzhx5miehfbu	admin::users.read	{}	\N	{}	[]	2025-04-22 12:56:30.12	2025-04-22 12:56:30.12	2025-04-22 12:56:30.12	\N	\N	\N
51	azl6ursohd4aurg8o2cnrb66	admin::users.update	{}	\N	{}	[]	2025-04-22 12:56:30.121	2025-04-22 12:56:30.121	2025-04-22 12:56:30.121	\N	\N	\N
52	gjsmuij8ogi08d8m2nzs8xhh	admin::users.delete	{}	\N	{}	[]	2025-04-22 12:56:30.123	2025-04-22 12:56:30.123	2025-04-22 12:56:30.123	\N	\N	\N
53	gdt4pnpl2pzv4c38n9dylfwq	admin::roles.create	{}	\N	{}	[]	2025-04-22 12:56:30.124	2025-04-22 12:56:30.124	2025-04-22 12:56:30.124	\N	\N	\N
54	bjhd0rdqpavmvpwolddj2gfs	admin::roles.read	{}	\N	{}	[]	2025-04-22 12:56:30.125	2025-04-22 12:56:30.125	2025-04-22 12:56:30.125	\N	\N	\N
55	r4a40iixlf303nug0yxeohv0	admin::roles.update	{}	\N	{}	[]	2025-04-22 12:56:30.126	2025-04-22 12:56:30.126	2025-04-22 12:56:30.126	\N	\N	\N
56	wewbopc0y7soc2gkgz4qxnw3	admin::roles.delete	{}	\N	{}	[]	2025-04-22 12:56:30.127	2025-04-22 12:56:30.127	2025-04-22 12:56:30.127	\N	\N	\N
57	btoahysjr6naw4b1v63h273p	admin::api-tokens.access	{}	\N	{}	[]	2025-04-22 12:56:30.128	2025-04-22 12:56:30.128	2025-04-22 12:56:30.128	\N	\N	\N
58	eiajajgq9i4vjai31ertvtwm	admin::api-tokens.create	{}	\N	{}	[]	2025-04-22 12:56:30.129	2025-04-22 12:56:30.129	2025-04-22 12:56:30.129	\N	\N	\N
59	ev3n0qbrefz2ikukkkczcala	admin::api-tokens.read	{}	\N	{}	[]	2025-04-22 12:56:30.131	2025-04-22 12:56:30.131	2025-04-22 12:56:30.131	\N	\N	\N
60	bgtyyirrmxofxhfv35whowu1	admin::api-tokens.update	{}	\N	{}	[]	2025-04-22 12:56:30.132	2025-04-22 12:56:30.132	2025-04-22 12:56:30.132	\N	\N	\N
61	aiky3r8wicb2k7w8cmq0s0e9	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-04-22 12:56:30.133	2025-04-22 12:56:30.133	2025-04-22 12:56:30.133	\N	\N	\N
62	ntlrajntoeadrpoq51bl4wh1	admin::api-tokens.delete	{}	\N	{}	[]	2025-04-22 12:56:30.134	2025-04-22 12:56:30.134	2025-04-22 12:56:30.134	\N	\N	\N
63	oqhpnx0hos6lceggrjvfxz18	admin::project-settings.update	{}	\N	{}	[]	2025-04-22 12:56:30.135	2025-04-22 12:56:30.135	2025-04-22 12:56:30.135	\N	\N	\N
64	h30g95stm09uhcspqkp7quz4	admin::project-settings.read	{}	\N	{}	[]	2025-04-22 12:56:30.136	2025-04-22 12:56:30.136	2025-04-22 12:56:30.136	\N	\N	\N
65	ip7u8garz9bs3m27eav36ijs	admin::transfer.tokens.access	{}	\N	{}	[]	2025-04-22 12:56:30.137	2025-04-22 12:56:30.137	2025-04-22 12:56:30.137	\N	\N	\N
66	tutoq27r5nkvbkcxd4d1gwki	admin::transfer.tokens.create	{}	\N	{}	[]	2025-04-22 12:56:30.138	2025-04-22 12:56:30.138	2025-04-22 12:56:30.138	\N	\N	\N
67	f0v459xa8zzy0u0d1h3fv444	admin::transfer.tokens.read	{}	\N	{}	[]	2025-04-22 12:56:30.139	2025-04-22 12:56:30.139	2025-04-22 12:56:30.139	\N	\N	\N
68	qtd0rnjs3n22wbw7wrp5jyce	admin::transfer.tokens.update	{}	\N	{}	[]	2025-04-22 12:56:30.14	2025-04-22 12:56:30.14	2025-04-22 12:56:30.14	\N	\N	\N
69	y3i0ae2zfarvvt038t9pjtc8	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-04-22 12:56:30.141	2025-04-22 12:56:30.141	2025-04-22 12:56:30.141	\N	\N	\N
70	rtdgh8inum7yqy2tx306xh5d	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-04-22 12:56:30.142	2025-04-22 12:56:30.142	2025-04-22 12:56:30.142	\N	\N	\N
146	xfb95suxkz86cfq096s5upkz	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "images"]}	[]	2025-04-24 11:32:48.025	2025-04-24 11:32:48.025	2025-04-24 11:32:48.025	\N	\N	\N
147	omocqsjnjrxprxd1qgrh27s8	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "images"]}	[]	2025-04-24 11:32:48.029	2025-04-24 11:32:48.029	2025-04-24 11:32:48.029	\N	\N	\N
148	ein2r6x6ve4etub3ovyo93vz	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "images"]}	[]	2025-04-24 11:32:48.031	2025-04-24 11:32:48.031	2025-04-24 11:32:48.031	\N	\N	\N
173	qvhckkdx1uutvgoy1ksqvnaa	plugin::content-manager.explorer.delete	{}	api::vatakara.vatakara	{}	[]	2025-04-29 11:29:44.171	2025-04-29 11:29:44.171	2025-04-29 11:29:44.171	\N	\N	\N
174	s4oqyvqaha39amxbah1gh8zk	plugin::content-manager.explorer.publish	{}	api::vatakara.vatakara	{}	[]	2025-04-29 11:29:44.172	2025-04-29 11:29:44.172	2025-04-29 11:29:44.172	\N	\N	\N
184	oslhdxvn8yinzyq89zyfuh7l	plugin::content-manager.explorer.create	{}	api::vatakara.vatakara	{"fields": ["Table.TableData.description", "Table.TableData.pdf"]}	[]	2025-04-29 11:43:27.567	2025-04-29 11:43:27.567	2025-04-29 11:43:27.568	\N	\N	\N
185	hpt8t039s1plbp1r1lhqy3zk	plugin::content-manager.explorer.read	{}	api::vatakara.vatakara	{"fields": ["Table.TableData.description", "Table.TableData.pdf"]}	[]	2025-04-29 11:43:27.572	2025-04-29 11:43:27.572	2025-04-29 11:43:27.572	\N	\N	\N
186	j7r4d2717093c0dnfprfpykp	plugin::content-manager.explorer.update	{}	api::vatakara.vatakara	{"fields": ["Table.TableData.description", "Table.TableData.pdf"]}	[]	2025-04-29 11:43:27.574	2025-04-29 11:43:27.574	2025-04-29 11:43:27.574	\N	\N	\N
138	bwyodfjlh1scz5r5lim9knj3	plugin::content-manager.explorer.delete	{}	api::chackai.chackai	{}	[]	2025-04-23 15:18:43.61	2025-04-23 15:18:43.61	2025-04-23 15:18:43.61	\N	\N	\N
139	euxhx2dwqc65y1of10l60tkp	plugin::content-manager.explorer.publish	{}	api::chackai.chackai	{}	[]	2025-04-23 15:18:43.611	2025-04-23 15:18:43.611	2025-04-23 15:18:43.612	\N	\N	\N
193	u2et5v9on17816p4riictizt	plugin::content-manager.explorer.create	{}	api::chackai.chackai	{"fields": ["Home.iti_name", "Home.iti_url", "Home.mis_code", "Home.phone_number", "Home.iti_email", "Home.Description.ml", "Home.Description.en", "Home.Mission.ml", "Home.Mission.en", "Home.Vision.ml", "Home.Vision.en", "Home.News.news_heading.ml", "Home.News.news_heading.en", "Home.News.news_content.ml", "Home.News.news_content.en", "Home.Trades.trade_name.ml", "Home.Trades.trade_name.en", "Home.Trades.trade_list.ml", "Home.Trades.trade_list.en", "Home.Gallery.gallery_content.ml", "Home.Gallery.gallery_content.en", "Home.Gallery.gallery_content.gallery_image", "Home.Events.event_content.ml", "Home.Events.event_content.en", "Home.Events.event_content.youtube_link", "Home.Map.latitude", "Home.Map.longitude", "Home.Useful_Links.url", "Home.Address.location.ml", "Home.Address.location.en", "Home.Address.district.ml", "Home.Address.district.en", "Home.Address.pin", "Home.Images", "Downloads.Data.pdf", "Downloads.Description.ml", "Downloads.Description.en"]}	[]	2025-04-30 15:35:30.389	2025-04-30 15:35:30.389	2025-04-30 15:35:30.389	\N	\N	\N
194	xv1ls43mdc38e5tk5xymmph1	plugin::content-manager.explorer.read	{}	api::chackai.chackai	{"fields": ["Home.iti_name", "Home.iti_url", "Home.mis_code", "Home.phone_number", "Home.iti_email", "Home.Description.ml", "Home.Description.en", "Home.Mission.ml", "Home.Mission.en", "Home.Vision.ml", "Home.Vision.en", "Home.News.news_heading.ml", "Home.News.news_heading.en", "Home.News.news_content.ml", "Home.News.news_content.en", "Home.Trades.trade_name.ml", "Home.Trades.trade_name.en", "Home.Trades.trade_list.ml", "Home.Trades.trade_list.en", "Home.Gallery.gallery_content.ml", "Home.Gallery.gallery_content.en", "Home.Gallery.gallery_content.gallery_image", "Home.Events.event_content.ml", "Home.Events.event_content.en", "Home.Events.event_content.youtube_link", "Home.Map.latitude", "Home.Map.longitude", "Home.Useful_Links.url", "Home.Address.location.ml", "Home.Address.location.en", "Home.Address.district.ml", "Home.Address.district.en", "Home.Address.pin", "Home.Images", "Downloads.Data.pdf", "Downloads.Description.ml", "Downloads.Description.en"]}	[]	2025-04-30 15:35:30.392	2025-04-30 15:35:30.392	2025-04-30 15:35:30.393	\N	\N	\N
195	hjqehzmo8cqwqln9a95bgg88	plugin::content-manager.explorer.update	{}	api::chackai.chackai	{"fields": ["Home.iti_name", "Home.iti_url", "Home.mis_code", "Home.phone_number", "Home.iti_email", "Home.Description.ml", "Home.Description.en", "Home.Mission.ml", "Home.Mission.en", "Home.Vision.ml", "Home.Vision.en", "Home.News.news_heading.ml", "Home.News.news_heading.en", "Home.News.news_content.ml", "Home.News.news_content.en", "Home.Trades.trade_name.ml", "Home.Trades.trade_name.en", "Home.Trades.trade_list.ml", "Home.Trades.trade_list.en", "Home.Gallery.gallery_content.ml", "Home.Gallery.gallery_content.en", "Home.Gallery.gallery_content.gallery_image", "Home.Events.event_content.ml", "Home.Events.event_content.en", "Home.Events.event_content.youtube_link", "Home.Map.latitude", "Home.Map.longitude", "Home.Useful_Links.url", "Home.Address.location.ml", "Home.Address.location.en", "Home.Address.district.ml", "Home.Address.district.en", "Home.Address.pin", "Home.Images", "Downloads.Data.pdf", "Downloads.Description.ml", "Downloads.Description.en"]}	[]	2025-04-30 15:35:30.394	2025-04-30 15:35:30.394	2025-04-30 15:35:30.394	\N	\N	\N
\.


--
-- TOC entry 5481 (class 0 OID 5314219)
-- Dependencies: 280
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
70	70	1	58
146	146	1	67
147	147	1	68
148	148	1	69
173	173	1	76
174	174	1	77
184	184	1	78
185	185	1	79
186	186	1	80
193	193	1	81
194	194	1	82
195	195	1	83
138	138	1	62
139	139	1	63
\.


--
-- TOC entry 5447 (class 0 OID 5314024)
-- Dependencies: 246
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	b9e7uumbjffyvcjmc69934ny	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-04-22 12:56:29.953	2025-04-22 12:56:29.953	2025-04-22 12:56:29.953	\N	\N	\N
2	hd1fhfmuu59ei41zf1fee3kr	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-04-22 12:56:29.958	2025-04-22 12:56:29.958	2025-04-22 12:56:29.958	\N	\N	\N
3	pygbcd9m1y7hh07mm4naawun	Author	strapi-author	Authors can manage the content they have created.	2025-04-22 12:56:29.967	2025-04-22 12:56:29.967	2025-04-22 12:56:29.967	\N	\N	\N
\.


--
-- TOC entry 5445 (class 0 OID 5314012)
-- Dependencies: 244
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	gefppulm0n3v2zuqphpv6xk8	Jihana	Gafoor	\N	jihanagafoor65@gmail.com	$2a$10$C5t2hS6kTRCCr6773IfM2OnAVBqaECWMRWNxywk1ie6DLHns1qFbS	\N	\N	t	f	\N	2025-04-22 12:57:02.742	2025-04-22 12:57:02.742	2025-04-22 12:57:02.742	\N	\N	\N
\.


--
-- TOC entry 5483 (class 0 OID 5314231)
-- Dependencies: 282
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- TOC entry 5541 (class 0 OID 5315024)
-- Dependencies: 340
-- Data for Name: chackais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chackais (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
19	osj6rcbbu0g6mctfe017y3o4	2025-04-23 15:35:07.444	2025-04-24 16:21:44.956	2025-04-24 16:21:44.989	1	1	\N
1	osj6rcbbu0g6mctfe017y3o4	2025-04-23 15:35:07.444	2025-04-30 12:06:22.669	\N	1	1	\N
\.


--
-- TOC entry 5539 (class 0 OID 5315010)
-- Dependencies: 338
-- Data for Name: chackais_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chackais_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	home.home	Home	1
39	19	19	home.home	Home	\N
\.


--
-- TOC entry 5747 (class 0 OID 5316698)
-- Dependencies: 546
-- Data for Name: components_academics_cts_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_cts_programs (id) FROM stdin;
\.


--
-- TOC entry 5749 (class 0 OID 5316714)
-- Dependencies: 548
-- Data for Name: components_academics_cts_programs_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_cts_programs_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5753 (class 0 OID 5316749)
-- Dependencies: 552
-- Data for Name: components_academics_pmkvies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_pmkvies (id) FROM stdin;
\.


--
-- TOC entry 5751 (class 0 OID 5316735)
-- Dependencies: 550
-- Data for Name: components_academics_pmkvies_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_pmkvies_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5757 (class 0 OID 5316778)
-- Dependencies: 556
-- Data for Name: components_academics_stts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_stts (id) FROM stdin;
\.


--
-- TOC entry 5755 (class 0 OID 5316764)
-- Dependencies: 554
-- Data for Name: components_academics_stts_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_academics_stts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5711 (class 0 OID 5316461)
-- Dependencies: 510
-- Data for Name: components_admission_admission_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_admission_admission_links (id, link) FROM stdin;
\.


--
-- TOC entry 5705 (class 0 OID 5316418)
-- Dependencies: 504
-- Data for Name: components_admission_prospectuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_admission_prospectuses (id, heading) FROM stdin;
\.


--
-- TOC entry 5703 (class 0 OID 5316404)
-- Dependencies: 502
-- Data for Name: components_admission_prospectuses_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_admission_prospectuses_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5709 (class 0 OID 5316446)
-- Dependencies: 508
-- Data for Name: components_admission_user_manuals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_admission_user_manuals (id, heading) FROM stdin;
\.


--
-- TOC entry 5707 (class 0 OID 5316432)
-- Dependencies: 506
-- Data for Name: components_admission_user_manuals_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_admission_user_manuals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5583 (class 0 OID 5315565)
-- Dependencies: 382
-- Data for Name: components_download_circulars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_circulars (id) FROM stdin;
\.


--
-- TOC entry 5581 (class 0 OID 5315551)
-- Dependencies: 380
-- Data for Name: components_download_circulars_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_circulars_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5571 (class 0 OID 5315455)
-- Dependencies: 370
-- Data for Name: components_download_forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_forms (id) FROM stdin;
\.


--
-- TOC entry 5569 (class 0 OID 5315441)
-- Dependencies: 368
-- Data for Name: components_download_forms_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_forms_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5577 (class 0 OID 5315511)
-- Dependencies: 376
-- Data for Name: components_download_ranklists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_ranklists (id) FROM stdin;
\.


--
-- TOC entry 5575 (class 0 OID 5315497)
-- Dependencies: 374
-- Data for Name: components_download_ranklists_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_download_ranklists_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5637 (class 0 OID 5315965)
-- Dependencies: 436
-- Data for Name: components_facilities_hostels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_hostels (id) FROM stdin;
\.


--
-- TOC entry 5635 (class 0 OID 5315951)
-- Dependencies: 434
-- Data for Name: components_facilities_hostels_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_hostels_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5645 (class 0 OID 5316031)
-- Dependencies: 444
-- Data for Name: components_facilities_industry_tie_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_industry_tie_ups (id) FROM stdin;
\.


--
-- TOC entry 5643 (class 0 OID 5316017)
-- Dependencies: 442
-- Data for Name: components_facilities_industry_tie_ups_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_industry_tie_ups_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5631 (class 0 OID 5315911)
-- Dependencies: 430
-- Data for Name: components_facilities_libraries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_libraries (id) FROM stdin;
\.


--
-- TOC entry 5629 (class 0 OID 5315897)
-- Dependencies: 428
-- Data for Name: components_facilities_libraries_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_libraries_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5659 (class 0 OID 5316119)
-- Dependencies: 458
-- Data for Name: components_facilities_other_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_other_activities (id) FROM stdin;
\.


--
-- TOC entry 5657 (class 0 OID 5316105)
-- Dependencies: 456
-- Data for Name: components_facilities_other_activities_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_other_activities_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5651 (class 0 OID 5316070)
-- Dependencies: 450
-- Data for Name: components_facilities_women_cells; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_women_cells (id) FROM stdin;
\.


--
-- TOC entry 5649 (class 0 OID 5316056)
-- Dependencies: 448
-- Data for Name: components_facilities_women_cells_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facilities_women_cells_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5535 (class 0 OID 5314908)
-- Dependencies: 334
-- Data for Name: components_home_homes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_homes (id, iti_name, iti_url, mis_code, phone_number, iti_email) FROM stdin;
19	Govt. ITI Chackai	iti-	1234	0471-2522068	itichackai@gmail.com
1	Govt. ITI Chackai	iti-	1234	0471-2522068	itichackai@gmail.com
\.


--
-- TOC entry 5537 (class 0 OID 5314978)
-- Dependencies: 336
-- Data for Name: components_home_homes_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_home_homes_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
6	1	1	shared.mission	Mission	10
7	1	1	shared.vision	Vision	11
5	1	2	shared.iti-description	Description	12
37	1	1	shared.event	Events	13
38	1	1	shared.map	Map	14
64	1	1	shared.address	Address	9
1	1	3	shared.news	News	2
2	1	4	shared.news	News	6
20	1	3	shared.trades	Trades	3
21	1	4	shared.trades	Trades	4
36	1	1	shared.gallery	Gallery	1
39	1	1	shared.useful-links	Useful_Links	1
62	1	3	shared.useful-links	Useful_Links	2
63	1	4	shared.useful-links	Useful_Links	3
373	19	17	shared.iti-description	Description	\N
374	19	16	shared.mission	Mission	\N
375	19	16	shared.vision	Vision	\N
376	19	35	shared.news	News	1
377	19	36	shared.news	News	2
378	19	31	shared.trades	Trades	1
379	19	32	shared.trades	Trades	2
380	19	14	shared.gallery	Gallery	1
381	19	14	shared.event	Events	\N
382	19	14	shared.map	Map	\N
383	19	38	shared.useful-links	Useful_Links	1
384	19	39	shared.useful-links	Useful_Links	2
385	19	40	shared.useful-links	Useful_Links	3
386	19	13	shared.address	Address	\N
\.


--
-- TOC entry 5717 (class 0 OID 5316493)
-- Dependencies: 516
-- Data for Name: components_institute_awards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_awards (id) FROM stdin;
\.


--
-- TOC entry 5715 (class 0 OID 5316479)
-- Dependencies: 514
-- Data for Name: components_institute_awards_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_awards_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5723 (class 0 OID 5316530)
-- Dependencies: 522
-- Data for Name: components_institute_certifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_certifications (id) FROM stdin;
\.


--
-- TOC entry 5721 (class 0 OID 5316516)
-- Dependencies: 520
-- Data for Name: components_institute_certifications_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_certifications_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5743 (class 0 OID 5316663)
-- Dependencies: 542
-- Data for Name: components_institute_gradings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_gradings (id) FROM stdin;
\.


--
-- TOC entry 5741 (class 0 OID 5316649)
-- Dependencies: 540
-- Data for Name: components_institute_gradings_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_gradings_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5551 (class 0 OID 5315214)
-- Dependencies: 350
-- Data for Name: components_institute_imcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_imcs (id) FROM stdin;
\.


--
-- TOC entry 5739 (class 0 OID 5316628)
-- Dependencies: 538
-- Data for Name: components_institute_imcs_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_imcs_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5729 (class 0 OID 5316567)
-- Dependencies: 528
-- Data for Name: components_institute_infrastructures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_infrastructures (id) FROM stdin;
\.


--
-- TOC entry 5727 (class 0 OID 5316553)
-- Dependencies: 526
-- Data for Name: components_institute_infrastructures_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_infrastructures_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5545 (class 0 OID 5315126)
-- Dependencies: 344
-- Data for Name: components_institute_institutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_institutes (id) FROM stdin;
\.


--
-- TOC entry 5759 (class 0 OID 5316792)
-- Dependencies: 558
-- Data for Name: components_institute_institutes_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_institutes_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5735 (class 0 OID 5316605)
-- Dependencies: 534
-- Data for Name: components_institute_ptas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_ptas (id) FROM stdin;
\.


--
-- TOC entry 5733 (class 0 OID 5316591)
-- Dependencies: 532
-- Data for Name: components_institute_ptas_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_institute_ptas_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5595 (class 0 OID 5315687)
-- Dependencies: 394
-- Data for Name: components_notifications_quotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_notifications_quotations (id) FROM stdin;
\.


--
-- TOC entry 5593 (class 0 OID 5315673)
-- Dependencies: 392
-- Data for Name: components_notifications_quotations_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_notifications_quotations_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5589 (class 0 OID 5315624)
-- Dependencies: 388
-- Data for Name: components_notifications_tenders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_notifications_tenders (id) FROM stdin;
\.


--
-- TOC entry 5587 (class 0 OID 5315610)
-- Dependencies: 386
-- Data for Name: components_notifications_tenders_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_notifications_tenders_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5611 (class 0 OID 5315797)
-- Dependencies: 410
-- Data for Name: components_placement_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_events (id) FROM stdin;
\.


--
-- TOC entry 5609 (class 0 OID 5315783)
-- Dependencies: 408
-- Data for Name: components_placement_events_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_events_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5617 (class 0 OID 5315834)
-- Dependencies: 416
-- Data for Name: components_placement_industrial_expereinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_industrial_expereinces (id) FROM stdin;
\.


--
-- TOC entry 5615 (class 0 OID 5315820)
-- Dependencies: 414
-- Data for Name: components_placement_industrial_expereinces_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_industrial_expereinces_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5605 (class 0 OID 5315756)
-- Dependencies: 404
-- Data for Name: components_placement_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_notifications (id) FROM stdin;
\.


--
-- TOC entry 5603 (class 0 OID 5315742)
-- Dependencies: 402
-- Data for Name: components_placement_notifications_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_notifications_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5621 (class 0 OID 5315862)
-- Dependencies: 420
-- Data for Name: components_placement_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_results (id) FROM stdin;
\.


--
-- TOC entry 5619 (class 0 OID 5315848)
-- Dependencies: 418
-- Data for Name: components_placement_results_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_placement_results_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5691 (class 0 OID 5316320)
-- Dependencies: 490
-- Data for Name: components_shared_a_lumni_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_a_lumni_lists (id, name, designation, mobile, batch, industry) FROM stdin;
\.


--
-- TOC entry 5673 (class 0 OID 5316208)
-- Dependencies: 472
-- Data for Name: components_shared_achievements_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_achievements_lists (id, year, heading, description) FROM stdin;
\.


--
-- TOC entry 5679 (class 0 OID 5316246)
-- Dependencies: 478
-- Data for Name: components_shared_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_activities (id, year, heading, description) FROM stdin;
\.


--
-- TOC entry 5533 (class 0 OID 5314880)
-- Dependencies: 332
-- Data for Name: components_shared_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_addresses (id, pin) FROM stdin;
13	685581
1	685581
\.


--
-- TOC entry 5531 (class 0 OID 5314866)
-- Dependencies: 330
-- Data for Name: components_shared_addresses_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_addresses_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.location	location	\N
2	1	1	shared.district	district	\N
47	13	13	shared.location	location	\N
48	13	13	shared.district	district	\N
\.


--
-- TOC entry 5549 (class 0 OID 5315191)
-- Dependencies: 348
-- Data for Name: components_shared_announcements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_announcements (id, ml, en) FROM stdin;
\.


--
-- TOC entry 5599 (class 0 OID 5315716)
-- Dependencies: 398
-- Data for Name: components_shared_auctions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_auctions (id, reference_number, title, date, starting_bid, location, auction_status) FROM stdin;
\.


--
-- TOC entry 5597 (class 0 OID 5315702)
-- Dependencies: 396
-- Data for Name: components_shared_auctions_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_auctions_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5713 (class 0 OID 5316472)
-- Dependencies: 512
-- Data for Name: components_shared_awards_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_awards_lists (id, heading, year) FROM stdin;
\.


--
-- TOC entry 5641 (class 0 OID 5316000)
-- Dependencies: 440
-- Data for Name: components_shared_bullet_points; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_bullet_points (id, points) FROM stdin;
\.


--
-- TOC entry 5719 (class 0 OID 5316507)
-- Dependencies: 518
-- Data for Name: components_shared_certfication_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_certfication_lists (id, certfications) FROM stdin;
\.


--
-- TOC entry 5661 (class 0 OID 5316135)
-- Dependencies: 460
-- Data for Name: components_shared_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_contacts (id, women_cell_office, email, helpline_number) FROM stdin;
\.


--
-- TOC entry 5579 (class 0 OID 5315544)
-- Dependencies: 378
-- Data for Name: components_shared_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_data (id, category, date) FROM stdin;
\.


--
-- TOC entry 5565 (class 0 OID 5315378)
-- Dependencies: 364
-- Data for Name: components_shared_descriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_descriptions (id, ml, en) FROM stdin;
\.


--
-- TOC entry 5529 (class 0 OID 5314857)
-- Dependencies: 328
-- Data for Name: components_shared_districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_districts (id, ml, en) FROM stdin;
13	തിരുവനന്തപുരം	Thiruvananthapuram
1	തിരുവനന്തപുരം	Thiruvananthapuram
\.


--
-- TOC entry 5547 (class 0 OID 5315159)
-- Dependencies: 346
-- Data for Name: components_shared_educations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_educations (id) FROM stdin;
\.


--
-- TOC entry 5521 (class 0 OID 5314811)
-- Dependencies: 320
-- Data for Name: components_shared_event_contents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_event_contents (id, ml, en, youtube_link) FROM stdin;
14	എൽ. ഡി. കോളേജ് ഓഫ് എഞ്ചിനീയറിംഗ് - ഡോക്യുമെന്ററി	L. D. College of Engineering - Documentary	dQw4w9WgXcQ
1	എൽ. ഡി. കോളേജ് ഓഫ് എഞ്ചിനീയറിംഗ് - ഡോക്യുമെന്ററി	L. D. College of Engineering - Documentary	dQw4w9WgXcQ
\.


--
-- TOC entry 5519 (class 0 OID 5314804)
-- Dependencies: 318
-- Data for Name: components_shared_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_events (id) FROM stdin;
14
1
\.


--
-- TOC entry 5517 (class 0 OID 5314790)
-- Dependencies: 316
-- Data for Name: components_shared_events_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_events_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
26	14	14	shared.event-content	event_content	1
1	1	1	shared.event-content	event_content	1
\.


--
-- TOC entry 5567 (class 0 OID 5315434)
-- Dependencies: 366
-- Data for Name: components_shared_form_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_form_data (id) FROM stdin;
\.


--
-- TOC entry 5513 (class 0 OID 5314766)
-- Dependencies: 312
-- Data for Name: components_shared_galleries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_galleries (id) FROM stdin;
14
1
\.


--
-- TOC entry 5511 (class 0 OID 5314752)
-- Dependencies: 310
-- Data for Name: components_shared_galleries_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_galleries_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.gallery-list	gallery_content	1
2	1	2	shared.gallery-list	gallery_content	2
3	1	3	shared.gallery-list	gallery_content	3
76	14	40	shared.gallery-list	gallery_content	1
77	14	41	shared.gallery-list	gallery_content	2
78	14	42	shared.gallery-list	gallery_content	3
\.


--
-- TOC entry 5515 (class 0 OID 5314773)
-- Dependencies: 314
-- Data for Name: components_shared_gallery_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_gallery_lists (id, ml, en) FROM stdin;
40	വിവിധ ആർ‌സിസി ഘടകങ്ങളിൽ വിശദാംശങ്ങളുടെ പ്രാധാന്യം" എന്ന വിഷയത്തിൽ 28.2.2025 ന് വിദഗ്ദ്ധ പ്രഭാഷണം	Expert talk on "Importance of detailing in various RCC elements" on 28.2.2025
41	വിവിധ ആർ‌സിസി ഘടകങ്ങളിൽ വിശദാംശങ്ങളുടെ പ്രാധാന്യം" എന്ന വിഷയത്തിൽ 28.2.2024 ന് വിദഗ്ദ്ധ പ്രഭാഷണം	Expert talk on "Importance of detailing in various RCC elements" on 28.2.2024
42	\N	\N
1	വിവിധ ആർ‌സിസി ഘടകങ്ങളിൽ വിശദാംശങ്ങളുടെ പ്രാധാന്യം" എന്ന വിഷയത്തിൽ 28.2.2025 ന് വിദഗ്ദ്ധ പ്രഭാഷണം	Expert talk on "Importance of detailing in various RCC elements" on 28.2.2025
2	വിവിധ ആർ‌സിസി ഘടകങ്ങളിൽ വിശദാംശങ്ങളുടെ പ്രാധാന്യം" എന്ന വിഷയത്തിൽ 28.2.2024 ന് വിദഗ്ദ്ധ പ്രഭാഷണം	Expert talk on "Importance of detailing in various RCC elements" on 28.2.2024
3	\N	\N
\.


--
-- TOC entry 5633 (class 0 OID 5315944)
-- Dependencies: 432
-- Data for Name: components_shared_hostels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_hostels (id) FROM stdin;
\.


--
-- TOC entry 5639 (class 0 OID 5315979)
-- Dependencies: 438
-- Data for Name: components_shared_hostels_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_hostels_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5737 (class 0 OID 5316619)
-- Dependencies: 536
-- Data for Name: components_shared_imc_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_imc_lists (id, name, designation) FROM stdin;
\.


--
-- TOC entry 5613 (class 0 OID 5315811)
-- Dependencies: 412
-- Data for Name: components_shared_industrial_experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_industrial_experiences (id, name, designation, company_name, experience) FROM stdin;
\.


--
-- TOC entry 5647 (class 0 OID 5316045)
-- Dependencies: 446
-- Data for Name: components_shared_industry_tie_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_industry_tie_ups (id, name, expertise, description, programs) FROM stdin;
\.


--
-- TOC entry 5725 (class 0 OID 5316544)
-- Dependencies: 524
-- Data for Name: components_shared_infrastrture_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_infrastrture_lists (id, heading, description) FROM stdin;
\.


--
-- TOC entry 5489 (class 0 OID 5314619)
-- Dependencies: 288
-- Data for Name: components_shared_iti_descriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_iti_descriptions (id, ml, en) FROM stdin;
1	\N	\N
17	ഒഴുക്ക് ഉറപ്പാക്കുന്നതിനായി തൊഴിൽ പരിശീലനം നൽകുന്നതിനായി വ്യാവസായിക പരിശീലന വകുപ്പിന് കീഴിൽ 1948 മാർച്ചിൽ ഗവൺമെന്റ് ഇൻഡസ്ട്രിയൽ ട്രെയിനിംഗ് ഇൻസ്റ്റിറ്റ്യൂട്ട് സ്ഥാപിതമായി. തിരുവനന്തപുരം ജില്ലയിലെ തിരുവനന്തപുരം പട്ടണത്തിലാണ് ഗവൺമെന്റ് ഐടിഐ ചാക്ക സ്ഥിതി ചെയ്യുന്നത്. ഒരു ഫസ്റ്റ് ഗ്രേഡ് സ്ഥാപനമായിട്ടാണ് ഈ സ്ഥാപനം ആരംഭിച്ചത്. നിലവിൽ, ഞങ്ങളുടെ സ്ഥാപനം എഞ്ചിനീയറിംഗ്, നോൺ-എഞ്ചിനീയറിംഗ് ട്രേഡുകൾ ഉൾപ്പെടെ 25 ട്രേഡുകളിൽ പരിശീലനം നൽകുന്നു, അതിൽ ഹ്രസ്വകാല കോഴ്സുകളും ഉൾപ്പെടുന്നു. വ്യവസായത്തിനായുള്ള വിവിധ ട്രേഡുകളിലെ വിദഗ്ധ തൊഴിലാളികളുടെ സ്ഥിരമായ ഒഴുക്ക് ഉറപ്പാക്കുന്നതിനായി തൊഴിൽ പരിശീലനം നൽകുന്നതിനായി ഉദ്ദേശിച്ചുള്ള വ്യാവസായിക പരിശീലന വകുപ്പിന് കീഴിൽ 1948 മാർച്ചിൽ ഗവൺമെന്റ് ഇൻഡസ്ട്രിയൽ ട്രെയിനിംഗ് ഇൻസ്റ്റിറ്റ്യൂട്ട് സ്ഥാപിതമായി. തിരുവനന്തപുരം ജില്ലയിലെ തിരുവനന്തപുരം പട്ടണത്തിലാണ് ഗവൺമെന്റ് ഐടിഐ ചാക്കൈ സ്ഥിതി ചെയ്യുന്നത്. ഈ സ്ഥാപനം ഒരു ഫസ്റ്റ് ഗ്രേഡ് സ്ഥാപനമായിട്ടാണ് ആരംഭിച്ചത്. നിലവിൽ, ഞങ്ങളുടെ സ്ഥാപനം എഞ്ചിനീയറിംഗ്, നോൺ-എഞ്ചിനീയറിംഗ് ട്രേഡുകൾ ഉൾപ്പെടെ 25 ട്രേഡുകളിൽ പരിശീലനം നൽകുന്നു, കൂടാതെ ഹ്രസ്വകാല കോഴ്സുകളും നൽകുന്നു.	Government Industrial Training Institute was established in March 1948 under the Department of Industrial Training, intended to impart vocational training to ensure a steady flow of skilled workers in different trades for the industry. The Govt ITI Chackai is located in Thiruvananthapuram town, in the Thiruvananthapuram District. This institute was started as a first-grade institute. Presently, our institute offers training in 25 trades, which include Engineering and Non-Engineering trades, along with short-term courses. Government Industrial Training Institute was established in March 1948 under the Department of Industrial Training, intended to impart vocational training to ensure a steady flow of skilled workers in different trades for the industry. The Govt ITI Chackai is located in Thiruvananthapuram town, in the Thiruvananthapuram District. This institute was started as a first-grade institute. Presently, our institute offers training in 25 trades, which include Engineering and Non-Engineering trades, along with short-term courses.
2	ഒഴുക്ക് ഉറപ്പാക്കുന്നതിനായി തൊഴിൽ പരിശീലനം നൽകുന്നതിനായി വ്യാവസായിക പരിശീലന വകുപ്പിന് കീഴിൽ 1948 മാർച്ചിൽ ഗവൺമെന്റ് ഇൻഡസ്ട്രിയൽ ട്രെയിനിംഗ് ഇൻസ്റ്റിറ്റ്യൂട്ട് സ്ഥാപിതമായി. തിരുവനന്തപുരം ജില്ലയിലെ തിരുവനന്തപുരം പട്ടണത്തിലാണ് ഗവൺമെന്റ് ഐടിഐ ചാക്ക സ്ഥിതി ചെയ്യുന്നത്. ഒരു ഫസ്റ്റ് ഗ്രേഡ് സ്ഥാപനമായിട്ടാണ് ഈ സ്ഥാപനം ആരംഭിച്ചത്. നിലവിൽ, ഞങ്ങളുടെ സ്ഥാപനം എഞ്ചിനീയറിംഗ്, നോൺ-എഞ്ചിനീയറിംഗ് ട്രേഡുകൾ ഉൾപ്പെടെ 25 ട്രേഡുകളിൽ പരിശീലനം നൽകുന്നു, അതിൽ ഹ്രസ്വകാല കോഴ്സുകളും ഉൾപ്പെടുന്നു. വ്യവസായത്തിനായുള്ള വിവിധ ട്രേഡുകളിലെ വിദഗ്ധ തൊഴിലാളികളുടെ സ്ഥിരമായ ഒഴുക്ക് ഉറപ്പാക്കുന്നതിനായി തൊഴിൽ പരിശീലനം നൽകുന്നതിനായി ഉദ്ദേശിച്ചുള്ള വ്യാവസായിക പരിശീലന വകുപ്പിന് കീഴിൽ 1948 മാർച്ചിൽ ഗവൺമെന്റ് ഇൻഡസ്ട്രിയൽ ട്രെയിനിംഗ് ഇൻസ്റ്റിറ്റ്യൂട്ട് സ്ഥാപിതമായി. തിരുവനന്തപുരം ജില്ലയിലെ തിരുവനന്തപുരം പട്ടണത്തിലാണ് ഗവൺമെന്റ് ഐടിഐ ചാക്കൈ സ്ഥിതി ചെയ്യുന്നത്. ഈ സ്ഥാപനം ഒരു ഫസ്റ്റ് ഗ്രേഡ് സ്ഥാപനമായിട്ടാണ് ആരംഭിച്ചത്. നിലവിൽ, ഞങ്ങളുടെ സ്ഥാപനം എഞ്ചിനീയറിംഗ്, നോൺ-എഞ്ചിനീയറിംഗ് ട്രേഡുകൾ ഉൾപ്പെടെ 25 ട്രേഡുകളിൽ പരിശീലനം നൽകുന്നു, കൂടാതെ ഹ്രസ്വകാല കോഴ്സുകളും നൽകുന്നു.	Government Industrial Training Institute was established in March 1948 under the Department of Industrial Training, intended to impart vocational training to ensure a steady flow of skilled workers in different trades for the industry. The Govt ITI Chackai is located in Thiruvananthapuram town, in the Thiruvananthapuram District. This institute was started as a first-grade institute. Presently, our institute offers training in 25 trades, which include Engineering and Non-Engineering trades, along with short-term courses. Government Industrial Training Institute was established in March 1948 under the Department of Industrial Training, intended to impart vocational training to ensure a steady flow of skilled workers in different trades for the industry. The Govt ITI Chackai is located in Thiruvananthapuram town, in the Thiruvananthapuram District. This institute was started as a first-grade institute. Presently, our institute offers training in 25 trades, which include Engineering and Non-Engineering trades, along with short-term courses.
\.


--
-- TOC entry 5627 (class 0 OID 5315890)
-- Dependencies: 426
-- Data for Name: components_shared_libraries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_libraries (id, book_name, trade_name, category, stock, year) FROM stdin;
\.


--
-- TOC entry 5527 (class 0 OID 5314848)
-- Dependencies: 326
-- Data for Name: components_shared_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_locations (id, ml, en) FROM stdin;
13	ചാക്ക	Chackai
1	ചാക്ക	Chackai
\.


--
-- TOC entry 5523 (class 0 OID 5314830)
-- Dependencies: 322
-- Data for Name: components_shared_maps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_maps (id, latitude, longitude) FROM stdin;
14	8.52	76.94
1	8.52	76.94
\.


--
-- TOC entry 5553 (class 0 OID 5315234)
-- Dependencies: 352
-- Data for Name: components_shared_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_members (id, name, designation) FROM stdin;
\.


--
-- TOC entry 5491 (class 0 OID 5314635)
-- Dependencies: 290
-- Data for Name: components_shared_missions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_missions (id, ml, en) FROM stdin;
16	വ്യവസായങ്ങളുടെ ആവശ്യങ്ങൾ നിറവേറ്റുന്നതിനും അധ്യാപന-പഠന പ്രക്രിയയിൽ മികവ് കൈവരിക്കുന്നതിനും താങ്ങാനാവുന്നതും ഗുണനിലവാരമുള്ളതുമായ വിദ്യാഭ്യാസം നൽകുന്നതിന്. നൂതനാശയങ്ങളെ നയിക്കുകയും ഗവേഷണ-അധിഷ്ഠിത പണ്ഡിതന്മാരെയും മികച്ച പ്രൊഫഷണലുകളെയും പരിപോഷിപ്പിക്കുകയും ചെയ്യുന്ന ഒരു അനുകൂലമായ ഗവേഷണ അന്തരീക്ഷം സൃഷ്ടിക്കുന്നതിന്. വിദ്യാഭ്യാസവും മൾട്ടി ഡിസിപ്ലിനറി ഗവേഷണവും ശക്തിപ്പെടുത്തുന്നതിന് മറ്റ് അക്കാദമിക് & റിസർച്ച് ഇൻസ്റ്റിറ്റ്യൂട്ടുകളുമായും വും	To impart affordable and quality education in order to meet the needs of industries and achieve excellence in teaching-learning process. To create a conducive research ambience that drives innovation and nurtures research-oriented scholars and outstanding professionals.
1	വ്യവസായങ്ങളുടെ ആവശ്യങ്ങൾ നിറവേറ്റുന്നതിനും അധ്യാപന-പഠന പ്രക്രിയയിൽ മികവ് കൈവരിക്കുന്നതിനും താങ്ങാനാവുന്നതും ഗുണനിലവാരമുള്ളതുമായ വിദ്യാഭ്യാസം നൽകുന്നതിന്. നൂതനാശയങ്ങളെ നയിക്കുകയും ഗവേഷണ-അധിഷ്ഠിത പണ്ഡിതന്മാരെയും മികച്ച പ്രൊഫഷണലുകളെയും പരിപോഷിപ്പിക്കുകയും ചെയ്യുന്ന ഒരു അനുകൂലമായ ഗവേഷണ അന്തരീക്ഷം സൃഷ്ടിക്കുന്നതിന്. വിദ്യാഭ്യാസവും മൾട്ടി ഡിസിപ്ലിനറി ഗവേഷണവും ശക്തിപ്പെടുത്തുന്നതിന് മറ്റ് അക്കാദമിക് & റിസർച്ച് ഇൻസ്റ്റിറ്റ്യൂട്ടുകളുമായും വും	To impart affordable and quality education in order to meet the needs of industries and achieve excellence in teaching-learning process. To create a conducive research ambience that drives innovation and nurtures research-oriented scholars and outstanding professionals.
\.


--
-- TOC entry 5497 (class 0 OID 5314671)
-- Dependencies: 296
-- Data for Name: components_shared_news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_news (id) FROM stdin;
1
2
35
36
3
4
\.


--
-- TOC entry 5495 (class 0 OID 5314657)
-- Dependencies: 294
-- Data for Name: components_shared_news_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_news_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.news-heading	news_heading	\N
2	2	2	shared.news-heading	news_heading	\N
3	1	1	shared.news-content	news_content	\N
4	2	2	shared.news-content	news_content	\N
13	3	3	shared.news-heading	news_heading	\N
14	4	4	shared.news-heading	news_heading	\N
15	3	3	shared.news-content	news_content	\N
16	4	4	shared.news-content	news_content	\N
137	35	35	shared.news-heading	news_heading	\N
138	36	36	shared.news-heading	news_heading	\N
139	35	35	shared.news-content	news_content	\N
140	36	36	shared.news-content	news_content	\N
\.


--
-- TOC entry 5501 (class 0 OID 5314694)
-- Dependencies: 300
-- Data for Name: components_shared_news_contents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_news_contents (id, ml, en) FROM stdin;
1	അടുത്ത മാസം ആരംഭിക്കുന്ന അഡ്വാൻസ്ഡ് CNC പ്രോഗ്രാമിംഗ് കോഴ്സ് - അപേക്ഷകൾ സ്വീകരിക്കുന്നു!	Advanced CNC Programming Course Starting Next Month - Applications Open!
2	100% പ്ലേസ്മെന്റ് ഉറപ്പ്	100% Placement Guaranteed
35	അടുത്ത മാസം ആരംഭിക്കുന്ന അഡ്വാൻസ്ഡ് CNC പ്രോഗ്രാമിംഗ് കോഴ്സ് - അപേക്ഷകൾ സ്വീകരിക്കുന്നു!	Advanced CNC Programming Course Starting Next Month - Applications Open!
36	ഇൻഡസ്ട്രിയൽ ഇലക്ട്രോണിക്സിനായുള്ള പുതിയ ബാച്ച് ആരംഭിക്കുന്നു - പരിമിതമായ സീറ്റുകൾ ലഭ്യമാണ്	New Batch Starting for Industrial Electronics - Limited Seats Available
3	അടുത്ത മാസം ആരംഭിക്കുന്ന അഡ്വാൻസ്ഡ് CNC പ്രോഗ്രാമിംഗ് കോഴ്സ് - അപേക്ഷകൾ സ്വീകരിക്കുന്നു!	Advanced CNC Programming Course Starting Next Month - Applications Open!
4	ഇൻഡസ്ട്രിയൽ ഇലക്ട്രോണിക്സിനായുള്ള പുതിയ ബാച്ച് ആരംഭിക്കുന്നു - പരിമിതമായ സീറ്റുകൾ ലഭ്യമാണ്	New Batch Starting for Industrial Electronics - Limited Seats Available
\.


--
-- TOC entry 5499 (class 0 OID 5314678)
-- Dependencies: 298
-- Data for Name: components_shared_news_headings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_news_headings (id, ml, en) FROM stdin;
1	പുതിയ കോഴ്സ്	New Course
2	പ്ലേസ്മെന്റ്	Placement
35	പുതിയ കോഴ്സ്	New Course
36	പ്രവേശനം	Admission
3	പുതിയ കോഴ്സ്	New Course
4	പ്രവേശനം	Admission
\.


--
-- TOC entry 5585 (class 0 OID 5315601)
-- Dependencies: 384
-- Data for Name: components_shared_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_notifications (id, reference_number, date, department, title) FROM stdin;
\.


--
-- TOC entry 5685 (class 0 OID 5316283)
-- Dependencies: 484
-- Data for Name: components_shared_nss_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_nss_activities (id, heading, description) FROM stdin;
\.


--
-- TOC entry 5655 (class 0 OID 5316096)
-- Dependencies: 454
-- Data for Name: components_shared_other_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_other_activities (id, name, description, coordinator, mobile) FROM stdin;
\.


--
-- TOC entry 5625 (class 0 OID 5315876)
-- Dependencies: 424
-- Data for Name: components_shared_placed_companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_placed_companies (id, name) FROM stdin;
\.


--
-- TOC entry 5601 (class 0 OID 5315735)
-- Dependencies: 400
-- Data for Name: components_shared_placement_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_placement_notifications (id, company_name, description, eligibility, venue, "time") FROM stdin;
\.


--
-- TOC entry 5623 (class 0 OID 5315869)
-- Dependencies: 422
-- Data for Name: components_shared_placement_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_placement_results (id, department, total_students, highest_package, avarage_package, year, placed) FROM stdin;
\.


--
-- TOC entry 5607 (class 0 OID 5315774)
-- Dependencies: 406
-- Data for Name: components_shared_plcement_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_plcement_events (id, heading, date, description, venue) FROM stdin;
\.


--
-- TOC entry 5543 (class 0 OID 5315082)
-- Dependencies: 342
-- Data for Name: components_shared_principles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_principles (id, active, message, name, email, phone, office_phone) FROM stdin;
\.


--
-- TOC entry 5745 (class 0 OID 5316677)
-- Dependencies: 544
-- Data for Name: components_shared_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_programs (id, trade, no_of_units, seating_capacity_per_unit, total_seating_capacity, affiliation_date) FROM stdin;
\.


--
-- TOC entry 5731 (class 0 OID 5316582)
-- Dependencies: 530
-- Data for Name: components_shared_pta_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_pta_lists (id, name, designation, mobile) FROM stdin;
\.


--
-- TOC entry 5591 (class 0 OID 5315657)
-- Dependencies: 390
-- Data for Name: components_shared_quotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_quotations (id, reference_number, title, department, date) FROM stdin;
\.


--
-- TOC entry 5573 (class 0 OID 5315490)
-- Dependencies: 372
-- Data for Name: components_shared_ranklists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_ranklists (id, date) FROM stdin;
\.


--
-- TOC entry 5563 (class 0 OID 5315358)
-- Dependencies: 362
-- Data for Name: components_shared_table_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_table_data (id, description) FROM stdin;
3	New Course
1	Pdf Data
4	Pdf Data
5	New Course
\.


--
-- TOC entry 5555 (class 0 OID 5315272)
-- Dependencies: 354
-- Data for Name: components_shared_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_tables (id) FROM stdin;
1
4
\.


--
-- TOC entry 5561 (class 0 OID 5315344)
-- Dependencies: 360
-- Data for Name: components_shared_tables_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_tables_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.table-data	TableData	1
4	1	3	shared.table-data	TableData	2
5	4	4	shared.table-data	TableData	1
6	4	5	shared.table-data	TableData	2
\.


--
-- TOC entry 5509 (class 0 OID 5314735)
-- Dependencies: 308
-- Data for Name: components_shared_trade_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trade_lists (id, ml, en) FROM stdin;
4	ഇലക്ട്രീഷ്യൻ	ELECTRICIAN
5	വയർമാൻ	WIREMAN
6	ഇലക്ട്രോണിക്സ് മെക്കാനിക്	ELECTRONICS MECHANIC
7	\N	\N
1	സിവിൽ ഡ്രാഫ്റ്റ്സ്മാൻ	DRAUGHTS MAN CIVIL
2	സർവേയർ	SURVEYOR
3	ആശാരി	CARPENTER
78	യാന്ത്രിക ഡ്രാഫ്റ്റ്സ്മാൻ	 DRAUGHTS MAN MECHANICAL
79	മോട്ടോർ വാഹന മെക്കാനിക്	 MECHANIC MOTOR VEHICLE
80	 ടേണർ	 TURNER
81	സിവിൽ ഡ്രാഫ്റ്റ്സ്മാൻ	 DRAUGHTS MAN CIVIL
82	 സർവേയർ	SURVEYOR
8	യാന്ത്രിക ഡ്രാഫ്റ്റ്സ്മാൻ	 DRAUGHTS MAN MECHANICAL
9	മോട്ടോർ വാഹന മെക്കാനിക്	 MECHANIC MOTOR VEHICLE
10	 ടേണർ	 TURNER
11	സിവിൽ ഡ്രാഫ്റ്റ്സ്മാൻ	 DRAUGHTS MAN CIVIL
12	 സർവേയർ	SURVEYOR
\.


--
-- TOC entry 5507 (class 0 OID 5314726)
-- Dependencies: 306
-- Data for Name: components_shared_trade_names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trade_names (id, ml, en) FROM stdin;
2	വൈദ്യുതി എഞ്ചിനീയറിംഗ്	Electrical Engineering
1	സിവിൽ എഞ്ചിനീയറിംഗ്	Civil Engineering
3	യന്ത്രവിദ്യാ എഞ്ചിനീയറിംഗ്	Mechanical Engineering
4	സിവിൽ എഞ്ചിനീയറിംഗ്	Civil Engineering
31	യന്ത്രവിദ്യാ എഞ്ചിനീയറിംഗ്	Mechanical Engineering
32	സിവിൽ എഞ്ചിനീയറിംഗ്	Civil Engineering
\.


--
-- TOC entry 5505 (class 0 OID 5314719)
-- Dependencies: 304
-- Data for Name: components_shared_trades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trades (id) FROM stdin;
2
1
3
4
31
32
\.


--
-- TOC entry 5503 (class 0 OID 5314705)
-- Dependencies: 302
-- Data for Name: components_shared_trades_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trades_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
5	2	2	shared.trade-name	trade_name	\N
6	2	4	shared.trade-list	trade_list	1
7	2	5	shared.trade-list	trade_list	2
8	2	6	shared.trade-list	trade_list	3
9	2	7	shared.trade-list	trade_list	4
14	3	3	shared.trade-name	trade_name	4
1	1	1	shared.trade-name	trade_name	4
2	1	1	shared.trade-list	trade_list	1
3	1	2	shared.trade-list	trade_list	2
4	1	3	shared.trade-list	trade_list	3
15	4	4	shared.trade-name	trade_name	3
16	3	8	shared.trade-list	trade_list	1
17	3	9	shared.trade-list	trade_list	2
18	3	10	shared.trade-list	trade_list	3
19	4	11	shared.trade-list	trade_list	1
20	4	12	shared.trade-list	trade_list	2
203	31	31	shared.trade-name	trade_name	\N
204	32	32	shared.trade-name	trade_name	\N
205	31	78	shared.trade-list	trade_list	1
206	31	79	shared.trade-list	trade_list	2
207	31	80	shared.trade-list	trade_list	3
208	32	81	shared.trade-list	trade_list	1
209	32	82	shared.trade-list	trade_list	2
\.


--
-- TOC entry 5667 (class 0 OID 5316176)
-- Dependencies: 466
-- Data for Name: components_shared_trainnees_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trainnees_lists (id, trade, no_of_units) FROM stdin;
\.


--
-- TOC entry 5697 (class 0 OID 5316359)
-- Dependencies: 496
-- Data for Name: components_shared_trainnes_council_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_trainnes_council_lists (id, name, designation, trade) FROM stdin;
\.


--
-- TOC entry 5525 (class 0 OID 5314839)
-- Dependencies: 324
-- Data for Name: components_shared_useful_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_useful_links (id, url) FROM stdin;
1	https://kerala.gov.in/
3	https://det.kerala.gov.in/
4	https://bharatskills.gov.in/
38	https://kerala.gov.in/
39	https://det.kerala.gov.in/
40	https://bharatskills.gov.in/
\.


--
-- TOC entry 5493 (class 0 OID 5314646)
-- Dependencies: 292
-- Data for Name: components_shared_visions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_visions (id, ml, en) FROM stdin;
16	വിദ്യാർത്ഥികളെ ഉത്തരവാദിത്തമുള്ള പൗരന്മാരായും കഴിവുള്ള പ്രൊഫഷണലുകളായും പരിവർത്തനം ചെയ്യുന്നതിലൂടെ സാങ്കേതിക വിദ്യാഭ്യാസത്തിലും ഗവേഷണത്തിലും മികവ് കൈവരിക്കുന്നതിലൂടെ രാജ്യത്തിൻ്റെ സുസ്ഥിര വികസനത്തിന് സംഭാവന ചെയ്യുക.\n\n	To contribute for sustainable development of nation through achieving excellence in technical education and research while facilitating transformation of students into responsible citizens and competent professionals.
1	വിദ്യാർത്ഥികളെ ഉത്തരവാദിത്തമുള്ള പൗരന്മാരായും കഴിവുള്ള പ്രൊഫഷണലുകളായും പരിവർത്തനം ചെയ്യുന്നതിലൂടെ സാങ്കേതിക വിദ്യാഭ്യാസത്തിലും ഗവേഷണത്തിലും മികവ് കൈവരിക്കുന്നതിലൂടെ രാജ്യത്തിൻ്റെ സുസ്ഥിര വികസനത്തിന് സംഭാവന ചെയ്യുക.\n\n	To contribute for sustainable development of nation through achieving excellence in technical education and research while facilitating transformation of students into responsible citizens and competent professionals.
\.


--
-- TOC entry 5653 (class 0 OID 5316084)
-- Dependencies: 452
-- Data for Name: components_shared_women_cells; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_women_cells (id, name, designation, trade, email, mobile) FROM stdin;
\.


--
-- TOC entry 5671 (class 0 OID 5316201)
-- Dependencies: 470
-- Data for Name: components_trainees_achievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_achievements (id) FROM stdin;
\.


--
-- TOC entry 5669 (class 0 OID 5316187)
-- Dependencies: 468
-- Data for Name: components_trainees_achievements_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_achievements_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5677 (class 0 OID 5316239)
-- Dependencies: 476
-- Data for Name: components_trainees_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_activities (id) FROM stdin;
\.


--
-- TOC entry 5675 (class 0 OID 5316225)
-- Dependencies: 474
-- Data for Name: components_trainees_activities_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_activities_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5689 (class 0 OID 5316313)
-- Dependencies: 488
-- Data for Name: components_trainees_alumni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_alumni (id) FROM stdin;
\.


--
-- TOC entry 5687 (class 0 OID 5316299)
-- Dependencies: 486
-- Data for Name: components_trainees_alumni_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_alumni_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5683 (class 0 OID 5316276)
-- Dependencies: 482
-- Data for Name: components_trainees_nsses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_nsses (id) FROM stdin;
\.


--
-- TOC entry 5681 (class 0 OID 5316262)
-- Dependencies: 480
-- Data for Name: components_trainees_nsses_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_nsses_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5701 (class 0 OID 5316389)
-- Dependencies: 500
-- Data for Name: components_trainees_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_results (id, result_link) FROM stdin;
\.


--
-- TOC entry 5699 (class 0 OID 5316375)
-- Dependencies: 498
-- Data for Name: components_trainees_results_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_results_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5695 (class 0 OID 5316352)
-- Dependencies: 494
-- Data for Name: components_trainees_trainees_councils; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_trainees_councils (id) FROM stdin;
\.


--
-- TOC entry 5693 (class 0 OID 5316338)
-- Dependencies: 492
-- Data for Name: components_trainees_trainees_councils_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_trainees_councils_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5665 (class 0 OID 5316160)
-- Dependencies: 464
-- Data for Name: components_trainees_trainees_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_trainees_lists (id) FROM stdin;
\.


--
-- TOC entry 5663 (class 0 OID 5316146)
-- Dependencies: 462
-- Data for Name: components_trainees_trainees_lists_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_trainees_trainees_lists_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5423 (class 0 OID 5313870)
-- Dependencies: 222
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	r9017jd57wn7110cxbksmgbi	chackai.jpg	Carousel	Carousel	705	305	{"small": {"ext": ".jpg", "url": "/uploads/small_chackai_5478fda385.jpg", "hash": "small_chackai_5478fda385", "mime": "image/jpeg", "name": "small_chackai.jpg", "path": null, "size": 29.19, "width": 500, "height": 216, "sizeInBytes": 29194}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_chackai_5478fda385.jpg", "hash": "thumbnail_chackai_5478fda385", "mime": "image/jpeg", "name": "thumbnail_chackai.jpg", "path": null, "size": 8.03, "width": 245, "height": 106, "sizeInBytes": 8032}}	chackai_5478fda385	.jpg	image/jpeg	57.73	/uploads/chackai_5478fda385.jpg	\N	local	\N	/	2025-04-24 11:23:52.678	2025-04-24 11:44:38.922	2025-04-24 11:23:52.679	1	1	\N
4	qclegogg6to7d71qumv233c4	chackai.jpg	\N	\N	705	305	{"small": {"ext": ".jpg", "url": "/uploads/small_chackai_da76d46865.jpg", "hash": "small_chackai_da76d46865", "mime": "image/jpeg", "name": "small_chackai.jpg", "path": null, "size": 29.19, "width": 500, "height": 216, "sizeInBytes": 29194}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_chackai_da76d46865.jpg", "hash": "thumbnail_chackai_da76d46865", "mime": "image/jpeg", "name": "thumbnail_chackai.jpg", "path": null, "size": 8.03, "width": 245, "height": 106, "sizeInBytes": 8032}}	chackai_da76d46865	.jpg	image/jpeg	57.73	/uploads/chackai_da76d46865.jpg	\N	local	\N	/	2025-04-24 11:45:15.225	2025-04-24 11:45:15.225	2025-04-24 11:45:15.225	1	1	\N
3	oscskee0ww25ebyjqynr2dan	chackai.jpg	Carousel	Carousel	705	305	{"small": {"ext": ".jpg", "url": "/uploads/small_chackai_31cdb8cca6.jpg", "hash": "small_chackai_31cdb8cca6", "mime": "image/jpeg", "name": "small_chackai.jpg", "path": null, "size": 29.19, "width": 500, "height": 216, "sizeInBytes": 29194}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_chackai_31cdb8cca6.jpg", "hash": "thumbnail_chackai_31cdb8cca6", "mime": "image/jpeg", "name": "thumbnail_chackai.jpg", "path": null, "size": 8.03, "width": 245, "height": 106, "sizeInBytes": 8032}}	chackai_31cdb8cca6	.jpg	image/jpeg	57.73	/uploads/chackai_31cdb8cca6.jpg	\N	local	\N	/	2025-04-24 11:42:22.236	2025-04-24 11:48:16.764	2025-04-24 11:42:22.236	1	1	\N
5	bpxtu0i04hsnxruw9rgonv2g	Screenshot 2025-02-25 at 11.17.37 AM.png	\N	\N	906	796	{"small": {"ext": ".png", "url": "/uploads/small_Screenshot_2025_02_25_at_11_17_37_AM_f898719743.png", "hash": "small_Screenshot_2025_02_25_at_11_17_37_AM_f898719743", "mime": "image/png", "name": "small_Screenshot 2025-02-25 at 11.17.37 AM.png", "path": null, "size": 50.45, "width": 500, "height": 439, "sizeInBytes": 50453}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_2025_02_25_at_11_17_37_AM_f898719743.png", "hash": "medium_Screenshot_2025_02_25_at_11_17_37_AM_f898719743", "mime": "image/png", "name": "medium_Screenshot 2025-02-25 at 11.17.37 AM.png", "path": null, "size": 93.66, "width": 750, "height": 659, "sizeInBytes": 93656}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_2025_02_25_at_11_17_37_AM_f898719743.png", "hash": "thumbnail_Screenshot_2025_02_25_at_11_17_37_AM_f898719743", "mime": "image/png", "name": "thumbnail_Screenshot 2025-02-25 at 11.17.37 AM.png", "path": null, "size": 11.97, "width": 178, "height": 156, "sizeInBytes": 11973}}	Screenshot_2025_02_25_at_11_17_37_AM_f898719743	.png	image/png	22.10	/uploads/Screenshot_2025_02_25_at_11_17_37_AM_f898719743.png	\N	local	\N	/	2025-04-24 11:48:51.601	2025-04-24 11:48:51.601	2025-04-24 11:48:51.601	1	1	\N
6	hselo26iwidseokdw0xfst7h	KSRTC BTC PROPOSAL .pdf	\N	\N	\N	\N	\N	KSRTC_BTC_PROPOSAL_09ad53ca3f	.pdf	application/pdf	1074.54	/uploads/KSRTC_BTC_PROPOSAL_09ad53ca3f.pdf	\N	local	\N	/	2025-04-29 11:32:03.144	2025-04-29 11:32:03.144	2025-04-29 11:32:03.144	1	1	\N
7	evapbh8yi3jwwx34ri4kcgp7	T&C_India_New_Feture.pdf	\N	\N	\N	\N	\N	T_and_C_India_New_Feture_5582ae6aae	.pdf	application/pdf	3.65	/uploads/T_and_C_India_New_Feture_5582ae6aae.pdf	\N	local	\N	/	2025-04-29 11:52:57.623	2025-04-29 11:52:57.623	2025-04-29 11:52:57.623	1	1	\N
\.


--
-- TOC entry 5465 (class 0 OID 5314124)
-- Dependencies: 264
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- TOC entry 5463 (class 0 OID 5314112)
-- Dependencies: 262
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
2	3	1	home.home	iti_images	1
3	3	14	home.home	iti_images	1
5	4	15	home.home	Images	1
6	5	1	home.images	image	1
7	4	1	home.images	image	2
8	5	2	home.images	image	1
9	4	2	home.images	image	2
10	5	1	plugin::users-permissions.user	images	1
12	4	19	home.home	Images	1
13	6	1	shared.table	pdf	1
14	6	2	shared.table	pdf	1
17	7	3	shared.table-data	pdf	1
18	6	1	shared.table-data	pdf	1
19	6	4	shared.table-data	pdf	1
20	7	5	shared.table-data	pdf	1
21	4	1	home.home	Images	1
\.


--
-- TOC entry 5427 (class 0 OID 5313904)
-- Dependencies: 226
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	wnjwhq4okzo0cu7ffj6dw80s	English (en)	en	2025-04-22 12:56:29.918	2025-04-22 12:56:29.918	2025-04-22 12:56:29.918	\N	\N	\N
\.


--
-- TOC entry 5451 (class 0 OID 5314048)
-- Dependencies: 250
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5485 (class 0 OID 5314244)
-- Dependencies: 284
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5449 (class 0 OID 5314036)
-- Dependencies: 248
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zdvpevvlhlj1wiuntghxmdoi	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	84b72f536713ba0f297a4efb62e7ff1edb0dcce39103278657f600b20fc3fc994018c4e7070f3a5938c5f06768330ef2883250cb526ff400be7a732ef34087e3	\N	\N	\N	2025-04-22 12:56:30.156	2025-04-22 12:56:30.156	2025-04-22 12:56:30.156	\N	\N	\N
2	zxnj6n4xbvszaswgx4fs72w6	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	e9e7a0874e9ccb388efe67fed7701764cde214ec2042c75368dbcdc173714db955c69c993a28520a9672e24530868de2a51ec2a4eb0d0f4a42189c5c7cff184b	\N	\N	\N	2025-04-22 12:56:30.158	2025-04-22 12:56:30.158	2025-04-22 12:56:30.158	\N	\N	\N
\.


--
-- TOC entry 5457 (class 0 OID 5314084)
-- Dependencies: 256
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
1	strapi_content_types_schema	{"api::chackai.chackai":{"kind":"singleType","collectionName":"chackais","info":{"singularName":"chackai","pluralName":"chackais","displayName":"Chackai","description":""},"options":{"draftAndPublish":true},"attributes":{"Home":{"type":"component","repeatable":false,"component":"home.home"},"Downloads":{"type":"component","repeatable":false,"component":"download.form"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::chackai.chackai","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"chackais"}}},"apiName":"chackai","globalId":"Chackai","uid":"api::chackai.chackai","modelType":"contentType","__schema__":{"collectionName":"chackais","info":{"singularName":"chackai","pluralName":"chackais","displayName":"Chackai","description":""},"options":{"draftAndPublish":true},"attributes":{"Home":{"type":"component","repeatable":false,"component":"home.home"},"Downloads":{"type":"component","repeatable":false,"component":"download.form"}},"kind":"singleType"},"modelName":"chackai","actions":{},"lifecycles":{}},"api::vatakara.vatakara":{"kind":"singleType","collectionName":"vatakaras","info":{"singularName":"vatakara","pluralName":"vatakaras","displayName":"Vatakara","description":""},"options":{"draftAndPublish":true},"attributes":{"Table":{"type":"component","repeatable":false,"component":"shared.table"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::vatakara.vatakara","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"vatakaras"}}},"apiName":"vatakara","globalId":"Vatakara","uid":"api::vatakara.vatakara","modelType":"contentType","__schema__":{"collectionName":"vatakaras","info":{"singularName":"vatakara","pluralName":"vatakaras","displayName":"Vatakara","description":""},"options":{"draftAndPublish":true},"attributes":{"Table":{"type":"component","repeatable":false,"component":"shared.table"}},"kind":"singleType"},"modelName":"vatakara","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"images":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"images":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true}},"kind":"collectionType"},"modelName":"user"},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"images":{"edit":{"label":"images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"images","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"images","size":6},{"name":"username","size":6}],[{"name":"email","size":6}],[{"name":"password","size":6}],[{"name":"confirmed","size":4}],[{"name":"blocked","size":4}],[{"name":"role","size":6}]],"list":["id","username","email","confirmed"]},"uid":"plugin::users-permissions.user"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
19	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
20	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
35	plugin_content_manager_configuration_components::shared.trades	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"trade_name":{"edit":{"label":"trade_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade_name","searchable":false,"sortable":false}},"trade_list":{"edit":{"label":"trade_list","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade_list","searchable":false,"sortable":false}}},"layouts":{"list":["id","trade_name","trade_list"],"edit":[[{"name":"trade_name","size":12}],[{"name":"trade_list","size":12}]]},"uid":"shared.trades","isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_components::shared.trade-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.trade-list","isComponent":true}	object	\N	\N
38	plugin_content_manager_configuration_components::shared.gallery-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}},"gallery_image":{"edit":{"label":"gallery_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery_image","searchable":false,"sortable":false}}},"layouts":{"list":["id","ml","en","gallery_image"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}],[{"name":"gallery_image","size":6}]]},"uid":"shared.gallery-list","isComponent":true}	object	\N	\N
37	plugin_content_manager_configuration_components::shared.gallery	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"gallery_content":{"edit":{"label":"gallery_content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery_content","searchable":false,"sortable":false}}},"layouts":{"list":["id","gallery_content"],"edit":[[{"name":"gallery_content","size":12}]]},"uid":"shared.gallery","isComponent":true}	object	\N	\N
40	plugin_content_manager_configuration_components::shared.event-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}},"youtube_link":{"edit":{"label":"youtube_link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"youtube_link","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en","youtube_link"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}],[{"name":"youtube_link","size":6}]]},"uid":"shared.event-content","isComponent":true}	object	\N	\N
41	plugin_content_manager_configuration_components::shared.map	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"latitude":{"edit":{"label":"latitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"latitude","searchable":true,"sortable":true}},"longitude":{"edit":{"label":"longitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"longitude","searchable":true,"sortable":true}}},"layouts":{"list":["id","latitude","longitude"],"edit":[[{"name":"latitude","size":4},{"name":"longitude","size":4}]]},"uid":"shared.map","isComponent":true}	object	\N	\N
44	plugin_content_manager_configuration_components::shared.location	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.location","isComponent":true}	object	\N	\N
21	plugin_upload_metrics	{"weeklySchedule":"44 56 12 * * 2","lastWeeklyUpdate":1745911604153}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
22	plugin_i18n_default_locale	"en"	string	\N	\N
23	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
24	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
25	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
31	plugin_content_manager_configuration_components::shared.news	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"news_heading":{"edit":{"label":"news_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"news_heading","searchable":false,"sortable":false}},"news_content":{"edit":{"label":"news_content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"news_content","searchable":false,"sortable":false}}},"layouts":{"list":["id","news_heading","news_content"],"edit":[[{"name":"news_heading","size":12}],[{"name":"news_content","size":12}]]},"uid":"shared.news","isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_components::shared.news-heading	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.news-heading","isComponent":true}	object	\N	\N
28	plugin_content_manager_configuration_components::shared.iti-description	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.iti-description","isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_components::shared.vision	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.vision","isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_components::shared.mission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.mission","isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_components::shared.news-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.news-content","isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_components::shared.event	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"event_content":{"edit":{"label":"event_content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"event_content","searchable":false,"sortable":false}}},"layouts":{"list":["id","event_content"],"edit":[[{"name":"event_content","size":12}]]},"uid":"shared.event","isComponent":true}	object	\N	\N
34	plugin_content_manager_configuration_components::shared.trade-name	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.trade-name","isComponent":true}	object	\N	\N
26	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
43	plugin_content_manager_configuration_components::shared.district	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ml","defaultSortBy":"ml","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.district","isComponent":true}	object	\N	\N
42	plugin_content_manager_configuration_components::shared.useful-links	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","url"],"edit":[[{"name":"url","size":6}]]},"uid":"shared.useful-links","isComponent":true}	object	\N	\N
45	plugin_content_manager_configuration_components::shared.address	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":false,"sortable":false}},"district":{"edit":{"label":"district","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"district","searchable":false,"sortable":false}},"pin":{"edit":{"label":"pin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pin","searchable":true,"sortable":true}}},"layouts":{"list":["id","location","district","pin"],"edit":[[{"name":"location","size":12}],[{"name":"district","size":12}],[{"name":"pin","size":4}]]},"uid":"shared.address","isComponent":true}	object	\N	\N
46	plugin_content_manager_configuration_components::home.home	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"iti_name","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"iti_name":{"edit":{"label":"iti_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"iti_name","searchable":true,"sortable":true}},"iti_url":{"edit":{"label":"iti_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"iti_url","searchable":true,"sortable":true}},"mis_code":{"edit":{"label":"mis_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mis_code","searchable":true,"sortable":true}},"phone_number":{"edit":{"label":"phone_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_number","searchable":true,"sortable":true}},"iti_email":{"edit":{"label":"iti_email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"iti_email","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Mission":{"edit":{"label":"Mission","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mission","searchable":false,"sortable":false}},"Vision":{"edit":{"label":"Vision","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Vision","searchable":false,"sortable":false}},"News":{"edit":{"label":"News","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"News","searchable":false,"sortable":false}},"Trades":{"edit":{"label":"Trades","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Trades","searchable":false,"sortable":false}},"Gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}},"Events":{"edit":{"label":"Events","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Events","searchable":false,"sortable":false}},"Map":{"edit":{"label":"Map","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Map","searchable":false,"sortable":false}},"Useful_Links":{"edit":{"label":"Useful_Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Useful_Links","searchable":false,"sortable":false}},"Address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":false,"sortable":false}},"Images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}}},"layouts":{"list":["id","iti_name","iti_url","mis_code"],"edit":[[{"name":"iti_name","size":6},{"name":"iti_url","size":6}],[{"name":"mis_code","size":6},{"name":"phone_number","size":6}],[{"name":"iti_email","size":6}],[{"name":"News","size":12}],[{"name":"Address","size":12}],[{"name":"Description","size":12}],[{"name":"Mission","size":12}],[{"name":"Vision","size":12}],[{"name":"Map","size":12}],[{"name":"Trades","size":12}],[{"name":"Gallery","size":12}],[{"name":"Events","size":12}],[{"name":"Useful_Links","size":12}],[{"name":"Images","size":6}]]},"uid":"home.home","isComponent":true}	object	\N	\N
60	plugin_content_manager_configuration_components::shared.table	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"TableData":{"edit":{"label":"TableData","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TableData","searchable":false,"sortable":false}}},"layouts":{"list":["id","TableData"],"edit":[[{"name":"TableData","size":12}]]},"uid":"shared.table","isComponent":true}	object	\N	\N
69	plugin_content_manager_configuration_components::download.ranklist	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"download.ranklist","isComponent":true}	object	\N	\N
79	plugin_content_manager_configuration_components::shared.plcement-events	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"venue":{"edit":{"label":"venue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"venue","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","date","description"],"edit":[[{"name":"heading","size":6},{"name":"date","size":4}],[{"name":"description","size":6},{"name":"venue","size":6}]]},"uid":"shared.plcement-events","isComponent":true}	object	\N	\N
85	plugin_content_manager_configuration_components::shared.placed-company	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"name","size":6}]]},"uid":"shared.placed-company","isComponent":true}	object	\N	\N
71	plugin_content_manager_configuration_components::download.circulars	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"download.circulars","isComponent":true}	object	\N	\N
96	plugin_content_manager_configuration_components::facilities.other-activities	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data"],"edit":[[{"name":"Data","size":12}]]},"uid":"facilities.other-activities","isComponent":true}	object	\N	\N
68	plugin_content_manager_configuration_components::shared.ranklist	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}}},"layouts":{"list":["id","Date","pdf"],"edit":[[{"name":"Date","size":4},{"name":"pdf","size":6}]]},"uid":"shared.ranklist","isComponent":true}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::vatakara.vatakara	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Table":{"edit":{"label":"Table","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Table","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","Table"],"edit":[[{"name":"Table","size":12}]]},"uid":"api::vatakara.vatakara"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::chackai.chackai	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Home":{"edit":{"label":"Home","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Home","searchable":false,"sortable":false}},"Downloads":{"edit":{"label":"Downloads","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Downloads","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","Home"],"edit":[[{"name":"Home","size":12}],[{"name":"Downloads","size":12}]]},"uid":"api::chackai.chackai"}	object	\N	\N
53	plugin_content_manager_configuration_components::institute.institute	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Principle":{"edit":{"label":"Principle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Principle","searchable":false,"sortable":false}},"VicePrinciple":{"edit":{"label":"VicePrinciple","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VicePrinciple","searchable":false,"sortable":false}}},"layouts":{"list":["id","Principle","VicePrinciple"],"edit":[[{"name":"Principle","size":12}],[{"name":"VicePrinciple","size":12}]]},"uid":"institute.institute","isComponent":true}	object	\N	\N
70	plugin_content_manager_configuration_components::shared.data	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Category","defaultSortBy":"Category","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}},"Category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Category","searchable":true,"sortable":true}},"Date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}}},"layouts":{"list":["id","pdf","Category"],"edit":[[{"name":"pdf","size":6},{"name":"Category","size":6}],[{"name":"Date","size":4}]]},"uid":"shared.data","isComponent":true}	object	\N	\N
67	plugin_content_manager_configuration_components::download.form	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"download.form","isComponent":true}	object	\N	\N
52	plugin_content_manager_configuration_components::shared.principle	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"active":{"edit":{"label":"active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"active","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"office_phone":{"edit":{"label":"office_phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"office_phone","searchable":true,"sortable":true}}},"layouts":{"list":["id","active","message","name"],"edit":[[{"name":"active","size":4},{"name":"message","size":6}],[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"phone","size":4},{"name":"office_phone","size":6}]]},"uid":"shared.principle","isComponent":true}	object	\N	\N
54	plugin_content_manager_configuration_components::shared.education	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[]},"uid":"shared.education","isComponent":true}	object	\N	\N
64	plugin_content_manager_configuration_components::shared.description	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.description","isComponent":true}	object	\N	\N
55	plugin_content_manager_configuration_components::shared.announcements	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"ml":{"edit":{"label":"ml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ml","searchable":true,"sortable":true}},"en":{"edit":{"label":"en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"en","searchable":true,"sortable":true}}},"layouts":{"list":["id","ml","en"],"edit":[[{"name":"ml","size":6},{"name":"en","size":6}]]},"uid":"shared.announcements","isComponent":true}	object	\N	\N
58	plugin_content_manager_configuration_components::shared.members	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Designation":{"edit":{"label":"Designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Designation","searchable":true,"sortable":true}},"Image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","Name","Designation","Image"],"edit":[[{"name":"Name","size":6},{"name":"Designation","size":6}],[{"name":"Image","size":6}]]},"uid":"shared.members","isComponent":true}	object	\N	\N
63	plugin_content_manager_configuration_components::shared.table-data	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"description","defaultSortBy":"description","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}}},"layouts":{"list":["id","description","pdf"],"edit":[[{"name":"description","size":6},{"name":"pdf","size":6}]]},"uid":"shared.table-data","isComponent":true}	object	\N	\N
80	plugin_content_manager_configuration_components::placement.events	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data"],"edit":[[{"name":"Data","size":12}]]},"uid":"placement.events","isComponent":true}	object	\N	\N
66	plugin_content_manager_configuration_components::shared.form-data	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}}},"layouts":{"list":["id","pdf"],"edit":[[{"name":"pdf","size":6}]]},"uid":"shared.form-data","isComponent":true}	object	\N	\N
89	plugin_content_manager_configuration_components::facilities.hostel	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rules","searchable":false,"sortable":false}},"Facilities":{"edit":{"label":"Facilities","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Facilities","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Rules","Facilities"],"edit":[[{"name":"Description","size":12}],[{"name":"Rules","size":12}],[{"name":"Facilities","size":12}]]},"uid":"facilities.hostel","isComponent":true}	object	\N	\N
73	plugin_content_manager_configuration_components::notifications.tenders	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"notifications.tenders","isComponent":true}	object	\N	\N
82	plugin_content_manager_configuration_components::placement.industrial-expereince	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data"],"edit":[[{"name":"Data","size":12}]]},"uid":"placement.industrial-expereince","isComponent":true}	object	\N	\N
84	plugin_content_manager_configuration_components::placement.results	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"company_name":{"edit":{"label":"company_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_name","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","company_name"],"edit":[[{"name":"Data","size":12}],[{"name":"company_name","size":12}]]},"uid":"placement.results","isComponent":true}	object	\N	\N
75	plugin_content_manager_configuration_components::notifications.quotation	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"notifications.quotation","isComponent":true}	object	\N	\N
104	plugin_content_manager_configuration_components::trainees.nss	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.nss","isComponent":true}	object	\N	\N
88	plugin_content_manager_configuration_components::shared.hostel	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description"],"edit":[[{"name":"Description","size":12}]]},"uid":"shared.hostel","isComponent":true}	object	\N	\N
106	plugin_content_manager_configuration_components::trainees.alumni	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Announcements":{"edit":{"label":"Announcements","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Announcements","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Announcements","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Announcements","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.alumni","isComponent":true}	object	\N	\N
119	plugin_content_manager_configuration_components::institute.infrastructure	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"institute.infrastructure","isComponent":true}	object	\N	\N
76	plugin_content_manager_configuration_components::shared.auctions	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"reference_number","defaultSortBy":"reference_number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"reference_number":{"edit":{"label":"reference_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reference_number","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"starting_bid":{"edit":{"label":"starting_bid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"starting_bid","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"auction_status":{"edit":{"label":"auction_status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"auction_status","searchable":true,"sortable":true}}},"layouts":{"list":["id","Description","reference_number","title"],"edit":[[{"name":"Description","size":12}],[{"name":"reference_number","size":6},{"name":"title","size":6}],[{"name":"date","size":4},{"name":"starting_bid","size":6}],[{"name":"location","size":6}],[{"name":"auction_status","size":6}]]},"uid":"shared.auctions","isComponent":true}	object	\N	\N
77	plugin_content_manager_configuration_components::shared.placement-notification	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"company_name","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"company_name":{"edit":{"label":"company_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"eligibility":{"edit":{"label":"eligibility","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"eligibility","searchable":true,"sortable":true}},"venue":{"edit":{"label":"venue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"venue","searchable":true,"sortable":true}},"time":{"edit":{"label":"time","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"time","searchable":true,"sortable":true}}},"layouts":{"list":["id","company_name","description","eligibility"],"edit":[[{"name":"company_name","size":6},{"name":"description","size":6}],[{"name":"eligibility","size":6},{"name":"venue","size":6}],[{"name":"time","size":4}]]},"uid":"shared.placement-notification","isComponent":true}	object	\N	\N
78	plugin_content_manager_configuration_components::placement.notification	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data"],"edit":[[{"name":"Data","size":12}]]},"uid":"placement.notification","isComponent":true}	object	\N	\N
74	plugin_content_manager_configuration_components::shared.quotation	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"reference_number","defaultSortBy":"reference_number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"reference_number":{"edit":{"label":"reference_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reference_number","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"department":{"edit":{"label":"department","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"department","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}}},"layouts":{"list":["id","reference_number","title"],"edit":[[{"name":"reference_number","size":6},{"name":"title","size":6}],[{"name":"department","size":6},{"name":"date","size":4}],[{"name":"pdf","size":6}]]},"uid":"shared.quotation","isComponent":true}	object	\N	\N
81	plugin_content_manager_configuration_components::shared.industrial-experience	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Designation":{"edit":{"label":"Designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Designation","searchable":true,"sortable":true}},"company_name":{"edit":{"label":"company_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_name","searchable":true,"sortable":true}},"experience":{"edit":{"label":"experience","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"experience","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","Designation","company_name"],"edit":[[{"name":"Name","size":6},{"name":"Designation","size":6}],[{"name":"company_name","size":6},{"name":"experience","size":6}]]},"uid":"shared.industrial-experience","isComponent":true}	object	\N	\N
83	plugin_content_manager_configuration_components::shared.placement-result	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"department","defaultSortBy":"department","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"department":{"edit":{"label":"department","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"department","searchable":true,"sortable":true}},"total_students":{"edit":{"label":"total_students","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_students","searchable":true,"sortable":true}},"highest_package":{"edit":{"label":"highest_package","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"highest_package","searchable":true,"sortable":true}},"avarage_package":{"edit":{"label":"avarage_package","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avarage_package","searchable":true,"sortable":true}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"placed":{"edit":{"label":"placed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placed","searchable":true,"sortable":true}}},"layouts":{"list":["id","department","total_students","highest_package"],"edit":[[{"name":"department","size":6},{"name":"total_students","size":4}],[{"name":"highest_package","size":4},{"name":"avarage_package","size":4},{"name":"year","size":4}],[{"name":"placed","size":4}]]},"uid":"shared.placement-result","isComponent":true}	object	\N	\N
72	plugin_content_manager_configuration_components::shared.notifications	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"reference_number","defaultSortBy":"reference_number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"reference_number":{"edit":{"label":"reference_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reference_number","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"department":{"edit":{"label":"department","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"department","searchable":true,"sortable":true}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}}},"layouts":{"list":["id","reference_number","date"],"edit":[[{"name":"reference_number","size":6},{"name":"date","size":4}],[{"name":"department","size":6},{"name":"pdf","size":6}],[{"name":"title","size":6}]]},"uid":"shared.notifications","isComponent":true}	object	\N	\N
86	plugin_content_manager_configuration_components::shared.library	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"book_name","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"book_name":{"edit":{"label":"book_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"book_name","searchable":true,"sortable":true}},"trade_name":{"edit":{"label":"trade_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade_name","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"category","searchable":true,"sortable":true}},"stock":{"edit":{"label":"stock","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stock","searchable":true,"sortable":true}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}}},"layouts":{"list":["id","book_name","trade_name","category"],"edit":[[{"name":"book_name","size":6},{"name":"trade_name","size":6}],[{"name":"category","size":6},{"name":"stock","size":6}],[{"name":"year","size":6}]]},"uid":"shared.library","isComponent":true}	object	\N	\N
87	plugin_content_manager_configuration_components::facilities.library	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Data","Description"],"edit":[[{"name":"Data","size":12}],[{"name":"Description","size":12}]]},"uid":"facilities.library","isComponent":true}	object	\N	\N
90	plugin_content_manager_configuration_components::shared.bullet-points	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"points":{"edit":{"label":"points","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"points","searchable":true,"sortable":true}}},"layouts":{"list":["id","points"],"edit":[[{"name":"points","size":6}]]},"uid":"shared.bullet-points","isComponent":true}	object	\N	\N
91	plugin_content_manager_configuration_components::facilities.industry-tie-ups	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"facilities.industry-tie-ups","isComponent":true}	object	\N	\N
92	plugin_content_manager_configuration_components::shared.industry-tie-ups	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"Expertise":{"edit":{"label":"Expertise","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Expertise","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"programs":{"edit":{"label":"programs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"programs","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","Expertise","description"],"edit":[[{"name":"name","size":6},{"name":"Expertise","size":6}],[{"name":"description","size":6},{"name":"programs","size":6}]]},"uid":"shared.industry-tie-ups","isComponent":true}	object	\N	\N
121	plugin_content_manager_configuration_components::institute.pta	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Announcements":{"edit":{"label":"Announcements","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Announcements","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Announcements","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Announcements","size":12}],[{"name":"Data","size":12}]]},"uid":"institute.pta","isComponent":true}	object	\N	\N
94	plugin_content_manager_configuration_components::shared.women-cell	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"designation":{"edit":{"label":"designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"designation","searchable":true,"sortable":true}},"trade":{"edit":{"label":"trade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"Mobile":{"edit":{"label":"Mobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mobile","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","designation","trade"],"edit":[[{"name":"name","size":6},{"name":"designation","size":6}],[{"name":"trade","size":6},{"name":"email","size":6}],[{"name":"Mobile","size":4}]]},"uid":"shared.women-cell","isComponent":true}	object	\N	\N
93	plugin_content_manager_configuration_components::facilities.women-cell	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Objectives":{"edit":{"label":"Objectives","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Objectives","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}},"contact":{"edit":{"label":"contact","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contact","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Objectives","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Objectives","size":12}],[{"name":"Data","size":12}],[{"name":"contact","size":12}]]},"uid":"facilities.women-cell","isComponent":true}	object	\N	\N
117	plugin_content_manager_configuration_components::institute.certifications	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"institute.certifications","isComponent":true}	object	\N	\N
118	plugin_content_manager_configuration_components::shared.infrastrture-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","heading","description"],"edit":[[{"name":"image","size":6},{"name":"heading","size":6}],[{"name":"description","size":6}]]},"uid":"shared.infrastrture-list","isComponent":true}	object	\N	\N
95	plugin_content_manager_configuration_components::shared.other-activities	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"coordinator":{"edit":{"label":"coordinator","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coordinator","searchable":true,"sortable":true}},"mobile":{"edit":{"label":"mobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobile","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","coordinator"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"coordinator","size":6},{"name":"mobile","size":4}]]},"uid":"shared.other-activities","isComponent":true}	object	\N	\N
97	plugin_content_manager_configuration_components::shared.contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"women_cell_office","defaultSortBy":"women_cell_office","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"women_cell_office":{"edit":{"label":"women_cell_office","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"women_cell_office","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"helpline_number":{"edit":{"label":"helpline_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"helpline_number","searchable":true,"sortable":true}}},"layouts":{"list":["id","women_cell_office","email","helpline_number"],"edit":[[{"name":"women_cell_office","size":6},{"name":"email","size":6}],[{"name":"helpline_number","size":4}]]},"uid":"shared.contact","isComponent":true}	object	\N	\N
99	plugin_content_manager_configuration_components::shared.trainnees-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"trade","defaultSortBy":"trade","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"trade":{"edit":{"label":"trade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade","searchable":true,"sortable":true}},"no_of_units":{"edit":{"label":"no_of_units","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"no_of_units","searchable":true,"sortable":true}},"pdf":{"edit":{"label":"pdf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pdf","searchable":false,"sortable":false}}},"layouts":{"list":["id","trade","no_of_units","pdf"],"edit":[[{"name":"trade","size":6},{"name":"no_of_units","size":6}],[{"name":"pdf","size":6}]]},"uid":"shared.trainnees-list","isComponent":true}	object	\N	\N
98	plugin_content_manager_configuration_components::trainees.trainees-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.trainees-list","isComponent":true}	object	\N	\N
100	plugin_content_manager_configuration_components::trainees.achievements	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.achievements","isComponent":true}	object	\N	\N
101	plugin_content_manager_configuration_components::shared.achievements-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","year","image","heading"],"edit":[[{"name":"year","size":4},{"name":"image","size":6}],[{"name":"heading","size":6},{"name":"description","size":6}]]},"uid":"shared.achievements-list","isComponent":true}	object	\N	\N
103	plugin_content_manager_configuration_components::shared.activities	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","year","image","heading"],"edit":[[{"name":"year","size":4},{"name":"image","size":6}],[{"name":"heading","size":6},{"name":"description","size":6}]]},"uid":"shared.activities","isComponent":true}	object	\N	\N
102	plugin_content_manager_configuration_components::trainees.activities	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.activities","isComponent":true}	object	\N	\N
105	plugin_content_manager_configuration_components::shared.nss-activities	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","heading","description"],"edit":[[{"name":"image","size":6},{"name":"heading","size":6}],[{"name":"description","size":6}]]},"uid":"shared.nss-activities","isComponent":true}	object	\N	\N
123	plugin_content_manager_configuration_components::institute.grading	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description"],"edit":[[{"name":"Description","size":12}]]},"uid":"institute.grading","isComponent":true}	object	\N	\N
107	plugin_content_manager_configuration_components::shared.a-lumni-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Designation":{"edit":{"label":"Designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Designation","searchable":true,"sortable":true}},"mobile":{"edit":{"label":"mobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobile","searchable":true,"sortable":true}},"batch":{"edit":{"label":"batch","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"batch","searchable":true,"sortable":true}},"industry":{"edit":{"label":"industry","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"industry","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","Designation","mobile"],"edit":[[{"name":"Name","size":6},{"name":"Designation","size":6}],[{"name":"mobile","size":4},{"name":"batch","size":6}],[{"name":"industry","size":6}]]},"uid":"shared.a-lumni-list","isComponent":true}	object	\N	\N
108	plugin_content_manager_configuration_components::trainees.trainees-council	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Announcements":{"edit":{"label":"Announcements","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Announcements","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Announcements","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Announcements","size":12}],[{"name":"Data","size":12}]]},"uid":"trainees.trainees-council","isComponent":true}	object	\N	\N
109	plugin_content_manager_configuration_components::shared.trainnes-council-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Designation":{"edit":{"label":"Designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Designation","searchable":true,"sortable":true}},"trade":{"edit":{"label":"trade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","Designation","trade"],"edit":[[{"name":"Name","size":6},{"name":"Designation","size":6}],[{"name":"trade","size":6}]]},"uid":"shared.trainnes-council-list","isComponent":true}	object	\N	\N
110	plugin_content_manager_configuration_components::trainees.results	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"result_link","defaultSortBy":"result_link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"result_link":{"edit":{"label":"result_link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"result_link","searchable":true,"sortable":true}}},"layouts":{"list":["id","Description","result_link"],"edit":[[{"name":"Description","size":12}],[{"name":"result_link","size":6}]]},"uid":"trainees.results","isComponent":true}	object	\N	\N
112	plugin_content_manager_configuration_components::admission.user-manual	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"SCVT":{"edit":{"label":"SCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SCVT","searchable":false,"sortable":false}},"NCVT":{"edit":{"label":"NCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NCVT","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","heading","SCVT"],"edit":[[{"name":"Description","size":12}],[{"name":"heading","size":6},{"name":"SCVT","size":6}],[{"name":"NCVT","size":6}]]},"uid":"admission.user-manual","isComponent":true}	object	\N	\N
120	plugin_content_manager_configuration_components::shared.pta-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"designation":{"edit":{"label":"designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"designation","searchable":true,"sortable":true}},"mobile":{"edit":{"label":"mobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobile","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","designation","mobile"],"edit":[[{"name":"name","size":6},{"name":"designation","size":6}],[{"name":"mobile","size":4}]]},"uid":"shared.pta-list","isComponent":true}	object	\N	\N
122	plugin_content_manager_configuration_components::shared.imc-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"designation":{"edit":{"label":"designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"designation","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","image","designation"],"edit":[[{"name":"name","size":6},{"name":"image","size":6}],[{"name":"designation","size":6}]]},"uid":"shared.imc-list","isComponent":true}	object	\N	\N
111	plugin_content_manager_configuration_components::admission.prospectus	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"SCVT":{"edit":{"label":"SCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SCVT","searchable":false,"sortable":false}},"NCVT":{"edit":{"label":"NCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NCVT","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","heading","SCVT"],"edit":[[{"name":"Description","size":12}],[{"name":"heading","size":6},{"name":"SCVT","size":6}],[{"name":"NCVT","size":6}]]},"uid":"admission.prospectus","isComponent":true}	object	\N	\N
113	plugin_content_manager_configuration_components::admission.admission-link	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","link"],"edit":[[{"name":"link","size":6}]]},"uid":"admission.admission-link","isComponent":true}	object	\N	\N
114	plugin_content_manager_configuration_components::shared.awards-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","year","image"],"edit":[[{"name":"heading","size":6},{"name":"year","size":4}],[{"name":"image","size":6}]]},"uid":"shared.awards-list","isComponent":true}	object	\N	\N
115	plugin_content_manager_configuration_components::institute.awards	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Data","size":12}]]},"uid":"institute.awards","isComponent":true}	object	\N	\N
116	plugin_content_manager_configuration_components::shared.certfication-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"certfications":{"edit":{"label":"certfications","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"certfications","searchable":true,"sortable":true}}},"layouts":{"list":["id","certfications"],"edit":[[{"name":"certfications","size":6}]]},"uid":"shared.certfication-list","isComponent":true}	object	\N	\N
57	plugin_content_manager_configuration_components::institute.imc	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Announcements":{"edit":{"label":"Announcements","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Announcements","searchable":false,"sortable":false}},"Data":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Announcements","Data"],"edit":[[{"name":"Description","size":12}],[{"name":"Announcements","size":12}],[{"name":"Data","size":12}]]},"uid":"institute.imc","isComponent":true}	object	\N	\N
125	plugin_content_manager_configuration_components::academics.cts-program	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"NCVT":{"edit":{"label":"NCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NCVT","searchable":false,"sortable":false}},"SCVT":{"edit":{"label":"SCVT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SCVT","searchable":false,"sortable":false}}},"layouts":{"list":["id","NCVT","SCVT"],"edit":[[{"name":"NCVT","size":12}],[{"name":"SCVT","size":12}]]},"uid":"academics.cts-program","isComponent":true}	object	\N	\N
124	plugin_content_manager_configuration_components::shared.program	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"trade","defaultSortBy":"trade","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"trade":{"edit":{"label":"trade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trade","searchable":true,"sortable":true}},"no_of_units":{"edit":{"label":"no_of_units","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"no_of_units","searchable":true,"sortable":true}},"seating_capacity_per_unit":{"edit":{"label":"seating_capacity_per_unit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seating_capacity_per_unit","searchable":true,"sortable":true}},"total_seating_capacity":{"edit":{"label":"total_seating_capacity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_seating_capacity","searchable":true,"sortable":true}},"affiliation_date":{"edit":{"label":"affiliation_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"affiliation_date","searchable":true,"sortable":true}}},"layouts":{"list":["id","trade","no_of_units","seating_capacity_per_unit"],"edit":[[{"name":"trade","size":6},{"name":"no_of_units","size":4}],[{"name":"seating_capacity_per_unit","size":4},{"name":"total_seating_capacity","size":4},{"name":"affiliation_date","size":4}]]},"uid":"shared.program","isComponent":true}	object	\N	\N
126	plugin_content_manager_configuration_components::academics.pmkvy	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Programs":{"edit":{"label":"Programs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Programs","searchable":false,"sortable":false}},"ProgramGuildlines":{"edit":{"label":"ProgramGuildlines","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProgramGuildlines","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Programs","ProgramGuildlines"],"edit":[[{"name":"Description","size":12}],[{"name":"Programs","size":12}],[{"name":"ProgramGuildlines","size":12}]]},"uid":"academics.pmkvy","isComponent":true}	object	\N	\N
127	plugin_content_manager_configuration_components::academics.stt	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Programs":{"edit":{"label":"Programs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Programs","searchable":false,"sortable":false}},"ProgramGuildlines":{"edit":{"label":"ProgramGuildlines","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProgramGuildlines","searchable":false,"sortable":false}}},"layouts":{"list":["id","Description","Programs","ProgramGuildlines"],"edit":[[{"name":"Description","size":12}],[{"name":"Programs","size":12}],[{"name":"ProgramGuildlines","size":12}]]},"uid":"academics.stt","isComponent":true}	object	\N	\N
\.


--
-- TOC entry 5421 (class 0 OID 5313861)
-- Dependencies: 220
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
106	{"tables":[{"name":"chackais_cmps","indexes":[{"name":"chackais_field_idx","columns":["field"]},{"name":"chackais_component_type_idx","columns":["component_type"]},{"name":"chackais_entity_fk","columns":["entity_id"]},{"name":"chackais_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"chackais_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"chackais","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"chackais","indexes":[{"name":"chackais_documents_idx","columns":["document_id","locale","published_at"]},{"name":"chackais_created_by_id_fk","columns":["created_by_id"]},{"name":"chackais_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"chackais_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"chackais_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"vatakaras_cmps","indexes":[{"name":"vatakaras_field_idx","columns":["field"]},{"name":"vatakaras_component_type_idx","columns":["component_type"]},{"name":"vatakaras_entity_fk","columns":["entity_id"]},{"name":"vatakaras_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"vatakaras_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"vatakaras","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"vatakaras","indexes":[{"name":"vatakaras_documents_idx","columns":["document_id","locale","published_at"]},{"name":"vatakaras_created_by_id_fk","columns":["created_by_id"]},{"name":"vatakaras_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"vatakaras_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"vatakaras_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_placement_results_cmps","indexes":[{"name":"components_placement_results_field_idx","columns":["field"]},{"name":"components_placement_results_component_type_idx","columns":["component_type"]},{"name":"components_placement_results_entity_fk","columns":["entity_id"]},{"name":"components_placement_results_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_placement_results_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_placement_results","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_placement_results","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_placement_notifications_cmps","indexes":[{"name":"components_placement_notifications_field_idx","columns":["field"]},{"name":"components_placement_notifications_component_type_idx","columns":["component_type"]},{"name":"components_placement_notifications_entity_fk","columns":["entity_id"]},{"name":"components_placement_notifications_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_placement_notifications_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_placement_notifications","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_placement_notifications","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_placement_industrial_expereinces_cmps","indexes":[{"name":"components_placement_industrial_expereinces_field_idx","columns":["field"]},{"name":"components_placement_industrial8e5c7_component_type_idx","columns":["component_type"]},{"name":"components_placement_industrial_expereinces_entity_fk","columns":["entity_id"]},{"name":"components_placement_industrial_expereinces_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_placement_industrial_expereinces_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_placement_industrial_expereinces","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_placement_industrial_expereinces","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_placement_events_cmps","indexes":[{"name":"components_placement_events_field_idx","columns":["field"]},{"name":"components_placement_events_component_type_idx","columns":["component_type"]},{"name":"components_placement_events_entity_fk","columns":["entity_id"]},{"name":"components_placement_events_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_placement_events_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_placement_events","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_placement_events","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_women_cells","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_visions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_useful_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_trainnes_council_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_trainnees_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"trade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"no_of_units","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_trades_cmps","indexes":[{"name":"components_shared_trades_field_idx","columns":["field"]},{"name":"components_shared_trades_component_type_idx","columns":["component_type"]},{"name":"components_shared_trades_entity_fk","columns":["entity_id"]},{"name":"components_shared_trades_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_trades_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_trades","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_trades","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_trade_names","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_trade_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_tables_cmps","indexes":[{"name":"components_shared_tables_field_idx","columns":["field"]},{"name":"components_shared_tables_component_type_idx","columns":["component_type"]},{"name":"components_shared_tables_entity_fk","columns":["entity_id"]},{"name":"components_shared_tables_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_tables_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_tables","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_tables","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_table_data","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_ranklists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotations","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reference_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"department","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_pta_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_programs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"trade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"no_of_units","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"seating_capacity_per_unit","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_seating_capacity","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"affiliation_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_principles","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"office_phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_plcement_events","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"venue","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_placement_results","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"department","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_students","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"highest_package","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"avarage_package","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"year","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"placed","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_placement_notifications","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"company_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"eligibility","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"venue","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"time","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_placed_companies","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_other_activities","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"coordinator","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_nss_activities","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_notifications","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reference_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"department","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_news_cmps","indexes":[{"name":"components_shared_news_field_idx","columns":["field"]},{"name":"components_shared_news_component_type_idx","columns":["component_type"]},{"name":"components_shared_news_entity_fk","columns":["entity_id"]},{"name":"components_shared_news_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_news_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_news","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_news","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_news_headings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_news_contents","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_missions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_members","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_maps","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"latitude","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"longitude","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_locations","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_libraries","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"book_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trade_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"stock","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"year","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_iti_descriptions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_infrastrture_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_industry_tie_ups","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expertise","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"programs","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_industrial_experiences","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"experience","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_imc_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_hostels_cmps","indexes":[{"name":"components_shared_hostels_field_idx","columns":["field"]},{"name":"components_shared_hostels_component_type_idx","columns":["component_type"]},{"name":"components_shared_hostels_entity_fk","columns":["entity_id"]},{"name":"components_shared_hostels_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_hostels_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_hostels","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_hostels","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_galleries_cmps","indexes":[{"name":"components_shared_galleries_field_idx","columns":["field"]},{"name":"components_shared_galleries_component_type_idx","columns":["component_type"]},{"name":"components_shared_galleries_entity_fk","columns":["entity_id"]},{"name":"components_shared_galleries_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_galleries_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_galleries","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_galleries","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_gallery_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_form_data","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_events_cmps","indexes":[{"name":"components_shared_events_field_idx","columns":["field"]},{"name":"components_shared_events_component_type_idx","columns":["component_type"]},{"name":"components_shared_events_entity_fk","columns":["entity_id"]},{"name":"components_shared_events_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_events_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_events","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_events","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_event_contents","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"youtube_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_educations","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_districts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_descriptions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_data","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_contacts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"women_cell_office","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"helpline_number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_certfication_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"certfications","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_bullet_points","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"points","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_awards_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"year","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_auctions_cmps","indexes":[{"name":"components_shared_auctions_field_idx","columns":["field"]},{"name":"components_shared_auctions_component_type_idx","columns":["component_type"]},{"name":"components_shared_auctions_entity_fk","columns":["entity_id"]},{"name":"components_shared_auctions_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_auctions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_auctions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_auctions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reference_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"starting_bid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"auction_status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_announcements","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"ml","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"en","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_addresses_cmps","indexes":[{"name":"components_shared_addresses_field_idx","columns":["field"]},{"name":"components_shared_addresses_component_type_idx","columns":["component_type"]},{"name":"components_shared_addresses_entity_fk","columns":["entity_id"]},{"name":"components_shared_addresses_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_addresses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_addresses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_addresses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pin","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_activities","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"year","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_achievements_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"year","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_a_lumni_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"batch","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"industry","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_trainees_trainees_lists_cmps","indexes":[{"name":"components_trainees_trainees_lists_field_idx","columns":["field"]},{"name":"components_trainees_trainees_lists_component_type_idx","columns":["component_type"]},{"name":"components_trainees_trainees_lists_entity_fk","columns":["entity_id"]},{"name":"components_trainees_trainees_lists_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_trainees_lists_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_trainees_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_trainees_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_trainees_trainees_councils_cmps","indexes":[{"name":"components_trainees_trainees_councils_field_idx","columns":["field"]},{"name":"components_trainees_trainees_co37829_component_type_idx","columns":["component_type"]},{"name":"components_trainees_trainees_councils_entity_fk","columns":["entity_id"]},{"name":"components_trainees_trainees_councils_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_trainees_councils_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_trainees_councils","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_trainees_councils","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_trainees_results_cmps","indexes":[{"name":"components_trainees_results_field_idx","columns":["field"]},{"name":"components_trainees_results_component_type_idx","columns":["component_type"]},{"name":"components_trainees_results_entity_fk","columns":["entity_id"]},{"name":"components_trainees_results_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_results_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_results","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_results","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"result_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_trainees_nsses_cmps","indexes":[{"name":"components_trainees_nsses_field_idx","columns":["field"]},{"name":"components_trainees_nsses_component_type_idx","columns":["component_type"]},{"name":"components_trainees_nsses_entity_fk","columns":["entity_id"]},{"name":"components_trainees_nsses_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_nsses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_nsses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_nsses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_trainees_alumni_cmps","indexes":[{"name":"components_trainees_alumni_field_idx","columns":["field"]},{"name":"components_trainees_alumni_component_type_idx","columns":["component_type"]},{"name":"components_trainees_alumni_entity_fk","columns":["entity_id"]},{"name":"components_trainees_alumni_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_alumni_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_alumni","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_alumni","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_trainees_activities_cmps","indexes":[{"name":"components_trainees_activities_field_idx","columns":["field"]},{"name":"components_trainees_activities_component_type_idx","columns":["component_type"]},{"name":"components_trainees_activities_entity_fk","columns":["entity_id"]},{"name":"components_trainees_activities_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_activities_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_activities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_activities","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_trainees_achievements_cmps","indexes":[{"name":"components_trainees_achievements_field_idx","columns":["field"]},{"name":"components_trainees_achievements_component_type_idx","columns":["component_type"]},{"name":"components_trainees_achievements_entity_fk","columns":["entity_id"]},{"name":"components_trainees_achievements_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_trainees_achievements_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_trainees_achievements","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_trainees_achievements","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_notifications_tenders_cmps","indexes":[{"name":"components_notifications_tenders_field_idx","columns":["field"]},{"name":"components_notifications_tenders_component_type_idx","columns":["component_type"]},{"name":"components_notifications_tenders_entity_fk","columns":["entity_id"]},{"name":"components_notifications_tenders_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_notifications_tenders_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_notifications_tenders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_notifications_tenders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_notifications_quotations_cmps","indexes":[{"name":"components_notifications_quotations_field_idx","columns":["field"]},{"name":"components_notifications_quotations_component_type_idx","columns":["component_type"]},{"name":"components_notifications_quotations_entity_fk","columns":["entity_id"]},{"name":"components_notifications_quotations_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_notifications_quotations_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_notifications_quotations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_notifications_quotations","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_ptas_cmps","indexes":[{"name":"components_institute_ptas_field_idx","columns":["field"]},{"name":"components_institute_ptas_component_type_idx","columns":["component_type"]},{"name":"components_institute_ptas_entity_fk","columns":["entity_id"]},{"name":"components_institute_ptas_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_ptas_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_ptas","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_ptas","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_institutes_cmps","indexes":[{"name":"components_institute_institutes_field_idx","columns":["field"]},{"name":"components_institute_institutes_component_type_idx","columns":["component_type"]},{"name":"components_institute_institutes_entity_fk","columns":["entity_id"]},{"name":"components_institute_institutes_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_institutes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_institutes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_institutes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_infrastructures_cmps","indexes":[{"name":"components_institute_infrastructures_field_idx","columns":["field"]},{"name":"components_institute_infrastructures_component_type_idx","columns":["component_type"]},{"name":"components_institute_infrastructures_entity_fk","columns":["entity_id"]},{"name":"components_institute_infrastructures_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_infrastructures_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_infrastructures","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_infrastructures","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_imcs_cmps","indexes":[{"name":"components_institute_imcs_field_idx","columns":["field"]},{"name":"components_institute_imcs_component_type_idx","columns":["component_type"]},{"name":"components_institute_imcs_entity_fk","columns":["entity_id"]},{"name":"components_institute_imcs_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_imcs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_imcs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_imcs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_gradings_cmps","indexes":[{"name":"components_institute_gradings_field_idx","columns":["field"]},{"name":"components_institute_gradings_component_type_idx","columns":["component_type"]},{"name":"components_institute_gradings_entity_fk","columns":["entity_id"]},{"name":"components_institute_gradings_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_gradings_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_gradings","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_gradings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_certifications_cmps","indexes":[{"name":"components_institute_certifications_field_idx","columns":["field"]},{"name":"components_institute_certifications_component_type_idx","columns":["component_type"]},{"name":"components_institute_certifications_entity_fk","columns":["entity_id"]},{"name":"components_institute_certifications_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_certifications_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_certifications","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_certifications","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_institute_awards_cmps","indexes":[{"name":"components_institute_awards_field_idx","columns":["field"]},{"name":"components_institute_awards_component_type_idx","columns":["component_type"]},{"name":"components_institute_awards_entity_fk","columns":["entity_id"]},{"name":"components_institute_awards_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_institute_awards_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_institute_awards","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_institute_awards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_facilities_women_cells_cmps","indexes":[{"name":"components_facilities_women_cells_field_idx","columns":["field"]},{"name":"components_facilities_women_cells_component_type_idx","columns":["component_type"]},{"name":"components_facilities_women_cells_entity_fk","columns":["entity_id"]},{"name":"components_facilities_women_cells_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_facilities_women_cells_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_facilities_women_cells","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_facilities_women_cells","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_facilities_other_activities_cmps","indexes":[{"name":"components_facilities_other_activities_field_idx","columns":["field"]},{"name":"components_facilities_other_act653b5_component_type_idx","columns":["component_type"]},{"name":"components_facilities_other_activities_entity_fk","columns":["entity_id"]},{"name":"components_facilities_other_activities_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_facilities_other_activities_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_facilities_other_activities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_facilities_other_activities","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_facilities_libraries_cmps","indexes":[{"name":"components_facilities_libraries_field_idx","columns":["field"]},{"name":"components_facilities_libraries_component_type_idx","columns":["component_type"]},{"name":"components_facilities_libraries_entity_fk","columns":["entity_id"]},{"name":"components_facilities_libraries_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_facilities_libraries_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_facilities_libraries","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_facilities_libraries","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_facilities_industry_tie_ups_cmps","indexes":[{"name":"components_facilities_industry_tie_ups_field_idx","columns":["field"]},{"name":"components_facilities_industry_b16c0_component_type_idx","columns":["component_type"]},{"name":"components_facilities_industry_tie_ups_entity_fk","columns":["entity_id"]},{"name":"components_facilities_industry_tie_ups_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_facilities_industry_tie_ups_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_facilities_industry_tie_ups","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_facilities_industry_tie_ups","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_facilities_hostels_cmps","indexes":[{"name":"components_facilities_hostels_field_idx","columns":["field"]},{"name":"components_facilities_hostels_component_type_idx","columns":["component_type"]},{"name":"components_facilities_hostels_entity_fk","columns":["entity_id"]},{"name":"components_facilities_hostels_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_facilities_hostels_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_facilities_hostels","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_facilities_hostels","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_home_homes_cmps","indexes":[{"name":"components_home_homes_field_idx","columns":["field"]},{"name":"components_home_homes_component_type_idx","columns":["component_type"]},{"name":"components_home_homes_entity_fk","columns":["entity_id"]},{"name":"components_home_homes_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_home_homes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_home_homes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_home_homes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"iti_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"iti_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mis_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"iti_email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_download_ranklists_cmps","indexes":[{"name":"components_download_ranklists_field_idx","columns":["field"]},{"name":"components_download_ranklists_component_type_idx","columns":["component_type"]},{"name":"components_download_ranklists_entity_fk","columns":["entity_id"]},{"name":"components_download_ranklists_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_download_ranklists_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_download_ranklists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_download_ranklists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_download_forms_cmps","indexes":[{"name":"components_download_forms_field_idx","columns":["field"]},{"name":"components_download_forms_component_type_idx","columns":["component_type"]},{"name":"components_download_forms_entity_fk","columns":["entity_id"]},{"name":"components_download_forms_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_download_forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_download_forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_download_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_download_circulars_cmps","indexes":[{"name":"components_download_circulars_field_idx","columns":["field"]},{"name":"components_download_circulars_component_type_idx","columns":["component_type"]},{"name":"components_download_circulars_entity_fk","columns":["entity_id"]},{"name":"components_download_circulars_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_download_circulars_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_download_circulars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_download_circulars","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_admission_user_manuals_cmps","indexes":[{"name":"components_admission_user_manuals_field_idx","columns":["field"]},{"name":"components_admission_user_manuals_component_type_idx","columns":["component_type"]},{"name":"components_admission_user_manuals_entity_fk","columns":["entity_id"]},{"name":"components_admission_user_manuals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_admission_user_manuals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_admission_user_manuals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_admission_user_manuals","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_admission_prospectuses_cmps","indexes":[{"name":"components_admission_prospectuses_field_idx","columns":["field"]},{"name":"components_admission_prospectuses_component_type_idx","columns":["component_type"]},{"name":"components_admission_prospectuses_entity_fk","columns":["entity_id"]},{"name":"components_admission_prospectuses_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_admission_prospectuses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_admission_prospectuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_admission_prospectuses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_admission_admission_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_academics_stts_cmps","indexes":[{"name":"components_academics_stts_field_idx","columns":["field"]},{"name":"components_academics_stts_component_type_idx","columns":["component_type"]},{"name":"components_academics_stts_entity_fk","columns":["entity_id"]},{"name":"components_academics_stts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_academics_stts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_academics_stts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_academics_stts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_academics_pmkvies_cmps","indexes":[{"name":"components_academics_pmkvies_field_idx","columns":["field"]},{"name":"components_academics_pmkvies_component_type_idx","columns":["component_type"]},{"name":"components_academics_pmkvies_entity_fk","columns":["entity_id"]},{"name":"components_academics_pmkvies_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_academics_pmkvies_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_academics_pmkvies","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_academics_pmkvies","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_academics_cts_programs_cmps","indexes":[{"name":"components_academics_cts_programs_field_idx","columns":["field"]},{"name":"components_academics_cts_programs_component_type_idx","columns":["component_type"]},{"name":"components_academics_cts_programs_entity_fk","columns":["entity_id"]},{"name":"components_academics_cts_programs_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_academics_cts_programs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_academics_cts_programs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_academics_cts_programs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-05-05 09:30:11.544	889e7aa4dca0c9050f17f5bd8df793f5
\.


--
-- TOC entry 5461 (class 0 OID 5314102)
-- Dependencies: 260
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- TOC entry 5417 (class 0 OID 5313847)
-- Dependencies: 216
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 5419 (class 0 OID 5313854)
-- Dependencies: 218
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-04-22 12:56:29.507
2	5.0.0-02-created-document-id	2025-04-22 12:56:29.533
3	5.0.0-03-created-locale	2025-04-22 12:56:29.567
4	5.0.0-04-created-published-at	2025-04-22 12:56:29.578
5	5.0.0-05-drop-slug-fields-index	2025-04-22 12:56:29.588
6	core::5.0.0-discard-drafts	2025-04-22 12:56:29.597
\.


--
-- TOC entry 5431 (class 0 OID 5313928)
-- Dependencies: 230
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5469 (class 0 OID 5314148)
-- Dependencies: 268
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 5429 (class 0 OID 5313916)
-- Dependencies: 228
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5455 (class 0 OID 5314072)
-- Dependencies: 254
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5487 (class 0 OID 5314256)
-- Dependencies: 286
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5453 (class 0 OID 5314060)
-- Dependencies: 252
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5459 (class 0 OID 5314093)
-- Dependencies: 258
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 5433 (class 0 OID 5313940)
-- Dependencies: 232
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5471 (class 0 OID 5314160)
-- Dependencies: 270
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 5435 (class 0 OID 5313952)
-- Dependencies: 234
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5475 (class 0 OID 5314183)
-- Dependencies: 274
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 5473 (class 0 OID 5314171)
-- Dependencies: 272
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 5437 (class 0 OID 5313964)
-- Dependencies: 236
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	u1fasmooxruhqn1vu6hk4meg	plugin::users-permissions.user.me	2025-04-22 12:56:29.938	2025-04-22 12:56:29.938	2025-04-22 12:56:29.938	\N	\N	\N
2	uave7fzxyrrdpqlp8z0qx8zr	plugin::users-permissions.auth.changePassword	2025-04-22 12:56:29.938	2025-04-22 12:56:29.938	2025-04-22 12:56:29.938	\N	\N	\N
3	rx1eq9fsig2dbj2aqqbuarg1	plugin::users-permissions.auth.callback	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	\N	\N	\N
4	o3qaqconm0gcqbsgsccc6x9b	plugin::users-permissions.auth.connect	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
5	g089ppln4ksg96zyh5byc2ii	plugin::users-permissions.auth.forgotPassword	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
6	voyvje37pupvh22ql6s6jfa2	plugin::users-permissions.auth.resetPassword	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
7	t6ij4c57mi2x0dc0fpm0biqm	plugin::users-permissions.auth.register	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
8	t983b5m8yj4gdjpm3qwidrnh	plugin::users-permissions.auth.emailConfirmation	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
9	rxycrxtdvsh1rq3ai44hh75n	plugin::users-permissions.auth.sendEmailConfirmation	2025-04-22 12:56:29.942	2025-04-22 12:56:29.942	2025-04-22 12:56:29.943	\N	\N	\N
10	dg6r7o0m0fsi4qmn2l7dz1qk	api::chackai.chackai.find	2025-04-23 15:41:35.662	2025-04-23 15:41:35.662	2025-04-23 15:41:35.663	\N	\N	\N
11	l4bgxasnxwgut5qzj7q4qssx	api::chackai.chackai.delete	2025-04-23 15:41:35.662	2025-04-23 15:41:35.662	2025-04-23 15:41:35.663	\N	\N	\N
12	m88v9heb1jjmf7trfyetryar	api::chackai.chackai.update	2025-04-23 15:41:35.662	2025-04-23 15:41:35.662	2025-04-23 15:41:35.663	\N	\N	\N
13	li8rsqdi9l1xeirf2z0dy7oi	plugin::upload.content-api.find	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	\N	\N	\N
14	ahzbwxbe7pl5idbvke623s13	plugin::upload.content-api.findOne	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	\N	\N	\N
15	keehdrv0y7zie0gnz2pt0vkr	plugin::upload.content-api.destroy	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	2025-04-24 11:30:04.072	\N	\N	\N
16	d06ukvqmhx0591abd1io9kvf	plugin::upload.content-api.upload	2025-04-24 11:30:04.071	2025-04-24 11:30:04.071	2025-04-24 11:30:04.072	\N	\N	\N
17	vpmfvjpu4ftyx3a0rkr2mrax	plugin::upload.content-api.find	2025-04-24 11:32:01.628	2025-04-24 11:32:01.628	2025-04-24 11:32:01.628	\N	\N	\N
18	bn5vpe0n9gjkx33pvdimjgx9	plugin::upload.content-api.destroy	2025-04-24 11:32:01.628	2025-04-24 11:32:01.628	2025-04-24 11:32:01.629	\N	\N	\N
19	h8mv4i8x3ch1dbp6iftig8a7	plugin::upload.content-api.upload	2025-04-24 11:32:01.628	2025-04-24 11:32:01.628	2025-04-24 11:32:01.629	\N	\N	\N
20	p2q90p458vtr5x5rx93ih03z	plugin::upload.content-api.findOne	2025-04-24 11:32:01.628	2025-04-24 11:32:01.628	2025-04-24 11:32:01.629	\N	\N	\N
21	xz42hho8lxp5337fbreh94er	plugin::content-type-builder.components.getComponents	2025-04-24 11:38:38.006	2025-04-24 11:38:38.006	2025-04-24 11:38:38.007	\N	\N	\N
23	ja6n59t0g841uwtxh8pmws6q	plugin::content-type-builder.content-types.getContentTypes	2025-04-24 11:38:38.006	2025-04-24 11:38:38.006	2025-04-24 11:38:38.007	\N	\N	\N
22	bqd6y6p1bx4uj0hul1w4j74v	plugin::content-type-builder.components.getComponent	2025-04-24 11:38:38.006	2025-04-24 11:38:38.006	2025-04-24 11:38:38.007	\N	\N	\N
24	zpoplz15i4lc4dqkhjjfpetl	plugin::content-type-builder.content-types.getContentType	2025-04-24 11:38:38.006	2025-04-24 11:38:38.006	2025-04-24 11:38:38.007	\N	\N	\N
26	j0cdvwimsyvtfh6bhlac0vw6	api::vatakara.vatakara.delete	2025-04-29 11:31:04.133	2025-04-29 11:31:04.133	2025-04-29 11:31:04.134	\N	\N	\N
25	p382fgd058v7tre0ha0vdz22	api::vatakara.vatakara.find	2025-04-29 11:31:04.133	2025-04-29 11:31:04.133	2025-04-29 11:31:04.133	\N	\N	\N
27	seb9xlfzek59lm1w68kq78ug	api::vatakara.vatakara.update	2025-04-29 11:31:04.133	2025-04-29 11:31:04.133	2025-04-29 11:31:04.134	\N	\N	\N
\.


--
-- TOC entry 5477 (class 0 OID 5314195)
-- Dependencies: 276
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	7	2	2
7	8	2	2
8	6	2	2
9	9	2	2
10	11	2	3
11	10	2	3
12	12	2	3
13	14	2	4
14	13	2	4
15	15	2	4
16	16	2	5
17	17	1	2
18	18	1	2
19	19	1	3
20	20	1	3
21	21	2	6
22	22	2	6
23	23	2	7
24	24	2	8
25	26	2	9
26	25	2	9
27	27	2	9
\.


--
-- TOC entry 5439 (class 0 OID 5313976)
-- Dependencies: 238
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	cjwlhphttmtdnsejoigf48ih	Authenticated	Default role given to authenticated user.	authenticated	2025-04-22 12:56:29.933	2025-04-24 11:34:29.792	2025-04-22 12:56:29.933	\N	\N	\N
2	far47ebrnnegsjevc03wzmm9	Public	Default role given to unauthenticated user.	public	2025-04-22 12:56:29.935	2025-04-29 11:31:29.932	2025-04-22 12:56:29.935	\N	\N	\N
\.


--
-- TOC entry 5441 (class 0 OID 5313988)
-- Dependencies: 240
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i04gere7q7dmm6qz5wplq6uy	jihanagafoor65@gmail.com	uaeburgerspot@gmail.com	local	$2a$10$RBgZHHVOE8WdCP7Si3VCqOj2Kqz2UTv272H9L4HXcm/9ItdFKUQqG	\N	\N	f	f	2025-04-23 15:40:00.792	2025-04-24 11:53:53.773	2025-04-24 11:53:53.761	1	1	\N
\.


--
-- TOC entry 5479 (class 0 OID 5314207)
-- Dependencies: 278
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
1	1	2	1
\.


--
-- TOC entry 5425 (class 0 OID 5313888)
-- Dependencies: 224
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5467 (class 0 OID 5314136)
-- Dependencies: 266
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- TOC entry 5559 (class 0 OID 5315314)
-- Dependencies: 358
-- Data for Name: vatakaras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vatakaras (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lm9ngqm7sbho89d71dc4sp5i	2025-04-29 11:32:10.014	2025-04-29 11:53:01.04	\N	1	1	\N
4	lm9ngqm7sbho89d71dc4sp5i	2025-04-29 11:32:10.014	2025-04-29 11:53:01.04	2025-04-29 11:53:01.068	1	1	\N
\.


--
-- TOC entry 5557 (class 0 OID 5315300)
-- Dependencies: 356
-- Data for Name: vatakaras_cmps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vatakaras_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.table	Table	\N
6	4	4	shared.table	Table	\N
\.


--
-- TOC entry 5937 (class 0 OID 0)
-- Dependencies: 241
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 195, true);


--
-- TOC entry 5938 (class 0 OID 0)
-- Dependencies: 279
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 195, true);


--
-- TOC entry 5939 (class 0 OID 0)
-- Dependencies: 245
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 5940 (class 0 OID 0)
-- Dependencies: 243
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- TOC entry 5941 (class 0 OID 0)
-- Dependencies: 281
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- TOC entry 5942 (class 0 OID 0)
-- Dependencies: 337
-- Name: chackais_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chackais_cmps_id_seq', 40, true);


--
-- TOC entry 5943 (class 0 OID 0)
-- Dependencies: 339
-- Name: chackais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chackais_id_seq', 19, true);


--
-- TOC entry 5944 (class 0 OID 0)
-- Dependencies: 547
-- Name: components_academics_cts_programs_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_cts_programs_cmps_id_seq', 1, false);


--
-- TOC entry 5945 (class 0 OID 0)
-- Dependencies: 545
-- Name: components_academics_cts_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_cts_programs_id_seq', 1, false);


--
-- TOC entry 5946 (class 0 OID 0)
-- Dependencies: 549
-- Name: components_academics_pmkvies_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_pmkvies_cmps_id_seq', 1, false);


--
-- TOC entry 5947 (class 0 OID 0)
-- Dependencies: 551
-- Name: components_academics_pmkvies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_pmkvies_id_seq', 1, false);


--
-- TOC entry 5948 (class 0 OID 0)
-- Dependencies: 553
-- Name: components_academics_stts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_stts_cmps_id_seq', 1, false);


--
-- TOC entry 5949 (class 0 OID 0)
-- Dependencies: 555
-- Name: components_academics_stts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_academics_stts_id_seq', 1, false);


--
-- TOC entry 5950 (class 0 OID 0)
-- Dependencies: 509
-- Name: components_admission_admission_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_admission_admission_links_id_seq', 1, false);


--
-- TOC entry 5951 (class 0 OID 0)
-- Dependencies: 501
-- Name: components_admission_prospectuses_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_admission_prospectuses_cmps_id_seq', 1, false);


--
-- TOC entry 5952 (class 0 OID 0)
-- Dependencies: 503
-- Name: components_admission_prospectuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_admission_prospectuses_id_seq', 1, false);


--
-- TOC entry 5953 (class 0 OID 0)
-- Dependencies: 505
-- Name: components_admission_user_manuals_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_admission_user_manuals_cmps_id_seq', 1, false);


--
-- TOC entry 5954 (class 0 OID 0)
-- Dependencies: 507
-- Name: components_admission_user_manuals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_admission_user_manuals_id_seq', 1, false);


--
-- TOC entry 5955 (class 0 OID 0)
-- Dependencies: 379
-- Name: components_download_circulars_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_circulars_cmps_id_seq', 1, false);


--
-- TOC entry 5956 (class 0 OID 0)
-- Dependencies: 381
-- Name: components_download_circulars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_circulars_id_seq', 1, false);


--
-- TOC entry 5957 (class 0 OID 0)
-- Dependencies: 367
-- Name: components_download_forms_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_forms_cmps_id_seq', 1, false);


--
-- TOC entry 5958 (class 0 OID 0)
-- Dependencies: 369
-- Name: components_download_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_forms_id_seq', 1, false);


--
-- TOC entry 5959 (class 0 OID 0)
-- Dependencies: 373
-- Name: components_download_ranklists_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_ranklists_cmps_id_seq', 1, false);


--
-- TOC entry 5960 (class 0 OID 0)
-- Dependencies: 375
-- Name: components_download_ranklists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_download_ranklists_id_seq', 1, false);


--
-- TOC entry 5961 (class 0 OID 0)
-- Dependencies: 433
-- Name: components_facilities_hostels_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_hostels_cmps_id_seq', 1, false);


--
-- TOC entry 5962 (class 0 OID 0)
-- Dependencies: 435
-- Name: components_facilities_hostels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_hostels_id_seq', 1, false);


--
-- TOC entry 5963 (class 0 OID 0)
-- Dependencies: 441
-- Name: components_facilities_industry_tie_ups_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_industry_tie_ups_cmps_id_seq', 1, false);


--
-- TOC entry 5964 (class 0 OID 0)
-- Dependencies: 443
-- Name: components_facilities_industry_tie_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_industry_tie_ups_id_seq', 1, false);


--
-- TOC entry 5965 (class 0 OID 0)
-- Dependencies: 427
-- Name: components_facilities_libraries_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_libraries_cmps_id_seq', 1, false);


--
-- TOC entry 5966 (class 0 OID 0)
-- Dependencies: 429
-- Name: components_facilities_libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_libraries_id_seq', 1, false);


--
-- TOC entry 5967 (class 0 OID 0)
-- Dependencies: 455
-- Name: components_facilities_other_activities_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_other_activities_cmps_id_seq', 1, false);


--
-- TOC entry 5968 (class 0 OID 0)
-- Dependencies: 457
-- Name: components_facilities_other_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_other_activities_id_seq', 1, false);


--
-- TOC entry 5969 (class 0 OID 0)
-- Dependencies: 447
-- Name: components_facilities_women_cells_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_women_cells_cmps_id_seq', 1, false);


--
-- TOC entry 5970 (class 0 OID 0)
-- Dependencies: 449
-- Name: components_facilities_women_cells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facilities_women_cells_id_seq', 1, false);


--
-- TOC entry 5971 (class 0 OID 0)
-- Dependencies: 335
-- Name: components_home_homes_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_homes_cmps_id_seq', 400, true);


--
-- TOC entry 5972 (class 0 OID 0)
-- Dependencies: 333
-- Name: components_home_homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_home_homes_id_seq', 19, true);


--
-- TOC entry 5973 (class 0 OID 0)
-- Dependencies: 513
-- Name: components_institute_awards_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_awards_cmps_id_seq', 1, false);


--
-- TOC entry 5974 (class 0 OID 0)
-- Dependencies: 515
-- Name: components_institute_awards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_awards_id_seq', 1, false);


--
-- TOC entry 5975 (class 0 OID 0)
-- Dependencies: 519
-- Name: components_institute_certifications_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_certifications_cmps_id_seq', 1, false);


--
-- TOC entry 5976 (class 0 OID 0)
-- Dependencies: 521
-- Name: components_institute_certifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_certifications_id_seq', 1, false);


--
-- TOC entry 5977 (class 0 OID 0)
-- Dependencies: 539
-- Name: components_institute_gradings_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_gradings_cmps_id_seq', 1, false);


--
-- TOC entry 5978 (class 0 OID 0)
-- Dependencies: 541
-- Name: components_institute_gradings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_gradings_id_seq', 1, false);


--
-- TOC entry 5979 (class 0 OID 0)
-- Dependencies: 537
-- Name: components_institute_imcs_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_imcs_cmps_id_seq', 1, false);


--
-- TOC entry 5980 (class 0 OID 0)
-- Dependencies: 349
-- Name: components_institute_imcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_imcs_id_seq', 1, false);


--
-- TOC entry 5981 (class 0 OID 0)
-- Dependencies: 525
-- Name: components_institute_infrastructures_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_infrastructures_cmps_id_seq', 1, false);


--
-- TOC entry 5982 (class 0 OID 0)
-- Dependencies: 527
-- Name: components_institute_infrastructures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_infrastructures_id_seq', 1, false);


--
-- TOC entry 5983 (class 0 OID 0)
-- Dependencies: 557
-- Name: components_institute_institutes_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_institutes_cmps_id_seq', 1, false);


--
-- TOC entry 5984 (class 0 OID 0)
-- Dependencies: 343
-- Name: components_institute_institutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_institutes_id_seq', 1, false);


--
-- TOC entry 5985 (class 0 OID 0)
-- Dependencies: 531
-- Name: components_institute_ptas_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_ptas_cmps_id_seq', 1, false);


--
-- TOC entry 5986 (class 0 OID 0)
-- Dependencies: 533
-- Name: components_institute_ptas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_institute_ptas_id_seq', 1, false);


--
-- TOC entry 5987 (class 0 OID 0)
-- Dependencies: 391
-- Name: components_notifications_quotations_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_notifications_quotations_cmps_id_seq', 1, false);


--
-- TOC entry 5988 (class 0 OID 0)
-- Dependencies: 393
-- Name: components_notifications_quotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_notifications_quotations_id_seq', 1, false);


--
-- TOC entry 5989 (class 0 OID 0)
-- Dependencies: 385
-- Name: components_notifications_tenders_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_notifications_tenders_cmps_id_seq', 1, false);


--
-- TOC entry 5990 (class 0 OID 0)
-- Dependencies: 387
-- Name: components_notifications_tenders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_notifications_tenders_id_seq', 1, false);


--
-- TOC entry 5991 (class 0 OID 0)
-- Dependencies: 407
-- Name: components_placement_events_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_events_cmps_id_seq', 1, false);


--
-- TOC entry 5992 (class 0 OID 0)
-- Dependencies: 409
-- Name: components_placement_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_events_id_seq', 1, false);


--
-- TOC entry 5993 (class 0 OID 0)
-- Dependencies: 413
-- Name: components_placement_industrial_expereinces_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_industrial_expereinces_cmps_id_seq', 1, false);


--
-- TOC entry 5994 (class 0 OID 0)
-- Dependencies: 415
-- Name: components_placement_industrial_expereinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_industrial_expereinces_id_seq', 1, false);


--
-- TOC entry 5995 (class 0 OID 0)
-- Dependencies: 401
-- Name: components_placement_notifications_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_notifications_cmps_id_seq', 1, false);


--
-- TOC entry 5996 (class 0 OID 0)
-- Dependencies: 403
-- Name: components_placement_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_notifications_id_seq', 1, false);


--
-- TOC entry 5997 (class 0 OID 0)
-- Dependencies: 417
-- Name: components_placement_results_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_results_cmps_id_seq', 1, false);


--
-- TOC entry 5998 (class 0 OID 0)
-- Dependencies: 419
-- Name: components_placement_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_placement_results_id_seq', 1, false);


--
-- TOC entry 5999 (class 0 OID 0)
-- Dependencies: 489
-- Name: components_shared_a_lumni_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_a_lumni_lists_id_seq', 1, false);


--
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 471
-- Name: components_shared_achievements_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_achievements_lists_id_seq', 1, false);


--
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 477
-- Name: components_shared_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_activities_id_seq', 1, false);


--
-- TOC entry 6002 (class 0 OID 0)
-- Dependencies: 329
-- Name: components_shared_addresses_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_addresses_cmps_id_seq', 50, true);


--
-- TOC entry 6003 (class 0 OID 0)
-- Dependencies: 331
-- Name: components_shared_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_addresses_id_seq', 13, true);


--
-- TOC entry 6004 (class 0 OID 0)
-- Dependencies: 347
-- Name: components_shared_announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_announcements_id_seq', 1, false);


--
-- TOC entry 6005 (class 0 OID 0)
-- Dependencies: 395
-- Name: components_shared_auctions_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_auctions_cmps_id_seq', 1, false);


--
-- TOC entry 6006 (class 0 OID 0)
-- Dependencies: 397
-- Name: components_shared_auctions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_auctions_id_seq', 1, false);


--
-- TOC entry 6007 (class 0 OID 0)
-- Dependencies: 511
-- Name: components_shared_awards_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_awards_lists_id_seq', 1, false);


--
-- TOC entry 6008 (class 0 OID 0)
-- Dependencies: 439
-- Name: components_shared_bullet_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_bullet_points_id_seq', 1, false);


--
-- TOC entry 6009 (class 0 OID 0)
-- Dependencies: 517
-- Name: components_shared_certfication_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_certfication_lists_id_seq', 1, false);


--
-- TOC entry 6010 (class 0 OID 0)
-- Dependencies: 459
-- Name: components_shared_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_contacts_id_seq', 1, false);


--
-- TOC entry 6011 (class 0 OID 0)
-- Dependencies: 377
-- Name: components_shared_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_data_id_seq', 1, false);


--
-- TOC entry 6012 (class 0 OID 0)
-- Dependencies: 363
-- Name: components_shared_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_descriptions_id_seq', 1, false);


--
-- TOC entry 6013 (class 0 OID 0)
-- Dependencies: 327
-- Name: components_shared_districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_districts_id_seq', 13, true);


--
-- TOC entry 6014 (class 0 OID 0)
-- Dependencies: 345
-- Name: components_shared_educations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_educations_id_seq', 1, false);


--
-- TOC entry 6015 (class 0 OID 0)
-- Dependencies: 319
-- Name: components_shared_event_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_event_contents_id_seq', 14, true);


--
-- TOC entry 6016 (class 0 OID 0)
-- Dependencies: 315
-- Name: components_shared_events_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_events_cmps_id_seq', 27, true);


--
-- TOC entry 6017 (class 0 OID 0)
-- Dependencies: 317
-- Name: components_shared_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_events_id_seq', 14, true);


--
-- TOC entry 6018 (class 0 OID 0)
-- Dependencies: 365
-- Name: components_shared_form_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_form_data_id_seq', 1, false);


--
-- TOC entry 6019 (class 0 OID 0)
-- Dependencies: 309
-- Name: components_shared_galleries_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_galleries_cmps_id_seq', 81, true);


--
-- TOC entry 6020 (class 0 OID 0)
-- Dependencies: 311
-- Name: components_shared_galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_galleries_id_seq', 14, true);


--
-- TOC entry 6021 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_shared_gallery_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_gallery_lists_id_seq', 42, true);


--
-- TOC entry 6022 (class 0 OID 0)
-- Dependencies: 437
-- Name: components_shared_hostels_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_hostels_cmps_id_seq', 1, false);


--
-- TOC entry 6023 (class 0 OID 0)
-- Dependencies: 431
-- Name: components_shared_hostels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_hostels_id_seq', 1, false);


--
-- TOC entry 6024 (class 0 OID 0)
-- Dependencies: 535
-- Name: components_shared_imc_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_imc_lists_id_seq', 1, false);


--
-- TOC entry 6025 (class 0 OID 0)
-- Dependencies: 411
-- Name: components_shared_industrial_experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_industrial_experiences_id_seq', 1, false);


--
-- TOC entry 6026 (class 0 OID 0)
-- Dependencies: 445
-- Name: components_shared_industry_tie_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_industry_tie_ups_id_seq', 1, false);


--
-- TOC entry 6027 (class 0 OID 0)
-- Dependencies: 523
-- Name: components_shared_infrastrture_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_infrastrture_lists_id_seq', 1, false);


--
-- TOC entry 6028 (class 0 OID 0)
-- Dependencies: 287
-- Name: components_shared_iti_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_iti_descriptions_id_seq', 17, true);


--
-- TOC entry 6029 (class 0 OID 0)
-- Dependencies: 425
-- Name: components_shared_libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_libraries_id_seq', 1, false);


--
-- TOC entry 6030 (class 0 OID 0)
-- Dependencies: 325
-- Name: components_shared_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_locations_id_seq', 13, true);


--
-- TOC entry 6031 (class 0 OID 0)
-- Dependencies: 321
-- Name: components_shared_maps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_maps_id_seq', 14, true);


--
-- TOC entry 6032 (class 0 OID 0)
-- Dependencies: 351
-- Name: components_shared_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_members_id_seq', 1, false);


--
-- TOC entry 6033 (class 0 OID 0)
-- Dependencies: 289
-- Name: components_shared_missions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_missions_id_seq', 16, true);


--
-- TOC entry 6034 (class 0 OID 0)
-- Dependencies: 293
-- Name: components_shared_news_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_news_cmps_id_seq', 144, true);


--
-- TOC entry 6035 (class 0 OID 0)
-- Dependencies: 299
-- Name: components_shared_news_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_news_contents_id_seq', 36, true);


--
-- TOC entry 6036 (class 0 OID 0)
-- Dependencies: 297
-- Name: components_shared_news_headings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_news_headings_id_seq', 36, true);


--
-- TOC entry 6037 (class 0 OID 0)
-- Dependencies: 295
-- Name: components_shared_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_news_id_seq', 36, true);


--
-- TOC entry 6038 (class 0 OID 0)
-- Dependencies: 383
-- Name: components_shared_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_notifications_id_seq', 1, false);


--
-- TOC entry 6039 (class 0 OID 0)
-- Dependencies: 483
-- Name: components_shared_nss_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_nss_activities_id_seq', 1, false);


--
-- TOC entry 6040 (class 0 OID 0)
-- Dependencies: 453
-- Name: components_shared_other_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_other_activities_id_seq', 1, false);


--
-- TOC entry 6041 (class 0 OID 0)
-- Dependencies: 423
-- Name: components_shared_placed_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_placed_companies_id_seq', 1, false);


--
-- TOC entry 6042 (class 0 OID 0)
-- Dependencies: 399
-- Name: components_shared_placement_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_placement_notifications_id_seq', 1, false);


--
-- TOC entry 6043 (class 0 OID 0)
-- Dependencies: 421
-- Name: components_shared_placement_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_placement_results_id_seq', 1, false);


--
-- TOC entry 6044 (class 0 OID 0)
-- Dependencies: 405
-- Name: components_shared_plcement_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_plcement_events_id_seq', 1, false);


--
-- TOC entry 6045 (class 0 OID 0)
-- Dependencies: 341
-- Name: components_shared_principles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_principles_id_seq', 1, false);


--
-- TOC entry 6046 (class 0 OID 0)
-- Dependencies: 543
-- Name: components_shared_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_programs_id_seq', 1, false);


--
-- TOC entry 6047 (class 0 OID 0)
-- Dependencies: 529
-- Name: components_shared_pta_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_pta_lists_id_seq', 1, false);


--
-- TOC entry 6048 (class 0 OID 0)
-- Dependencies: 389
-- Name: components_shared_quotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_quotations_id_seq', 1, false);


--
-- TOC entry 6049 (class 0 OID 0)
-- Dependencies: 371
-- Name: components_shared_ranklists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_ranklists_id_seq', 1, false);


--
-- TOC entry 6050 (class 0 OID 0)
-- Dependencies: 361
-- Name: components_shared_table_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_table_data_id_seq', 5, true);


--
-- TOC entry 6051 (class 0 OID 0)
-- Dependencies: 359
-- Name: components_shared_tables_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_tables_cmps_id_seq', 6, true);


--
-- TOC entry 6052 (class 0 OID 0)
-- Dependencies: 353
-- Name: components_shared_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_tables_id_seq', 4, true);


--
-- TOC entry 6053 (class 0 OID 0)
-- Dependencies: 307
-- Name: components_shared_trade_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trade_lists_id_seq', 82, true);


--
-- TOC entry 6054 (class 0 OID 0)
-- Dependencies: 305
-- Name: components_shared_trade_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trade_names_id_seq', 32, true);


--
-- TOC entry 6055 (class 0 OID 0)
-- Dependencies: 301
-- Name: components_shared_trades_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trades_cmps_id_seq', 216, true);


--
-- TOC entry 6056 (class 0 OID 0)
-- Dependencies: 303
-- Name: components_shared_trades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trades_id_seq', 32, true);


--
-- TOC entry 6057 (class 0 OID 0)
-- Dependencies: 465
-- Name: components_shared_trainnees_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trainnees_lists_id_seq', 1, false);


--
-- TOC entry 6058 (class 0 OID 0)
-- Dependencies: 495
-- Name: components_shared_trainnes_council_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_trainnes_council_lists_id_seq', 1, false);


--
-- TOC entry 6059 (class 0 OID 0)
-- Dependencies: 323
-- Name: components_shared_useful_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_useful_links_id_seq', 40, true);


--
-- TOC entry 6060 (class 0 OID 0)
-- Dependencies: 291
-- Name: components_shared_visions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_visions_id_seq', 16, true);


--
-- TOC entry 6061 (class 0 OID 0)
-- Dependencies: 451
-- Name: components_shared_women_cells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_women_cells_id_seq', 1, false);


--
-- TOC entry 6062 (class 0 OID 0)
-- Dependencies: 467
-- Name: components_trainees_achievements_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_achievements_cmps_id_seq', 1, false);


--
-- TOC entry 6063 (class 0 OID 0)
-- Dependencies: 469
-- Name: components_trainees_achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_achievements_id_seq', 1, false);


--
-- TOC entry 6064 (class 0 OID 0)
-- Dependencies: 473
-- Name: components_trainees_activities_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_activities_cmps_id_seq', 1, false);


--
-- TOC entry 6065 (class 0 OID 0)
-- Dependencies: 475
-- Name: components_trainees_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_activities_id_seq', 1, false);


--
-- TOC entry 6066 (class 0 OID 0)
-- Dependencies: 485
-- Name: components_trainees_alumni_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_alumni_cmps_id_seq', 1, false);


--
-- TOC entry 6067 (class 0 OID 0)
-- Dependencies: 487
-- Name: components_trainees_alumni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_alumni_id_seq', 1, false);


--
-- TOC entry 6068 (class 0 OID 0)
-- Dependencies: 479
-- Name: components_trainees_nsses_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_nsses_cmps_id_seq', 1, false);


--
-- TOC entry 6069 (class 0 OID 0)
-- Dependencies: 481
-- Name: components_trainees_nsses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_nsses_id_seq', 1, false);


--
-- TOC entry 6070 (class 0 OID 0)
-- Dependencies: 497
-- Name: components_trainees_results_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_results_cmps_id_seq', 1, false);


--
-- TOC entry 6071 (class 0 OID 0)
-- Dependencies: 499
-- Name: components_trainees_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_results_id_seq', 1, false);


--
-- TOC entry 6072 (class 0 OID 0)
-- Dependencies: 491
-- Name: components_trainees_trainees_councils_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_trainees_councils_cmps_id_seq', 1, false);


--
-- TOC entry 6073 (class 0 OID 0)
-- Dependencies: 493
-- Name: components_trainees_trainees_councils_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_trainees_councils_id_seq', 1, false);


--
-- TOC entry 6074 (class 0 OID 0)
-- Dependencies: 461
-- Name: components_trainees_trainees_lists_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_trainees_lists_cmps_id_seq', 1, false);


--
-- TOC entry 6075 (class 0 OID 0)
-- Dependencies: 463
-- Name: components_trainees_trainees_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_trainees_trainees_lists_id_seq', 1, false);


--
-- TOC entry 6076 (class 0 OID 0)
-- Dependencies: 263
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- TOC entry 6077 (class 0 OID 0)
-- Dependencies: 221
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 7, true);


--
-- TOC entry 6078 (class 0 OID 0)
-- Dependencies: 261
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 21, true);


--
-- TOC entry 6079 (class 0 OID 0)
-- Dependencies: 225
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- TOC entry 6080 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 6081 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6082 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- TOC entry 6083 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 127, true);


--
-- TOC entry 6084 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 106, true);


--
-- TOC entry 6085 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- TOC entry 6086 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 6087 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- TOC entry 6088 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 6089 (class 0 OID 0)
-- Dependencies: 267
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 6090 (class 0 OID 0)
-- Dependencies: 227
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 6091 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 6092 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6093 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 6094 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 6095 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 6096 (class 0 OID 0)
-- Dependencies: 269
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 6097 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 6098 (class 0 OID 0)
-- Dependencies: 273
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 6099 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 6100 (class 0 OID 0)
-- Dependencies: 235
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 27, true);


--
-- TOC entry 6101 (class 0 OID 0)
-- Dependencies: 275
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 27, true);


--
-- TOC entry 6102 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 6103 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- TOC entry 6104 (class 0 OID 0)
-- Dependencies: 277
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, true);


--
-- TOC entry 6105 (class 0 OID 0)
-- Dependencies: 223
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- TOC entry 6106 (class 0 OID 0)
-- Dependencies: 265
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- TOC entry 6107 (class 0 OID 0)
-- Dependencies: 355
-- Name: vatakaras_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vatakaras_cmps_id_seq', 6, true);


--
-- TOC entry 6108 (class 0 OID 0)
-- Dependencies: 357
-- Name: vatakaras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vatakaras_id_seq', 4, true);


--
-- TOC entry 4539 (class 2606 OID 5314007)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4642 (class 2606 OID 5314224)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4644 (class 2606 OID 5314228)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 4549 (class 2606 OID 5314031)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4544 (class 2606 OID 5314019)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4650 (class 2606 OID 5314236)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4652 (class 2606 OID 5314240)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 4748 (class 2606 OID 5315017)
-- Name: chackais_cmps chackais_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais_cmps
    ADD CONSTRAINT chackais_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4757 (class 2606 OID 5315031)
-- Name: chackais chackais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais
    ADD CONSTRAINT chackais_pkey PRIMARY KEY (id);


--
-- TOC entry 4753 (class 2606 OID 5315022)
-- Name: chackais_cmps chackais_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais_cmps
    ADD CONSTRAINT chackais_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5134 (class 2606 OID 5316721)
-- Name: components_academics_cts_programs_cmps components_academics_cts_programs_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs_cmps
    ADD CONSTRAINT components_academics_cts_programs_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5132 (class 2606 OID 5316703)
-- Name: components_academics_cts_programs components_academics_cts_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs
    ADD CONSTRAINT components_academics_cts_programs_pkey PRIMARY KEY (id);


--
-- TOC entry 5139 (class 2606 OID 5316726)
-- Name: components_academics_cts_programs_cmps components_academics_cts_programs_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs_cmps
    ADD CONSTRAINT components_academics_cts_programs_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5141 (class 2606 OID 5316742)
-- Name: components_academics_pmkvies_cmps components_academics_pmkvies_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies_cmps
    ADD CONSTRAINT components_academics_pmkvies_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5148 (class 2606 OID 5316754)
-- Name: components_academics_pmkvies components_academics_pmkvies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies
    ADD CONSTRAINT components_academics_pmkvies_pkey PRIMARY KEY (id);


--
-- TOC entry 5146 (class 2606 OID 5316747)
-- Name: components_academics_pmkvies_cmps components_academics_pmkvies_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies_cmps
    ADD CONSTRAINT components_academics_pmkvies_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5150 (class 2606 OID 5316771)
-- Name: components_academics_stts_cmps components_academics_stts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts_cmps
    ADD CONSTRAINT components_academics_stts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5157 (class 2606 OID 5316783)
-- Name: components_academics_stts components_academics_stts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts
    ADD CONSTRAINT components_academics_stts_pkey PRIMARY KEY (id);


--
-- TOC entry 5155 (class 2606 OID 5316776)
-- Name: components_academics_stts_cmps components_academics_stts_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts_cmps
    ADD CONSTRAINT components_academics_stts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5066 (class 2606 OID 5316468)
-- Name: components_admission_admission_links components_admission_admission_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_admission_links
    ADD CONSTRAINT components_admission_admission_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5048 (class 2606 OID 5316411)
-- Name: components_admission_prospectuses_cmps components_admission_prospectuses_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses_cmps
    ADD CONSTRAINT components_admission_prospectuses_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5055 (class 2606 OID 5316423)
-- Name: components_admission_prospectuses components_admission_prospectuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses
    ADD CONSTRAINT components_admission_prospectuses_pkey PRIMARY KEY (id);


--
-- TOC entry 5053 (class 2606 OID 5316416)
-- Name: components_admission_prospectuses_cmps components_admission_prospectuses_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses_cmps
    ADD CONSTRAINT components_admission_prospectuses_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5057 (class 2606 OID 5316439)
-- Name: components_admission_user_manuals_cmps components_admission_user_manuals_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals_cmps
    ADD CONSTRAINT components_admission_user_manuals_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5064 (class 2606 OID 5316451)
-- Name: components_admission_user_manuals components_admission_user_manuals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals
    ADD CONSTRAINT components_admission_user_manuals_pkey PRIMARY KEY (id);


--
-- TOC entry 5062 (class 2606 OID 5316444)
-- Name: components_admission_user_manuals_cmps components_admission_user_manuals_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals_cmps
    ADD CONSTRAINT components_admission_user_manuals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4821 (class 2606 OID 5315558)
-- Name: components_download_circulars_cmps components_download_circulars_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars_cmps
    ADD CONSTRAINT components_download_circulars_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4828 (class 2606 OID 5315570)
-- Name: components_download_circulars components_download_circulars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars
    ADD CONSTRAINT components_download_circulars_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 5315563)
-- Name: components_download_circulars_cmps components_download_circulars_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars_cmps
    ADD CONSTRAINT components_download_circulars_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4799 (class 2606 OID 5315448)
-- Name: components_download_forms_cmps components_download_forms_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms_cmps
    ADD CONSTRAINT components_download_forms_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4806 (class 2606 OID 5315460)
-- Name: components_download_forms components_download_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms
    ADD CONSTRAINT components_download_forms_pkey PRIMARY KEY (id);


--
-- TOC entry 4804 (class 2606 OID 5315453)
-- Name: components_download_forms_cmps components_download_forms_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms_cmps
    ADD CONSTRAINT components_download_forms_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4810 (class 2606 OID 5315504)
-- Name: components_download_ranklists_cmps components_download_ranklists_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists_cmps
    ADD CONSTRAINT components_download_ranklists_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4817 (class 2606 OID 5315516)
-- Name: components_download_ranklists components_download_ranklists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists
    ADD CONSTRAINT components_download_ranklists_pkey PRIMARY KEY (id);


--
-- TOC entry 4815 (class 2606 OID 5315509)
-- Name: components_download_ranklists_cmps components_download_ranklists_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists_cmps
    ADD CONSTRAINT components_download_ranklists_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4920 (class 2606 OID 5315958)
-- Name: components_facilities_hostels_cmps components_facilities_hostels_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels_cmps
    ADD CONSTRAINT components_facilities_hostels_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4927 (class 2606 OID 5315970)
-- Name: components_facilities_hostels components_facilities_hostels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels
    ADD CONSTRAINT components_facilities_hostels_pkey PRIMARY KEY (id);


--
-- TOC entry 4925 (class 2606 OID 5315963)
-- Name: components_facilities_hostels_cmps components_facilities_hostels_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels_cmps
    ADD CONSTRAINT components_facilities_hostels_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4939 (class 2606 OID 5316024)
-- Name: components_facilities_industry_tie_ups_cmps components_facilities_industry_tie_ups_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups_cmps
    ADD CONSTRAINT components_facilities_industry_tie_ups_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4945 (class 2606 OID 5316036)
-- Name: components_facilities_industry_tie_ups components_facilities_industry_tie_ups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups
    ADD CONSTRAINT components_facilities_industry_tie_ups_pkey PRIMARY KEY (id);


--
-- TOC entry 4943 (class 2606 OID 5316029)
-- Name: components_facilities_industry_tie_ups_cmps components_facilities_industry_tie_ups_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups_cmps
    ADD CONSTRAINT components_facilities_industry_tie_ups_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4909 (class 2606 OID 5315904)
-- Name: components_facilities_libraries_cmps components_facilities_libraries_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries_cmps
    ADD CONSTRAINT components_facilities_libraries_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4916 (class 2606 OID 5315916)
-- Name: components_facilities_libraries components_facilities_libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries
    ADD CONSTRAINT components_facilities_libraries_pkey PRIMARY KEY (id);


--
-- TOC entry 4914 (class 2606 OID 5315909)
-- Name: components_facilities_libraries_cmps components_facilities_libraries_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries_cmps
    ADD CONSTRAINT components_facilities_libraries_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4963 (class 2606 OID 5316112)
-- Name: components_facilities_other_activities_cmps components_facilities_other_activities_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities_cmps
    ADD CONSTRAINT components_facilities_other_activities_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4969 (class 2606 OID 5316124)
-- Name: components_facilities_other_activities components_facilities_other_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities
    ADD CONSTRAINT components_facilities_other_activities_pkey PRIMARY KEY (id);


--
-- TOC entry 4967 (class 2606 OID 5316117)
-- Name: components_facilities_other_activities_cmps components_facilities_other_activities_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities_cmps
    ADD CONSTRAINT components_facilities_other_activities_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4949 (class 2606 OID 5316063)
-- Name: components_facilities_women_cells_cmps components_facilities_women_cells_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells_cmps
    ADD CONSTRAINT components_facilities_women_cells_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4956 (class 2606 OID 5316075)
-- Name: components_facilities_women_cells components_facilities_women_cells_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells
    ADD CONSTRAINT components_facilities_women_cells_pkey PRIMARY KEY (id);


--
-- TOC entry 4954 (class 2606 OID 5316068)
-- Name: components_facilities_women_cells_cmps components_facilities_women_cells_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells_cmps
    ADD CONSTRAINT components_facilities_women_cells_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4741 (class 2606 OID 5314985)
-- Name: components_home_homes_cmps components_home_homes_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes_cmps
    ADD CONSTRAINT components_home_homes_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 5314913)
-- Name: components_home_homes components_home_homes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes
    ADD CONSTRAINT components_home_homes_pkey PRIMARY KEY (id);


--
-- TOC entry 4746 (class 2606 OID 5314990)
-- Name: components_home_homes_cmps components_home_homes_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes_cmps
    ADD CONSTRAINT components_home_homes_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5070 (class 2606 OID 5316486)
-- Name: components_institute_awards_cmps components_institute_awards_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards_cmps
    ADD CONSTRAINT components_institute_awards_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5077 (class 2606 OID 5316498)
-- Name: components_institute_awards components_institute_awards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards
    ADD CONSTRAINT components_institute_awards_pkey PRIMARY KEY (id);


--
-- TOC entry 5075 (class 2606 OID 5316491)
-- Name: components_institute_awards_cmps components_institute_awards_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards_cmps
    ADD CONSTRAINT components_institute_awards_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5081 (class 2606 OID 5316523)
-- Name: components_institute_certifications_cmps components_institute_certifications_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications_cmps
    ADD CONSTRAINT components_institute_certifications_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5088 (class 2606 OID 5316535)
-- Name: components_institute_certifications components_institute_certifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications
    ADD CONSTRAINT components_institute_certifications_pkey PRIMARY KEY (id);


--
-- TOC entry 5086 (class 2606 OID 5316528)
-- Name: components_institute_certifications_cmps components_institute_certifications_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications_cmps
    ADD CONSTRAINT components_institute_certifications_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5121 (class 2606 OID 5316656)
-- Name: components_institute_gradings_cmps components_institute_gradings_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings_cmps
    ADD CONSTRAINT components_institute_gradings_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5128 (class 2606 OID 5316668)
-- Name: components_institute_gradings components_institute_gradings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings
    ADD CONSTRAINT components_institute_gradings_pkey PRIMARY KEY (id);


--
-- TOC entry 5126 (class 2606 OID 5316661)
-- Name: components_institute_gradings_cmps components_institute_gradings_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings_cmps
    ADD CONSTRAINT components_institute_gradings_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5114 (class 2606 OID 5316635)
-- Name: components_institute_imcs_cmps components_institute_imcs_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs_cmps
    ADD CONSTRAINT components_institute_imcs_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 5315219)
-- Name: components_institute_imcs components_institute_imcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs
    ADD CONSTRAINT components_institute_imcs_pkey PRIMARY KEY (id);


--
-- TOC entry 5119 (class 2606 OID 5316640)
-- Name: components_institute_imcs_cmps components_institute_imcs_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs_cmps
    ADD CONSTRAINT components_institute_imcs_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5092 (class 2606 OID 5316560)
-- Name: components_institute_infrastructures_cmps components_institute_infrastructures_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures_cmps
    ADD CONSTRAINT components_institute_infrastructures_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5099 (class 2606 OID 5316572)
-- Name: components_institute_infrastructures components_institute_infrastructures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures
    ADD CONSTRAINT components_institute_infrastructures_pkey PRIMARY KEY (id);


--
-- TOC entry 5097 (class 2606 OID 5316565)
-- Name: components_institute_infrastructures_cmps components_institute_infrastructures_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures_cmps
    ADD CONSTRAINT components_institute_infrastructures_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5159 (class 2606 OID 5316799)
-- Name: components_institute_institutes_cmps components_institute_institutes_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes_cmps
    ADD CONSTRAINT components_institute_institutes_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4762 (class 2606 OID 5315131)
-- Name: components_institute_institutes components_institute_institutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes
    ADD CONSTRAINT components_institute_institutes_pkey PRIMARY KEY (id);


--
-- TOC entry 5164 (class 2606 OID 5316804)
-- Name: components_institute_institutes_cmps components_institute_institutes_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes_cmps
    ADD CONSTRAINT components_institute_institutes_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5103 (class 2606 OID 5316598)
-- Name: components_institute_ptas_cmps components_institute_ptas_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas_cmps
    ADD CONSTRAINT components_institute_ptas_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5110 (class 2606 OID 5316610)
-- Name: components_institute_ptas components_institute_ptas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas
    ADD CONSTRAINT components_institute_ptas_pkey PRIMARY KEY (id);


--
-- TOC entry 5108 (class 2606 OID 5316603)
-- Name: components_institute_ptas_cmps components_institute_ptas_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas_cmps
    ADD CONSTRAINT components_institute_ptas_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4843 (class 2606 OID 5315680)
-- Name: components_notifications_quotations_cmps components_notifications_quotations_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations_cmps
    ADD CONSTRAINT components_notifications_quotations_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4850 (class 2606 OID 5315692)
-- Name: components_notifications_quotations components_notifications_quotations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations
    ADD CONSTRAINT components_notifications_quotations_pkey PRIMARY KEY (id);


--
-- TOC entry 4848 (class 2606 OID 5315685)
-- Name: components_notifications_quotations_cmps components_notifications_quotations_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations_cmps
    ADD CONSTRAINT components_notifications_quotations_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4832 (class 2606 OID 5315617)
-- Name: components_notifications_tenders_cmps components_notifications_tenders_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders_cmps
    ADD CONSTRAINT components_notifications_tenders_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4839 (class 2606 OID 5315629)
-- Name: components_notifications_tenders components_notifications_tenders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders
    ADD CONSTRAINT components_notifications_tenders_pkey PRIMARY KEY (id);


--
-- TOC entry 4837 (class 2606 OID 5315622)
-- Name: components_notifications_tenders_cmps components_notifications_tenders_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders_cmps
    ADD CONSTRAINT components_notifications_tenders_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4874 (class 2606 OID 5315790)
-- Name: components_placement_events_cmps components_placement_events_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events_cmps
    ADD CONSTRAINT components_placement_events_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4881 (class 2606 OID 5315802)
-- Name: components_placement_events components_placement_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events
    ADD CONSTRAINT components_placement_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4879 (class 2606 OID 5315795)
-- Name: components_placement_events_cmps components_placement_events_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events_cmps
    ADD CONSTRAINT components_placement_events_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4886 (class 2606 OID 5315827)
-- Name: components_placement_industrial_expereinces_cmps components_placement_industrial_expereinces_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces_cmps
    ADD CONSTRAINT components_placement_industrial_expereinces_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4892 (class 2606 OID 5315839)
-- Name: components_placement_industrial_expereinces components_placement_industrial_expereinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces
    ADD CONSTRAINT components_placement_industrial_expereinces_pkey PRIMARY KEY (id);


--
-- TOC entry 4890 (class 2606 OID 5315832)
-- Name: components_placement_industrial_expereinces_cmps components_placement_industrial_expereinces_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces_cmps
    ADD CONSTRAINT components_placement_industrial_expereinces_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4863 (class 2606 OID 5315749)
-- Name: components_placement_notifications_cmps components_placement_notifications_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications_cmps
    ADD CONSTRAINT components_placement_notifications_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4870 (class 2606 OID 5315761)
-- Name: components_placement_notifications components_placement_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications
    ADD CONSTRAINT components_placement_notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4868 (class 2606 OID 5315754)
-- Name: components_placement_notifications_cmps components_placement_notifications_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications_cmps
    ADD CONSTRAINT components_placement_notifications_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4894 (class 2606 OID 5315855)
-- Name: components_placement_results_cmps components_placement_results_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results_cmps
    ADD CONSTRAINT components_placement_results_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4901 (class 2606 OID 5315867)
-- Name: components_placement_results components_placement_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results
    ADD CONSTRAINT components_placement_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4899 (class 2606 OID 5315860)
-- Name: components_placement_results_cmps components_placement_results_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results_cmps
    ADD CONSTRAINT components_placement_results_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5026 (class 2606 OID 5316327)
-- Name: components_shared_a_lumni_lists components_shared_a_lumni_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_a_lumni_lists
    ADD CONSTRAINT components_shared_a_lumni_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4993 (class 2606 OID 5316215)
-- Name: components_shared_achievements_lists components_shared_achievements_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_achievements_lists
    ADD CONSTRAINT components_shared_achievements_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 5004 (class 2606 OID 5316253)
-- Name: components_shared_activities components_shared_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_activities
    ADD CONSTRAINT components_shared_activities_pkey PRIMARY KEY (id);


--
-- TOC entry 4730 (class 2606 OID 5314873)
-- Name: components_shared_addresses_cmps components_shared_addresses_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses_cmps
    ADD CONSTRAINT components_shared_addresses_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4737 (class 2606 OID 5314885)
-- Name: components_shared_addresses components_shared_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses
    ADD CONSTRAINT components_shared_addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 4735 (class 2606 OID 5314878)
-- Name: components_shared_addresses_cmps components_shared_addresses_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses_cmps
    ADD CONSTRAINT components_shared_addresses_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4766 (class 2606 OID 5315198)
-- Name: components_shared_announcements components_shared_announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_announcements
    ADD CONSTRAINT components_shared_announcements_pkey PRIMARY KEY (id);


--
-- TOC entry 4852 (class 2606 OID 5315709)
-- Name: components_shared_auctions_cmps components_shared_auctions_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions_cmps
    ADD CONSTRAINT components_shared_auctions_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4859 (class 2606 OID 5315723)
-- Name: components_shared_auctions components_shared_auctions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions
    ADD CONSTRAINT components_shared_auctions_pkey PRIMARY KEY (id);


--
-- TOC entry 4857 (class 2606 OID 5315714)
-- Name: components_shared_auctions_cmps components_shared_auctions_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions_cmps
    ADD CONSTRAINT components_shared_auctions_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5068 (class 2606 OID 5316477)
-- Name: components_shared_awards_lists components_shared_awards_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_awards_lists
    ADD CONSTRAINT components_shared_awards_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4936 (class 2606 OID 5316007)
-- Name: components_shared_bullet_points components_shared_bullet_points_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_bullet_points
    ADD CONSTRAINT components_shared_bullet_points_pkey PRIMARY KEY (id);


--
-- TOC entry 5079 (class 2606 OID 5316514)
-- Name: components_shared_certfication_lists components_shared_certfication_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_certfication_lists
    ADD CONSTRAINT components_shared_certfication_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4971 (class 2606 OID 5316142)
-- Name: components_shared_contacts components_shared_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_contacts
    ADD CONSTRAINT components_shared_contacts_pkey PRIMARY KEY (id);


--
-- TOC entry 4819 (class 2606 OID 5315549)
-- Name: components_shared_data components_shared_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_data
    ADD CONSTRAINT components_shared_data_pkey PRIMARY KEY (id);


--
-- TOC entry 4795 (class 2606 OID 5315385)
-- Name: components_shared_descriptions components_shared_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_descriptions
    ADD CONSTRAINT components_shared_descriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 5314864)
-- Name: components_shared_districts components_shared_districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_districts
    ADD CONSTRAINT components_shared_districts_pkey PRIMARY KEY (id);


--
-- TOC entry 4764 (class 2606 OID 5315164)
-- Name: components_shared_educations components_shared_educations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_educations
    ADD CONSTRAINT components_shared_educations_pkey PRIMARY KEY (id);


--
-- TOC entry 4720 (class 2606 OID 5314818)
-- Name: components_shared_event_contents components_shared_event_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_event_contents
    ADD CONSTRAINT components_shared_event_contents_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 5314797)
-- Name: components_shared_events_cmps components_shared_events_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events_cmps
    ADD CONSTRAINT components_shared_events_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4718 (class 2606 OID 5314809)
-- Name: components_shared_events components_shared_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events
    ADD CONSTRAINT components_shared_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4716 (class 2606 OID 5314802)
-- Name: components_shared_events_cmps components_shared_events_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events_cmps
    ADD CONSTRAINT components_shared_events_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4797 (class 2606 OID 5315439)
-- Name: components_shared_form_data components_shared_form_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_form_data
    ADD CONSTRAINT components_shared_form_data_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 5314759)
-- Name: components_shared_galleries_cmps components_shared_galleries_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries_cmps
    ADD CONSTRAINT components_shared_galleries_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4707 (class 2606 OID 5314771)
-- Name: components_shared_galleries components_shared_galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries
    ADD CONSTRAINT components_shared_galleries_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 5314764)
-- Name: components_shared_galleries_cmps components_shared_galleries_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries_cmps
    ADD CONSTRAINT components_shared_galleries_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4709 (class 2606 OID 5314780)
-- Name: components_shared_gallery_lists components_shared_gallery_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_gallery_lists
    ADD CONSTRAINT components_shared_gallery_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4929 (class 2606 OID 5315986)
-- Name: components_shared_hostels_cmps components_shared_hostels_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels_cmps
    ADD CONSTRAINT components_shared_hostels_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4918 (class 2606 OID 5315949)
-- Name: components_shared_hostels components_shared_hostels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels
    ADD CONSTRAINT components_shared_hostels_pkey PRIMARY KEY (id);


--
-- TOC entry 4934 (class 2606 OID 5315991)
-- Name: components_shared_hostels_cmps components_shared_hostels_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels_cmps
    ADD CONSTRAINT components_shared_hostels_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5112 (class 2606 OID 5316626)
-- Name: components_shared_imc_lists components_shared_imc_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_imc_lists
    ADD CONSTRAINT components_shared_imc_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4883 (class 2606 OID 5315818)
-- Name: components_shared_industrial_experiences components_shared_industrial_experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_industrial_experiences
    ADD CONSTRAINT components_shared_industrial_experiences_pkey PRIMARY KEY (id);


--
-- TOC entry 4947 (class 2606 OID 5316052)
-- Name: components_shared_industry_tie_ups components_shared_industry_tie_ups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_industry_tie_ups
    ADD CONSTRAINT components_shared_industry_tie_ups_pkey PRIMARY KEY (id);


--
-- TOC entry 5090 (class 2606 OID 5316551)
-- Name: components_shared_infrastrture_lists components_shared_infrastrture_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_infrastrture_lists
    ADD CONSTRAINT components_shared_infrastrture_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4668 (class 2606 OID 5314626)
-- Name: components_shared_iti_descriptions components_shared_iti_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_iti_descriptions
    ADD CONSTRAINT components_shared_iti_descriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 4907 (class 2606 OID 5315895)
-- Name: components_shared_libraries components_shared_libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_libraries
    ADD CONSTRAINT components_shared_libraries_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 5314855)
-- Name: components_shared_locations components_shared_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_locations
    ADD CONSTRAINT components_shared_locations_pkey PRIMARY KEY (id);


--
-- TOC entry 4722 (class 2606 OID 5314835)
-- Name: components_shared_maps components_shared_maps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_maps
    ADD CONSTRAINT components_shared_maps_pkey PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 5315241)
-- Name: components_shared_members components_shared_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_members
    ADD CONSTRAINT components_shared_members_pkey PRIMARY KEY (id);


--
-- TOC entry 4670 (class 2606 OID 5314642)
-- Name: components_shared_missions components_shared_missions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_missions
    ADD CONSTRAINT components_shared_missions_pkey PRIMARY KEY (id);


--
-- TOC entry 4674 (class 2606 OID 5314664)
-- Name: components_shared_news_cmps components_shared_news_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_cmps
    ADD CONSTRAINT components_shared_news_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 5314701)
-- Name: components_shared_news_contents components_shared_news_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_contents
    ADD CONSTRAINT components_shared_news_contents_pkey PRIMARY KEY (id);


--
-- TOC entry 4683 (class 2606 OID 5314685)
-- Name: components_shared_news_headings components_shared_news_headings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_headings
    ADD CONSTRAINT components_shared_news_headings_pkey PRIMARY KEY (id);


--
-- TOC entry 4681 (class 2606 OID 5314676)
-- Name: components_shared_news components_shared_news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news
    ADD CONSTRAINT components_shared_news_pkey PRIMARY KEY (id);


--
-- TOC entry 4679 (class 2606 OID 5314669)
-- Name: components_shared_news_cmps components_shared_news_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_cmps
    ADD CONSTRAINT components_shared_news_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4830 (class 2606 OID 5315608)
-- Name: components_shared_notifications components_shared_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_notifications
    ADD CONSTRAINT components_shared_notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 5015 (class 2606 OID 5316290)
-- Name: components_shared_nss_activities components_shared_nss_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_nss_activities
    ADD CONSTRAINT components_shared_nss_activities_pkey PRIMARY KEY (id);


--
-- TOC entry 4960 (class 2606 OID 5316103)
-- Name: components_shared_other_activities components_shared_other_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_other_activities
    ADD CONSTRAINT components_shared_other_activities_pkey PRIMARY KEY (id);


--
-- TOC entry 4905 (class 2606 OID 5315881)
-- Name: components_shared_placed_companies components_shared_placed_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placed_companies
    ADD CONSTRAINT components_shared_placed_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 4861 (class 2606 OID 5315740)
-- Name: components_shared_placement_notifications components_shared_placement_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placement_notifications
    ADD CONSTRAINT components_shared_placement_notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4903 (class 2606 OID 5315874)
-- Name: components_shared_placement_results components_shared_placement_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_placement_results
    ADD CONSTRAINT components_shared_placement_results_pkey PRIMARY KEY (id);


--
-- TOC entry 4872 (class 2606 OID 5315781)
-- Name: components_shared_plcement_events components_shared_plcement_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_plcement_events
    ADD CONSTRAINT components_shared_plcement_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4760 (class 2606 OID 5315089)
-- Name: components_shared_principles components_shared_principles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_principles
    ADD CONSTRAINT components_shared_principles_pkey PRIMARY KEY (id);


--
-- TOC entry 5130 (class 2606 OID 5316682)
-- Name: components_shared_programs components_shared_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_programs
    ADD CONSTRAINT components_shared_programs_pkey PRIMARY KEY (id);


--
-- TOC entry 5101 (class 2606 OID 5316589)
-- Name: components_shared_pta_lists components_shared_pta_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_pta_lists
    ADD CONSTRAINT components_shared_pta_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4841 (class 2606 OID 5315664)
-- Name: components_shared_quotations components_shared_quotations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_quotations
    ADD CONSTRAINT components_shared_quotations_pkey PRIMARY KEY (id);


--
-- TOC entry 4808 (class 2606 OID 5315495)
-- Name: components_shared_ranklists components_shared_ranklists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_ranklists
    ADD CONSTRAINT components_shared_ranklists_pkey PRIMARY KEY (id);


--
-- TOC entry 4793 (class 2606 OID 5315363)
-- Name: components_shared_table_data components_shared_table_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_table_data
    ADD CONSTRAINT components_shared_table_data_pkey PRIMARY KEY (id);


--
-- TOC entry 4786 (class 2606 OID 5315351)
-- Name: components_shared_tables_cmps components_shared_tables_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables_cmps
    ADD CONSTRAINT components_shared_tables_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 5315277)
-- Name: components_shared_tables components_shared_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables
    ADD CONSTRAINT components_shared_tables_pkey PRIMARY KEY (id);


--
-- TOC entry 4791 (class 2606 OID 5315356)
-- Name: components_shared_tables_cmps components_shared_tables_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables_cmps
    ADD CONSTRAINT components_shared_tables_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4698 (class 2606 OID 5314742)
-- Name: components_shared_trade_lists components_shared_trade_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trade_lists
    ADD CONSTRAINT components_shared_trade_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4696 (class 2606 OID 5314733)
-- Name: components_shared_trade_names components_shared_trade_names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trade_names
    ADD CONSTRAINT components_shared_trade_names_pkey PRIMARY KEY (id);


--
-- TOC entry 4687 (class 2606 OID 5314712)
-- Name: components_shared_trades_cmps components_shared_trades_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades_cmps
    ADD CONSTRAINT components_shared_trades_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4694 (class 2606 OID 5314724)
-- Name: components_shared_trades components_shared_trades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades
    ADD CONSTRAINT components_shared_trades_pkey PRIMARY KEY (id);


--
-- TOC entry 4692 (class 2606 OID 5314717)
-- Name: components_shared_trades_cmps components_shared_trades_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades_cmps
    ADD CONSTRAINT components_shared_trades_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4982 (class 2606 OID 5316183)
-- Name: components_shared_trainnees_lists components_shared_trainnees_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trainnees_lists
    ADD CONSTRAINT components_shared_trainnees_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 5037 (class 2606 OID 5316366)
-- Name: components_shared_trainnes_council_lists components_shared_trainnes_council_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trainnes_council_lists
    ADD CONSTRAINT components_shared_trainnes_council_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 5314844)
-- Name: components_shared_useful_links components_shared_useful_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_useful_links
    ADD CONSTRAINT components_shared_useful_links_pkey PRIMARY KEY (id);


--
-- TOC entry 4672 (class 2606 OID 5314653)
-- Name: components_shared_visions components_shared_visions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_visions
    ADD CONSTRAINT components_shared_visions_pkey PRIMARY KEY (id);


--
-- TOC entry 4958 (class 2606 OID 5316091)
-- Name: components_shared_women_cells components_shared_women_cells_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_women_cells
    ADD CONSTRAINT components_shared_women_cells_pkey PRIMARY KEY (id);


--
-- TOC entry 4984 (class 2606 OID 5316194)
-- Name: components_trainees_achievements_cmps components_trainees_achievements_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements_cmps
    ADD CONSTRAINT components_trainees_achievements_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4991 (class 2606 OID 5316206)
-- Name: components_trainees_achievements components_trainees_achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements
    ADD CONSTRAINT components_trainees_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 4989 (class 2606 OID 5316199)
-- Name: components_trainees_achievements_cmps components_trainees_achievements_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements_cmps
    ADD CONSTRAINT components_trainees_achievements_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4995 (class 2606 OID 5316232)
-- Name: components_trainees_activities_cmps components_trainees_activities_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities_cmps
    ADD CONSTRAINT components_trainees_activities_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5002 (class 2606 OID 5316244)
-- Name: components_trainees_activities components_trainees_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities
    ADD CONSTRAINT components_trainees_activities_pkey PRIMARY KEY (id);


--
-- TOC entry 5000 (class 2606 OID 5316237)
-- Name: components_trainees_activities_cmps components_trainees_activities_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities_cmps
    ADD CONSTRAINT components_trainees_activities_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5017 (class 2606 OID 5316306)
-- Name: components_trainees_alumni_cmps components_trainees_alumni_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni_cmps
    ADD CONSTRAINT components_trainees_alumni_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5024 (class 2606 OID 5316318)
-- Name: components_trainees_alumni components_trainees_alumni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni
    ADD CONSTRAINT components_trainees_alumni_pkey PRIMARY KEY (id);


--
-- TOC entry 5022 (class 2606 OID 5316311)
-- Name: components_trainees_alumni_cmps components_trainees_alumni_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni_cmps
    ADD CONSTRAINT components_trainees_alumni_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5006 (class 2606 OID 5316269)
-- Name: components_trainees_nsses_cmps components_trainees_nsses_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses_cmps
    ADD CONSTRAINT components_trainees_nsses_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5013 (class 2606 OID 5316281)
-- Name: components_trainees_nsses components_trainees_nsses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses
    ADD CONSTRAINT components_trainees_nsses_pkey PRIMARY KEY (id);


--
-- TOC entry 5011 (class 2606 OID 5316274)
-- Name: components_trainees_nsses_cmps components_trainees_nsses_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses_cmps
    ADD CONSTRAINT components_trainees_nsses_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5039 (class 2606 OID 5316382)
-- Name: components_trainees_results_cmps components_trainees_results_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results_cmps
    ADD CONSTRAINT components_trainees_results_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5046 (class 2606 OID 5316394)
-- Name: components_trainees_results components_trainees_results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results
    ADD CONSTRAINT components_trainees_results_pkey PRIMARY KEY (id);


--
-- TOC entry 5044 (class 2606 OID 5316387)
-- Name: components_trainees_results_cmps components_trainees_results_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results_cmps
    ADD CONSTRAINT components_trainees_results_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5029 (class 2606 OID 5316345)
-- Name: components_trainees_trainees_councils_cmps components_trainees_trainees_councils_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils_cmps
    ADD CONSTRAINT components_trainees_trainees_councils_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5035 (class 2606 OID 5316357)
-- Name: components_trainees_trainees_councils components_trainees_trainees_councils_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils
    ADD CONSTRAINT components_trainees_trainees_councils_pkey PRIMARY KEY (id);


--
-- TOC entry 5033 (class 2606 OID 5316350)
-- Name: components_trainees_trainees_councils_cmps components_trainees_trainees_councils_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils_cmps
    ADD CONSTRAINT components_trainees_trainees_councils_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4973 (class 2606 OID 5316153)
-- Name: components_trainees_trainees_lists_cmps components_trainees_trainees_lists_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists_cmps
    ADD CONSTRAINT components_trainees_trainees_lists_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4980 (class 2606 OID 5316165)
-- Name: components_trainees_trainees_lists components_trainees_trainees_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists
    ADD CONSTRAINT components_trainees_trainees_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4978 (class 2606 OID 5316158)
-- Name: components_trainees_trainees_lists_cmps components_trainees_trainees_lists_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists_cmps
    ADD CONSTRAINT components_trainees_trainees_lists_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4587 (class 2606 OID 5314129)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4589 (class 2606 OID 5314133)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 4479 (class 2606 OID 5313877)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 4582 (class 2606 OID 5314119)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 4499 (class 2606 OID 5313911)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 4559 (class 2606 OID 5314055)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4657 (class 2606 OID 5314249)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4659 (class 2606 OID 5314253)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 4554 (class 2606 OID 5314043)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4572 (class 2606 OID 5314091)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4475 (class 2606 OID 5313868)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 4577 (class 2606 OID 5314109)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 4473 (class 2606 OID 5313859)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 4471 (class 2606 OID 5313852)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4509 (class 2606 OID 5313935)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 4601 (class 2606 OID 5314153)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4603 (class 2606 OID 5314157)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 4504 (class 2606 OID 5313923)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 4569 (class 2606 OID 5314079)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 5314261)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4666 (class 2606 OID 5314265)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 4564 (class 2606 OID 5314067)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4574 (class 2606 OID 5314100)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 4514 (class 2606 OID 5313947)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 4607 (class 2606 OID 5314165)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4609 (class 2606 OID 5314169)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 4621 (class 2606 OID 5314188)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4623 (class 2606 OID 5314192)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 4519 (class 2606 OID 5313959)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 4614 (class 2606 OID 5314176)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4616 (class 2606 OID 5314180)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 4524 (class 2606 OID 5313971)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4628 (class 2606 OID 5314200)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4630 (class 2606 OID 5314204)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 4529 (class 2606 OID 5313983)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4534 (class 2606 OID 5313995)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4635 (class 2606 OID 5314212)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4637 (class 2606 OID 5314216)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 4594 (class 2606 OID 5314141)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4596 (class 2606 OID 5314145)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 4490 (class 2606 OID 5313897)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 4492 (class 2606 OID 5313899)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 4494 (class 2606 OID 5313895)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 5315307)
-- Name: vatakaras_cmps vatakaras_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras_cmps
    ADD CONSTRAINT vatakaras_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 5315321)
-- Name: vatakaras vatakaras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras
    ADD CONSTRAINT vatakaras_pkey PRIMARY KEY (id);


--
-- TOC entry 4779 (class 2606 OID 5315312)
-- Name: vatakaras_cmps vatakaras_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras_cmps
    ADD CONSTRAINT vatakaras_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 4536 (class 1259 OID 5314009)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 4537 (class 1259 OID 5314008)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 4638 (class 1259 OID 5314225)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 4639 (class 1259 OID 5314226)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 4640 (class 1259 OID 5314229)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 4540 (class 1259 OID 5314010)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 4546 (class 1259 OID 5314033)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 4547 (class 1259 OID 5314032)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 4550 (class 1259 OID 5314034)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 4541 (class 1259 OID 5314021)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 4542 (class 1259 OID 5314020)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 4645 (class 1259 OID 5314237)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 4646 (class 1259 OID 5314238)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 4647 (class 1259 OID 5314241)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 4648 (class 1259 OID 5314242)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 4545 (class 1259 OID 5314022)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 4749 (class 1259 OID 5315019)
-- Name: chackais_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_component_type_idx ON public.chackais_cmps USING btree (component_type);


--
-- TOC entry 4754 (class 1259 OID 5315033)
-- Name: chackais_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_created_by_id_fk ON public.chackais USING btree (created_by_id);


--
-- TOC entry 4755 (class 1259 OID 5315032)
-- Name: chackais_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_documents_idx ON public.chackais USING btree (document_id, locale, published_at);


--
-- TOC entry 4750 (class 1259 OID 5315020)
-- Name: chackais_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_entity_fk ON public.chackais_cmps USING btree (entity_id);


--
-- TOC entry 4751 (class 1259 OID 5315018)
-- Name: chackais_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_field_idx ON public.chackais_cmps USING btree (field);


--
-- TOC entry 4758 (class 1259 OID 5315034)
-- Name: chackais_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chackais_updated_by_id_fk ON public.chackais USING btree (updated_by_id);


--
-- TOC entry 5135 (class 1259 OID 5316723)
-- Name: components_academics_cts_programs_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_cts_programs_component_type_idx ON public.components_academics_cts_programs_cmps USING btree (component_type);


--
-- TOC entry 5136 (class 1259 OID 5316724)
-- Name: components_academics_cts_programs_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_cts_programs_entity_fk ON public.components_academics_cts_programs_cmps USING btree (entity_id);


--
-- TOC entry 5137 (class 1259 OID 5316722)
-- Name: components_academics_cts_programs_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_cts_programs_field_idx ON public.components_academics_cts_programs_cmps USING btree (field);


--
-- TOC entry 5142 (class 1259 OID 5316744)
-- Name: components_academics_pmkvies_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_pmkvies_component_type_idx ON public.components_academics_pmkvies_cmps USING btree (component_type);


--
-- TOC entry 5143 (class 1259 OID 5316745)
-- Name: components_academics_pmkvies_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_pmkvies_entity_fk ON public.components_academics_pmkvies_cmps USING btree (entity_id);


--
-- TOC entry 5144 (class 1259 OID 5316743)
-- Name: components_academics_pmkvies_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_pmkvies_field_idx ON public.components_academics_pmkvies_cmps USING btree (field);


--
-- TOC entry 5151 (class 1259 OID 5316773)
-- Name: components_academics_stts_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_stts_component_type_idx ON public.components_academics_stts_cmps USING btree (component_type);


--
-- TOC entry 5152 (class 1259 OID 5316774)
-- Name: components_academics_stts_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_stts_entity_fk ON public.components_academics_stts_cmps USING btree (entity_id);


--
-- TOC entry 5153 (class 1259 OID 5316772)
-- Name: components_academics_stts_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_academics_stts_field_idx ON public.components_academics_stts_cmps USING btree (field);


--
-- TOC entry 5049 (class 1259 OID 5316413)
-- Name: components_admission_prospectuses_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_prospectuses_component_type_idx ON public.components_admission_prospectuses_cmps USING btree (component_type);


--
-- TOC entry 5050 (class 1259 OID 5316414)
-- Name: components_admission_prospectuses_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_prospectuses_entity_fk ON public.components_admission_prospectuses_cmps USING btree (entity_id);


--
-- TOC entry 5051 (class 1259 OID 5316412)
-- Name: components_admission_prospectuses_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_prospectuses_field_idx ON public.components_admission_prospectuses_cmps USING btree (field);


--
-- TOC entry 5058 (class 1259 OID 5316441)
-- Name: components_admission_user_manuals_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_user_manuals_component_type_idx ON public.components_admission_user_manuals_cmps USING btree (component_type);


--
-- TOC entry 5059 (class 1259 OID 5316442)
-- Name: components_admission_user_manuals_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_user_manuals_entity_fk ON public.components_admission_user_manuals_cmps USING btree (entity_id);


--
-- TOC entry 5060 (class 1259 OID 5316440)
-- Name: components_admission_user_manuals_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_admission_user_manuals_field_idx ON public.components_admission_user_manuals_cmps USING btree (field);


--
-- TOC entry 4822 (class 1259 OID 5315560)
-- Name: components_download_circulars_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_circulars_component_type_idx ON public.components_download_circulars_cmps USING btree (component_type);


--
-- TOC entry 4823 (class 1259 OID 5315561)
-- Name: components_download_circulars_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_circulars_entity_fk ON public.components_download_circulars_cmps USING btree (entity_id);


--
-- TOC entry 4824 (class 1259 OID 5315559)
-- Name: components_download_circulars_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_circulars_field_idx ON public.components_download_circulars_cmps USING btree (field);


--
-- TOC entry 4800 (class 1259 OID 5315450)
-- Name: components_download_forms_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_forms_component_type_idx ON public.components_download_forms_cmps USING btree (component_type);


--
-- TOC entry 4801 (class 1259 OID 5315451)
-- Name: components_download_forms_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_forms_entity_fk ON public.components_download_forms_cmps USING btree (entity_id);


--
-- TOC entry 4802 (class 1259 OID 5315449)
-- Name: components_download_forms_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_forms_field_idx ON public.components_download_forms_cmps USING btree (field);


--
-- TOC entry 4811 (class 1259 OID 5315506)
-- Name: components_download_ranklists_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_ranklists_component_type_idx ON public.components_download_ranklists_cmps USING btree (component_type);


--
-- TOC entry 4812 (class 1259 OID 5315507)
-- Name: components_download_ranklists_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_ranklists_entity_fk ON public.components_download_ranklists_cmps USING btree (entity_id);


--
-- TOC entry 4813 (class 1259 OID 5315505)
-- Name: components_download_ranklists_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_download_ranklists_field_idx ON public.components_download_ranklists_cmps USING btree (field);


--
-- TOC entry 4921 (class 1259 OID 5315960)
-- Name: components_facilities_hostels_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_hostels_component_type_idx ON public.components_facilities_hostels_cmps USING btree (component_type);


--
-- TOC entry 4922 (class 1259 OID 5315961)
-- Name: components_facilities_hostels_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_hostels_entity_fk ON public.components_facilities_hostels_cmps USING btree (entity_id);


--
-- TOC entry 4923 (class 1259 OID 5315959)
-- Name: components_facilities_hostels_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_hostels_field_idx ON public.components_facilities_hostels_cmps USING btree (field);


--
-- TOC entry 4937 (class 1259 OID 5316026)
-- Name: components_facilities_industry_b16c0_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_industry_b16c0_component_type_idx ON public.components_facilities_industry_tie_ups_cmps USING btree (component_type);


--
-- TOC entry 4940 (class 1259 OID 5316027)
-- Name: components_facilities_industry_tie_ups_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_industry_tie_ups_entity_fk ON public.components_facilities_industry_tie_ups_cmps USING btree (entity_id);


--
-- TOC entry 4941 (class 1259 OID 5316025)
-- Name: components_facilities_industry_tie_ups_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_industry_tie_ups_field_idx ON public.components_facilities_industry_tie_ups_cmps USING btree (field);


--
-- TOC entry 4910 (class 1259 OID 5315906)
-- Name: components_facilities_libraries_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_libraries_component_type_idx ON public.components_facilities_libraries_cmps USING btree (component_type);


--
-- TOC entry 4911 (class 1259 OID 5315907)
-- Name: components_facilities_libraries_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_libraries_entity_fk ON public.components_facilities_libraries_cmps USING btree (entity_id);


--
-- TOC entry 4912 (class 1259 OID 5315905)
-- Name: components_facilities_libraries_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_libraries_field_idx ON public.components_facilities_libraries_cmps USING btree (field);


--
-- TOC entry 4961 (class 1259 OID 5316114)
-- Name: components_facilities_other_act653b5_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_other_act653b5_component_type_idx ON public.components_facilities_other_activities_cmps USING btree (component_type);


--
-- TOC entry 4964 (class 1259 OID 5316115)
-- Name: components_facilities_other_activities_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_other_activities_entity_fk ON public.components_facilities_other_activities_cmps USING btree (entity_id);


--
-- TOC entry 4965 (class 1259 OID 5316113)
-- Name: components_facilities_other_activities_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_other_activities_field_idx ON public.components_facilities_other_activities_cmps USING btree (field);


--
-- TOC entry 4950 (class 1259 OID 5316065)
-- Name: components_facilities_women_cells_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_women_cells_component_type_idx ON public.components_facilities_women_cells_cmps USING btree (component_type);


--
-- TOC entry 4951 (class 1259 OID 5316066)
-- Name: components_facilities_women_cells_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_women_cells_entity_fk ON public.components_facilities_women_cells_cmps USING btree (entity_id);


--
-- TOC entry 4952 (class 1259 OID 5316064)
-- Name: components_facilities_women_cells_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_facilities_women_cells_field_idx ON public.components_facilities_women_cells_cmps USING btree (field);


--
-- TOC entry 4742 (class 1259 OID 5314987)
-- Name: components_home_homes_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_home_homes_component_type_idx ON public.components_home_homes_cmps USING btree (component_type);


--
-- TOC entry 4743 (class 1259 OID 5314988)
-- Name: components_home_homes_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_home_homes_entity_fk ON public.components_home_homes_cmps USING btree (entity_id);


--
-- TOC entry 4744 (class 1259 OID 5314986)
-- Name: components_home_homes_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_home_homes_field_idx ON public.components_home_homes_cmps USING btree (field);


--
-- TOC entry 5071 (class 1259 OID 5316488)
-- Name: components_institute_awards_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_awards_component_type_idx ON public.components_institute_awards_cmps USING btree (component_type);


--
-- TOC entry 5072 (class 1259 OID 5316489)
-- Name: components_institute_awards_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_awards_entity_fk ON public.components_institute_awards_cmps USING btree (entity_id);


--
-- TOC entry 5073 (class 1259 OID 5316487)
-- Name: components_institute_awards_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_awards_field_idx ON public.components_institute_awards_cmps USING btree (field);


--
-- TOC entry 5082 (class 1259 OID 5316525)
-- Name: components_institute_certifications_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_certifications_component_type_idx ON public.components_institute_certifications_cmps USING btree (component_type);


--
-- TOC entry 5083 (class 1259 OID 5316526)
-- Name: components_institute_certifications_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_certifications_entity_fk ON public.components_institute_certifications_cmps USING btree (entity_id);


--
-- TOC entry 5084 (class 1259 OID 5316524)
-- Name: components_institute_certifications_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_certifications_field_idx ON public.components_institute_certifications_cmps USING btree (field);


--
-- TOC entry 5122 (class 1259 OID 5316658)
-- Name: components_institute_gradings_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_gradings_component_type_idx ON public.components_institute_gradings_cmps USING btree (component_type);


--
-- TOC entry 5123 (class 1259 OID 5316659)
-- Name: components_institute_gradings_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_gradings_entity_fk ON public.components_institute_gradings_cmps USING btree (entity_id);


--
-- TOC entry 5124 (class 1259 OID 5316657)
-- Name: components_institute_gradings_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_gradings_field_idx ON public.components_institute_gradings_cmps USING btree (field);


--
-- TOC entry 5115 (class 1259 OID 5316637)
-- Name: components_institute_imcs_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_imcs_component_type_idx ON public.components_institute_imcs_cmps USING btree (component_type);


--
-- TOC entry 5116 (class 1259 OID 5316638)
-- Name: components_institute_imcs_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_imcs_entity_fk ON public.components_institute_imcs_cmps USING btree (entity_id);


--
-- TOC entry 5117 (class 1259 OID 5316636)
-- Name: components_institute_imcs_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_imcs_field_idx ON public.components_institute_imcs_cmps USING btree (field);


--
-- TOC entry 5093 (class 1259 OID 5316562)
-- Name: components_institute_infrastructures_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_infrastructures_component_type_idx ON public.components_institute_infrastructures_cmps USING btree (component_type);


--
-- TOC entry 5094 (class 1259 OID 5316563)
-- Name: components_institute_infrastructures_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_infrastructures_entity_fk ON public.components_institute_infrastructures_cmps USING btree (entity_id);


--
-- TOC entry 5095 (class 1259 OID 5316561)
-- Name: components_institute_infrastructures_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_infrastructures_field_idx ON public.components_institute_infrastructures_cmps USING btree (field);


--
-- TOC entry 5160 (class 1259 OID 5316801)
-- Name: components_institute_institutes_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_institutes_component_type_idx ON public.components_institute_institutes_cmps USING btree (component_type);


--
-- TOC entry 5161 (class 1259 OID 5316802)
-- Name: components_institute_institutes_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_institutes_entity_fk ON public.components_institute_institutes_cmps USING btree (entity_id);


--
-- TOC entry 5162 (class 1259 OID 5316800)
-- Name: components_institute_institutes_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_institutes_field_idx ON public.components_institute_institutes_cmps USING btree (field);


--
-- TOC entry 5104 (class 1259 OID 5316600)
-- Name: components_institute_ptas_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_ptas_component_type_idx ON public.components_institute_ptas_cmps USING btree (component_type);


--
-- TOC entry 5105 (class 1259 OID 5316601)
-- Name: components_institute_ptas_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_ptas_entity_fk ON public.components_institute_ptas_cmps USING btree (entity_id);


--
-- TOC entry 5106 (class 1259 OID 5316599)
-- Name: components_institute_ptas_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_institute_ptas_field_idx ON public.components_institute_ptas_cmps USING btree (field);


--
-- TOC entry 4844 (class 1259 OID 5315682)
-- Name: components_notifications_quotations_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_quotations_component_type_idx ON public.components_notifications_quotations_cmps USING btree (component_type);


--
-- TOC entry 4845 (class 1259 OID 5315683)
-- Name: components_notifications_quotations_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_quotations_entity_fk ON public.components_notifications_quotations_cmps USING btree (entity_id);


--
-- TOC entry 4846 (class 1259 OID 5315681)
-- Name: components_notifications_quotations_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_quotations_field_idx ON public.components_notifications_quotations_cmps USING btree (field);


--
-- TOC entry 4833 (class 1259 OID 5315619)
-- Name: components_notifications_tenders_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_tenders_component_type_idx ON public.components_notifications_tenders_cmps USING btree (component_type);


--
-- TOC entry 4834 (class 1259 OID 5315620)
-- Name: components_notifications_tenders_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_tenders_entity_fk ON public.components_notifications_tenders_cmps USING btree (entity_id);


--
-- TOC entry 4835 (class 1259 OID 5315618)
-- Name: components_notifications_tenders_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_notifications_tenders_field_idx ON public.components_notifications_tenders_cmps USING btree (field);


--
-- TOC entry 4875 (class 1259 OID 5315792)
-- Name: components_placement_events_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_events_component_type_idx ON public.components_placement_events_cmps USING btree (component_type);


--
-- TOC entry 4876 (class 1259 OID 5315793)
-- Name: components_placement_events_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_events_entity_fk ON public.components_placement_events_cmps USING btree (entity_id);


--
-- TOC entry 4877 (class 1259 OID 5315791)
-- Name: components_placement_events_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_events_field_idx ON public.components_placement_events_cmps USING btree (field);


--
-- TOC entry 4884 (class 1259 OID 5315829)
-- Name: components_placement_industrial8e5c7_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_industrial8e5c7_component_type_idx ON public.components_placement_industrial_expereinces_cmps USING btree (component_type);


--
-- TOC entry 4887 (class 1259 OID 5315830)
-- Name: components_placement_industrial_expereinces_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_industrial_expereinces_entity_fk ON public.components_placement_industrial_expereinces_cmps USING btree (entity_id);


--
-- TOC entry 4888 (class 1259 OID 5315828)
-- Name: components_placement_industrial_expereinces_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_industrial_expereinces_field_idx ON public.components_placement_industrial_expereinces_cmps USING btree (field);


--
-- TOC entry 4864 (class 1259 OID 5315751)
-- Name: components_placement_notifications_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_notifications_component_type_idx ON public.components_placement_notifications_cmps USING btree (component_type);


--
-- TOC entry 4865 (class 1259 OID 5315752)
-- Name: components_placement_notifications_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_notifications_entity_fk ON public.components_placement_notifications_cmps USING btree (entity_id);


--
-- TOC entry 4866 (class 1259 OID 5315750)
-- Name: components_placement_notifications_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_notifications_field_idx ON public.components_placement_notifications_cmps USING btree (field);


--
-- TOC entry 4895 (class 1259 OID 5315857)
-- Name: components_placement_results_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_results_component_type_idx ON public.components_placement_results_cmps USING btree (component_type);


--
-- TOC entry 4896 (class 1259 OID 5315858)
-- Name: components_placement_results_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_results_entity_fk ON public.components_placement_results_cmps USING btree (entity_id);


--
-- TOC entry 4897 (class 1259 OID 5315856)
-- Name: components_placement_results_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_placement_results_field_idx ON public.components_placement_results_cmps USING btree (field);


--
-- TOC entry 4731 (class 1259 OID 5314875)
-- Name: components_shared_addresses_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_addresses_component_type_idx ON public.components_shared_addresses_cmps USING btree (component_type);


--
-- TOC entry 4732 (class 1259 OID 5314876)
-- Name: components_shared_addresses_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_addresses_entity_fk ON public.components_shared_addresses_cmps USING btree (entity_id);


--
-- TOC entry 4733 (class 1259 OID 5314874)
-- Name: components_shared_addresses_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_addresses_field_idx ON public.components_shared_addresses_cmps USING btree (field);


--
-- TOC entry 4853 (class 1259 OID 5315711)
-- Name: components_shared_auctions_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_auctions_component_type_idx ON public.components_shared_auctions_cmps USING btree (component_type);


--
-- TOC entry 4854 (class 1259 OID 5315712)
-- Name: components_shared_auctions_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_auctions_entity_fk ON public.components_shared_auctions_cmps USING btree (entity_id);


--
-- TOC entry 4855 (class 1259 OID 5315710)
-- Name: components_shared_auctions_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_auctions_field_idx ON public.components_shared_auctions_cmps USING btree (field);


--
-- TOC entry 4712 (class 1259 OID 5314799)
-- Name: components_shared_events_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_events_component_type_idx ON public.components_shared_events_cmps USING btree (component_type);


--
-- TOC entry 4713 (class 1259 OID 5314800)
-- Name: components_shared_events_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_events_entity_fk ON public.components_shared_events_cmps USING btree (entity_id);


--
-- TOC entry 4714 (class 1259 OID 5314798)
-- Name: components_shared_events_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_events_field_idx ON public.components_shared_events_cmps USING btree (field);


--
-- TOC entry 4701 (class 1259 OID 5314761)
-- Name: components_shared_galleries_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_galleries_component_type_idx ON public.components_shared_galleries_cmps USING btree (component_type);


--
-- TOC entry 4702 (class 1259 OID 5314762)
-- Name: components_shared_galleries_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_galleries_entity_fk ON public.components_shared_galleries_cmps USING btree (entity_id);


--
-- TOC entry 4703 (class 1259 OID 5314760)
-- Name: components_shared_galleries_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_galleries_field_idx ON public.components_shared_galleries_cmps USING btree (field);


--
-- TOC entry 4930 (class 1259 OID 5315988)
-- Name: components_shared_hostels_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_hostels_component_type_idx ON public.components_shared_hostels_cmps USING btree (component_type);


--
-- TOC entry 4931 (class 1259 OID 5315989)
-- Name: components_shared_hostels_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_hostels_entity_fk ON public.components_shared_hostels_cmps USING btree (entity_id);


--
-- TOC entry 4932 (class 1259 OID 5315987)
-- Name: components_shared_hostels_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_hostels_field_idx ON public.components_shared_hostels_cmps USING btree (field);


--
-- TOC entry 4675 (class 1259 OID 5314666)
-- Name: components_shared_news_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_news_component_type_idx ON public.components_shared_news_cmps USING btree (component_type);


--
-- TOC entry 4676 (class 1259 OID 5314667)
-- Name: components_shared_news_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_news_entity_fk ON public.components_shared_news_cmps USING btree (entity_id);


--
-- TOC entry 4677 (class 1259 OID 5314665)
-- Name: components_shared_news_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_news_field_idx ON public.components_shared_news_cmps USING btree (field);


--
-- TOC entry 4787 (class 1259 OID 5315353)
-- Name: components_shared_tables_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_tables_component_type_idx ON public.components_shared_tables_cmps USING btree (component_type);


--
-- TOC entry 4788 (class 1259 OID 5315354)
-- Name: components_shared_tables_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_tables_entity_fk ON public.components_shared_tables_cmps USING btree (entity_id);


--
-- TOC entry 4789 (class 1259 OID 5315352)
-- Name: components_shared_tables_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_tables_field_idx ON public.components_shared_tables_cmps USING btree (field);


--
-- TOC entry 4688 (class 1259 OID 5314714)
-- Name: components_shared_trades_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_trades_component_type_idx ON public.components_shared_trades_cmps USING btree (component_type);


--
-- TOC entry 4689 (class 1259 OID 5314715)
-- Name: components_shared_trades_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_trades_entity_fk ON public.components_shared_trades_cmps USING btree (entity_id);


--
-- TOC entry 4690 (class 1259 OID 5314713)
-- Name: components_shared_trades_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_shared_trades_field_idx ON public.components_shared_trades_cmps USING btree (field);


--
-- TOC entry 4985 (class 1259 OID 5316196)
-- Name: components_trainees_achievements_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_achievements_component_type_idx ON public.components_trainees_achievements_cmps USING btree (component_type);


--
-- TOC entry 4986 (class 1259 OID 5316197)
-- Name: components_trainees_achievements_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_achievements_entity_fk ON public.components_trainees_achievements_cmps USING btree (entity_id);


--
-- TOC entry 4987 (class 1259 OID 5316195)
-- Name: components_trainees_achievements_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_achievements_field_idx ON public.components_trainees_achievements_cmps USING btree (field);


--
-- TOC entry 4996 (class 1259 OID 5316234)
-- Name: components_trainees_activities_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_activities_component_type_idx ON public.components_trainees_activities_cmps USING btree (component_type);


--
-- TOC entry 4997 (class 1259 OID 5316235)
-- Name: components_trainees_activities_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_activities_entity_fk ON public.components_trainees_activities_cmps USING btree (entity_id);


--
-- TOC entry 4998 (class 1259 OID 5316233)
-- Name: components_trainees_activities_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_activities_field_idx ON public.components_trainees_activities_cmps USING btree (field);


--
-- TOC entry 5018 (class 1259 OID 5316308)
-- Name: components_trainees_alumni_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_alumni_component_type_idx ON public.components_trainees_alumni_cmps USING btree (component_type);


--
-- TOC entry 5019 (class 1259 OID 5316309)
-- Name: components_trainees_alumni_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_alumni_entity_fk ON public.components_trainees_alumni_cmps USING btree (entity_id);


--
-- TOC entry 5020 (class 1259 OID 5316307)
-- Name: components_trainees_alumni_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_alumni_field_idx ON public.components_trainees_alumni_cmps USING btree (field);


--
-- TOC entry 5007 (class 1259 OID 5316271)
-- Name: components_trainees_nsses_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_nsses_component_type_idx ON public.components_trainees_nsses_cmps USING btree (component_type);


--
-- TOC entry 5008 (class 1259 OID 5316272)
-- Name: components_trainees_nsses_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_nsses_entity_fk ON public.components_trainees_nsses_cmps USING btree (entity_id);


--
-- TOC entry 5009 (class 1259 OID 5316270)
-- Name: components_trainees_nsses_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_nsses_field_idx ON public.components_trainees_nsses_cmps USING btree (field);


--
-- TOC entry 5040 (class 1259 OID 5316384)
-- Name: components_trainees_results_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_results_component_type_idx ON public.components_trainees_results_cmps USING btree (component_type);


--
-- TOC entry 5041 (class 1259 OID 5316385)
-- Name: components_trainees_results_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_results_entity_fk ON public.components_trainees_results_cmps USING btree (entity_id);


--
-- TOC entry 5042 (class 1259 OID 5316383)
-- Name: components_trainees_results_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_results_field_idx ON public.components_trainees_results_cmps USING btree (field);


--
-- TOC entry 5027 (class 1259 OID 5316347)
-- Name: components_trainees_trainees_co37829_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_co37829_component_type_idx ON public.components_trainees_trainees_councils_cmps USING btree (component_type);


--
-- TOC entry 5030 (class 1259 OID 5316348)
-- Name: components_trainees_trainees_councils_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_councils_entity_fk ON public.components_trainees_trainees_councils_cmps USING btree (entity_id);


--
-- TOC entry 5031 (class 1259 OID 5316346)
-- Name: components_trainees_trainees_councils_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_councils_field_idx ON public.components_trainees_trainees_councils_cmps USING btree (field);


--
-- TOC entry 4974 (class 1259 OID 5316155)
-- Name: components_trainees_trainees_lists_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_lists_component_type_idx ON public.components_trainees_trainees_lists_cmps USING btree (component_type);


--
-- TOC entry 4975 (class 1259 OID 5316156)
-- Name: components_trainees_trainees_lists_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_lists_entity_fk ON public.components_trainees_trainees_lists_cmps USING btree (entity_id);


--
-- TOC entry 4976 (class 1259 OID 5316154)
-- Name: components_trainees_trainees_lists_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_trainees_trainees_lists_field_idx ON public.components_trainees_trainees_lists_cmps USING btree (field);


--
-- TOC entry 4476 (class 1259 OID 5313885)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 4477 (class 1259 OID 5313884)
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- TOC entry 4583 (class 1259 OID 5314130)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- TOC entry 4584 (class 1259 OID 5314131)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 4585 (class 1259 OID 5314134)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 4578 (class 1259 OID 5314120)
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- TOC entry 4579 (class 1259 OID 5314122)
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- TOC entry 4580 (class 1259 OID 5314121)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- TOC entry 4480 (class 1259 OID 5313886)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 4496 (class 1259 OID 5313913)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 4497 (class 1259 OID 5313912)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 4500 (class 1259 OID 5313914)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 4556 (class 1259 OID 5314057)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 4557 (class 1259 OID 5314056)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 4653 (class 1259 OID 5314250)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 4654 (class 1259 OID 5314251)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 4655 (class 1259 OID 5314254)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 4560 (class 1259 OID 5314058)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 4551 (class 1259 OID 5314045)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 4552 (class 1259 OID 5314044)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 4555 (class 1259 OID 5314046)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 4575 (class 1259 OID 5314110)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 4506 (class 1259 OID 5313937)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 4507 (class 1259 OID 5313936)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 4597 (class 1259 OID 5314154)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 4598 (class 1259 OID 5314155)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 4599 (class 1259 OID 5314158)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 4510 (class 1259 OID 5313938)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 4501 (class 1259 OID 5313925)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 4502 (class 1259 OID 5313924)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 4505 (class 1259 OID 5313926)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 4566 (class 1259 OID 5314081)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 4567 (class 1259 OID 5314080)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 4660 (class 1259 OID 5314262)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 4661 (class 1259 OID 5314263)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 4662 (class 1259 OID 5314266)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 4570 (class 1259 OID 5314082)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 4561 (class 1259 OID 5314069)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 4562 (class 1259 OID 5314068)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 4565 (class 1259 OID 5314070)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 4511 (class 1259 OID 5313949)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 4512 (class 1259 OID 5313948)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 4604 (class 1259 OID 5314166)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 4605 (class 1259 OID 5314167)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 4516 (class 1259 OID 5313961)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 4517 (class 1259 OID 5313960)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 4617 (class 1259 OID 5314189)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 4618 (class 1259 OID 5314190)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 4619 (class 1259 OID 5314193)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 4520 (class 1259 OID 5313962)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 4610 (class 1259 OID 5314177)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 4611 (class 1259 OID 5314178)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 4612 (class 1259 OID 5314181)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 4515 (class 1259 OID 5313950)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 4521 (class 1259 OID 5313973)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 4522 (class 1259 OID 5313972)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 4624 (class 1259 OID 5314201)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 4625 (class 1259 OID 5314202)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 4626 (class 1259 OID 5314205)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 4525 (class 1259 OID 5313974)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 4526 (class 1259 OID 5313985)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 4527 (class 1259 OID 5313984)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 4530 (class 1259 OID 5313986)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 4531 (class 1259 OID 5313997)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 4532 (class 1259 OID 5313996)
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 4631 (class 1259 OID 5314213)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 4632 (class 1259 OID 5314214)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 4633 (class 1259 OID 5314217)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 4535 (class 1259 OID 5313998)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 4481 (class 1259 OID 5313879)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 4482 (class 1259 OID 5313883)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 4483 (class 1259 OID 5313878)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 4484 (class 1259 OID 5313881)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 4485 (class 1259 OID 5313882)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 4486 (class 1259 OID 5313880)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 4487 (class 1259 OID 5313901)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 4488 (class 1259 OID 5313900)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 4590 (class 1259 OID 5314142)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 4591 (class 1259 OID 5314143)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 4592 (class 1259 OID 5314146)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 4495 (class 1259 OID 5313902)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 4775 (class 1259 OID 5315309)
-- Name: vatakaras_component_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_component_type_idx ON public.vatakaras_cmps USING btree (component_type);


--
-- TOC entry 4780 (class 1259 OID 5315323)
-- Name: vatakaras_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_created_by_id_fk ON public.vatakaras USING btree (created_by_id);


--
-- TOC entry 4781 (class 1259 OID 5315322)
-- Name: vatakaras_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_documents_idx ON public.vatakaras USING btree (document_id, locale, published_at);


--
-- TOC entry 4776 (class 1259 OID 5315310)
-- Name: vatakaras_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_entity_fk ON public.vatakaras_cmps USING btree (entity_id);


--
-- TOC entry 4777 (class 1259 OID 5315308)
-- Name: vatakaras_field_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_field_idx ON public.vatakaras_cmps USING btree (field);


--
-- TOC entry 4784 (class 1259 OID 5315324)
-- Name: vatakaras_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vatakaras_updated_by_id_fk ON public.vatakaras USING btree (updated_by_id);


--
-- TOC entry 5185 (class 2606 OID 5314367)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5217 (class 2606 OID 5314527)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5218 (class 2606 OID 5314532)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5186 (class 2606 OID 5314372)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5189 (class 2606 OID 5314387)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5190 (class 2606 OID 5314392)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5187 (class 2606 OID 5314377)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5219 (class 2606 OID 5314537)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5220 (class 2606 OID 5314542)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5188 (class 2606 OID 5314382)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5232 (class 2606 OID 5315040)
-- Name: chackais chackais_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais
    ADD CONSTRAINT chackais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5231 (class 2606 OID 5315035)
-- Name: chackais_cmps chackais_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais_cmps
    ADD CONSTRAINT chackais_entity_fk FOREIGN KEY (entity_id) REFERENCES public.chackais(id) ON DELETE CASCADE;


--
-- TOC entry 5233 (class 2606 OID 5315045)
-- Name: chackais chackais_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chackais
    ADD CONSTRAINT chackais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5269 (class 2606 OID 5316727)
-- Name: components_academics_cts_programs_cmps components_academics_cts_programs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_cts_programs_cmps
    ADD CONSTRAINT components_academics_cts_programs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_academics_cts_programs(id) ON DELETE CASCADE;


--
-- TOC entry 5270 (class 2606 OID 5316755)
-- Name: components_academics_pmkvies_cmps components_academics_pmkvies_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_pmkvies_cmps
    ADD CONSTRAINT components_academics_pmkvies_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_academics_pmkvies(id) ON DELETE CASCADE;


--
-- TOC entry 5271 (class 2606 OID 5316784)
-- Name: components_academics_stts_cmps components_academics_stts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_academics_stts_cmps
    ADD CONSTRAINT components_academics_stts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_academics_stts(id) ON DELETE CASCADE;


--
-- TOC entry 5261 (class 2606 OID 5316424)
-- Name: components_admission_prospectuses_cmps components_admission_prospectuses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_prospectuses_cmps
    ADD CONSTRAINT components_admission_prospectuses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_admission_prospectuses(id) ON DELETE CASCADE;


--
-- TOC entry 5262 (class 2606 OID 5316452)
-- Name: components_admission_user_manuals_cmps components_admission_user_manuals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_admission_user_manuals_cmps
    ADD CONSTRAINT components_admission_user_manuals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_admission_user_manuals(id) ON DELETE CASCADE;


--
-- TOC entry 5240 (class 2606 OID 5315576)
-- Name: components_download_circulars_cmps components_download_circulars_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_circulars_cmps
    ADD CONSTRAINT components_download_circulars_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_download_circulars(id) ON DELETE CASCADE;


--
-- TOC entry 5238 (class 2606 OID 5315466)
-- Name: components_download_forms_cmps components_download_forms_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_forms_cmps
    ADD CONSTRAINT components_download_forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_download_forms(id) ON DELETE CASCADE;


--
-- TOC entry 5239 (class 2606 OID 5315522)
-- Name: components_download_ranklists_cmps components_download_ranklists_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_download_ranklists_cmps
    ADD CONSTRAINT components_download_ranklists_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_download_ranklists(id) ON DELETE CASCADE;


--
-- TOC entry 5249 (class 2606 OID 5315971)
-- Name: components_facilities_hostels_cmps components_facilities_hostels_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_hostels_cmps
    ADD CONSTRAINT components_facilities_hostels_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_facilities_hostels(id) ON DELETE CASCADE;


--
-- TOC entry 5251 (class 2606 OID 5316037)
-- Name: components_facilities_industry_tie_ups_cmps components_facilities_industry_tie_ups_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_industry_tie_ups_cmps
    ADD CONSTRAINT components_facilities_industry_tie_ups_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_facilities_industry_tie_ups(id) ON DELETE CASCADE;


--
-- TOC entry 5248 (class 2606 OID 5315917)
-- Name: components_facilities_libraries_cmps components_facilities_libraries_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_libraries_cmps
    ADD CONSTRAINT components_facilities_libraries_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_facilities_libraries(id) ON DELETE CASCADE;


--
-- TOC entry 5253 (class 2606 OID 5316125)
-- Name: components_facilities_other_activities_cmps components_facilities_other_activities_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_other_activities_cmps
    ADD CONSTRAINT components_facilities_other_activities_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_facilities_other_activities(id) ON DELETE CASCADE;


--
-- TOC entry 5252 (class 2606 OID 5316076)
-- Name: components_facilities_women_cells_cmps components_facilities_women_cells_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facilities_women_cells_cmps
    ADD CONSTRAINT components_facilities_women_cells_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_facilities_women_cells(id) ON DELETE CASCADE;


--
-- TOC entry 5230 (class 2606 OID 5314991)
-- Name: components_home_homes_cmps components_home_homes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_home_homes_cmps
    ADD CONSTRAINT components_home_homes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_home_homes(id) ON DELETE CASCADE;


--
-- TOC entry 5263 (class 2606 OID 5316499)
-- Name: components_institute_awards_cmps components_institute_awards_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_awards_cmps
    ADD CONSTRAINT components_institute_awards_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_awards(id) ON DELETE CASCADE;


--
-- TOC entry 5264 (class 2606 OID 5316536)
-- Name: components_institute_certifications_cmps components_institute_certifications_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_certifications_cmps
    ADD CONSTRAINT components_institute_certifications_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_certifications(id) ON DELETE CASCADE;


--
-- TOC entry 5268 (class 2606 OID 5316669)
-- Name: components_institute_gradings_cmps components_institute_gradings_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_gradings_cmps
    ADD CONSTRAINT components_institute_gradings_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_gradings(id) ON DELETE CASCADE;


--
-- TOC entry 5267 (class 2606 OID 5316641)
-- Name: components_institute_imcs_cmps components_institute_imcs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_imcs_cmps
    ADD CONSTRAINT components_institute_imcs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_imcs(id) ON DELETE CASCADE;


--
-- TOC entry 5265 (class 2606 OID 5316573)
-- Name: components_institute_infrastructures_cmps components_institute_infrastructures_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_infrastructures_cmps
    ADD CONSTRAINT components_institute_infrastructures_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_infrastructures(id) ON DELETE CASCADE;


--
-- TOC entry 5272 (class 2606 OID 5316805)
-- Name: components_institute_institutes_cmps components_institute_institutes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_institutes_cmps
    ADD CONSTRAINT components_institute_institutes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_institutes(id) ON DELETE CASCADE;


--
-- TOC entry 5266 (class 2606 OID 5316611)
-- Name: components_institute_ptas_cmps components_institute_ptas_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_institute_ptas_cmps
    ADD CONSTRAINT components_institute_ptas_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_institute_ptas(id) ON DELETE CASCADE;


--
-- TOC entry 5242 (class 2606 OID 5315693)
-- Name: components_notifications_quotations_cmps components_notifications_quotations_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_quotations_cmps
    ADD CONSTRAINT components_notifications_quotations_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_notifications_quotations(id) ON DELETE CASCADE;


--
-- TOC entry 5241 (class 2606 OID 5315635)
-- Name: components_notifications_tenders_cmps components_notifications_tenders_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_notifications_tenders_cmps
    ADD CONSTRAINT components_notifications_tenders_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_notifications_tenders(id) ON DELETE CASCADE;


--
-- TOC entry 5245 (class 2606 OID 5315803)
-- Name: components_placement_events_cmps components_placement_events_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_events_cmps
    ADD CONSTRAINT components_placement_events_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_placement_events(id) ON DELETE CASCADE;


--
-- TOC entry 5246 (class 2606 OID 5315840)
-- Name: components_placement_industrial_expereinces_cmps components_placement_industrial_expereinces_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_industrial_expereinces_cmps
    ADD CONSTRAINT components_placement_industrial_expereinces_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_placement_industrial_expereinces(id) ON DELETE CASCADE;


--
-- TOC entry 5244 (class 2606 OID 5315762)
-- Name: components_placement_notifications_cmps components_placement_notifications_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_notifications_cmps
    ADD CONSTRAINT components_placement_notifications_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_placement_notifications(id) ON DELETE CASCADE;


--
-- TOC entry 5247 (class 2606 OID 5315882)
-- Name: components_placement_results_cmps components_placement_results_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_placement_results_cmps
    ADD CONSTRAINT components_placement_results_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_placement_results(id) ON DELETE CASCADE;


--
-- TOC entry 5229 (class 2606 OID 5314886)
-- Name: components_shared_addresses_cmps components_shared_addresses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_addresses_cmps
    ADD CONSTRAINT components_shared_addresses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_addresses(id) ON DELETE CASCADE;


--
-- TOC entry 5243 (class 2606 OID 5315724)
-- Name: components_shared_auctions_cmps components_shared_auctions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_auctions_cmps
    ADD CONSTRAINT components_shared_auctions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_auctions(id) ON DELETE CASCADE;


--
-- TOC entry 5228 (class 2606 OID 5314819)
-- Name: components_shared_events_cmps components_shared_events_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_events_cmps
    ADD CONSTRAINT components_shared_events_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_events(id) ON DELETE CASCADE;


--
-- TOC entry 5227 (class 2606 OID 5314781)
-- Name: components_shared_galleries_cmps components_shared_galleries_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_galleries_cmps
    ADD CONSTRAINT components_shared_galleries_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_galleries(id) ON DELETE CASCADE;


--
-- TOC entry 5250 (class 2606 OID 5315992)
-- Name: components_shared_hostels_cmps components_shared_hostels_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_hostels_cmps
    ADD CONSTRAINT components_shared_hostels_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_hostels(id) ON DELETE CASCADE;


--
-- TOC entry 5225 (class 2606 OID 5314686)
-- Name: components_shared_news_cmps components_shared_news_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_news_cmps
    ADD CONSTRAINT components_shared_news_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_news(id) ON DELETE CASCADE;


--
-- TOC entry 5237 (class 2606 OID 5315364)
-- Name: components_shared_tables_cmps components_shared_tables_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_tables_cmps
    ADD CONSTRAINT components_shared_tables_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_tables(id) ON DELETE CASCADE;


--
-- TOC entry 5226 (class 2606 OID 5314743)
-- Name: components_shared_trades_cmps components_shared_trades_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_trades_cmps
    ADD CONSTRAINT components_shared_trades_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_trades(id) ON DELETE CASCADE;


--
-- TOC entry 5255 (class 2606 OID 5316216)
-- Name: components_trainees_achievements_cmps components_trainees_achievements_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_achievements_cmps
    ADD CONSTRAINT components_trainees_achievements_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_achievements(id) ON DELETE CASCADE;


--
-- TOC entry 5256 (class 2606 OID 5316254)
-- Name: components_trainees_activities_cmps components_trainees_activities_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_activities_cmps
    ADD CONSTRAINT components_trainees_activities_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_activities(id) ON DELETE CASCADE;


--
-- TOC entry 5258 (class 2606 OID 5316328)
-- Name: components_trainees_alumni_cmps components_trainees_alumni_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_alumni_cmps
    ADD CONSTRAINT components_trainees_alumni_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_alumni(id) ON DELETE CASCADE;


--
-- TOC entry 5257 (class 2606 OID 5316291)
-- Name: components_trainees_nsses_cmps components_trainees_nsses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_nsses_cmps
    ADD CONSTRAINT components_trainees_nsses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_nsses(id) ON DELETE CASCADE;


--
-- TOC entry 5260 (class 2606 OID 5316395)
-- Name: components_trainees_results_cmps components_trainees_results_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_results_cmps
    ADD CONSTRAINT components_trainees_results_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_results(id) ON DELETE CASCADE;


--
-- TOC entry 5259 (class 2606 OID 5316367)
-- Name: components_trainees_trainees_councils_cmps components_trainees_trainees_councils_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_councils_cmps
    ADD CONSTRAINT components_trainees_trainees_councils_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_trainees_councils(id) ON DELETE CASCADE;


--
-- TOC entry 5254 (class 2606 OID 5316166)
-- Name: components_trainees_trainees_lists_cmps components_trainees_trainees_lists_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_trainees_trainees_lists_cmps
    ADD CONSTRAINT components_trainees_trainees_lists_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_trainees_trainees_lists(id) ON DELETE CASCADE;


--
-- TOC entry 5165 (class 2606 OID 5314267)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5201 (class 2606 OID 5314447)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5202 (class 2606 OID 5314452)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5200 (class 2606 OID 5314442)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5166 (class 2606 OID 5314272)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5169 (class 2606 OID 5314287)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5170 (class 2606 OID 5314292)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5193 (class 2606 OID 5314407)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5221 (class 2606 OID 5314547)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5222 (class 2606 OID 5314552)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5194 (class 2606 OID 5314412)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5191 (class 2606 OID 5314397)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5192 (class 2606 OID 5314402)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5199 (class 2606 OID 5314437)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5173 (class 2606 OID 5314307)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5205 (class 2606 OID 5314467)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 5206 (class 2606 OID 5314472)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 5174 (class 2606 OID 5314312)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5171 (class 2606 OID 5314297)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5172 (class 2606 OID 5314302)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5197 (class 2606 OID 5314427)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5223 (class 2606 OID 5314557)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5224 (class 2606 OID 5314562)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5198 (class 2606 OID 5314432)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5195 (class 2606 OID 5314417)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5196 (class 2606 OID 5314422)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5175 (class 2606 OID 5314317)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5207 (class 2606 OID 5314477)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5208 (class 2606 OID 5314482)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5177 (class 2606 OID 5314327)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5211 (class 2606 OID 5314497)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5212 (class 2606 OID 5314502)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5178 (class 2606 OID 5314332)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5209 (class 2606 OID 5314487)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5210 (class 2606 OID 5314492)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5176 (class 2606 OID 5314322)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5179 (class 2606 OID 5314337)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5213 (class 2606 OID 5314507)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5214 (class 2606 OID 5314512)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5180 (class 2606 OID 5314342)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5181 (class 2606 OID 5314347)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5182 (class 2606 OID 5314352)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5183 (class 2606 OID 5314357)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5215 (class 2606 OID 5314517)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5216 (class 2606 OID 5314522)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5184 (class 2606 OID 5314362)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5167 (class 2606 OID 5314277)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5203 (class 2606 OID 5314457)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5204 (class 2606 OID 5314462)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5168 (class 2606 OID 5314282)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5235 (class 2606 OID 5315330)
-- Name: vatakaras vatakaras_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras
    ADD CONSTRAINT vatakaras_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5234 (class 2606 OID 5315325)
-- Name: vatakaras_cmps vatakaras_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras_cmps
    ADD CONSTRAINT vatakaras_entity_fk FOREIGN KEY (entity_id) REFERENCES public.vatakaras(id) ON DELETE CASCADE;


--
-- TOC entry 5236 (class 2606 OID 5315335)
-- Name: vatakaras vatakaras_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vatakaras
    ADD CONSTRAINT vatakaras_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2025-05-05 11:28:55 IST

--
-- PostgreSQL database dump complete
--

