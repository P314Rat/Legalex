--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.3

-- Started on 2024-09-22 22:24:43

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
-- TOC entry 215 (class 1259 OID 16385)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO legalexs_admin;

--
-- TOC entry 216 (class 1259 OID 16390)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 216
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 217 (class 1259 OID 16391)
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO legalexs_admin;

--
-- TOC entry 218 (class 1259 OID 16394)
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 218
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- TOC entry 219 (class 1259 OID 16395)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO legalexs_admin;

--
-- TOC entry 220 (class 1259 OID 16400)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 220
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 221 (class 1259 OID 16401)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO legalexs_admin;

--
-- TOC entry 222 (class 1259 OID 16406)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 222
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 223 (class 1259 OID 16407)
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO legalexs_admin;

--
-- TOC entry 224 (class 1259 OID 16410)
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 224
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- TOC entry 225 (class 1259 OID 16411)
-- Name: components_services_service_cards; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_service_cards (
    id integer NOT NULL,
    link character varying(255)
);


ALTER TABLE public.components_services_service_cards OWNER TO legalexs_admin;

--
-- TOC entry 226 (class 1259 OID 16414)
-- Name: components_services_service_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_services_service_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_services_service_cards_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 226
-- Name: components_services_service_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_service_cards_id_seq OWNED BY public.components_services_service_cards.id;


--
-- TOC entry 227 (class 1259 OID 16415)
-- Name: components_services_tab_rows; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_tab_rows (
    id integer NOT NULL,
    description text,
    price character varying(255)
);


ALTER TABLE public.components_services_tab_rows OWNER TO legalexs_admin;

--
-- TOC entry 228 (class 1259 OID 16420)
-- Name: components_services_tab_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_services_tab_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_services_tab_rows_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 228
-- Name: components_services_tab_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tab_rows_id_seq OWNED BY public.components_services_tab_rows.id;


--
-- TOC entry 229 (class 1259 OID 16421)
-- Name: components_services_tables; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_tables (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_services_tables OWNER TO legalexs_admin;

--
-- TOC entry 230 (class 1259 OID 16424)
-- Name: components_services_tables_components; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_tables_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_services_tables_components OWNER TO legalexs_admin;

--
-- TOC entry 231 (class 1259 OID 16429)
-- Name: components_services_tables_components_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_services_tables_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_services_tables_components_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 231
-- Name: components_services_tables_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tables_components_id_seq OWNED BY public.components_services_tables_components.id;


--
-- TOC entry 232 (class 1259 OID 16430)
-- Name: components_services_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_services_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_services_tables_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 232
-- Name: components_services_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tables_id_seq OWNED BY public.components_services_tables.id;


--
-- TOC entry 233 (class 1259 OID 16431)
-- Name: components_shared_meta_socials; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_shared_meta_socials (
    id integer NOT NULL,
    social_network character varying(255),
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_shared_meta_socials OWNER TO legalexs_admin;

--
-- TOC entry 234 (class 1259 OID 16436)
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_shared_meta_socials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 234
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNED BY public.components_shared_meta_socials.id;


--
-- TOC entry 235 (class 1259 OID 16437)
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description character varying(255),
    keywords text,
    meta_robots character varying(255),
    structured_data jsonb,
    meta_viewport character varying(255),
    canonical_url character varying(255)
);


ALTER TABLE public.components_shared_seos OWNER TO legalexs_admin;

--
-- TOC entry 236 (class 1259 OID 16442)
-- Name: components_shared_seos_components; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_shared_seos_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_seos_components OWNER TO legalexs_admin;

--
-- TOC entry 237 (class 1259 OID 16447)
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_shared_seos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_components_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 237
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_seos_components_id_seq OWNED BY public.components_shared_seos_components.id;


--
-- TOC entry 238 (class 1259 OID 16448)
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 238
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- TOC entry 239 (class 1259 OID 16449)
-- Name: email_templates; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.email_templates (
    id integer NOT NULL,
    template_reference_id integer,
    design jsonb,
    name character varying(255),
    subject character varying(255),
    body_html text,
    body_text text,
    enabled boolean,
    tags jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.email_templates OWNER TO legalexs_admin;

--
-- TOC entry 240 (class 1259 OID 16454)
-- Name: email_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.email_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.email_templates_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 240
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.email_templates_id_seq OWNED BY public.email_templates.id;


--
-- TOC entry 241 (class 1259 OID 16455)
-- Name: files; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.files (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.files OWNER TO legalexs_admin;

--
-- TOC entry 242 (class 1259 OID 16460)
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO legalexs_admin;

--
-- TOC entry 243 (class 1259 OID 16463)
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 243
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- TOC entry 244 (class 1259 OID 16464)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 244
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 245 (class 1259 OID 16465)
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO legalexs_admin;

--
-- TOC entry 246 (class 1259 OID 16470)
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 246
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- TOC entry 247 (class 1259 OID 16471)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO legalexs_admin;

--
-- TOC entry 248 (class 1259 OID 16476)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 248
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 249 (class 1259 OID 16477)
-- Name: menu_items; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    "order" integer,
    title character varying(255),
    url character varying(255),
    target character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.menu_items OWNER TO legalexs_admin;

--
-- TOC entry 250 (class 1259 OID 16482)
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menu_items_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 250
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- TOC entry 251 (class 1259 OID 16483)
-- Name: menu_items_parent_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.menu_items_parent_links (
    id integer NOT NULL,
    menu_item_id integer,
    inv_menu_item_id integer
);


ALTER TABLE public.menu_items_parent_links OWNER TO legalexs_admin;

--
-- TOC entry 252 (class 1259 OID 16486)
-- Name: menu_items_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.menu_items_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menu_items_parent_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 252
-- Name: menu_items_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_parent_links_id_seq OWNED BY public.menu_items_parent_links.id;


--
-- TOC entry 253 (class 1259 OID 16487)
-- Name: menu_items_root_menu_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.menu_items_root_menu_links (
    id integer NOT NULL,
    menu_item_id integer,
    menu_id integer,
    menu_item_order double precision
);


ALTER TABLE public.menu_items_root_menu_links OWNER TO legalexs_admin;

--
-- TOC entry 254 (class 1259 OID 16490)
-- Name: menu_items_root_menu_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.menu_items_root_menu_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menu_items_root_menu_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 254
-- Name: menu_items_root_menu_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_root_menu_links_id_seq OWNED BY public.menu_items_root_menu_links.id;


--
-- TOC entry 255 (class 1259 OID 16491)
-- Name: menus; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.menus (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.menus OWNER TO legalexs_admin;

--
-- TOC entry 256 (class 1259 OID 16496)
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menus_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 256
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- TOC entry 257 (class 1259 OID 16497)
-- Name: services; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.services (
    id integer NOT NULL,
    title character varying(255),
    description text,
    meta character varying(255),
    tab_title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean,
    priority integer
);


ALTER TABLE public.services OWNER TO legalexs_admin;

--
-- TOC entry 258 (class 1259 OID 16502)
-- Name: services_components; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.services_components OWNER TO legalexs_admin;

--
-- TOC entry 259 (class 1259 OID 16507)
-- Name: services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.services_components_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 259
-- Name: services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.services_components_id_seq OWNED BY public.services_components.id;


--
-- TOC entry 260 (class 1259 OID 16508)
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.services_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 260
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- TOC entry 261 (class 1259 OID 16509)
-- Name: sitemap; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.sitemap (
    id integer NOT NULL,
    sitemap_string text,
    name character varying(255),
    type character varying(255),
    delta integer,
    link_count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sitemap OWNER TO legalexs_admin;

--
-- TOC entry 262 (class 1259 OID 16514)
-- Name: sitemap_cache; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.sitemap_cache (
    id integer NOT NULL,
    sitemap_json jsonb,
    name character varying(255),
    sitemap_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sitemap_cache OWNER TO legalexs_admin;

--
-- TOC entry 263 (class 1259 OID 16519)
-- Name: sitemap_cache_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.sitemap_cache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sitemap_cache_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 263
-- Name: sitemap_cache_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.sitemap_cache_id_seq OWNED BY public.sitemap_cache.id;


--
-- TOC entry 264 (class 1259 OID 16520)
-- Name: sitemap_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.sitemap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sitemap_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 264
-- Name: sitemap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.sitemap_id_seq OWNED BY public.sitemap.id;


--
-- TOC entry 265 (class 1259 OID 16521)
-- Name: slides; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.slides (
    id integer NOT NULL,
    description text,
    button_text character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean,
    priority integer
);


ALTER TABLE public.slides OWNER TO legalexs_admin;

--
-- TOC entry 266 (class 1259 OID 16526)
-- Name: slides_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.slides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slides_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 266
-- Name: slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.slides_id_seq OWNED BY public.slides.id;


--
-- TOC entry 267 (class 1259 OID 16527)
-- Name: slides_service_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.slides_service_links (
    id integer NOT NULL,
    slide_id integer,
    service_id integer
);


ALTER TABLE public.slides_service_links OWNER TO legalexs_admin;

--
-- TOC entry 268 (class 1259 OID 16530)
-- Name: slides_service_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.slides_service_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slides_service_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 268
-- Name: slides_service_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.slides_service_links_id_seq OWNED BY public.slides_service_links.id;


--
-- TOC entry 269 (class 1259 OID 16531)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO legalexs_admin;

--
-- TOC entry 270 (class 1259 OID 16534)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 271 (class 1259 OID 16535)
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO legalexs_admin;

--
-- TOC entry 272 (class 1259 OID 16538)
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- TOC entry 273 (class 1259 OID 16539)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO legalexs_admin;

--
-- TOC entry 274 (class 1259 OID 16544)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 274
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 275 (class 1259 OID 16545)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO legalexs_admin;

--
-- TOC entry 276 (class 1259 OID 16550)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 276
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 277 (class 1259 OID 16551)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO legalexs_admin;

--
-- TOC entry 278 (class 1259 OID 16556)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 278
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 279 (class 1259 OID 16557)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO legalexs_admin;

--
-- TOC entry 280 (class 1259 OID 16560)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 281 (class 1259 OID 16561)
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.strapi_release_actions OWNER TO legalexs_admin;

--
-- TOC entry 282 (class 1259 OID 16566)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 283 (class 1259 OID 16567)
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO legalexs_admin;

--
-- TOC entry 284 (class 1259 OID 16570)
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- TOC entry 285 (class 1259 OID 16571)
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.strapi_releases OWNER TO legalexs_admin;

--
-- TOC entry 286 (class 1259 OID 16576)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 287 (class 1259 OID 16577)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO legalexs_admin;

--
-- TOC entry 288 (class 1259 OID 16580)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 288
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 289 (class 1259 OID 16581)
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO legalexs_admin;

--
-- TOC entry 290 (class 1259 OID 16584)
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 290
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- TOC entry 291 (class 1259 OID 16585)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO legalexs_admin;

--
-- TOC entry 292 (class 1259 OID 16590)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 292
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 293 (class 1259 OID 16591)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO legalexs_admin;

--
-- TOC entry 294 (class 1259 OID 16596)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 294
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 295 (class 1259 OID 16597)
-- Name: tabs; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.tabs (
    id integer NOT NULL,
    title character varying(255),
    trailer text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.tabs OWNER TO legalexs_admin;

--
-- TOC entry 296 (class 1259 OID 16602)
-- Name: tabs_components; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.tabs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.tabs_components OWNER TO legalexs_admin;

--
-- TOC entry 297 (class 1259 OID 16607)
-- Name: tabs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.tabs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tabs_components_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 297
-- Name: tabs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_components_id_seq OWNED BY public.tabs_components.id;


--
-- TOC entry 298 (class 1259 OID 16608)
-- Name: tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.tabs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tabs_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 298
-- Name: tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_id_seq OWNED BY public.tabs.id;


--
-- TOC entry 299 (class 1259 OID 16609)
-- Name: tabs_service_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.tabs_service_links (
    id integer NOT NULL,
    tab_id integer,
    service_id integer,
    tab_order double precision
);


ALTER TABLE public.tabs_service_links OWNER TO legalexs_admin;

--
-- TOC entry 300 (class 1259 OID 16612)
-- Name: tabs_service_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.tabs_service_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tabs_service_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 300
-- Name: tabs_service_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_service_links_id_seq OWNED BY public.tabs_service_links.id;


--
-- TOC entry 301 (class 1259 OID 16613)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO legalexs_admin;

--
-- TOC entry 302 (class 1259 OID 16616)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 302
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 303 (class 1259 OID 16617)
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO legalexs_admin;

--
-- TOC entry 304 (class 1259 OID 16620)
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 304
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- TOC entry 305 (class 1259 OID 16621)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO legalexs_admin;

--
-- TOC entry 306 (class 1259 OID 16626)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 306
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 307 (class 1259 OID 16627)
-- Name: up_users; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);


ALTER TABLE public.up_users OWNER TO legalexs_admin;

--
-- TOC entry 308 (class 1259 OID 16632)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 308
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 309 (class 1259 OID 16633)
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO legalexs_admin;

--
-- TOC entry 310 (class 1259 OID 16636)
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 310
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- TOC entry 311 (class 1259 OID 16637)
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO legalexs_admin;

--
-- TOC entry 312 (class 1259 OID 16642)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 312
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 313 (class 1259 OID 16643)
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO legalexs_admin;

--
-- TOC entry 314 (class 1259 OID 16646)
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: legalexs_admin
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO legalexs_admin;

--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 314
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- TOC entry 3448 (class 2604 OID 16647)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3449 (class 2604 OID 16648)
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 3450 (class 2604 OID 16649)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 3451 (class 2604 OID 16650)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 3452 (class 2604 OID 16651)
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- TOC entry 3453 (class 2604 OID 16652)
-- Name: components_services_service_cards id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_service_cards ALTER COLUMN id SET DEFAULT nextval('public.components_services_service_cards_id_seq'::regclass);


--
-- TOC entry 3454 (class 2604 OID 16653)
-- Name: components_services_tab_rows id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tab_rows ALTER COLUMN id SET DEFAULT nextval('public.components_services_tab_rows_id_seq'::regclass);


--
-- TOC entry 3455 (class 2604 OID 16654)
-- Name: components_services_tables id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables ALTER COLUMN id SET DEFAULT nextval('public.components_services_tables_id_seq'::regclass);


--
-- TOC entry 3456 (class 2604 OID 16655)
-- Name: components_services_tables_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components ALTER COLUMN id SET DEFAULT nextval('public.components_services_tables_components_id_seq'::regclass);


--
-- TOC entry 3457 (class 2604 OID 16656)
-- Name: components_shared_meta_socials id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_meta_socials_id_seq'::regclass);


--
-- TOC entry 3458 (class 2604 OID 16657)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 3459 (class 2604 OID 16658)
-- Name: components_shared_seos_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_components_id_seq'::regclass);


--
-- TOC entry 3460 (class 2604 OID 16659)
-- Name: email_templates id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN id SET DEFAULT nextval('public.email_templates_id_seq'::regclass);


--
-- TOC entry 3461 (class 2604 OID 16660)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 3462 (class 2604 OID 16661)
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- TOC entry 3463 (class 2604 OID 16662)
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- TOC entry 3464 (class 2604 OID 16663)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3465 (class 2604 OID 16664)
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- TOC entry 3466 (class 2604 OID 16665)
-- Name: menu_items_parent_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_parent_links_id_seq'::regclass);


--
-- TOC entry 3467 (class 2604 OID 16666)
-- Name: menu_items_root_menu_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_root_menu_links_id_seq'::regclass);


--
-- TOC entry 3468 (class 2604 OID 16667)
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- TOC entry 3469 (class 2604 OID 16668)
-- Name: services id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- TOC entry 3470 (class 2604 OID 16669)
-- Name: services_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components ALTER COLUMN id SET DEFAULT nextval('public.services_components_id_seq'::regclass);


--
-- TOC entry 3471 (class 2604 OID 16670)
-- Name: sitemap id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap ALTER COLUMN id SET DEFAULT nextval('public.sitemap_id_seq'::regclass);


--
-- TOC entry 3472 (class 2604 OID 16671)
-- Name: sitemap_cache id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache ALTER COLUMN id SET DEFAULT nextval('public.sitemap_cache_id_seq'::regclass);


--
-- TOC entry 3473 (class 2604 OID 16672)
-- Name: slides id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides ALTER COLUMN id SET DEFAULT nextval('public.slides_id_seq'::regclass);


--
-- TOC entry 3474 (class 2604 OID 16673)
-- Name: slides_service_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links ALTER COLUMN id SET DEFAULT nextval('public.slides_service_links_id_seq'::regclass);


--
-- TOC entry 3475 (class 2604 OID 16674)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 3476 (class 2604 OID 16675)
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 3477 (class 2604 OID 16676)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3478 (class 2604 OID 16677)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3479 (class 2604 OID 16678)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3480 (class 2604 OID 16679)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3481 (class 2604 OID 16680)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 3482 (class 2604 OID 16681)
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- TOC entry 3483 (class 2604 OID 16682)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 3484 (class 2604 OID 16683)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 3485 (class 2604 OID 16684)
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 16685)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 3487 (class 2604 OID 16686)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3488 (class 2604 OID 16687)
-- Name: tabs id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs ALTER COLUMN id SET DEFAULT nextval('public.tabs_id_seq'::regclass);


--
-- TOC entry 3489 (class 2604 OID 16688)
-- Name: tabs_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components ALTER COLUMN id SET DEFAULT nextval('public.tabs_components_id_seq'::regclass);


--
-- TOC entry 3490 (class 2604 OID 16689)
-- Name: tabs_service_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links ALTER COLUMN id SET DEFAULT nextval('public.tabs_service_links_id_seq'::regclass);


--
-- TOC entry 3491 (class 2604 OID 16690)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 3492 (class 2604 OID 16691)
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 3493 (class 2604 OID 16692)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 3494 (class 2604 OID 16693)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 3495 (class 2604 OID 16694)
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- TOC entry 3496 (class 2604 OID 16695)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 3497 (class 2604 OID 16696)
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- TOC entry 3963 (class 0 OID 16385)
-- Dependencies: 215
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	{}	\N	{}	[]	2024-08-13 19:39:13.816	2024-08-13 19:39:13.816	\N	\N
2	plugin::upload.configure-view	{}	\N	{}	[]	2024-08-13 19:39:13.833	2024-08-13 19:39:13.833	\N	\N
3	plugin::upload.assets.create	{}	\N	{}	[]	2024-08-13 19:39:13.839	2024-08-13 19:39:13.839	\N	\N
4	plugin::upload.assets.update	{}	\N	{}	[]	2024-08-13 19:39:13.844	2024-08-13 19:39:13.844	\N	\N
5	plugin::upload.assets.download	{}	\N	{}	[]	2024-08-13 19:39:13.85	2024-08-13 19:39:13.85	\N	\N
6	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-08-13 19:39:13.855	2024-08-13 19:39:13.855	\N	\N
7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-08-13 19:39:13.862	2024-08-13 19:39:13.862	\N	\N
8	plugin::upload.configure-view	{}	\N	{}	[]	2024-08-13 19:39:13.882	2024-08-13 19:39:13.882	\N	\N
9	plugin::upload.assets.create	{}	\N	{}	[]	2024-08-13 19:39:13.892	2024-08-13 19:39:13.892	\N	\N
10	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-08-13 19:39:13.898	2024-08-13 19:39:13.898	\N	\N
11	plugin::upload.assets.download	{}	\N	{}	[]	2024-08-13 19:39:13.903	2024-08-13 19:39:13.903	\N	\N
12	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-08-13 19:39:13.907	2024-08-13 19:39:13.907	\N	\N
13	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-08-13 19:39:13.952	2024-08-13 19:39:13.952	\N	\N
14	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-08-13 19:39:13.957	2024-08-13 19:39:13.957	\N	\N
15	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-08-13 19:39:13.964	2024-08-13 19:39:13.964	\N	\N
16	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-08-13 19:39:13.969	2024-08-13 19:39:13.969	\N	\N
17	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-08-13 19:39:13.973	2024-08-13 19:39:13.973	\N	\N
18	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-08-13 19:39:13.977	2024-08-13 19:39:13.977	\N	\N
19	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-08-13 19:39:13.981	2024-08-13 19:39:13.981	\N	\N
20	plugin::content-type-builder.read	{}	\N	{}	[]	2024-08-13 19:39:13.985	2024-08-13 19:39:13.985	\N	\N
21	plugin::email.settings.read	{}	\N	{}	[]	2024-08-13 19:39:13.997	2024-08-13 19:39:13.997	\N	\N
22	plugin::upload.read	{}	\N	{}	[]	2024-08-13 19:39:14.002	2024-08-13 19:39:14.002	\N	\N
23	plugin::upload.assets.create	{}	\N	{}	[]	2024-08-13 19:39:14.006	2024-08-13 19:39:14.006	\N	\N
24	plugin::upload.assets.update	{}	\N	{}	[]	2024-08-13 19:39:14.015	2024-08-13 19:39:14.015	\N	\N
25	plugin::upload.assets.download	{}	\N	{}	[]	2024-08-13 19:39:14.02	2024-08-13 19:39:14.02	\N	\N
26	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-08-13 19:39:14.024	2024-08-13 19:39:14.024	\N	\N
27	plugin::upload.configure-view	{}	\N	{}	[]	2024-08-13 19:39:14.031	2024-08-13 19:39:14.031	\N	\N
28	plugin::upload.settings.read	{}	\N	{}	[]	2024-08-13 19:39:14.034	2024-08-13 19:39:14.034	\N	\N
29	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-08-13 19:39:14.039	2024-08-13 19:39:14.039	\N	\N
30	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-08-13 19:39:14.043	2024-08-13 19:39:14.043	\N	\N
31	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-08-13 19:39:14.046	2024-08-13 19:39:14.046	\N	\N
32	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-08-13 19:39:14.05	2024-08-13 19:39:14.05	\N	\N
33	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-08-13 19:39:14.058	2024-08-13 19:39:14.058	\N	\N
34	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-08-13 19:39:14.062	2024-08-13 19:39:14.062	\N	\N
35	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-08-13 19:39:14.067	2024-08-13 19:39:14.067	\N	\N
36	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-08-13 19:39:14.072	2024-08-13 19:39:14.072	\N	\N
37	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-08-13 19:39:14.075	2024-08-13 19:39:14.075	\N	\N
38	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-08-13 19:39:14.079	2024-08-13 19:39:14.079	\N	\N
39	plugin::i18n.locale.create	{}	\N	{}	[]	2024-08-13 19:39:14.083	2024-08-13 19:39:14.083	\N	\N
40	plugin::i18n.locale.read	{}	\N	{}	[]	2024-08-13 19:39:14.088	2024-08-13 19:39:14.088	\N	\N
41	plugin::i18n.locale.update	{}	\N	{}	[]	2024-08-13 19:39:14.094	2024-08-13 19:39:14.094	\N	\N
42	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-08-13 19:39:14.099	2024-08-13 19:39:14.099	\N	\N
43	admin::marketplace.read	{}	\N	{}	[]	2024-08-13 19:39:14.106	2024-08-13 19:39:14.106	\N	\N
44	admin::webhooks.create	{}	\N	{}	[]	2024-08-13 19:39:14.111	2024-08-13 19:39:14.111	\N	\N
45	admin::webhooks.read	{}	\N	{}	[]	2024-08-13 19:39:14.115	2024-08-13 19:39:14.115	\N	\N
46	admin::webhooks.update	{}	\N	{}	[]	2024-08-13 19:39:14.12	2024-08-13 19:39:14.12	\N	\N
47	admin::webhooks.delete	{}	\N	{}	[]	2024-08-13 19:39:14.124	2024-08-13 19:39:14.124	\N	\N
48	admin::users.create	{}	\N	{}	[]	2024-08-13 19:39:14.128	2024-08-13 19:39:14.128	\N	\N
49	admin::users.read	{}	\N	{}	[]	2024-08-13 19:39:14.134	2024-08-13 19:39:14.134	\N	\N
50	admin::users.update	{}	\N	{}	[]	2024-08-13 19:39:14.138	2024-08-13 19:39:14.138	\N	\N
51	admin::users.delete	{}	\N	{}	[]	2024-08-13 19:39:14.142	2024-08-13 19:39:14.142	\N	\N
52	admin::roles.create	{}	\N	{}	[]	2024-08-13 19:39:14.146	2024-08-13 19:39:14.146	\N	\N
53	admin::roles.read	{}	\N	{}	[]	2024-08-13 19:39:14.152	2024-08-13 19:39:14.152	\N	\N
54	admin::roles.update	{}	\N	{}	[]	2024-08-13 19:39:14.157	2024-08-13 19:39:14.157	\N	\N
55	admin::roles.delete	{}	\N	{}	[]	2024-08-13 19:39:14.161	2024-08-13 19:39:14.161	\N	\N
56	admin::api-tokens.access	{}	\N	{}	[]	2024-08-13 19:39:14.166	2024-08-13 19:39:14.166	\N	\N
57	admin::api-tokens.create	{}	\N	{}	[]	2024-08-13 19:39:14.17	2024-08-13 19:39:14.17	\N	\N
58	admin::api-tokens.read	{}	\N	{}	[]	2024-08-13 19:39:14.174	2024-08-13 19:39:14.174	\N	\N
59	admin::api-tokens.update	{}	\N	{}	[]	2024-08-13 19:39:14.18	2024-08-13 19:39:14.18	\N	\N
60	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-08-13 19:39:14.185	2024-08-13 19:39:14.185	\N	\N
61	admin::api-tokens.delete	{}	\N	{}	[]	2024-08-13 19:39:14.19	2024-08-13 19:39:14.19	\N	\N
62	admin::project-settings.update	{}	\N	{}	[]	2024-08-13 19:39:14.2	2024-08-13 19:39:14.2	\N	\N
63	admin::project-settings.read	{}	\N	{}	[]	2024-08-13 19:39:14.206	2024-08-13 19:39:14.206	\N	\N
64	admin::transfer.tokens.access	{}	\N	{}	[]	2024-08-13 19:39:14.212	2024-08-13 19:39:14.212	\N	\N
65	admin::transfer.tokens.create	{}	\N	{}	[]	2024-08-13 19:39:14.217	2024-08-13 19:39:14.217	\N	\N
66	admin::transfer.tokens.read	{}	\N	{}	[]	2024-08-13 19:39:14.222	2024-08-13 19:39:14.222	\N	\N
67	admin::transfer.tokens.update	{}	\N	{}	[]	2024-08-13 19:39:14.227	2024-08-13 19:39:14.227	\N	\N
68	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-08-13 19:39:14.233	2024-08-13 19:39:14.233	\N	\N
69	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-08-13 19:39:14.238	2024-08-13 19:39:14.238	\N	\N
73	plugin::content-manager.explorer.delete	{}	api::service.service	{}	[]	2024-08-13 19:56:25.836	2024-08-13 19:56:25.836	\N	\N
74	plugin::content-manager.explorer.publish	{}	api::service.service	{}	[]	2024-08-13 19:56:25.841	2024-08-13 19:56:25.841	\N	\N
101	plugin::content-manager.explorer.delete	{}	api::tab.tab	{}	[]	2024-08-13 20:50:33.179	2024-08-13 20:50:33.179	\N	\N
102	plugin::content-manager.explorer.publish	{}	api::tab.tab	{}	[]	2024-08-13 20:50:33.186	2024-08-13 20:50:33.186	\N	\N
230	plugin::content-manager.explorer.delete	{}	api::service.service	{}	[]	2024-08-24 13:57:57.203	2024-08-24 13:57:57.203	\N	\N
231	plugin::content-manager.explorer.publish	{}	api::service.service	{}	[]	2024-08-24 13:57:57.21	2024-08-24 13:57:57.21	\N	\N
235	plugin::content-manager.explorer.delete	{}	api::slide.slide	{}	[]	2024-08-24 13:57:57.241	2024-08-24 13:57:57.241	\N	\N
236	plugin::content-manager.explorer.publish	{}	api::slide.slide	{}	[]	2024-08-24 13:57:57.245	2024-08-24 13:57:57.245	\N	\N
237	plugin::content-manager.explorer.create	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-24 13:57:57.249	2024-08-24 13:57:57.249	\N	\N
156	plugin::content-manager.explorer.delete	{}	api::slide.slide	{}	[]	2024-08-23 18:16:20.465	2024-08-23 18:16:20.465	\N	\N
157	plugin::content-manager.explorer.publish	{}	api::slide.slide	{}	[]	2024-08-23 18:16:20.477	2024-08-23 18:16:20.477	\N	\N
238	plugin::content-manager.explorer.read	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-24 13:57:57.253	2024-08-24 13:57:57.253	\N	\N
239	plugin::content-manager.explorer.update	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-24 13:57:57.258	2024-08-24 13:57:57.258	\N	\N
240	plugin::content-manager.explorer.delete	{}	api::tab.tab	{}	[]	2024-08-24 13:57:57.264	2024-08-24 13:57:57.264	\N	\N
241	plugin::content-manager.explorer.publish	{}	api::tab.tab	{}	[]	2024-08-24 13:57:57.27	2024-08-24 13:57:57.27	\N	\N
242	plugin::seo.read	{}	\N	{}	[]	2024-08-24 16:55:08.784	2024-08-24 16:55:08.784	\N	\N
243	plugin::sitemap.settings.read	{}	\N	{}	[]	2024-08-24 16:55:31.059	2024-08-24 16:55:31.059	\N	\N
186	plugin::content-manager.explorer.create	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-23 18:50:27.172	2024-08-23 18:50:27.172	\N	\N
188	plugin::content-manager.explorer.read	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-23 18:50:27.188	2024-08-23 18:50:27.188	\N	\N
190	plugin::content-manager.explorer.update	{}	api::tab.tab	{"fields": ["Title", "Tables.Row.Description", "Tables.Row.Price", "Tables.Title", "Trailer", "Service"]}	[]	2024-08-23 18:50:27.208	2024-08-23 18:50:27.208	\N	\N
244	plugin::content-manager.explorer.create	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-09-22 21:08:02.976	2024-09-22 21:08:02.976	\N	\N
245	plugin::content-manager.explorer.read	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-09-22 21:08:03.171	2024-09-22 21:08:03.171	\N	\N
246	plugin::content-manager.explorer.update	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-09-22 21:08:03.36	2024-09-22 21:08:03.36	\N	\N
234	plugin::content-manager.explorer.update	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-08-24 13:57:57.237	2024-09-22 22:09:11.232	\N	\N
233	plugin::content-manager.explorer.read	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-08-24 13:57:57.232	2024-09-22 22:09:11.232	\N	\N
232	plugin::content-manager.explorer.create	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service", "Priority"]}	[]	2024-08-24 13:57:57.216	2024-09-22 22:09:11.232	\N	\N
247	plugin::content-manager.explorer.create	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-09-22 22:11:27.336	2024-09-22 22:11:27.336	\N	\N
248	plugin::content-manager.explorer.read	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-09-22 22:11:27.561	2024-09-22 22:11:27.561	\N	\N
249	plugin::content-manager.explorer.update	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-09-22 22:11:27.785	2024-09-22 22:11:27.785	\N	\N
228	plugin::content-manager.explorer.read	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-08-24 13:57:57.188	2024-09-22 22:20:08.484	\N	\N
229	plugin::content-manager.explorer.update	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-08-24 13:57:57.194	2024-09-22 22:20:08.484	\N	\N
227	plugin::content-manager.explorer.create	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs", "Priority"]}	[]	2024-08-24 13:57:57.174	2024-09-22 22:20:08.484	\N	\N
\.


--
-- TOC entry 3965 (class 0 OID 16391)
-- Dependencies: 217
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
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
13	13	1	1
14	14	1	2
15	15	1	3
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
73	73	1	61
74	74	1	62
101	101	1	69
102	102	1	70
227	227	2	7
228	228	2	8
229	229	2	9
230	230	2	10
231	231	2	11
232	232	2	12
233	233	2	13
234	234	2	14
235	235	2	15
236	236	2	16
237	237	2	17
156	156	1	83
157	157	1	84
238	238	2	18
239	239	2	19
240	240	2	20
241	241	2	21
242	242	1	120
243	243	1	121
186	186	1	98
188	188	1	100
190	190	1	102
244	244	1	122
245	245	1	123
246	246	1	124
247	247	1	125
248	248	1	126
249	249	1	127
\.


--
-- TOC entry 3967 (class 0 OID 16395)
-- Dependencies: 219
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-08-13 19:39:13.791	2024-08-13 19:39:13.791	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-08-13 19:39:13.81	2024-08-13 19:39:13.81	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-08-13 19:39:13.805	2024-08-24 13:57:57.045	\N	\N
\.


--
-- TOC entry 3969 (class 0 OID 16401)
-- Dependencies: 221
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Tsimafei	Lipnitski	PiRat	silencetray@gmail.com	$2a$10$C0lCIUvdaXAGlRh4JXhGwu20N//11St1u/kurXs/mKmwe2LBX.BKC	\N	\N	t	f	\N	2024-08-13 19:40:32.187	2024-08-24 13:59:21.253	\N	\N
2	Vlad	Vlasenkov	Director	vv95@bk.ru	$2a$10$KPltaxDOaPyzPOlSYu04KepEufmMvejgJeVuLn1W/h1B9r4audkXq	\N	c5984b1939368e3964e9b1a8e8f9bc3603f66aa6	t	f	\N	2024-08-24 14:04:19.349	2024-08-24 14:15:52.751	\N	\N
3	Katerina	Asmolovskaya	Katsusha	katya@seo.com	$2a$10$2WQ8rCxEPpLQIH47ZIhOr.rdlR6m8oLw/fpBBmDm94MDlQq6pe8zC	\N	fc795ba36d1a50cc2feb347b584c8f6e38c5ce8e	t	f	\N	2024-09-02 06:44:52.178	2024-09-02 06:53:04.171	\N	\N
4	Natasha	Kovalyova	Natashka	natasha@konfeta.com	$2a$10$JkVCjof4zVCH.qvqChMOvO17.wOsbAQyq0h3VPTQDa34saAYFb6F2	\N	b65fb257a109bf2dbc6b13c353348159231eeb94	t	f	\N	2024-09-02 07:02:02.51	2024-09-02 07:03:09.337	\N	\N
\.


--
-- TOC entry 3971 (class 0 OID 16407)
-- Dependencies: 223
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
3	2	2	1	1
5	3	2	1	2
7	4	2	1	3
\.


--
-- TOC entry 3973 (class 0 OID 16411)
-- Dependencies: 225
-- Data for Name: components_services_service_cards; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_services_service_cards (id, link) FROM stdin;
1	legal
5	hr
6	crisisManagement
10	occupationalSafetyAndHealth
11	protectionOfPersonalInformation
12	economy
7	mediation
9	hrSupport
\.


--
-- TOC entry 3975 (class 0 OID 16415)
-- Dependencies: 227
-- Data for Name: components_services_tab_rows; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_services_tab_rows (id, description, price) FROM stdin;
4	Подготовка письменного запроса в гос.органы	от 50,00
1	Устная юридическая консультация	от 70,00
2	Консультация по созданию бизнеса (регистрация, налогообложение, лицензирование, постановка на учёт и т.д.)\t	от 100,00
3	Письменная консультация по правовым вопросам	от 120,00
5	Консультирование о перспективах взыскания долгов, сроках и расходах	от 50,00 бел. руб.
6	Подготовка претензии/ответа на претензию	от 100,00 бел. руб.
7	Подготовка искового заявления/отзыва на исковое заявление/консультация о возможности подачи искового заявления в экономический суд/формирование позиции по делу	от 150,00 бел. руб.
8	Подготовка заявления о возбуждении приказного производства/отзыва на заявление о возбуждении приказного производства	от 100,00 бел. руб.
9	Подготовка апелляционной, кассационной жалобы, жалобы в порядке надзора/отзывов	от 200,00 бел. руб.
10	Подготовка пакета документов о выдаче исполнительной надписи	от 100,00 бел. руб.
11	Подготовка заявления о возбуждении исполнительного производства	от 70,00 бел. руб.
12	Представление интересов клиента в исполнительном производстве	от 200,00 бел. руб.
13	Составление ходатайства в суд	от 50,00 бел. руб.
14	Составление мирового соглашения	от 100,00 бел. руб.
15	Разработка проекта договора (под конкретные условия клиента)	от 100,00 бел. руб.
16	Экспертиза договора	от 70,00 бел. руб.
17	Подготовка протокола разногласий/дополнительного соглашения	от 50,00 бел. руб.
18	Пакет лайт (5 – устных консультаций, 1 – письменная консультация, 1 – разработка договора, 1 – составление претензии) *без выезда специалиста к клиенту	300,00 бел. руб./месяц
19	Пакет стандарт (10 – устных консультаций, 2 – письменных консультации, 2 – разработки договора, 2 – составления претензии, 2 – выезда специалиста к клиенту)	600,00 бел. руб./месяц
20	Пакет премиум (нет ограничений по устным консультациям, 4 – письменных консультации, 5 – разработок договоров, 3 – составления претензии, 5 – документов по кадрам, 4 – выезда специалиста)	800,00 бел. руб./месяц
21	Подготовка документов для регистрации в качестве ИП + консультация	130,00 бел. руб.
22	Подготовка документов для регистрации ИП + сопровождение	200,00 бел. руб.
25	Подготовка документов для регистрации иных организационно-правовых форм	цена по запросу
23	Подготовка документов для регистрации ООО, ЧУП + консультация	от 250,00 бел. руб.
24	Подготовка документов для регистрации ООО, ЧУП + сопровождение	от 350,00 бел. руб.
26	Консультация по организации и ведению лицензируемого вида деятельности	100,00 бел. руб.
27	Подготовка документов для получения Лицензии (специального разрешения) на право заниматься определённой деятельностью	500,00 бел. руб.
28	Подготовка документов для внесения изменений в Лицензию (специальное разрешение)	от 200,00 бел. руб.
29	Изменение размера уставного фонда	100,00 бел. руб.
30	Изменение наименования организации	100,00 бел. руб.
32	Изменение состава участников	от 100,00 бел. руб.
33	Разработка новой редакции устава, приведение устава в соответствие с законодательством	от 200,00 бел. руб.
31	Изменение местонахождения организации и внесение изменений в устав	от 100,00 бел. руб.
34	Долг до 1000 рублей	150,00 бел. руб.
35	Свыше 1000 рублей	350,00 бел. руб.
36	Свыше 10000 рублей	500,00 бел. руб.
37	Составление документов для запуска микрофинансовой деятельности	от 150,00 бел. руб.
38	Составление правил внутреннего контроля (противодействие легализации)	от 150,00 бел. руб.
39	Подготовка документов для участия в тендерах (со стороны участника)	от 100,00 бел. руб.
41	Согласование рекламы (Паспортизация)	от 500,00 бел. руб.
44	Представительство организаций перед третьими лицами, участие в переговорах от имени клиента, представительство в гос.органах с выездом специалиста	от 50,00 бел. руб./час
42	Согласование перепланировок, реконструкций, модернизаций	от 800,00 бел. руб.
43	Сопровождение всех видов сделок	от 100,00 бел. руб./час
40	СПК (Система Производственного Контроля) - Подготовка документов для аттестации в строительстве	от 1000,00 бел. руб.
61	Консультация по реорганизации	от 200,00р.
62	Реорганизация	от 800,00р.
63	Ликвидация	от 1000,00р.
64	Прекращение деятельности (для ИП)	от 800,00р.
66	Предварительные переговоры	от 50,00 бел. руб.
67	Проведение переговоров (одна сессия)	от 100,00 бел. руб. за 1 час
57	Обучение персонала	Договорная
55	Оценка персонала	Договорная
54	Проведение HR-аудита	от 400,00р
58	Рекрутинг + кадровое делопроизводство	от 600,00р
53	Работа с HR-брендом Позиционирование работодателя на рынке труда и усиление HR-бренда. Формирование необходимого имиджа компании. Анализ точек контакта с потенциальными сотрудниками и формирование эффективного «пути соискателя» Входит полный аудит, разработка стратегии, внедрение.\n	3000,00р
49	1-2 вакансии/месяц	от 700,00р
50	3-4 вакансии/месяц	от 1000,00р
51	1-2 вакансии/месяц	от 600,00р
52	3-4 вакансии/месяц	от 900,00р
45	Линейный персонал	от 450,00р
47	Executive search (поиск ключевых менеджеров и редких специалистов)	15% годового бюджета заработной платы
48	HeadHunting	20% годового бюджета заработной платы
46	Менеджеры/специалисты	Одна месячная заработная плата
59	Консультация по эффективному управлению и развитию бизнеса	от 200,00р.
60	Консультация по банкротству	от 200,00р.
90	Полное экономическое сопровождение организации численностью до 20 чел.	от 300,00 бел. руб.
91	Полное экономическое сопровождение организации численностью до 50 чел.	от 500,00 бел. руб. 
84	Разработка штатного расписания	от 50,00 бел. руб.
101	Приказ по кадрам	от 20,00 бел. руб. 
96	Программы инструктажей	от 100,00 бел. руб.
94	Разработка системы управления охраной труда (СУОТ) и рекомендаций	от 400,00 бел. руб.
71	Бизнес-план развития на 1 год  или на 5 лет	от 300,00 бел. руб.
83	Составление и сдача статистики (за 1 вид статистики)	от 20,00 бел.руб. 
85	Разработка положения по оплате труда	от 100,00 бел. руб. 
86	Разработка положения по премированию	от 100,00 бел. руб.
87	Разработка положения по оказанию материальной помощи	от 100,00 бел. руб.
88	Разработка экономического обоснования	Договорная 
89	Приказы по оплате труда	от 10,00 бел. руб. 
92	Составление калькуляций (за 1 калькуляцию)	от 50,00 бел. руб. 
93	Прочие экономические услуги 	в зависимости от сложности
69	Бизнес-план инвестиционного проекта	от 1000,00 бел. руб. в зависимости от сложности
72	Бизнес-план для индивидуального предпринимателя 	от 150,00 бел. руб.
95	Разработка инструкций в области защиты охраны труда	от 100,00 бел. руб.
102	Трудовой договор (контракт)	от 50,00 бел. руб.
98	Приказы по организации, акты, журналы и т.д.	от 50,00 бел. руб.
97	Планы мероприятий	от 50,00 бел. руб.
99	Урегулирование в случае производственной травмы	Договорная
103	Подготовка договора подряда с физическим лицом	от 100,00 бел. руб.
104	Полное оформление приема на работу/увольнения/перевода	от 100,00 бел. руб.
105	Договор с работником о полной индивидуальной материальной ответственности	от 50,00 бел. руб.
106	Разработка локальных правовых актов (инструкций, положений, правил внутреннего трудового распорядка и т.п.)	от 70,00 бел. руб.
107	Восстановление кадрового учета	от 150,00 бел. руб.
108	Полное кадровое сопровождение организации численностью до 20 чел.	от 200,00 бел. руб.
109	Полное кадровое сопровождение организации численностью до 50 чел.	от 500,00 бел. руб.
114	Составление медиативного соглашения 	от 100,00 бел. руб. 
115	Консультация по эффективному управлению и развитию бизнеса	от 200,00 бел. руб. 
116	Консультация по ликвидации	от 200,00 бел. руб.
117	Консультация по банкротству 	от 200,00 бел. руб.
118	Банкротство 	В соответствии с Законом «Об урегулировании неплатежеспособности»
119	Консультация по реорганизации 	от 200,00 бел. руб.
121	Бесшовный переход с ИП в ЮЛ	с 01.11.2024
120	Реорганизация	от 800,00 бел. руб. 
123	Ликвидация 	от 1000,00 бел. руб. 
122	Прекращение деятельности (для ИП)	от 600,00 бел. руб. 
110	Консультация по составлению и внедрению Политики в отношении обработки персональных данных 	от 100,00 бел. руб.  
111	Разработка Политики в отношении обработки персональных данных 	от 500,00 бел. руб.  
112	Сопровождение защиты персональных данных сертифицированным DPO 	от 400,00 бел. руб.  
113	Проведение аудита защиты персональных данных	от 200,00 бел. руб.  
124	Консультация	От 100,00 бел. руб.
125	Составление заявления о признании должника экономически несостоятельным (банкротом)	от 600,00 бел. руб.
126	Составление иных процессуальных документов (жалоб на действия антикризисного управляющего, ходатайств и др.)	От 50,00 бел. руб.
\.


--
-- TOC entry 3977 (class 0 OID 16421)
-- Dependencies: 229
-- Data for Name: components_services_tables; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_services_tables (id, title) FROM stdin;
1	\N
2	\N
3	\N
4	Указаны средние значения по набору услуг и ценам. При выборе необходимых Вам услуг и методов взаимодействия – цены могут отличаться как в большую, так и в меньшую стороны.
5	\N
6	\N
7	\N
8	\N
9	\N
16	\N
15	\N
14	\N
17	\N
13	\N
11	Срок договора 3 месяца
12	Срок договора 6 месяцев
10	\N
18	\N
19	\N
20	\N
21	\N
22	\N
23	\N
25	\N
26	\N
34	\N
36	\N
35	\N
37	\N
38	\N
28	\N
39	\N
40	\N
42	\N
43	\N
41	\N
44	\N
\.


--
-- TOC entry 3978 (class 0 OID 16424)
-- Dependencies: 230
-- Data for Name: components_services_tables_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_services_tables_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services.tab-row	Row	1
2	1	2	services.tab-row	Row	2
5	1	3	services.tab-row	Row	3
9	1	4	services.tab-row	Row	4
10	2	5	services.tab-row	Row	1
11	2	6	services.tab-row	Row	2
12	2	7	services.tab-row	Row	3
13	2	8	services.tab-row	Row	4
14	2	9	services.tab-row	Row	5
15	2	10	services.tab-row	Row	6
16	2	11	services.tab-row	Row	7
17	2	12	services.tab-row	Row	8
18	2	13	services.tab-row	Row	9
19	2	14	services.tab-row	Row	10
20	3	15	services.tab-row	Row	1
21	3	16	services.tab-row	Row	2
22	3	17	services.tab-row	Row	3
26	4	18	services.tab-row	Row	1
27	4	19	services.tab-row	Row	2
28	4	20	services.tab-row	Row	3
86	11	49	services.tab-row	Row	1
87	11	50	services.tab-row	Row	2
88	12	51	services.tab-row	Row	1
89	12	52	services.tab-row	Row	2
29	5	21	services.tab-row	Row	1
30	5	22	services.tab-row	Row	2
31	5	23	services.tab-row	Row	3
32	5	24	services.tab-row	Row	4
33	5	25	services.tab-row	Row	5
39	6	26	services.tab-row	Row	1
40	6	27	services.tab-row	Row	2
41	6	28	services.tab-row	Row	3
42	7	29	services.tab-row	Row	1
43	7	30	services.tab-row	Row	2
44	7	31	services.tab-row	Row	3
45	7	32	services.tab-row	Row	4
46	7	33	services.tab-row	Row	5
52	8	34	services.tab-row	Row	1
53	8	35	services.tab-row	Row	2
54	8	36	services.tab-row	Row	3
74	10	45	services.tab-row	Row	1
75	10	46	services.tab-row	Row	2
58	9	37	services.tab-row	Row	1
59	9	38	services.tab-row	Row	2
60	9	39	services.tab-row	Row	3
61	9	40	services.tab-row	Row	4
62	9	41	services.tab-row	Row	5
63	9	42	services.tab-row	Row	6
64	9	43	services.tab-row	Row	7
65	9	44	services.tab-row	Row	8
76	10	47	services.tab-row	Row	3
77	10	48	services.tab-row	Row	4
115	18	59	services.tab-row	Row	1
116	19	60	services.tab-row	Row	1
118	20	61	services.tab-row	Row	1
120	21	62	services.tab-row	Row	1
98	16	57	services.tab-row	Row	1
96	15	55	services.tab-row	Row	1
121	22	63	services.tab-row	Row	1
94	14	54	services.tab-row	Row	1
123	23	64	services.tab-row	Row	1
101	17	58	services.tab-row	Row	1
90	13	53	services.tab-row	Row	1
126	25	66	services.tab-row	Row	1
127	26	67	services.tab-row	Row	1
129	28	69	services.tab-row	Row	1
152	34	83	services.tab-row	Row	1
153	35	84	services.tab-row	Row	1
154	35	85	services.tab-row	Row	2
159	36	90	services.tab-row	Row	1
160	36	91	services.tab-row	Row	2
132	28	71	services.tab-row	Row	2
169	37	92	services.tab-row	Row	1
171	38	93	services.tab-row	Row	1
155	35	86	services.tab-row	Row	3
156	35	87	services.tab-row	Row	4
157	35	88	services.tab-row	Row	5
158	35	89	services.tab-row	Row	6
133	28	72	services.tab-row	Row	3
175	39	94	services.tab-row	Row	1
176	39	95	services.tab-row	Row	2
177	39	96	services.tab-row	Row	3
178	39	97	services.tab-row	Row	4
179	39	98	services.tab-row	Row	5
180	39	99	services.tab-row	Row	6
216	40	101	services.tab-row	Row	1
217	40	102	services.tab-row	Row	2
218	40	103	services.tab-row	Row	3
219	40	104	services.tab-row	Row	4
220	40	105	services.tab-row	Row	5
221	40	106	services.tab-row	Row	6
222	40	107	services.tab-row	Row	7
223	40	108	services.tab-row	Row	8
224	40	109	services.tab-row	Row	9
242	42	114	services.tab-row	Row	1
243	43	115	services.tab-row	Row	1
244	43	116	services.tab-row	Row	2
245	43	117	services.tab-row	Row	3
246	43	118	services.tab-row	Row	4
247	43	119	services.tab-row	Row	5
248	43	120	services.tab-row	Row	6
249	43	121	services.tab-row	Row	7
250	43	123	services.tab-row	Row	8
251	43	122	services.tab-row	Row	9
234	41	110	services.tab-row	Row	1
235	41	111	services.tab-row	Row	2
236	41	112	services.tab-row	Row	3
237	41	113	services.tab-row	Row	4
261	44	124	services.tab-row	Row	1
264	44	125	services.tab-row	Row	2
265	44	126	services.tab-row	Row	3
\.


--
-- TOC entry 3981 (class 0 OID 16431)
-- Dependencies: 233
-- Data for Name: components_shared_meta_socials; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_meta_socials (id, social_network, title, description) FROM stdin;
\.


--
-- TOC entry 3983 (class 0 OID 16437)
-- Dependencies: 235
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_seos (id, meta_title, meta_description, keywords, meta_robots, structured_data, meta_viewport, canonical_url) FROM stdin;
\.


--
-- TOC entry 3984 (class 0 OID 16442)
-- Dependencies: 236
-- Data for Name: components_shared_seos_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_seos_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 3987 (class 0 OID 16449)
-- Dependencies: 239
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.email_templates (id, template_reference_id, design, name, subject, body_html, body_text, enabled, tags, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 3989 (class 0 OID 16455)
-- Dependencies: 241
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
3	service1.webp	\N	\N	640	427	{"small": {"ext": ".webp", "url": "/uploads/small_service1_776fbb87cc.webp", "hash": "small_service1_776fbb87cc", "mime": "image/webp", "name": "small_service1.webp", "path": null, "size": 13.51, "width": 500, "height": 334, "sizeInBytes": 13506}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service1_776fbb87cc.webp", "hash": "thumbnail_service1_776fbb87cc", "mime": "image/webp", "name": "thumbnail_service1.webp", "path": null, "size": 5.3, "width": 234, "height": 156, "sizeInBytes": 5296}}	service1_776fbb87cc	.webp	image/webp	22.33	/uploads/service1_776fbb87cc.webp	\N	local	\N	/1	2024-08-14 17:50:08.338	2024-08-14 17:50:40.883	1	1	\N
8	hero2.webp	\N	\N	2000	1335	{"large": {"ext": ".webp", "url": "/uploads/large_hero2_79a835a10c.webp", "hash": "large_hero2_79a835a10c", "mime": "image/webp", "name": "large_hero2.webp", "path": null, "size": 50.04, "width": 1000, "height": 668, "sizeInBytes": 50044}, "small": {"ext": ".webp", "url": "/uploads/small_hero2_79a835a10c.webp", "hash": "small_hero2_79a835a10c", "mime": "image/webp", "name": "small_hero2.webp", "path": null, "size": 20.78, "width": 500, "height": 334, "sizeInBytes": 20780}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero2_79a835a10c.webp", "hash": "medium_hero2_79a835a10c", "mime": "image/webp", "name": "medium_hero2.webp", "path": null, "size": 34.78, "width": 750, "height": 501, "sizeInBytes": 34780}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero2_79a835a10c.webp", "hash": "thumbnail_hero2_79a835a10c", "mime": "image/webp", "name": "thumbnail_hero2.webp", "path": null, "size": 6.9, "width": 234, "height": 156, "sizeInBytes": 6902}}	hero2_79a835a10c	.webp	image/webp	117.21	/uploads/hero2_79a835a10c.webp	\N	local	\N	/2	2024-08-23 17:25:36.197	2024-08-23 17:25:36.197	1	1	\N
9	hero4.webp	\N	\N	1280	1920	{"large": {"ext": ".webp", "url": "/uploads/large_hero4_c74f9452a3.webp", "hash": "large_hero4_c74f9452a3", "mime": "image/webp", "name": "large_hero4.webp", "path": null, "size": 69.46, "width": 667, "height": 1000, "sizeInBytes": 69456}, "small": {"ext": ".webp", "url": "/uploads/small_hero4_c74f9452a3.webp", "hash": "small_hero4_c74f9452a3", "mime": "image/webp", "name": "small_hero4.webp", "path": null, "size": 22.07, "width": 333, "height": 500, "sizeInBytes": 22066}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero4_c74f9452a3.webp", "hash": "medium_hero4_c74f9452a3", "mime": "image/webp", "name": "medium_hero4.webp", "path": null, "size": 43.02, "width": 500, "height": 750, "sizeInBytes": 43016}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero4_c74f9452a3.webp", "hash": "thumbnail_hero4_c74f9452a3", "mime": "image/webp", "name": "thumbnail_hero4.webp", "path": null, "size": 3.34, "width": 104, "height": 156, "sizeInBytes": 3342}}	hero4_c74f9452a3	.webp	image/webp	288.63	/uploads/hero4_c74f9452a3.webp	\N	local	\N	/2	2024-08-23 17:25:36.357	2024-08-23 17:25:36.357	1	1	\N
10	hero3.webp	\N	\N	5608	3739	{"large": {"ext": ".webp", "url": "/uploads/large_hero3_0cc7f6e3dc.webp", "hash": "large_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "large_hero3.webp", "path": null, "size": 18.52, "width": 1000, "height": 667, "sizeInBytes": 18518}, "small": {"ext": ".webp", "url": "/uploads/small_hero3_0cc7f6e3dc.webp", "hash": "small_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "small_hero3.webp", "path": null, "size": 6.99, "width": 500, "height": 333, "sizeInBytes": 6994}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero3_0cc7f6e3dc.webp", "hash": "medium_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "medium_hero3.webp", "path": null, "size": 12.34, "width": 750, "height": 500, "sizeInBytes": 12336}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero3_0cc7f6e3dc.webp", "hash": "thumbnail_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "thumbnail_hero3.webp", "path": null, "size": 2.36, "width": 234, "height": 156, "sizeInBytes": 2362}}	hero3_0cc7f6e3dc	.webp	image/webp	319.39	/uploads/hero3_0cc7f6e3dc.webp	\N	local	\N	/2	2024-08-23 17:25:37.77	2024-08-23 17:25:37.77	1	1	\N
4	service2.webp	\N	\N	1280	853	{"large": {"ext": ".webp", "url": "/uploads/large_service2_f880d3b98c.webp", "hash": "large_service2_f880d3b98c", "mime": "image/webp", "name": "large_service2.webp", "path": null, "size": 31.21, "width": 1000, "height": 666, "sizeInBytes": 31214}, "small": {"ext": ".webp", "url": "/uploads/small_service2_f880d3b98c.webp", "hash": "small_service2_f880d3b98c", "mime": "image/webp", "name": "small_service2.webp", "path": null, "size": 14, "width": 500, "height": 333, "sizeInBytes": 14004}, "medium": {"ext": ".webp", "url": "/uploads/medium_service2_f880d3b98c.webp", "hash": "medium_service2_f880d3b98c", "mime": "image/webp", "name": "medium_service2.webp", "path": null, "size": 22.64, "width": 750, "height": 500, "sizeInBytes": 22638}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service2_f880d3b98c.webp", "hash": "thumbnail_service2_f880d3b98c", "mime": "image/webp", "name": "thumbnail_service2.webp", "path": null, "size": 6.03, "width": 234, "height": 156, "sizeInBytes": 6026}}	service2_f880d3b98c	.webp	image/webp	49.96	/uploads/service2_f880d3b98c.webp	\N	local	\N	/1	2024-08-14 17:54:42.451	2024-08-25 23:21:43.768	1	2	\N
5	service4.webp	\N	\N	640	427	{"small": {"ext": ".webp", "url": "/uploads/small_service4_c5afc50aac.webp", "hash": "small_service4_c5afc50aac", "mime": "image/webp", "name": "small_service4.webp", "path": null, "size": 17.63, "width": 500, "height": 334, "sizeInBytes": 17626}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service4_c5afc50aac.webp", "hash": "thumbnail_service4_c5afc50aac", "mime": "image/webp", "name": "thumbnail_service4.webp", "path": null, "size": 5.85, "width": 234, "height": 156, "sizeInBytes": 5846}}	service4_c5afc50aac	.webp	image/webp	32.36	/uploads/service4_c5afc50aac.webp	\N	local	\N	/1	2024-08-14 18:03:32.755	2024-08-25 23:31:24.566	1	2	\N
11	Банкротство.png	\N	\N	637	401	{"small": {"ext": ".png", "url": "/uploads/small_bankrotstvo_ooo_022b394ba7.png", "hash": "small_bankrotstvo_ooo_022b394ba7", "mime": "image/png", "name": "small_bankrotstvo-ooo.png", "path": null, "size": 202.86, "width": 500, "height": 315, "sizeInBytes": 202862}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_bankrotstvo_ooo_022b394ba7.png", "hash": "thumbnail_bankrotstvo_ooo_022b394ba7", "mime": "image/png", "name": "thumbnail_bankrotstvo-ooo.png", "path": null, "size": 55.37, "width": 245, "height": 154, "sizeInBytes": 55372}}	bankrotstvo_ooo_022b394ba7	.png	image/png	95.45	/uploads/bankrotstvo_ooo_022b394ba7.png	\N	local	\N	/	2024-09-11 17:11:43.765	2024-09-11 17:13:51.696	2	2	f
6	service3.webp	\N	\N	1125	750	{"large": {"ext": ".webp", "url": "/uploads/large_service3_0c7f3c5fd9.webp", "hash": "large_service3_0c7f3c5fd9", "mime": "image/webp", "name": "large_service3.webp", "path": null, "size": 79.47, "width": 1000, "height": 667, "sizeInBytes": 79472}, "small": {"ext": ".webp", "url": "/uploads/small_service3_0c7f3c5fd9.webp", "hash": "small_service3_0c7f3c5fd9", "mime": "image/webp", "name": "small_service3.webp", "path": null, "size": 24.98, "width": 500, "height": 333, "sizeInBytes": 24982}, "medium": {"ext": ".webp", "url": "/uploads/medium_service3_0c7f3c5fd9.webp", "hash": "medium_service3_0c7f3c5fd9", "mime": "image/webp", "name": "medium_service3.webp", "path": null, "size": 51.87, "width": 750, "height": 500, "sizeInBytes": 51870}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service3_0c7f3c5fd9.webp", "hash": "thumbnail_service3_0c7f3c5fd9", "mime": "image/webp", "name": "thumbnail_service3.webp", "path": null, "size": 6.5, "width": 234, "height": 156, "sizeInBytes": 6498}}	service3_0c7f3c5fd9	.webp	image/webp	110.89	/uploads/service3_0c7f3c5fd9.webp	\N	local	\N	/1	2024-08-14 18:03:32.953	2024-09-11 17:45:12.515	1	2	\N
12	Медиация.webp	\N	\N	1905	1028	{"large": {"ext": ".webp", "url": "/uploads/large_Mediacziya_2ac8c5db7a.webp", "hash": "large_Mediacziya_2ac8c5db7a", "mime": "image/webp", "name": "large_Медиация.webp", "path": null, "size": 20.61, "width": 1000, "height": 540, "sizeInBytes": 20614}, "small": {"ext": ".webp", "url": "/uploads/small_Mediacziya_2ac8c5db7a.webp", "hash": "small_Mediacziya_2ac8c5db7a", "mime": "image/webp", "name": "small_Медиация.webp", "path": null, "size": 10.4, "width": 500, "height": 270, "sizeInBytes": 10398}, "medium": {"ext": ".webp", "url": "/uploads/medium_Mediacziya_2ac8c5db7a.webp", "hash": "medium_Mediacziya_2ac8c5db7a", "mime": "image/webp", "name": "medium_Медиация.webp", "path": null, "size": 15.55, "width": 750, "height": 405, "sizeInBytes": 15548}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_Mediacziya_2ac8c5db7a.webp", "hash": "thumbnail_Mediacziya_2ac8c5db7a", "mime": "image/webp", "name": "thumbnail_Медиация.webp", "path": null, "size": 5.02, "width": 245, "height": 132, "sizeInBytes": 5024}}	Mediacziya_2ac8c5db7a	.webp	image/webp	41.15	/uploads/Mediacziya_2ac8c5db7a.webp	\N	local	\N	/	2024-09-12 18:30:00.742	2024-09-12 18:30:00.742	2	2	f
7	hero1.webp	\N	\N	1920	1280	{"large": {"ext": ".webp", "url": "/uploads/large_hero1_58d0c0edef.webp", "hash": "large_hero1_58d0c0edef", "mime": "image/webp", "name": "large_hero1.webp", "path": null, "size": 50.82, "width": 1000, "height": 667, "sizeInBytes": 50818}, "small": {"ext": ".webp", "url": "/uploads/small_hero1_58d0c0edef.webp", "hash": "small_hero1_58d0c0edef", "mime": "image/webp", "name": "small_hero1.webp", "path": null, "size": 19.46, "width": 500, "height": 333, "sizeInBytes": 19462}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero1_58d0c0edef.webp", "hash": "medium_hero1_58d0c0edef", "mime": "image/webp", "name": "medium_hero1.webp", "path": null, "size": 33.8, "width": 750, "height": 500, "sizeInBytes": 33802}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero1_58d0c0edef.webp", "hash": "thumbnail_hero1_58d0c0edef", "mime": "image/webp", "name": "thumbnail_hero1.webp", "path": null, "size": 7.08, "width": 234, "height": 156, "sizeInBytes": 7078}}	hero1_58d0c0edef	.webp	image/webp	163.72	/uploads/hero1_58d0c0edef.webp	\N	local	\N	/2	2024-08-23 17:25:36.205	2024-09-12 18:32:31.792	1	2	\N
14	ОТ.webp	\N	\N	1024	526	{"large": {"ext": ".webp", "url": "/uploads/large_OT_159d528ec6.webp", "hash": "large_OT_159d528ec6", "mime": "image/webp", "name": "large_ОТ.webp", "path": null, "size": 31.12, "width": 1000, "height": 514, "sizeInBytes": 31120}, "small": {"ext": ".webp", "url": "/uploads/small_OT_159d528ec6.webp", "hash": "small_OT_159d528ec6", "mime": "image/webp", "name": "small_ОТ.webp", "path": null, "size": 15.95, "width": 500, "height": 257, "sizeInBytes": 15946}, "medium": {"ext": ".webp", "url": "/uploads/medium_OT_159d528ec6.webp", "hash": "medium_OT_159d528ec6", "mime": "image/webp", "name": "medium_ОТ.webp", "path": null, "size": 24.51, "width": 750, "height": 385, "sizeInBytes": 24512}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_OT_159d528ec6.webp", "hash": "thumbnail_OT_159d528ec6", "mime": "image/webp", "name": "thumbnail_ОТ.webp", "path": null, "size": 6.51, "width": 245, "height": 126, "sizeInBytes": 6514}}	OT_159d528ec6	.webp	image/webp	35.25	/uploads/OT_159d528ec6.webp	\N	local	\N	/	2024-09-12 18:43:03.834	2024-09-12 18:43:03.834	2	2	f
15	ПД.jpg	\N	\N	1200	900	{"large": {"ext": ".jpg", "url": "/uploads/large_PD_b90f6dce45.jpg", "hash": "large_PD_b90f6dce45", "mime": "image/jpeg", "name": "large_ПД.jpg", "path": null, "size": 147.85, "width": 1000, "height": 750, "sizeInBytes": 147855}, "small": {"ext": ".jpg", "url": "/uploads/small_PD_b90f6dce45.jpg", "hash": "small_PD_b90f6dce45", "mime": "image/jpeg", "name": "small_ПД.jpg", "path": null, "size": 51.29, "width": 500, "height": 375, "sizeInBytes": 51290}, "medium": {"ext": ".jpg", "url": "/uploads/medium_PD_b90f6dce45.jpg", "hash": "medium_PD_b90f6dce45", "mime": "image/jpeg", "name": "medium_ПД.jpg", "path": null, "size": 95.82, "width": 750, "height": 563, "sizeInBytes": 95819}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_PD_b90f6dce45.jpg", "hash": "thumbnail_PD_b90f6dce45", "mime": "image/jpeg", "name": "thumbnail_ПД.jpg", "path": null, "size": 12.23, "width": 208, "height": 156, "sizeInBytes": 12228}}	PD_b90f6dce45	.jpg	image/jpeg	202.35	/uploads/PD_b90f6dce45.jpg	\N	local	\N	/	2024-09-12 18:47:31.669	2024-09-12 18:47:31.669	2	2	f
13	Специалист по кадрам.webp	\N	\N	1200	841	{"large": {"ext": ".webp", "url": "/uploads/large_Speczialist_po_kadram_ab3b638ba3.webp", "hash": "large_Speczialist_po_kadram_ab3b638ba3", "mime": "image/webp", "name": "large_Специалист по кадрам.webp", "path": null, "size": 25.11, "width": 1000, "height": 701, "sizeInBytes": 25108}, "small": {"ext": ".webp", "url": "/uploads/small_Speczialist_po_kadram_ab3b638ba3.webp", "hash": "small_Speczialist_po_kadram_ab3b638ba3", "mime": "image/webp", "name": "small_Специалист по кадрам.webp", "path": null, "size": 11.15, "width": 500, "height": 350, "sizeInBytes": 11152}, "medium": {"ext": ".webp", "url": "/uploads/medium_Speczialist_po_kadram_ab3b638ba3.webp", "hash": "medium_Speczialist_po_kadram_ab3b638ba3", "mime": "image/webp", "name": "medium_Специалист по кадрам.webp", "path": null, "size": 18.47, "width": 750, "height": 526, "sizeInBytes": 18470}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_Speczialist_po_kadram_ab3b638ba3.webp", "hash": "thumbnail_Speczialist_po_kadram_ab3b638ba3", "mime": "image/webp", "name": "thumbnail_Специалист по кадрам.webp", "path": null, "size": 4.15, "width": 223, "height": 156, "sizeInBytes": 4150}}	Speczialist_po_kadram_ab3b638ba3	.webp	image/webp	38.99	/uploads/Speczialist_po_kadram_ab3b638ba3.webp	\N	local	\N	/	2024-09-12 18:38:28.994	2024-09-12 22:20:04.271	2	2	f
\.


--
-- TOC entry 3990 (class 0 OID 16460)
-- Dependencies: 242
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
1	6	1	\N
2	3	1	\N
3	4	1	\N
4	5	1	\N
6	7	2	1
7	8	2	1
8	9	2	2
9	10	2	3
\.


--
-- TOC entry 3993 (class 0 OID 16465)
-- Dependencies: 245
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
18	7	1	services.slide	Image	1
75	8	1	api::slide.slide	Slide	1
76	7	2	api::slide.slide	Slide	1
77	12	3	api::slide.slide	Slide	1
78	11	4	api::slide.slide	Slide	1
79	13	5	api::slide.slide	Slide	1
80	14	6	api::slide.slide	Slide	1
81	15	7	api::slide.slide	Slide	1
82	10	8	api::slide.slide	Slide	1
83	3	1	services.service-card	CardBackground	1
84	4	5	services.service-card	CardBackground	1
85	6	6	services.service-card	CardBackground	1
88	14	10	services.service-card	CardBackground	1
89	15	11	services.service-card	CardBackground	1
90	6	12	services.service-card	CardBackground	1
91	5	7	services.service-card	CardBackground	1
92	13	9	services.service-card	CardBackground	1
\.


--
-- TOC entry 3995 (class 0 OID 16471)
-- Dependencies: 247
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Russian (ru)	ru	2024-08-24 17:00:46.288	2024-09-11 18:11:23.009	1	1
\.


--
-- TOC entry 3997 (class 0 OID 16477)
-- Dependencies: 249
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items (id, "order", title, url, target, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 3999 (class 0 OID 16483)
-- Dependencies: 251
-- Data for Name: menu_items_parent_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items_parent_links (id, menu_item_id, inv_menu_item_id) FROM stdin;
\.


--
-- TOC entry 4001 (class 0 OID 16487)
-- Dependencies: 253
-- Data for Name: menu_items_root_menu_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items_root_menu_links (id, menu_item_id, menu_id, menu_item_order) FROM stdin;
\.


--
-- TOC entry 4003 (class 0 OID 16491)
-- Dependencies: 255
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menus (id, title, slug, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 4005 (class 0 OID 16497)
-- Dependencies: 257
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.services (id, title, description, meta, tab_title, created_at, updated_at, published_at, created_by_id, updated_by_id, sitemap_exclude, priority) FROM stdin;
9	Кадры	Возьмём всю<span class="font-medium text-blue_light"> скучную </span> работу на себя	\N	\N	2024-09-11 17:38:00.876	2024-09-22 22:16:03.174	2024-09-12 21:03:39.57	2	1	f	4
1	Юридические услуги	Защита <span class="font-medium text-blue_light"> ваших </span> прав и интересов	Юридическая фирма LegaLex предлагает услуги опытного юриста в Минске. Узнать цены на юридические консультации, оформление договоров, представление в суде и многое другое можно на нашем сайте.	Юридические услуги - Цена на услуги юриста в Минске	2024-08-13 20:00:19.773	2024-09-22 22:11:50.746	2024-08-13 20:00:24.615	1	1	\N	1
5	HR-услуги	<span class="font-medium text-blue_light">Эффективное </span> управление людскими ресурсами	LegaLex предлагает услуги опытного HR-специалиста в Минске. Узнать цены на консультацию и сопровождение от специалиста по управлению персоналом можно на нашем сайте.	Услуги HR в Минске - Специалист по управлению персоналом от компании LegaLex	2024-08-23 21:21:52.333	2024-09-22 22:12:00.024	2024-08-23 21:22:04.784	1	1	\N	2
6	Антикризисное управление и банкротство	Кредитор или должник - <span class="font-medium text-blue_light"> Вам </span> сюда	Антикризисное управление	Антикризисное управление - Цена на услуги юриста в Минске	2024-08-23 21:21:52.333	2024-09-22 22:12:52.365	2024-08-25 23:15:01.786	2	1	\N	3
10	Охрана труда	Профессиональный подход к <span class="font-medium text-blue_light"> безопасности </span>	\N	\N	2024-09-11 17:38:14.35	2024-09-22 22:13:28.748	2024-09-12 21:03:44.331	2	1	f	6
11	Защита персональных данных	Оно как бы никому не надо, но если очень нужно - мы <span class="font-medium text-blue_light"> за денежку </span> сделаем.	\N	\N	2024-09-11 17:38:27.789	2024-09-22 22:13:40.048	2024-09-12 21:04:39.712	2	1	f	7
12	Экономист	\N	\N	Услуги экономиста	2024-09-11 17:38:39.388	2024-09-22 22:13:49.267	2024-09-11 17:43:37.316	2	1	f	8
7	Медиация	Реальный <span class="font-medium text-blue_light"> способ </span> договориться	Медиация	Медиация - Цена на услуги юриста в Минске	2024-08-25 23:32:31.385	2024-09-22 22:15:49.011	2024-08-25 23:34:38.575	2	1	f	5
\.


--
-- TOC entry 4006 (class 0 OID 16502)
-- Dependencies: 258
-- Data for Name: services_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services.service-card	ServiceCard	\N
20	5	5	services.service-card	ServiceCard	\N
22	6	6	services.service-card	ServiceCard	\N
26	7	7	services.service-card	ServiceCard	\N
30	9	9	services.service-card	ServiceCard	\N
32	10	10	services.service-card	ServiceCard	\N
33	11	11	services.service-card	ServiceCard	\N
34	12	12	services.service-card	ServiceCard	\N
\.


--
-- TOC entry 4009 (class 0 OID 16509)
-- Dependencies: 261
-- Data for Name: sitemap; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.sitemap (id, sitemap_string, name, type, delta, link_count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4010 (class 0 OID 16514)
-- Dependencies: 262
-- Data for Name: sitemap_cache; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.sitemap_cache (id, sitemap_json, name, sitemap_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4013 (class 0 OID 16521)
-- Dependencies: 265
-- Data for Name: slides; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.slides (id, description, button_text, created_at, updated_at, published_at, created_by_id, updated_by_id, sitemap_exclude, priority) FROM stdin;
8	Аудит. Экономист-аналитик	Связаться с экономистом	2024-09-12 18:56:17.174	2024-09-22 21:09:49.466	2024-09-12 19:03:06.873	2	1	f	8
1	Мы знаем, что делать	Получить помощь юрисконсульта	2024-08-23 18:18:36.925	2024-09-22 21:08:55.727	2024-08-23 18:26:43.529	1	1	\N	1
2	Подобрать персонал, создать команду, сплотить коллектив	Получить помощь HR-менеджера	2024-08-23 20:39:23.522	2024-09-22 21:09:05.467	2024-08-23 20:39:42.915	1	1	\N	2
3	Медиация. Поможем договориться, если это ещё возможно	Урегулировать вопрос	2024-08-25 23:42:29.806	2024-09-22 21:09:12.793	2024-09-11 17:06:53.277	2	1	f	3
4	Закопаем или возродим Ваш бизнес	Связаться с антикризисным управляющим	2024-09-11 17:12:47.901	2024-09-22 21:09:20.898	2024-09-11 17:25:34.375	2	1	f	4
5	Вам не нужен специалист в штате	Решить все кадровые вопросы	2024-09-12 18:40:03.174	2024-09-22 21:09:29.336	2024-09-12 18:40:28.155	2	1	f	5
6	Организуем охрану труда на любом предприятии	Связаться со специалистом по ОТ	2024-09-12 18:45:03.581	2024-09-22 21:09:36.602	2024-09-12 18:45:10.378	2	1	f	6
7	Организуем защиту персональных данных	Связаться с DPO	2024-09-12 18:48:12.84	2024-09-22 21:09:42.915	2024-09-12 18:48:19.732	2	1	f	7
\.


--
-- TOC entry 4015 (class 0 OID 16527)
-- Dependencies: 267
-- Data for Name: slides_service_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.slides_service_links (id, slide_id, service_id) FROM stdin;
1	1	1
5	4	6
6	2	5
7	3	7
8	5	9
9	6	10
10	7	11
11	8	12
\.


--
-- TOC entry 4017 (class 0 OID 16531)
-- Dependencies: 269
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4019 (class 0 OID 16535)
-- Dependencies: 271
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- TOC entry 4021 (class 0 OID 16539)
-- Dependencies: 273
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Legalex		read-only	f73205768b28f918218911ba8024531e1bd1cb2888b288cd8bc83e1c81880430c650b7b3f3b3f8f500663598d46bb6fc74e9ed9674e81dbe12cb929967689bbd	\N	\N	\N	2024-08-13 21:13:58.091	2024-08-13 23:08:31.6	\N	\N
\.


--
-- TOC entry 4023 (class 0 OID 16545)
-- Dependencies: 275
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::email-designer.email-template":{"kind":"collectionType","collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"email-template","connection":"default","uid":"plugin::email-designer.email-template","plugin":"email-designer","globalId":"EmailDesignerEmailTemplate"},"plugin::menus.menu":{"kind":"collectionType","collectionName":"menus","info":{"name":"Menu","displayName":"Menu","singularName":"menu","pluralName":"menus","tableName":"menus"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"items":{"type":"relation","relation":"oneToMany","target":"plugin::menus.menu-item","mappedBy":"root_menu"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"menus","info":{"name":"Menu","displayName":"Menu","singularName":"menu","pluralName":"menus","tableName":"menus"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"items":{"type":"relation","relation":"oneToMany","target":"plugin::menus.menu-item","mappedBy":"root_menu"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu","connection":"default","uid":"plugin::menus.menu","plugin":"menus","globalId":"MenusMenu"},"plugin::menus.menu-item":{"kind":"collectionType","collectionName":"menu_items","info":{"name":"MenuItem","displayName":"Menu Item","singularName":"menu-item","pluralName":"menu-items","tableName":"menu_items"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"order":{"type":"integer"},"title":{"type":"string","required":true},"url":{"type":"string"},"target":{"type":"enumeration","enum":["_blank","_parent","_self","_top"]},"root_menu":{"type":"relation","relation":"manyToOne","target":"plugin::menus.menu","inversedBy":"items","required":true},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::menus.menu-item"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"menu_items","info":{"name":"MenuItem","displayName":"Menu Item","singularName":"menu-item","pluralName":"menu-items","tableName":"menu_items"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"order":{"type":"integer"},"title":{"type":"string","required":true},"url":{"type":"string"},"target":{"type":"enumeration","enum":["_blank","_parent","_self","_top"]},"root_menu":{"type":"relation","relation":"manyToOne","target":"plugin::menus.menu","inversedBy":"items","required":true},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::menus.menu-item"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu-item","connection":"default","uid":"plugin::menus.menu-item","plugin":"menus","globalId":"MenusMenuItem"},"plugin::sitemap.sitemap":{"kind":"collectionType","collectionName":"sitemap","info":{"singularName":"sitemap","pluralName":"sitemaps","displayName":"sitemap"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_string":{"type":"text","required":true},"name":{"type":"string","default":"default","required":true},"type":{"type":"enumeration","enum":["default_hreflang","index"],"default":"default_hreflang"},"delta":{"type":"integer","default":1},"link_count":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sitemap","info":{"singularName":"sitemap","pluralName":"sitemaps","displayName":"sitemap"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_string":{"type":"text","required":true},"name":{"type":"string","default":"default","required":true},"type":{"type":"enumeration","enum":["default_hreflang","index"],"default":"default_hreflang"},"delta":{"type":"integer","default":1},"link_count":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"sitemap","connection":"default","uid":"plugin::sitemap.sitemap","plugin":"sitemap","globalId":"SitemapSitemap"},"plugin::sitemap.sitemap-cache":{"kind":"collectionType","collectionName":"sitemap_cache","info":{"singularName":"sitemap-cache","pluralName":"sitemap-caches","displayName":"sitemap-cache"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_json":{"type":"json","required":true},"name":{"type":"string","default":"default","required":true},"sitemap_id":{"type":"integer","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sitemap_cache","info":{"singularName":"sitemap-cache","pluralName":"sitemap-caches","displayName":"sitemap-cache"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_json":{"type":"json","required":true},"name":{"type":"string","default":"default","required":true},"sitemap_id":{"type":"integer","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"sitemap-cache","connection":"default","uid":"plugin::sitemap.sitemap-cache","plugin":"sitemap","globalId":"SitemapSitemapCache"},"api::service.service":{"kind":"collectionType","collectionName":"services","info":{"singularName":"service","pluralName":"services","displayName":"Услуги","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ServiceCard":{"type":"component","repeatable":false,"component":"services.service-card"},"Title":{"type":"string"},"Description":{"type":"richtext"},"Meta":{"type":"string"},"TabTitle":{"type":"string"},"Tabs":{"type":"relation","relation":"oneToMany","target":"api::tab.tab","mappedBy":"Service"},"Priority":{"type":"integer","required":true,"unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"services","info":{"singularName":"service","pluralName":"services","displayName":"Услуги","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ServiceCard":{"type":"component","repeatable":false,"component":"services.service-card"},"Title":{"type":"string"},"Description":{"type":"richtext"},"Meta":{"type":"string"},"TabTitle":{"type":"string"},"Tabs":{"type":"relation","relation":"oneToMany","target":"api::tab.tab","mappedBy":"Service"},"Priority":{"type":"integer","required":true,"unique":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"service","connection":"default","uid":"api::service.service","apiName":"service","globalId":"Service","actions":{},"lifecycles":{}},"api::slide.slide":{"kind":"collectionType","collectionName":"slides","info":{"singularName":"slide","pluralName":"slides","displayName":"Слайд","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Description":{"type":"text"},"ButtonText":{"type":"string"},"Slide":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"Service":{"type":"relation","relation":"oneToOne","target":"api::service.service"},"Priority":{"type":"integer","required":true,"unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"slides","info":{"singularName":"slide","pluralName":"slides","displayName":"Слайд","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Description":{"type":"text"},"ButtonText":{"type":"string"},"Slide":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"Service":{"type":"relation","relation":"oneToOne","target":"api::service.service"},"Priority":{"type":"integer","required":true,"unique":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"slide","connection":"default","uid":"api::slide.slide","apiName":"slide","globalId":"Slide","actions":{},"lifecycles":{}},"api::tab.tab":{"kind":"collectionType","collectionName":"tabs","info":{"singularName":"tab","pluralName":"tabs","displayName":"Вкладка","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Tables":{"type":"component","repeatable":true,"component":"services.table","required":true},"Trailer":{"type":"text"},"Service":{"type":"relation","relation":"manyToOne","target":"api::service.service","inversedBy":"Tabs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"tabs","info":{"singularName":"tab","pluralName":"tabs","displayName":"Вкладка","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Tables":{"type":"component","repeatable":true,"component":"services.table","required":true},"Trailer":{"type":"text"},"Service":{"type":"relation","relation":"manyToOne","target":"api::service.service","inversedBy":"Tabs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"tab","connection":"default","uid":"api::tab.tab","apiName":"tab","globalId":"Tab","actions":{},"lifecycles":{}}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
17	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
18	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
20	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
22	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
28	plugin_content_manager_configuration_components::services.tab-row	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Description","defaultSortBy":"Price","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"Price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}}},"layouts":{"list":["id","Description","Price"],"edit":[[{"name":"Description","size":6},{"name":"Price","size":6}]]},"uid":"services.tab-row","isComponent":true}	object	\N	\N
19	plugin_upload_metrics	{"weeklySchedule":"22 29 6 * * 1","lastWeeklyUpdate":1726468162028}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
30	plugin_content_manager_configuration_components::services.table	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Row":{"edit":{"label":"Row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Row","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","Row","Title"],"edit":[[{"name":"Row","size":12}],[{"name":"Title","size":6}]]},"uid":"services.table","isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::tab.tab	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Tables":{"edit":{"label":"Tables","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tables","searchable":false,"sortable":false}},"Trailer":{"edit":{"label":"Trailer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Trailer","searchable":true,"sortable":true}},"Service":{"edit":{"label":"Service","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Service","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"Title","size":6}],[{"name":"Tables","size":12}],[{"name":"Trailer","size":6},{"name":"Service","size":6}]],"list":["Service","Title"]},"uid":"api::tab.tab"}	object	\N	\N
37	plugin_content_manager_configuration_content_types::plugin::menus.menu	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","items"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"items","size":6}]]},"uid":"plugin::menus.menu"}	object	\N	\N
23	plugin_i18n_default_locale	"ru"	string	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
38	plugin_content_manager_configuration_content_types::plugin::menus.menu-item	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"order":{"edit":{"label":"order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"order","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"target":{"edit":{"label":"target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"target","searchable":true,"sortable":true}},"root_menu":{"edit":{"label":"root_menu","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"root_menu","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"parent","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","order","title","url"],"edit":[[{"name":"order","size":4},{"name":"title","size":6}],[{"name":"url","size":6},{"name":"target","size":6}],[{"name":"root_menu","size":6},{"name":"parent","size":6}]]},"uid":"plugin::menus.menu-item"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::plugin::sitemap.sitemap	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"sitemap_string":{"edit":{"label":"sitemap_string","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_string","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"delta":{"edit":{"label":"delta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"delta","searchable":true,"sortable":true}},"link_count":{"edit":{"label":"link_count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link_count","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","sitemap_string","name","type"],"edit":[[{"name":"sitemap_string","size":6},{"name":"name","size":6}],[{"name":"type","size":6},{"name":"delta","size":4}],[{"name":"link_count","size":4}]]},"uid":"plugin::sitemap.sitemap"}	object	\N	\N
25	plugin_content_manager_configuration_components::services.service-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Link","defaultSortBy":"Link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"CardBackground":{"edit":{"label":"CardBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CardBackground","searchable":false,"sortable":false}},"Link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":true,"sortable":true}}},"layouts":{"list":["id","CardBackground","Link"],"edit":[[{"name":"CardBackground","size":6}],[{"name":"Link","size":6}]]},"uid":"services.service-card","isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_content_types::plugin::email-designer.email-template	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"templateReferenceId":{"edit":{"label":"templateReferenceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"templateReferenceId","searchable":true,"sortable":true}},"design":{"edit":{"label":"design","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"design","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"bodyHtml":{"edit":{"label":"bodyHtml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyHtml","searchable":true,"sortable":true}},"bodyText":{"edit":{"label":"bodyText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyText","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enabled","searchable":true,"sortable":true}},"tags":{"edit":{"label":"tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tags","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","templateReferenceId","name","subject"],"edit":[[{"name":"templateReferenceId","size":4}],[{"name":"design","size":12}],[{"name":"name","size":6},{"name":"subject","size":6}],[{"name":"bodyHtml","size":6},{"name":"bodyText","size":6}],[{"name":"enabled","size":4}],[{"name":"tags","size":12}]]},"uid":"plugin::email-designer.email-template"}	object	\N	\N
40	plugin_content_manager_configuration_content_types::plugin::sitemap.sitemap-cache	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"sitemap_json":{"edit":{"label":"sitemap_json","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_json","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"sitemap_id":{"edit":{"label":"sitemap_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","sitemap_id","createdAt"],"edit":[[{"name":"sitemap_json","size":12}],[{"name":"name","size":6},{"name":"sitemap_id","size":4}]]},"uid":"plugin::sitemap.sitemap-cache"}	object	\N	\N
41	plugin_sitemap_settings	{"hostname":"","includeHomepage":true,"excludeDrafts":true,"defaultLanguageUrlType":"","defaultLanguageUrl":"","hostname_overrides":{},"contentTypes":{},"customEntries":{}}	object	\N	\N
42	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"metaImage":{"edit":{"label":"metaImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaImage","searchable":false,"sortable":false}},"metaSocial":{"edit":{"label":"metaSocial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaSocial","searchable":false,"sortable":false}},"keywords":{"edit":{"label":"keywords","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keywords","searchable":true,"sortable":true}},"metaRobots":{"edit":{"label":"metaRobots","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaRobots","searchable":true,"sortable":true}},"structuredData":{"edit":{"label":"structuredData","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"structuredData","searchable":false,"sortable":false}},"metaViewport":{"edit":{"label":"metaViewport","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaViewport","searchable":true,"sortable":true}},"canonicalURL":{"edit":{"label":"canonicalURL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"canonicalURL","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","metaImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"metaImage","size":6}],[{"name":"metaSocial","size":12}],[{"name":"keywords","size":6},{"name":"metaRobots","size":6}],[{"name":"structuredData","size":12}],[{"name":"metaViewport","size":6},{"name":"canonicalURL","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
43	plugin_content_manager_configuration_components::shared.meta-social	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"socialNetwork":{"edit":{"label":"socialNetwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialNetwork","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","socialNetwork","title","description"],"edit":[[{"name":"socialNetwork","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"image","size":6}]]},"uid":"shared.meta-social","isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_content_types::api::slide.slide	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ButtonText","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"ButtonText":{"edit":{"label":"ButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonText","searchable":true,"sortable":true}},"Slide":{"edit":{"label":"Slide","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slide","searchable":false,"sortable":false}},"Service":{"edit":{"label":"Service","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Service","searchable":true,"sortable":true}},"Priority":{"edit":{"label":"Priority","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Priority","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Slide","Service","Priority"],"edit":[[{"name":"Slide","size":12}],[{"name":"Service","size":6},{"name":"ButtonText","size":6}],[{"name":"Description","size":6},{"name":"Priority","size":4}]]},"uid":"api::slide.slide"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::service.service	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"ServiceCard":{"edit":{"label":"ServiceCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ServiceCard","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Meta":{"edit":{"label":"Meta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Meta","searchable":true,"sortable":true}},"TabTitle":{"edit":{"label":"TabTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TabTitle","searchable":true,"sortable":true}},"Tabs":{"edit":{"label":"Tabs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Tabs","searchable":false,"sortable":false}},"Priority":{"edit":{"label":"Priority","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Priority","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","ServiceCard","Priority"],"edit":[[{"name":"Title","size":6}],[{"name":"ServiceCard","size":12}],[{"name":"Description","size":12}],[{"name":"Meta","size":6},{"name":"TabTitle","size":6}],[{"name":"Tabs","size":6},{"name":"Priority","size":4}]]},"uid":"api::service.service"}	object	\N	\N
\.


--
-- TOC entry 4025 (class 0 OID 16551)
-- Dependencies: 277
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
68	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"email_templates","indexes":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"]},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"template_reference_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"design","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_html","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tags","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"menus","indexes":[{"type":"unique","name":"menus_slug_unique","columns":["slug"]},{"name":"menus_created_by_id_fk","columns":["created_by_id"]},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menus_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"menu_items","indexes":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"]},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sitemap","indexes":[{"name":"sitemap_created_by_id_fk","columns":["created_by_id"]},{"name":"sitemap_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sitemap_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sitemap_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sitemap_string","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"delta","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sitemap_cache","indexes":[{"name":"sitemap_cache_created_by_id_fk","columns":["created_by_id"]},{"name":"sitemap_cache_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sitemap_cache_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sitemap_cache_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sitemap_json","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sitemap_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"services","indexes":[{"name":"services_created_by_id_fk","columns":["created_by_id"]},{"name":"services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tab_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"priority","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"slides","indexes":[{"name":"slides_created_by_id_fk","columns":["created_by_id"]},{"name":"slides_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"slides_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"slides_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"priority","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"tabs","indexes":[{"name":"tabs_created_by_id_fk","columns":["created_by_id"]},{"name":"tabs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tabs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tabs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trailer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keywords","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_robots","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"structured_data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_viewport","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"canonical_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_meta_socials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"social_network","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_tables","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_tab_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_service_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menu_items_root_menu_links","indexes":[{"name":"menu_items_root_menu_links_fk","columns":["menu_item_id"]},{"name":"menu_items_root_menu_links_inv_fk","columns":["menu_id"]},{"name":"menu_items_root_menu_links_unique","columns":["menu_item_id","menu_id"],"type":"unique"},{"name":"menu_items_root_menu_links_order_inv_fk","columns":["menu_item_order"]}],"foreignKeys":[{"name":"menu_items_root_menu_links_fk","columns":["menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"},{"name":"menu_items_root_menu_links_inv_fk","columns":["menu_id"],"referencedColumns":["id"],"referencedTable":"menus","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_item_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menu_items_parent_links","indexes":[{"name":"menu_items_parent_links_fk","columns":["menu_item_id"]},{"name":"menu_items_parent_links_inv_fk","columns":["inv_menu_item_id"]},{"name":"menu_items_parent_links_unique","columns":["menu_item_id","inv_menu_item_id"],"type":"unique"}],"foreignKeys":[{"name":"menu_items_parent_links_fk","columns":["menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"},{"name":"menu_items_parent_links_inv_fk","columns":["inv_menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"services_components","indexes":[{"name":"services_field_index","columns":["field"]},{"name":"services_component_type_index","columns":["component_type"]},{"name":"services_entity_fk","columns":["entity_id"]},{"name":"services_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slides_service_links","indexes":[{"name":"slides_service_links_fk","columns":["slide_id"]},{"name":"slides_service_links_inv_fk","columns":["service_id"]},{"name":"slides_service_links_unique","columns":["slide_id","service_id"],"type":"unique"}],"foreignKeys":[{"name":"slides_service_links_fk","columns":["slide_id"],"referencedColumns":["id"],"referencedTable":"slides","onDelete":"CASCADE"},{"name":"slides_service_links_inv_fk","columns":["service_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slide_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tabs_components","indexes":[{"name":"tabs_field_index","columns":["field"]},{"name":"tabs_component_type_index","columns":["component_type"]},{"name":"tabs_entity_fk","columns":["entity_id"]},{"name":"tabs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"tabs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"tabs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tabs_service_links","indexes":[{"name":"tabs_service_links_fk","columns":["tab_id"]},{"name":"tabs_service_links_inv_fk","columns":["service_id"]},{"name":"tabs_service_links_unique","columns":["tab_id","service_id"],"type":"unique"},{"name":"tabs_service_links_order_inv_fk","columns":["tab_order"]}],"foreignKeys":[{"name":"tabs_service_links_fk","columns":["tab_id"],"referencedColumns":["id"],"referencedTable":"tabs","onDelete":"CASCADE"},{"name":"tabs_service_links_inv_fk","columns":["service_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tab_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tab_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_seos_components","indexes":[{"name":"components_shared_seos_field_index","columns":["field"]},{"name":"components_shared_seos_component_type_index","columns":["component_type"]},{"name":"components_shared_seos_entity_fk","columns":["entity_id"]},{"name":"components_shared_seos_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_seos_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_seos","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_services_tables_components","indexes":[{"name":"components_services_tables_field_index","columns":["field"]},{"name":"components_services_tables_component_type_index","columns":["component_type"]},{"name":"components_services_tables_entity_fk","columns":["entity_id"]},{"name":"components_services_tables_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_services_tables_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_services_tables","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-09-22 22:11:24.705	44cc103e2ac19ea0c87ad0ca9a27619d
\.


--
-- TOC entry 4027 (class 0 OID 16557)
-- Dependencies: 279
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 4029 (class 0 OID 16561)
-- Dependencies: 281
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 4031 (class 0 OID 16567)
-- Dependencies: 283
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- TOC entry 4033 (class 0 OID 16571)
-- Dependencies: 285
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 4035 (class 0 OID 16577)
-- Dependencies: 287
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4037 (class 0 OID 16581)
-- Dependencies: 289
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- TOC entry 4039 (class 0 OID 16585)
-- Dependencies: 291
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4041 (class 0 OID 16591)
-- Dependencies: 293
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 4043 (class 0 OID 16597)
-- Dependencies: 295
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.tabs (id, title, trailer, created_at, updated_at, published_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
1	Консультация	\N	2024-08-13 20:56:54.408	2024-08-13 20:59:38.622	2024-08-13 20:59:38.615	1	1	\N
10	Подбор персонала	\N	2024-08-23 20:51:27.843	2024-08-25 23:23:29.949	2024-08-23 20:51:42.961	1	2	\N
3	Разработка и экспертиза договоров	\N	2024-08-14 22:46:43.845	2024-08-14 22:47:13.241	2024-08-14 22:46:52.179	1	1	\N
4	Абонентское юридическое обслуживание	\N	2024-08-14 22:52:03.082	2024-08-14 22:55:47.148	2024-08-14 22:52:05.768	1	1	\N
5	Регистрация юридического лица или индивидуального предпринимателя	\N	2024-08-14 23:01:37.477	2024-08-14 23:01:42.37	2024-08-14 23:01:42.365	1	1	\N
6	Лицензирование	\N	2024-08-14 23:03:59.847	2024-08-14 23:04:19.114	2024-08-14 23:04:19.109	1	1	\N
18	Консультация по банкротству	\N	2024-08-25 23:25:41.147	2024-08-25 23:25:51.151	2024-08-25 23:25:51.144	2	2	f
7	Внесение изменений в Устав	\N	2024-08-14 23:06:14.819	2024-08-14 23:06:37.083	2024-08-14 23:06:37.076	1	1	\N
17	Консультация по эффективному управлению и развитию бизнеса	\N	2024-08-25 23:25:08.157	2024-08-25 23:25:57.194	2024-08-25 23:25:57.189	2	2	f
8	Взыскание дебиторской задолженности	*При этом сумма доплаты после поступления всего долга на счет взыскателя составит от 10 до 40% от взысканной суммы штрафных санкций.	2024-08-14 23:17:14.589	2024-08-14 23:17:24.995	2024-08-14 23:17:24.99	1	1	\N
9	Иные правовые вопросы	\N	2024-08-14 23:22:53.104	2024-08-14 23:23:14.31	2024-08-14 23:22:55.158	1	1	\N
19	Консультация по реорганизации	\N	2024-08-25 23:26:33.218	2024-08-25 23:26:41.111	2024-08-25 23:26:34.518	2	2	f
20	Реорганизация	\N	2024-08-25 23:27:12.13	2024-08-25 23:27:12.996	2024-08-25 23:27:12.992	2	2	f
21	Ликвидация	\N	2024-08-25 23:27:37.793	2024-08-25 23:27:42.97	2024-08-25 23:27:38.644	2	2	f
22	Прекращение деятельности (для ИП)	\N	2024-08-25 23:28:18.012	2024-08-25 23:28:18.837	2024-08-25 23:28:18.832	2	2	f
24	Предварительные переговоры	\N	2024-08-25 23:34:30.837	2024-08-25 23:34:34.546	2024-08-25 23:34:34.54	2	2	f
15	Обучение персонала	\N	2024-08-23 21:54:07.225	2024-08-25 23:18:54.901	2024-08-23 21:54:08.096	1	2	\N
14	Оценка персонала	\N	2024-08-23 21:53:19.579	2024-08-25 23:19:00.593	2024-08-23 21:53:20.624	1	2	\N
13	Проведение HR-аудита	\N	2024-08-23 21:52:03.865	2024-08-25 23:19:22.929	2024-08-23 21:52:05.975	1	2	\N
16	Рекрутинг + кадровое делопроизводство	\N	2024-08-23 21:56:17.999	2024-08-25 23:19:30.493	2024-08-23 21:56:18.935	1	2	\N
12	Работа с HR-брендом	\N	2024-08-23 21:43:46.35	2024-08-25 23:19:37.918	2024-08-23 21:50:21.273	1	2	\N
11	Абонентский рекрутинг	Общие условия: 3 месяца испытательного срока кандидата, бесплатная гарантийная замена кандидата, не прошедшего испытательный срок. Срок подбора зависит от сложности вакансии, в среднем от 1 до 3 недель.	2024-08-23 21:34:25.645	2024-08-25 23:23:22.508	2024-08-23 21:34:38.895	1	2	\N
25	Проведение переговоров (одна сессия)	\N	2024-08-25 23:36:09.264	2024-08-25 23:36:12.025	2024-08-25 23:36:12.021	2	2	f
2	Суд	\N	2024-08-14 22:44:06.538	2024-08-25 23:38:16.652	2024-08-25 23:38:16.643	1	2	\N
34	Кадры	\N	2024-09-12 21:43:43.808	2024-09-12 21:43:51.077	2024-09-12 21:43:51.07	2	2	f
28	Составление и сдача статистики 	\N	2024-09-12 21:23:50.67	2024-09-12 21:24:08.771	2024-09-12 21:24:08.763	2	2	f
26	Составление медиативного соглашения	*окончательная стоимость зависит от сложности спора 	2024-08-25 23:45:36.25	2024-09-12 21:49:42.047	2024-08-25 23:45:37.3	2	2	f
31	Составление калькуляций	\N	2024-09-12 21:27:40.28	2024-09-12 21:27:47.945	2024-09-12 21:27:43.227	2	2	f
32	Прочие экономические услуги	\N	2024-09-12 21:28:17.11	2024-09-12 21:28:18.639	2024-09-12 21:28:18.631	2	2	f
30	Полное экономическое сопровождение организации	\N	2024-09-12 21:26:52.838	2024-09-12 21:29:05.869	2024-09-12 21:29:05.86	2	2	f
29	Разработка локальных правовых актов и иной документации	\N	2024-09-12 21:26:13.112	2024-09-12 21:29:20.176	2024-09-12 21:29:20.169	2	2	f
27	Бизнес-план	\N	2024-09-11 17:47:15.402	2024-09-12 21:30:11.029	2024-09-11 17:47:16.798	2	2	f
36	Для должника	\N	2024-09-12 22:00:00.663	2024-09-12 22:01:21.8	2024-09-12 22:01:21.79	2	2	f
33	Охрана труда	*Если нагрянула проверка или вы получили Постановление - смело обращайтесь к нам.\n	2024-09-12 21:37:29.164	2024-09-12 21:39:41.177	2024-09-12 21:37:58.955	2	2	f
35	Защита персональных данных	*Проясним все нюансы в применении Закона № 99 "О защите персональных данных"	2024-09-12 21:47:31.267	2024-09-12 22:26:53.578	2024-09-12 21:47:38.076	2	2	f
37	Для кредитора	\N	2024-09-12 22:04:24.559	2024-09-12 22:36:31.388	2024-09-12 22:05:00.403	2	2	f
\.


--
-- TOC entry 4044 (class 0 OID 16602)
-- Dependencies: 296
-- Data for Name: tabs_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.tabs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services.table	Tables	1
4	2	2	services.table	Tables	1
54	24	25	services.table	Tables	1
5	3	3	services.table	Tables	1
55	25	26	services.table	Tables	1
7	4	4	services.table	Tables	1
10	5	5	services.table	Tables	1
12	6	6	services.table	Tables	1
13	7	7	services.table	Tables	1
15	8	8	services.table	Tables	1
17	9	9	services.table	Tables	1
31	15	16	services.table	Tables	1
30	14	15	services.table	Tables	1
28	13	14	services.table	Tables	1
34	16	17	services.table	Tables	1
24	12	13	services.table	Tables	1
22	11	11	services.table	Tables	1
23	11	12	services.table	Tables	2
19	10	10	services.table	Tables	1
43	17	18	services.table	Tables	1
44	18	19	services.table	Tables	1
46	19	20	services.table	Tables	1
48	20	21	services.table	Tables	1
49	21	22	services.table	Tables	1
51	22	23	services.table	Tables	1
68	28	34	services.table	Tables	1
70	30	36	services.table	Tables	1
69	29	35	services.table	Tables	1
73	31	37	services.table	Tables	1
75	32	38	services.table	Tables	1
57	27	28	services.table	Tables	1
77	33	39	services.table	Tables	1
83	34	40	services.table	Tables	1
87	26	42	services.table	Tables	1
88	36	43	services.table	Tables	1
85	35	41	services.table	Tables	1
90	37	44	services.table	Tables	1
\.


--
-- TOC entry 4047 (class 0 OID 16609)
-- Dependencies: 299
-- Data for Name: tabs_service_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.tabs_service_links (id, tab_id, service_id, tab_order) FROM stdin;
1	1	1	1
2	2	1	2
3	3	1	3
4	4	1	4
5	5	1	5
6	6	1	6
7	7	1	7
8	8	1	8
9	9	1	9
18	15	5	1
19	14	5	2
20	13	5	3
21	16	5	4
22	12	5	5
23	11	5	6
24	10	5	7
32	24	7	1
33	25	7	2
34	26	7	3
35	27	12	1
36	28	12	2
37	30	12	3
38	29	12	4
39	31	12	5
40	32	12	6
41	33	10	1
42	34	9	1
43	35	11	1
44	36	6	1
45	37	6	2
\.


--
-- TOC entry 4049 (class 0 OID 16613)
-- Dependencies: 301
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-08-13 19:39:13.686	2024-08-13 19:39:13.686	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-08-13 19:39:13.686	2024-08-13 19:39:13.686	\N	\N
3	plugin::users-permissions.auth.callback	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
4	plugin::users-permissions.auth.connect	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
6	plugin::users-permissions.auth.resetPassword	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
7	plugin::users-permissions.auth.register	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-08-13 19:39:13.704	2024-08-13 19:39:13.704	\N	\N
10	plugin::sitemap.core.getSitemap	2024-08-24 16:55:30.92	2024-08-24 16:55:30.92	\N	\N
13	plugin::sitemap.core.getSitemapXslJs	2024-08-24 16:55:30.92	2024-08-24 16:55:30.92	\N	\N
14	plugin::sitemap.core.getSitemapXslSortable	2024-08-24 16:55:30.92	2024-08-24 16:55:30.92	\N	\N
11	plugin::sitemap.core.getSitemapXslCss	2024-08-24 16:55:30.92	2024-08-24 16:55:30.92	\N	\N
12	plugin::sitemap.core.getSitemapXsl	2024-08-24 16:55:30.92	2024-08-24 16:55:30.92	\N	\N
\.


--
-- TOC entry 4051 (class 0 OID 16617)
-- Dependencies: 303
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	5	2	1
6	6	2	1
7	8	2	2
8	7	2	2
9	9	2	2
11	10	2	3
10	14	2	3
12	13	2	3
13	12	2	3
14	11	2	3
\.


--
-- TOC entry 4053 (class 0 OID 16621)
-- Dependencies: 305
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-08-13 19:39:13.672	2024-08-13 19:39:13.672	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-08-13 19:39:13.677	2024-09-22 22:21:06.675	\N	\N
\.


--
-- TOC entry 4055 (class 0 OID 16627)
-- Dependencies: 307
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 4057 (class 0 OID 16633)
-- Dependencies: 309
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- TOC entry 4059 (class 0 OID 16637)
-- Dependencies: 311
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Изображения услуг	1	/1	2024-08-14 18:05:11.652	2024-08-14 18:06:31.334	1	1
2	Изобржения слайдов	2	/2	2024-08-23 17:20:09.503	2024-08-23 17:24:36.799	1	1
\.


--
-- TOC entry 4061 (class 0 OID 16643)
-- Dependencies: 313
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 216
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 249, true);


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 218
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 249, true);


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 220
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 222
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 4, true);


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 224
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 8, true);


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 226
-- Name: components_services_service_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_service_cards_id_seq', 13, true);


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 228
-- Name: components_services_tab_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tab_rows_id_seq', 126, true);


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 231
-- Name: components_services_tables_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tables_components_id_seq', 275, true);


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 232
-- Name: components_services_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tables_id_seq', 44, true);


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 234
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_meta_socials_id_seq', 1, false);


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 237
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_seos_components_id_seq', 1, false);


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 238
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 240
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.email_templates_id_seq', 1, false);


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 243
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 16, true);


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 244
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_id_seq', 15, true);


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 246
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 92, true);


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 248
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 250
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 252
-- Name: menu_items_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_parent_links_id_seq', 1, false);


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 254
-- Name: menu_items_root_menu_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_root_menu_links_id_seq', 1, false);


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 256
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menus_id_seq', 1, false);


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 259
-- Name: services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.services_components_id_seq', 60, true);


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 260
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.services_id_seq', 13, true);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 263
-- Name: sitemap_cache_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.sitemap_cache_id_seq', 1, false);


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 264
-- Name: sitemap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.sitemap_id_seq', 1, false);


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 266
-- Name: slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.slides_id_seq', 8, true);


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 268
-- Name: slides_service_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.slides_service_links_id_seq', 11, true);


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 274
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 276
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 43, true);


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 278
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 68, true);


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 288
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 290
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 292
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 294
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 297
-- Name: tabs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_components_id_seq', 95, true);


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 298
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_id_seq', 37, true);


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 300
-- Name: tabs_service_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_service_links_id_seq', 45, true);


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 302
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 14, true);


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 304
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 14, true);


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 306
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 308
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 310
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 312
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 2, true);


--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 314
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- TOC entry 3500 (class 2606 OID 16700)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3506 (class 2606 OID 16702)
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3508 (class 2606 OID 16704)
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 3511 (class 2606 OID 16706)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3515 (class 2606 OID 16708)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3522 (class 2606 OID 16710)
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3524 (class 2606 OID 16712)
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 3526 (class 2606 OID 16714)
-- Name: components_services_service_cards components_services_service_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_service_cards
    ADD CONSTRAINT components_services_service_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 3528 (class 2606 OID 16716)
-- Name: components_services_tab_rows components_services_tab_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tab_rows
    ADD CONSTRAINT components_services_tab_rows_pkey PRIMARY KEY (id);


--
-- TOC entry 3533 (class 2606 OID 16718)
-- Name: components_services_tables_components components_services_tables_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3530 (class 2606 OID 16720)
-- Name: components_services_tables components_services_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables
    ADD CONSTRAINT components_services_tables_pkey PRIMARY KEY (id);


--
-- TOC entry 3537 (class 2606 OID 17358)
-- Name: components_services_tables_components components_services_tables_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 3539 (class 2606 OID 16724)
-- Name: components_shared_meta_socials components_shared_meta_socials_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_meta_socials
    ADD CONSTRAINT components_shared_meta_socials_pkey PRIMARY KEY (id);


--
-- TOC entry 3544 (class 2606 OID 16726)
-- Name: components_shared_seos_components components_shared_seos_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3541 (class 2606 OID 16728)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 3548 (class 2606 OID 17356)
-- Name: components_shared_seos_components components_shared_seos_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 3551 (class 2606 OID 16732)
-- Name: email_templates email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- TOC entry 3567 (class 2606 OID 16734)
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3569 (class 2606 OID 16736)
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- TOC entry 3555 (class 2606 OID 16738)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3574 (class 2606 OID 16740)
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- TOC entry 3577 (class 2606 OID 16742)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3586 (class 2606 OID 16744)
-- Name: menu_items_parent_links menu_items_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3588 (class 2606 OID 16746)
-- Name: menu_items_parent_links menu_items_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_unique UNIQUE (menu_item_id, inv_menu_item_id);


--
-- TOC entry 3581 (class 2606 OID 16748)
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3593 (class 2606 OID 16750)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3595 (class 2606 OID 16752)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_unique UNIQUE (menu_item_id, menu_id);


--
-- TOC entry 3598 (class 2606 OID 16754)
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- TOC entry 3600 (class 2606 OID 16756)
-- Name: menus menus_slug_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_slug_unique UNIQUE (slug);


--
-- TOC entry 3608 (class 2606 OID 16758)
-- Name: services_components services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3604 (class 2606 OID 16760)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- TOC entry 3612 (class 2606 OID 17352)
-- Name: services_components services_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 3619 (class 2606 OID 16764)
-- Name: sitemap_cache sitemap_cache_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_pkey PRIMARY KEY (id);


--
-- TOC entry 3615 (class 2606 OID 16766)
-- Name: sitemap sitemap_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_pkey PRIMARY KEY (id);


--
-- TOC entry 3623 (class 2606 OID 16768)
-- Name: slides slides_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_pkey PRIMARY KEY (id);


--
-- TOC entry 3628 (class 2606 OID 16770)
-- Name: slides_service_links slides_service_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3630 (class 2606 OID 16772)
-- Name: slides_service_links slides_service_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_unique UNIQUE (slide_id, service_id);


--
-- TOC entry 3633 (class 2606 OID 16774)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3639 (class 2606 OID 16776)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3641 (class 2606 OID 16778)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 3644 (class 2606 OID 16780)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3647 (class 2606 OID 16782)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3649 (class 2606 OID 16784)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3651 (class 2606 OID 16786)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3654 (class 2606 OID 16788)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3660 (class 2606 OID 16790)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3662 (class 2606 OID 16792)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- TOC entry 3665 (class 2606 OID 16794)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 3669 (class 2606 OID 16796)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3675 (class 2606 OID 16798)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3677 (class 2606 OID 16800)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 3680 (class 2606 OID 16802)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3683 (class 2606 OID 16804)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3690 (class 2606 OID 16806)
-- Name: tabs_components tabs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_components_pkey PRIMARY KEY (id);


--
-- TOC entry 3686 (class 2606 OID 16808)
-- Name: tabs tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_pkey PRIMARY KEY (id);


--
-- TOC entry 3699 (class 2606 OID 16810)
-- Name: tabs_service_links tabs_service_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3701 (class 2606 OID 16812)
-- Name: tabs_service_links tabs_service_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_unique UNIQUE (tab_id, service_id);


--
-- TOC entry 3694 (class 2606 OID 17354)
-- Name: tabs_components tabs_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 3704 (class 2606 OID 16816)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3710 (class 2606 OID 16818)
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3712 (class 2606 OID 16820)
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 3715 (class 2606 OID 16822)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3719 (class 2606 OID 16824)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3725 (class 2606 OID 16826)
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3727 (class 2606 OID 16828)
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 3740 (class 2606 OID 16830)
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3742 (class 2606 OID 16832)
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 3730 (class 2606 OID 16834)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 3732 (class 2606 OID 16836)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 3734 (class 2606 OID 16838)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 3498 (class 1259 OID 16839)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3502 (class 1259 OID 16840)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3503 (class 1259 OID 16841)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 3504 (class 1259 OID 16842)
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- TOC entry 3501 (class 1259 OID 16843)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3509 (class 1259 OID 16844)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 3512 (class 1259 OID 16845)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3513 (class 1259 OID 16846)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 3517 (class 1259 OID 16847)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 3518 (class 1259 OID 16848)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 3519 (class 1259 OID 16849)
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- TOC entry 3520 (class 1259 OID 16850)
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- TOC entry 3516 (class 1259 OID 16851)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 3531 (class 1259 OID 16852)
-- Name: components_services_tables_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_component_type_index ON public.components_services_tables_components USING btree (component_type);


--
-- TOC entry 3534 (class 1259 OID 16853)
-- Name: components_services_tables_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_entity_fk ON public.components_services_tables_components USING btree (entity_id);


--
-- TOC entry 3535 (class 1259 OID 16854)
-- Name: components_services_tables_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_field_index ON public.components_services_tables_components USING btree (field);


--
-- TOC entry 3542 (class 1259 OID 16855)
-- Name: components_shared_seos_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_component_type_index ON public.components_shared_seos_components USING btree (component_type);


--
-- TOC entry 3545 (class 1259 OID 16856)
-- Name: components_shared_seos_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_entity_fk ON public.components_shared_seos_components USING btree (entity_id);


--
-- TOC entry 3546 (class 1259 OID 16857)
-- Name: components_shared_seos_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_field_index ON public.components_shared_seos_components USING btree (field);


--
-- TOC entry 3549 (class 1259 OID 16858)
-- Name: email_templates_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX email_templates_created_by_id_fk ON public.email_templates USING btree (created_by_id);


--
-- TOC entry 3552 (class 1259 OID 16859)
-- Name: email_templates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX email_templates_updated_by_id_fk ON public.email_templates USING btree (updated_by_id);


--
-- TOC entry 3553 (class 1259 OID 16860)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 3563 (class 1259 OID 16861)
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- TOC entry 3564 (class 1259 OID 16862)
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- TOC entry 3565 (class 1259 OID 16863)
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- TOC entry 3570 (class 1259 OID 16864)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 3571 (class 1259 OID 16865)
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- TOC entry 3572 (class 1259 OID 16866)
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- TOC entry 3556 (class 1259 OID 16867)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 3575 (class 1259 OID 16868)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3578 (class 1259 OID 16869)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3579 (class 1259 OID 16870)
-- Name: menu_items_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_created_by_id_fk ON public.menu_items USING btree (created_by_id);


--
-- TOC entry 3583 (class 1259 OID 16871)
-- Name: menu_items_parent_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_parent_links_fk ON public.menu_items_parent_links USING btree (menu_item_id);


--
-- TOC entry 3584 (class 1259 OID 16872)
-- Name: menu_items_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_parent_links_inv_fk ON public.menu_items_parent_links USING btree (inv_menu_item_id);


--
-- TOC entry 3589 (class 1259 OID 16873)
-- Name: menu_items_root_menu_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_fk ON public.menu_items_root_menu_links USING btree (menu_item_id);


--
-- TOC entry 3590 (class 1259 OID 16874)
-- Name: menu_items_root_menu_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_inv_fk ON public.menu_items_root_menu_links USING btree (menu_id);


--
-- TOC entry 3591 (class 1259 OID 16875)
-- Name: menu_items_root_menu_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_order_inv_fk ON public.menu_items_root_menu_links USING btree (menu_item_order);


--
-- TOC entry 3582 (class 1259 OID 16876)
-- Name: menu_items_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_updated_by_id_fk ON public.menu_items USING btree (updated_by_id);


--
-- TOC entry 3596 (class 1259 OID 16877)
-- Name: menus_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menus_created_by_id_fk ON public.menus USING btree (created_by_id);


--
-- TOC entry 3601 (class 1259 OID 16878)
-- Name: menus_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menus_updated_by_id_fk ON public.menus USING btree (updated_by_id);


--
-- TOC entry 3606 (class 1259 OID 16879)
-- Name: services_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_component_type_index ON public.services_components USING btree (component_type);


--
-- TOC entry 3602 (class 1259 OID 16880)
-- Name: services_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_created_by_id_fk ON public.services USING btree (created_by_id);


--
-- TOC entry 3609 (class 1259 OID 16881)
-- Name: services_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_entity_fk ON public.services_components USING btree (entity_id);


--
-- TOC entry 3610 (class 1259 OID 16882)
-- Name: services_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_field_index ON public.services_components USING btree (field);


--
-- TOC entry 3605 (class 1259 OID 16883)
-- Name: services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_updated_by_id_fk ON public.services USING btree (updated_by_id);


--
-- TOC entry 3617 (class 1259 OID 16884)
-- Name: sitemap_cache_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_cache_created_by_id_fk ON public.sitemap_cache USING btree (created_by_id);


--
-- TOC entry 3620 (class 1259 OID 16885)
-- Name: sitemap_cache_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_cache_updated_by_id_fk ON public.sitemap_cache USING btree (updated_by_id);


--
-- TOC entry 3613 (class 1259 OID 16886)
-- Name: sitemap_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_created_by_id_fk ON public.sitemap USING btree (created_by_id);


--
-- TOC entry 3616 (class 1259 OID 16887)
-- Name: sitemap_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_updated_by_id_fk ON public.sitemap USING btree (updated_by_id);


--
-- TOC entry 3621 (class 1259 OID 16888)
-- Name: slides_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_created_by_id_fk ON public.slides USING btree (created_by_id);


--
-- TOC entry 3625 (class 1259 OID 16889)
-- Name: slides_service_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_service_links_fk ON public.slides_service_links USING btree (slide_id);


--
-- TOC entry 3626 (class 1259 OID 16890)
-- Name: slides_service_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_service_links_inv_fk ON public.slides_service_links USING btree (service_id);


--
-- TOC entry 3624 (class 1259 OID 16891)
-- Name: slides_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_updated_by_id_fk ON public.slides USING btree (updated_by_id);


--
-- TOC entry 3631 (class 1259 OID 16892)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 3635 (class 1259 OID 16893)
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- TOC entry 3636 (class 1259 OID 16894)
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- TOC entry 3637 (class 1259 OID 16895)
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- TOC entry 3634 (class 1259 OID 16896)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3642 (class 1259 OID 16897)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3645 (class 1259 OID 16898)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3652 (class 1259 OID 16899)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 3656 (class 1259 OID 16900)
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- TOC entry 3657 (class 1259 OID 16901)
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- TOC entry 3658 (class 1259 OID 16902)
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- TOC entry 3655 (class 1259 OID 16903)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 3663 (class 1259 OID 16904)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 3666 (class 1259 OID 16905)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 3667 (class 1259 OID 16906)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 3671 (class 1259 OID 16907)
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- TOC entry 3672 (class 1259 OID 16908)
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- TOC entry 3673 (class 1259 OID 16909)
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- TOC entry 3670 (class 1259 OID 16910)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3678 (class 1259 OID 16911)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 3681 (class 1259 OID 16912)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 3688 (class 1259 OID 16913)
-- Name: tabs_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_component_type_index ON public.tabs_components USING btree (component_type);


--
-- TOC entry 3684 (class 1259 OID 16914)
-- Name: tabs_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_created_by_id_fk ON public.tabs USING btree (created_by_id);


--
-- TOC entry 3691 (class 1259 OID 16915)
-- Name: tabs_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_entity_fk ON public.tabs_components USING btree (entity_id);


--
-- TOC entry 3692 (class 1259 OID 16916)
-- Name: tabs_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_field_index ON public.tabs_components USING btree (field);


--
-- TOC entry 3695 (class 1259 OID 16917)
-- Name: tabs_service_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_fk ON public.tabs_service_links USING btree (tab_id);


--
-- TOC entry 3696 (class 1259 OID 16918)
-- Name: tabs_service_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_inv_fk ON public.tabs_service_links USING btree (service_id);


--
-- TOC entry 3697 (class 1259 OID 16919)
-- Name: tabs_service_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_order_inv_fk ON public.tabs_service_links USING btree (tab_order);


--
-- TOC entry 3687 (class 1259 OID 16920)
-- Name: tabs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_updated_by_id_fk ON public.tabs USING btree (updated_by_id);


--
-- TOC entry 3702 (class 1259 OID 16921)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 3706 (class 1259 OID 16922)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3707 (class 1259 OID 16923)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 3708 (class 1259 OID 16924)
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- TOC entry 3705 (class 1259 OID 16925)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 3713 (class 1259 OID 16926)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 3716 (class 1259 OID 16927)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 3717 (class 1259 OID 16928)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 3721 (class 1259 OID 16929)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 3722 (class 1259 OID 16930)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 3723 (class 1259 OID 16931)
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- TOC entry 3720 (class 1259 OID 16932)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 3557 (class 1259 OID 16933)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 3558 (class 1259 OID 16934)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 3559 (class 1259 OID 16935)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 3560 (class 1259 OID 16936)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 3561 (class 1259 OID 16937)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 3562 (class 1259 OID 16938)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 3728 (class 1259 OID 16939)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 3736 (class 1259 OID 16940)
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- TOC entry 3737 (class 1259 OID 16941)
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- TOC entry 3738 (class 1259 OID 16942)
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- TOC entry 3735 (class 1259 OID 16943)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 3743 (class 2606 OID 16944)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3745 (class 2606 OID 16949)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3746 (class 2606 OID 16954)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3744 (class 2606 OID 16959)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3747 (class 2606 OID 16964)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3748 (class 2606 OID 16969)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3749 (class 2606 OID 16974)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3751 (class 2606 OID 16979)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 3752 (class 2606 OID 16984)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3750 (class 2606 OID 16989)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3753 (class 2606 OID 16994)
-- Name: components_services_tables_components components_services_tables_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_services_tables(id) ON DELETE CASCADE;


--
-- TOC entry 3754 (class 2606 OID 16999)
-- Name: components_shared_seos_components components_shared_seos_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_seos(id) ON DELETE CASCADE;


--
-- TOC entry 3755 (class 2606 OID 17004)
-- Name: email_templates email_templates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3756 (class 2606 OID 17009)
-- Name: email_templates email_templates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3757 (class 2606 OID 17014)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3759 (class 2606 OID 17019)
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 3760 (class 2606 OID 17024)
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3761 (class 2606 OID 17029)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 3758 (class 2606 OID 17034)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3762 (class 2606 OID 17039)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3763 (class 2606 OID 17044)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3764 (class 2606 OID 17049)
-- Name: menu_items menu_items_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3766 (class 2606 OID 17054)
-- Name: menu_items_parent_links menu_items_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 3767 (class 2606 OID 17059)
-- Name: menu_items_parent_links menu_items_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_inv_fk FOREIGN KEY (inv_menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 3768 (class 2606 OID 17064)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 3769 (class 2606 OID 17069)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_inv_fk FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;


--
-- TOC entry 3765 (class 2606 OID 17074)
-- Name: menu_items menu_items_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3770 (class 2606 OID 17079)
-- Name: menus menus_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3771 (class 2606 OID 17084)
-- Name: menus menus_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3772 (class 2606 OID 17089)
-- Name: services services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3774 (class 2606 OID 17094)
-- Name: services_components services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 3773 (class 2606 OID 17099)
-- Name: services services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3777 (class 2606 OID 17104)
-- Name: sitemap_cache sitemap_cache_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3778 (class 2606 OID 17109)
-- Name: sitemap_cache sitemap_cache_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3775 (class 2606 OID 17114)
-- Name: sitemap sitemap_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3776 (class 2606 OID 17119)
-- Name: sitemap sitemap_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3779 (class 2606 OID 17124)
-- Name: slides slides_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3781 (class 2606 OID 17129)
-- Name: slides_service_links slides_service_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_fk FOREIGN KEY (slide_id) REFERENCES public.slides(id) ON DELETE CASCADE;


--
-- TOC entry 3782 (class 2606 OID 17134)
-- Name: slides_service_links slides_service_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_inv_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 3780 (class 2606 OID 17139)
-- Name: slides slides_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3783 (class 2606 OID 17144)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3785 (class 2606 OID 17149)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3786 (class 2606 OID 17154)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3784 (class 2606 OID 17159)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3787 (class 2606 OID 17164)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3788 (class 2606 OID 17169)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3789 (class 2606 OID 17174)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3791 (class 2606 OID 17179)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 3792 (class 2606 OID 17184)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 3790 (class 2606 OID 17189)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3793 (class 2606 OID 17194)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3794 (class 2606 OID 17199)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3795 (class 2606 OID 17204)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3797 (class 2606 OID 17209)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3798 (class 2606 OID 17214)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3796 (class 2606 OID 17219)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3799 (class 2606 OID 17224)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3800 (class 2606 OID 17229)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3801 (class 2606 OID 17234)
-- Name: tabs tabs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3803 (class 2606 OID 17239)
-- Name: tabs_components tabs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.tabs(id) ON DELETE CASCADE;


--
-- TOC entry 3804 (class 2606 OID 17244)
-- Name: tabs_service_links tabs_service_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_fk FOREIGN KEY (tab_id) REFERENCES public.tabs(id) ON DELETE CASCADE;


--
-- TOC entry 3805 (class 2606 OID 17249)
-- Name: tabs_service_links tabs_service_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_inv_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 3802 (class 2606 OID 17254)
-- Name: tabs tabs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3806 (class 2606 OID 17259)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3808 (class 2606 OID 17264)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3809 (class 2606 OID 17269)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3807 (class 2606 OID 17274)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3810 (class 2606 OID 17279)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3811 (class 2606 OID 17284)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3812 (class 2606 OID 17289)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3814 (class 2606 OID 17294)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3815 (class 2606 OID 17299)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3813 (class 2606 OID 17304)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3816 (class 2606 OID 17309)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3818 (class 2606 OID 17314)
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3819 (class 2606 OID 17319)
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3817 (class 2606 OID 17324)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2024-09-22 22:24:52

--
-- PostgreSQL database dump complete
--

