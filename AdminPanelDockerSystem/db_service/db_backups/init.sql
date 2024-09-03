--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-30 06:22:53

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
-- TOC entry 224 (class 1259 OID 29829)
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
-- TOC entry 223 (class 1259 OID 29828)
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
-- TOC entry 5553 (class 0 OID 0)
-- Dependencies: 223
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 280 (class 1259 OID 30129)
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
-- TOC entry 279 (class 1259 OID 30128)
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
-- TOC entry 5554 (class 0 OID 0)
-- Dependencies: 279
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- TOC entry 228 (class 1259 OID 29851)
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
-- TOC entry 227 (class 1259 OID 29850)
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
-- TOC entry 5555 (class 0 OID 0)
-- Dependencies: 227
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 226 (class 1259 OID 29840)
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
-- TOC entry 225 (class 1259 OID 29839)
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
-- TOC entry 5556 (class 0 OID 0)
-- Dependencies: 225
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 282 (class 1259 OID 30141)
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
-- TOC entry 281 (class 1259 OID 30140)
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
-- TOC entry 5557 (class 0 OID 0)
-- Dependencies: 281
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- TOC entry 278 (class 1259 OID 30122)
-- Name: components_services_service_cards; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_service_cards (
    id integer NOT NULL,
    link character varying(255)
);


ALTER TABLE public.components_services_service_cards OWNER TO legalexs_admin;

--
-- TOC entry 277 (class 1259 OID 30121)
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
-- TOC entry 5558 (class 0 OID 0)
-- Dependencies: 277
-- Name: components_services_service_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_service_cards_id_seq OWNED BY public.components_services_service_cards.id;


--
-- TOC entry 276 (class 1259 OID 30113)
-- Name: components_services_tab_rows; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_tab_rows (
    id integer NOT NULL,
    description text,
    price character varying(255)
);


ALTER TABLE public.components_services_tab_rows OWNER TO legalexs_admin;

--
-- TOC entry 275 (class 1259 OID 30112)
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
-- TOC entry 5559 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_services_tab_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tab_rows_id_seq OWNED BY public.components_services_tab_rows.id;


--
-- TOC entry 274 (class 1259 OID 30106)
-- Name: components_services_tables; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.components_services_tables (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_services_tables OWNER TO legalexs_admin;

--
-- TOC entry 314 (class 1259 OID 30338)
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
-- TOC entry 313 (class 1259 OID 30337)
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
-- TOC entry 5560 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_services_tables_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tables_components_id_seq OWNED BY public.components_services_tables_components.id;


--
-- TOC entry 273 (class 1259 OID 30105)
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
-- TOC entry 5561 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_services_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_services_tables_id_seq OWNED BY public.components_services_tables.id;


--
-- TOC entry 272 (class 1259 OID 30097)
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
-- TOC entry 271 (class 1259 OID 30096)
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
-- TOC entry 5562 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNED BY public.components_shared_meta_socials.id;


--
-- TOC entry 270 (class 1259 OID 30088)
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
-- TOC entry 312 (class 1259 OID 30324)
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
-- TOC entry 311 (class 1259 OID 30323)
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
-- TOC entry 5563 (class 0 OID 0)
-- Dependencies: 311
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_seos_components_id_seq OWNED BY public.components_shared_seos_components.id;


--
-- TOC entry 269 (class 1259 OID 30087)
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
-- TOC entry 5564 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- TOC entry 260 (class 1259 OID 30031)
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
-- TOC entry 259 (class 1259 OID 30030)
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
-- TOC entry 5565 (class 0 OID 0)
-- Dependencies: 259
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.email_templates_id_seq OWNED BY public.email_templates.id;


--
-- TOC entry 244 (class 1259 OID 29935)
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
-- TOC entry 298 (class 1259 OID 30241)
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
-- TOC entry 297 (class 1259 OID 30240)
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
-- TOC entry 5566 (class 0 OID 0)
-- Dependencies: 297
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- TOC entry 243 (class 1259 OID 29934)
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
-- TOC entry 5567 (class 0 OID 0)
-- Dependencies: 243
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 296 (class 1259 OID 30229)
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
-- TOC entry 295 (class 1259 OID 30228)
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
-- TOC entry 5568 (class 0 OID 0)
-- Dependencies: 295
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- TOC entry 252 (class 1259 OID 29989)
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
-- TOC entry 251 (class 1259 OID 29988)
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
-- TOC entry 5569 (class 0 OID 0)
-- Dependencies: 251
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 264 (class 1259 OID 30055)
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
-- TOC entry 263 (class 1259 OID 30054)
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
-- TOC entry 5570 (class 0 OID 0)
-- Dependencies: 263
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- TOC entry 310 (class 1259 OID 30313)
-- Name: menu_items_parent_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.menu_items_parent_links (
    id integer NOT NULL,
    menu_item_id integer,
    inv_menu_item_id integer
);


ALTER TABLE public.menu_items_parent_links OWNER TO legalexs_admin;

--
-- TOC entry 309 (class 1259 OID 30312)
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
-- TOC entry 5571 (class 0 OID 0)
-- Dependencies: 309
-- Name: menu_items_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_parent_links_id_seq OWNED BY public.menu_items_parent_links.id;


--
-- TOC entry 308 (class 1259 OID 30301)
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
-- TOC entry 307 (class 1259 OID 30300)
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
-- TOC entry 5572 (class 0 OID 0)
-- Dependencies: 307
-- Name: menu_items_root_menu_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menu_items_root_menu_links_id_seq OWNED BY public.menu_items_root_menu_links.id;


--
-- TOC entry 262 (class 1259 OID 30042)
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
-- TOC entry 261 (class 1259 OID 30041)
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
-- TOC entry 5573 (class 0 OID 0)
-- Dependencies: 261
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- TOC entry 238 (class 1259 OID 29902)
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
    sitemap_exclude boolean
);


ALTER TABLE public.services OWNER TO legalexs_admin;

--
-- TOC entry 288 (class 1259 OID 30178)
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
-- TOC entry 287 (class 1259 OID 30177)
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
-- TOC entry 5574 (class 0 OID 0)
-- Dependencies: 287
-- Name: services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.services_components_id_seq OWNED BY public.services_components.id;


--
-- TOC entry 237 (class 1259 OID 29901)
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
-- TOC entry 5575 (class 0 OID 0)
-- Dependencies: 237
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- TOC entry 266 (class 1259 OID 30066)
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
-- TOC entry 268 (class 1259 OID 30077)
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
-- TOC entry 267 (class 1259 OID 30076)
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
-- TOC entry 5576 (class 0 OID 0)
-- Dependencies: 267
-- Name: sitemap_cache_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.sitemap_cache_id_seq OWNED BY public.sitemap_cache.id;


--
-- TOC entry 265 (class 1259 OID 30065)
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
-- TOC entry 5577 (class 0 OID 0)
-- Dependencies: 265
-- Name: sitemap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.sitemap_id_seq OWNED BY public.sitemap.id;


--
-- TOC entry 240 (class 1259 OID 29913)
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
    sitemap_exclude boolean
);


ALTER TABLE public.slides OWNER TO legalexs_admin;

--
-- TOC entry 239 (class 1259 OID 29912)
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
-- TOC entry 5578 (class 0 OID 0)
-- Dependencies: 239
-- Name: slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.slides_id_seq OWNED BY public.slides.id;


--
-- TOC entry 290 (class 1259 OID 30192)
-- Name: slides_service_links; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.slides_service_links (
    id integer NOT NULL,
    slide_id integer,
    service_id integer
);


ALTER TABLE public.slides_service_links OWNER TO legalexs_admin;

--
-- TOC entry 289 (class 1259 OID 30191)
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
-- TOC entry 5579 (class 0 OID 0)
-- Dependencies: 289
-- Name: slides_service_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.slides_service_links_id_seq OWNED BY public.slides_service_links.id;


--
-- TOC entry 232 (class 1259 OID 29873)
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
-- TOC entry 231 (class 1259 OID 29872)
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
-- TOC entry 5580 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 284 (class 1259 OID 30154)
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
-- TOC entry 283 (class 1259 OID 30153)
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
-- TOC entry 5581 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- TOC entry 230 (class 1259 OID 29862)
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
-- TOC entry 229 (class 1259 OID 29861)
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
-- TOC entry 5582 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 220 (class 1259 OID 29811)
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
-- TOC entry 219 (class 1259 OID 29810)
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
-- TOC entry 5583 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 218 (class 1259 OID 29802)
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
-- TOC entry 217 (class 1259 OID 29801)
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
-- TOC entry 5584 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 216 (class 1259 OID 29795)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: legalexs_admin
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO legalexs_admin;

--
-- TOC entry 215 (class 1259 OID 29794)
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
-- TOC entry 5585 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 250 (class 1259 OID 29978)
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
-- TOC entry 249 (class 1259 OID 29977)
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
-- TOC entry 5586 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 302 (class 1259 OID 30265)
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
-- TOC entry 301 (class 1259 OID 30264)
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
-- TOC entry 5587 (class 0 OID 0)
-- Dependencies: 301
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- TOC entry 248 (class 1259 OID 29967)
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
-- TOC entry 247 (class 1259 OID 29966)
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
-- TOC entry 5588 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 236 (class 1259 OID 29893)
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
-- TOC entry 235 (class 1259 OID 29892)
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
-- TOC entry 5589 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 286 (class 1259 OID 30166)
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
-- TOC entry 285 (class 1259 OID 30165)
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
-- TOC entry 5590 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- TOC entry 234 (class 1259 OID 29882)
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
-- TOC entry 233 (class 1259 OID 29881)
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
-- TOC entry 5591 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 222 (class 1259 OID 29820)
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
-- TOC entry 221 (class 1259 OID 29819)
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
-- TOC entry 5592 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 242 (class 1259 OID 29924)
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
-- TOC entry 292 (class 1259 OID 30203)
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
-- TOC entry 291 (class 1259 OID 30202)
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
-- TOC entry 5593 (class 0 OID 0)
-- Dependencies: 291
-- Name: tabs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_components_id_seq OWNED BY public.tabs_components.id;


--
-- TOC entry 241 (class 1259 OID 29923)
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
-- TOC entry 5594 (class 0 OID 0)
-- Dependencies: 241
-- Name: tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_id_seq OWNED BY public.tabs.id;


--
-- TOC entry 294 (class 1259 OID 30217)
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
-- TOC entry 293 (class 1259 OID 30216)
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
-- TOC entry 5595 (class 0 OID 0)
-- Dependencies: 293
-- Name: tabs_service_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.tabs_service_links_id_seq OWNED BY public.tabs_service_links.id;


--
-- TOC entry 254 (class 1259 OID 30000)
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
-- TOC entry 253 (class 1259 OID 29999)
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
-- TOC entry 5596 (class 0 OID 0)
-- Dependencies: 253
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 304 (class 1259 OID 30277)
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
-- TOC entry 303 (class 1259 OID 30276)
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
-- TOC entry 5597 (class 0 OID 0)
-- Dependencies: 303
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- TOC entry 256 (class 1259 OID 30009)
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
-- TOC entry 255 (class 1259 OID 30008)
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
-- TOC entry 5598 (class 0 OID 0)
-- Dependencies: 255
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 258 (class 1259 OID 30020)
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
-- TOC entry 257 (class 1259 OID 30019)
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
-- TOC entry 5599 (class 0 OID 0)
-- Dependencies: 257
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 306 (class 1259 OID 30289)
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
-- TOC entry 305 (class 1259 OID 30288)
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
-- TOC entry 5600 (class 0 OID 0)
-- Dependencies: 305
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- TOC entry 246 (class 1259 OID 29952)
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
-- TOC entry 245 (class 1259 OID 29951)
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
-- TOC entry 5601 (class 0 OID 0)
-- Dependencies: 245
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 300 (class 1259 OID 30253)
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
-- TOC entry 299 (class 1259 OID 30252)
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
-- TOC entry 5602 (class 0 OID 0)
-- Dependencies: 299
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: legalexs_admin
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- TOC entry 4937 (class 2604 OID 29832)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 4965 (class 2604 OID 30132)
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 4939 (class 2604 OID 29854)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 4938 (class 2604 OID 29843)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 4966 (class 2604 OID 30144)
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- TOC entry 4964 (class 2604 OID 30125)
-- Name: components_services_service_cards id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_service_cards ALTER COLUMN id SET DEFAULT nextval('public.components_services_service_cards_id_seq'::regclass);


--
-- TOC entry 4963 (class 2604 OID 30116)
-- Name: components_services_tab_rows id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tab_rows ALTER COLUMN id SET DEFAULT nextval('public.components_services_tab_rows_id_seq'::regclass);


--
-- TOC entry 4962 (class 2604 OID 30109)
-- Name: components_services_tables id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables ALTER COLUMN id SET DEFAULT nextval('public.components_services_tables_id_seq'::regclass);


--
-- TOC entry 4982 (class 2604 OID 30341)
-- Name: components_services_tables_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components ALTER COLUMN id SET DEFAULT nextval('public.components_services_tables_components_id_seq'::regclass);


--
-- TOC entry 4961 (class 2604 OID 30100)
-- Name: components_shared_meta_socials id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_meta_socials_id_seq'::regclass);


--
-- TOC entry 4960 (class 2604 OID 30091)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 4981 (class 2604 OID 30327)
-- Name: components_shared_seos_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_components_id_seq'::regclass);


--
-- TOC entry 4955 (class 2604 OID 30034)
-- Name: email_templates id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN id SET DEFAULT nextval('public.email_templates_id_seq'::regclass);


--
-- TOC entry 4947 (class 2604 OID 29938)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 4974 (class 2604 OID 30244)
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- TOC entry 4973 (class 2604 OID 30232)
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- TOC entry 4951 (class 2604 OID 29992)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 4957 (class 2604 OID 30058)
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- TOC entry 4980 (class 2604 OID 30316)
-- Name: menu_items_parent_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_parent_links_id_seq'::regclass);


--
-- TOC entry 4979 (class 2604 OID 30304)
-- Name: menu_items_root_menu_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_root_menu_links_id_seq'::regclass);


--
-- TOC entry 4956 (class 2604 OID 30045)
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- TOC entry 4944 (class 2604 OID 29905)
-- Name: services id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- TOC entry 4969 (class 2604 OID 30181)
-- Name: services_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components ALTER COLUMN id SET DEFAULT nextval('public.services_components_id_seq'::regclass);


--
-- TOC entry 4958 (class 2604 OID 30069)
-- Name: sitemap id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap ALTER COLUMN id SET DEFAULT nextval('public.sitemap_id_seq'::regclass);


--
-- TOC entry 4959 (class 2604 OID 30080)
-- Name: sitemap_cache id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache ALTER COLUMN id SET DEFAULT nextval('public.sitemap_cache_id_seq'::regclass);


--
-- TOC entry 4945 (class 2604 OID 29916)
-- Name: slides id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides ALTER COLUMN id SET DEFAULT nextval('public.slides_id_seq'::regclass);


--
-- TOC entry 4970 (class 2604 OID 30195)
-- Name: slides_service_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links ALTER COLUMN id SET DEFAULT nextval('public.slides_service_links_id_seq'::regclass);


--
-- TOC entry 4941 (class 2604 OID 29876)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 4967 (class 2604 OID 30157)
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 4940 (class 2604 OID 29865)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 29814)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 4934 (class 2604 OID 29805)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 4933 (class 2604 OID 29798)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 4950 (class 2604 OID 29981)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 4976 (class 2604 OID 30268)
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- TOC entry 4949 (class 2604 OID 29970)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 4943 (class 2604 OID 29896)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 4968 (class 2604 OID 30169)
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 4942 (class 2604 OID 29885)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 4936 (class 2604 OID 29823)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 4946 (class 2604 OID 29927)
-- Name: tabs id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs ALTER COLUMN id SET DEFAULT nextval('public.tabs_id_seq'::regclass);


--
-- TOC entry 4971 (class 2604 OID 30206)
-- Name: tabs_components id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components ALTER COLUMN id SET DEFAULT nextval('public.tabs_components_id_seq'::regclass);


--
-- TOC entry 4972 (class 2604 OID 30220)
-- Name: tabs_service_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links ALTER COLUMN id SET DEFAULT nextval('public.tabs_service_links_id_seq'::regclass);


--
-- TOC entry 4952 (class 2604 OID 30003)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 4977 (class 2604 OID 30280)
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 4953 (class 2604 OID 30012)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 4954 (class 2604 OID 30023)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 4978 (class 2604 OID 30292)
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- TOC entry 4948 (class 2604 OID 29955)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 4975 (class 2604 OID 30256)
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- TOC entry 5457 (class 0 OID 29829)
-- Dependencies: 224
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
221	plugin::content-manager.explorer.create	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-23 19:04:31.574	2024-08-23 19:04:31.574	\N	\N
222	plugin::content-manager.explorer.read	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-23 19:04:31.596	2024-08-23 19:04:31.596	\N	\N
223	plugin::content-manager.explorer.update	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-23 19:04:31.62	2024-08-23 19:04:31.62	\N	\N
224	plugin::content-manager.explorer.create	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-23 20:40:24.639	2024-08-23 20:40:24.639	\N	\N
225	plugin::content-manager.explorer.read	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-23 20:40:24.665	2024-08-23 20:40:24.665	\N	\N
226	plugin::content-manager.explorer.update	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-23 20:40:24.685	2024-08-23 20:40:24.685	\N	\N
227	plugin::content-manager.explorer.create	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-24 13:57:57.174	2024-08-24 13:57:57.174	\N	\N
228	plugin::content-manager.explorer.read	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-24 13:57:57.188	2024-08-24 13:57:57.188	\N	\N
229	plugin::content-manager.explorer.update	{}	api::service.service	{"fields": ["ServiceCard.CardBackground", "ServiceCard.Link", "Title", "Description", "Meta", "TabTitle", "Tabs"]}	[]	2024-08-24 13:57:57.194	2024-08-24 13:57:57.194	\N	\N
230	plugin::content-manager.explorer.delete	{}	api::service.service	{}	[]	2024-08-24 13:57:57.203	2024-08-24 13:57:57.203	\N	\N
231	plugin::content-manager.explorer.publish	{}	api::service.service	{}	[]	2024-08-24 13:57:57.21	2024-08-24 13:57:57.21	\N	\N
232	plugin::content-manager.explorer.create	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-24 13:57:57.216	2024-08-24 13:57:57.216	\N	\N
233	plugin::content-manager.explorer.read	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-24 13:57:57.232	2024-08-24 13:57:57.232	\N	\N
234	plugin::content-manager.explorer.update	{}	api::slide.slide	{"fields": ["Description", "ButtonText", "Slide", "Service"]}	[]	2024-08-24 13:57:57.237	2024-08-24 13:57:57.237	\N	\N
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
\.


--
-- TOC entry 5513 (class 0 OID 30129)
-- Dependencies: 280
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
221	221	1	114
222	222	1	115
223	223	1	116
224	224	1	117
225	225	1	118
226	226	1	119
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
\.


--
-- TOC entry 5461 (class 0 OID 29851)
-- Dependencies: 228
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-08-13 19:39:13.791	2024-08-13 19:39:13.791	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-08-13 19:39:13.81	2024-08-13 19:39:13.81	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-08-13 19:39:13.805	2024-08-24 13:57:57.045	\N	\N
\.


--
-- TOC entry 5459 (class 0 OID 29840)
-- Dependencies: 226
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Tsimafei	Lipnitski	PiRat	silencetray@gmail.com	$2a$10$C0lCIUvdaXAGlRh4JXhGwu20N//11St1u/kurXs/mKmwe2LBX.BKC	\N	\N	t	f	\N	2024-08-13 19:40:32.187	2024-08-24 13:59:21.253	\N	\N
2	Vlad	Vlasenkov	Director	vv95@bk.ru	$2a$10$KPltaxDOaPyzPOlSYu04KepEufmMvejgJeVuLn1W/h1B9r4audkXq	\N	c5984b1939368e3964e9b1a8e8f9bc3603f66aa6	t	f	\N	2024-08-24 14:04:19.349	2024-08-24 14:15:52.751	\N	\N
\.


--
-- TOC entry 5515 (class 0 OID 30141)
-- Dependencies: 282
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
3	2	2	1	1
\.


--
-- TOC entry 5511 (class 0 OID 30122)
-- Dependencies: 278
-- Data for Name: components_services_service_cards; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_services_service_cards (id, link) FROM stdin;
1	legal
5	hr
6	crisisManagement
7	mediation
\.


--
-- TOC entry 5509 (class 0 OID 30113)
-- Dependencies: 276
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
65	Банкротство	В соответствии с Законом «Об урегулировании неплатежеспособности»
66	Предварительные переговоры	от 50,00 бел. руб.
67	Проведение переговоров (одна сессия)	от 100,00 бел. руб. за 1 час
68	Составление медиативного соглашения	от 100,00 бел. руб.
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
\.


--
-- TOC entry 5507 (class 0 OID 30106)
-- Dependencies: 274
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
24	\N
25	\N
26	\N
27	При этом сумма доплаты после поступления всего долга на счет взыскателя составит от 10 до 40% от взысканной суммы штрафных санкций.
\.


--
-- TOC entry 5547 (class 0 OID 30338)
-- Dependencies: 314
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
124	24	65	services.tab-row	Row	1
126	25	66	services.tab-row	Row	1
127	26	67	services.tab-row	Row	1
128	27	68	services.tab-row	Row	1
\.


--
-- TOC entry 5505 (class 0 OID 30097)
-- Dependencies: 272
-- Data for Name: components_shared_meta_socials; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_meta_socials (id, social_network, title, description) FROM stdin;
\.


--
-- TOC entry 5503 (class 0 OID 30088)
-- Dependencies: 270
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_seos (id, meta_title, meta_description, keywords, meta_robots, structured_data, meta_viewport, canonical_url) FROM stdin;
\.


--
-- TOC entry 5545 (class 0 OID 30324)
-- Dependencies: 312
-- Data for Name: components_shared_seos_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.components_shared_seos_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5493 (class 0 OID 30031)
-- Dependencies: 260
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.email_templates (id, template_reference_id, design, name, subject, body_html, body_text, enabled, tags, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5477 (class 0 OID 29935)
-- Dependencies: 244
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
6	service3.webp	\N	\N	1125	750	{"large": {"ext": ".webp", "url": "/uploads/large_service3_0c7f3c5fd9.webp", "hash": "large_service3_0c7f3c5fd9", "mime": "image/webp", "name": "large_service3.webp", "path": null, "size": 79.47, "width": 1000, "height": 667, "sizeInBytes": 79472}, "small": {"ext": ".webp", "url": "/uploads/small_service3_0c7f3c5fd9.webp", "hash": "small_service3_0c7f3c5fd9", "mime": "image/webp", "name": "small_service3.webp", "path": null, "size": 24.98, "width": 500, "height": 333, "sizeInBytes": 24982}, "medium": {"ext": ".webp", "url": "/uploads/medium_service3_0c7f3c5fd9.webp", "hash": "medium_service3_0c7f3c5fd9", "mime": "image/webp", "name": "medium_service3.webp", "path": null, "size": 51.87, "width": 750, "height": 500, "sizeInBytes": 51870}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service3_0c7f3c5fd9.webp", "hash": "thumbnail_service3_0c7f3c5fd9", "mime": "image/webp", "name": "thumbnail_service3.webp", "path": null, "size": 6.5, "width": 234, "height": 156, "sizeInBytes": 6498}}	service3_0c7f3c5fd9	.webp	image/webp	110.89	/uploads/service3_0c7f3c5fd9.webp	\N	local	\N	/1	2024-08-14 18:03:32.953	2024-08-14 18:03:32.953	1	1	\N
3	service1.webp	\N	\N	640	427	{"small": {"ext": ".webp", "url": "/uploads/small_service1_776fbb87cc.webp", "hash": "small_service1_776fbb87cc", "mime": "image/webp", "name": "small_service1.webp", "path": null, "size": 13.51, "width": 500, "height": 334, "sizeInBytes": 13506}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service1_776fbb87cc.webp", "hash": "thumbnail_service1_776fbb87cc", "mime": "image/webp", "name": "thumbnail_service1.webp", "path": null, "size": 5.3, "width": 234, "height": 156, "sizeInBytes": 5296}}	service1_776fbb87cc	.webp	image/webp	22.33	/uploads/service1_776fbb87cc.webp	\N	local	\N	/1	2024-08-14 17:50:08.338	2024-08-14 17:50:40.883	1	1	\N
8	hero2.webp	\N	\N	2000	1335	{"large": {"ext": ".webp", "url": "/uploads/large_hero2_79a835a10c.webp", "hash": "large_hero2_79a835a10c", "mime": "image/webp", "name": "large_hero2.webp", "path": null, "size": 50.04, "width": 1000, "height": 668, "sizeInBytes": 50044}, "small": {"ext": ".webp", "url": "/uploads/small_hero2_79a835a10c.webp", "hash": "small_hero2_79a835a10c", "mime": "image/webp", "name": "small_hero2.webp", "path": null, "size": 20.78, "width": 500, "height": 334, "sizeInBytes": 20780}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero2_79a835a10c.webp", "hash": "medium_hero2_79a835a10c", "mime": "image/webp", "name": "medium_hero2.webp", "path": null, "size": 34.78, "width": 750, "height": 501, "sizeInBytes": 34780}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero2_79a835a10c.webp", "hash": "thumbnail_hero2_79a835a10c", "mime": "image/webp", "name": "thumbnail_hero2.webp", "path": null, "size": 6.9, "width": 234, "height": 156, "sizeInBytes": 6902}}	hero2_79a835a10c	.webp	image/webp	117.21	/uploads/hero2_79a835a10c.webp	\N	local	\N	/2	2024-08-23 17:25:36.197	2024-08-23 17:25:36.197	1	1	\N
9	hero4.webp	\N	\N	1280	1920	{"large": {"ext": ".webp", "url": "/uploads/large_hero4_c74f9452a3.webp", "hash": "large_hero4_c74f9452a3", "mime": "image/webp", "name": "large_hero4.webp", "path": null, "size": 69.46, "width": 667, "height": 1000, "sizeInBytes": 69456}, "small": {"ext": ".webp", "url": "/uploads/small_hero4_c74f9452a3.webp", "hash": "small_hero4_c74f9452a3", "mime": "image/webp", "name": "small_hero4.webp", "path": null, "size": 22.07, "width": 333, "height": 500, "sizeInBytes": 22066}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero4_c74f9452a3.webp", "hash": "medium_hero4_c74f9452a3", "mime": "image/webp", "name": "medium_hero4.webp", "path": null, "size": 43.02, "width": 500, "height": 750, "sizeInBytes": 43016}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero4_c74f9452a3.webp", "hash": "thumbnail_hero4_c74f9452a3", "mime": "image/webp", "name": "thumbnail_hero4.webp", "path": null, "size": 3.34, "width": 104, "height": 156, "sizeInBytes": 3342}}	hero4_c74f9452a3	.webp	image/webp	288.63	/uploads/hero4_c74f9452a3.webp	\N	local	\N	/2	2024-08-23 17:25:36.357	2024-08-23 17:25:36.357	1	1	\N
10	hero3.webp	\N	\N	5608	3739	{"large": {"ext": ".webp", "url": "/uploads/large_hero3_0cc7f6e3dc.webp", "hash": "large_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "large_hero3.webp", "path": null, "size": 18.52, "width": 1000, "height": 667, "sizeInBytes": 18518}, "small": {"ext": ".webp", "url": "/uploads/small_hero3_0cc7f6e3dc.webp", "hash": "small_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "small_hero3.webp", "path": null, "size": 6.99, "width": 500, "height": 333, "sizeInBytes": 6994}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero3_0cc7f6e3dc.webp", "hash": "medium_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "medium_hero3.webp", "path": null, "size": 12.34, "width": 750, "height": 500, "sizeInBytes": 12336}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero3_0cc7f6e3dc.webp", "hash": "thumbnail_hero3_0cc7f6e3dc", "mime": "image/webp", "name": "thumbnail_hero3.webp", "path": null, "size": 2.36, "width": 234, "height": 156, "sizeInBytes": 2362}}	hero3_0cc7f6e3dc	.webp	image/webp	319.39	/uploads/hero3_0cc7f6e3dc.webp	\N	local	\N	/2	2024-08-23 17:25:37.77	2024-08-23 17:25:37.77	1	1	\N
4	service2.webp	\N	\N	1280	853	{"large": {"ext": ".webp", "url": "/uploads/large_service2_f880d3b98c.webp", "hash": "large_service2_f880d3b98c", "mime": "image/webp", "name": "large_service2.webp", "path": null, "size": 31.21, "width": 1000, "height": 666, "sizeInBytes": 31214}, "small": {"ext": ".webp", "url": "/uploads/small_service2_f880d3b98c.webp", "hash": "small_service2_f880d3b98c", "mime": "image/webp", "name": "small_service2.webp", "path": null, "size": 14, "width": 500, "height": 333, "sizeInBytes": 14004}, "medium": {"ext": ".webp", "url": "/uploads/medium_service2_f880d3b98c.webp", "hash": "medium_service2_f880d3b98c", "mime": "image/webp", "name": "medium_service2.webp", "path": null, "size": 22.64, "width": 750, "height": 500, "sizeInBytes": 22638}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service2_f880d3b98c.webp", "hash": "thumbnail_service2_f880d3b98c", "mime": "image/webp", "name": "thumbnail_service2.webp", "path": null, "size": 6.03, "width": 234, "height": 156, "sizeInBytes": 6026}}	service2_f880d3b98c	.webp	image/webp	49.96	/uploads/service2_f880d3b98c.webp	\N	local	\N	/1	2024-08-14 17:54:42.451	2024-08-25 23:21:43.768	1	2	\N
5	service4.webp	\N	\N	640	427	{"small": {"ext": ".webp", "url": "/uploads/small_service4_c5afc50aac.webp", "hash": "small_service4_c5afc50aac", "mime": "image/webp", "name": "small_service4.webp", "path": null, "size": 17.63, "width": 500, "height": 334, "sizeInBytes": 17626}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service4_c5afc50aac.webp", "hash": "thumbnail_service4_c5afc50aac", "mime": "image/webp", "name": "thumbnail_service4.webp", "path": null, "size": 5.85, "width": 234, "height": 156, "sizeInBytes": 5846}}	service4_c5afc50aac	.webp	image/webp	32.36	/uploads/service4_c5afc50aac.webp	\N	local	\N	/1	2024-08-14 18:03:32.755	2024-08-25 23:31:24.566	1	2	\N
7	hero1.webp	\N	\N	1920	1280	{"large": {"ext": ".webp", "url": "/uploads/large_hero1_58d0c0edef.webp", "hash": "large_hero1_58d0c0edef", "mime": "image/webp", "name": "large_hero1.webp", "path": null, "size": 50.82, "width": 1000, "height": 667, "sizeInBytes": 50818}, "small": {"ext": ".webp", "url": "/uploads/small_hero1_58d0c0edef.webp", "hash": "small_hero1_58d0c0edef", "mime": "image/webp", "name": "small_hero1.webp", "path": null, "size": 19.46, "width": 500, "height": 333, "sizeInBytes": 19462}, "medium": {"ext": ".webp", "url": "/uploads/medium_hero1_58d0c0edef.webp", "hash": "medium_hero1_58d0c0edef", "mime": "image/webp", "name": "medium_hero1.webp", "path": null, "size": 33.8, "width": 750, "height": 500, "sizeInBytes": 33802}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_hero1_58d0c0edef.webp", "hash": "thumbnail_hero1_58d0c0edef", "mime": "image/webp", "name": "thumbnail_hero1.webp", "path": null, "size": 7.08, "width": 234, "height": 156, "sizeInBytes": 7078}}	hero1_58d0c0edef	.webp	image/webp	163.72	/uploads/hero1_58d0c0edef.webp	\N	local	\N	/2	2024-08-23 17:25:36.205	2024-08-23 18:34:24.202	1	1	\N
\.


--
-- TOC entry 5531 (class 0 OID 30241)
-- Dependencies: 298
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
-- TOC entry 5529 (class 0 OID 30229)
-- Dependencies: 296
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
18	7	1	services.slide	Image	1
20	3	1	services.service-card	CardBackground	1
26	7	1	api::slide.slide	Slide	1
27	8	2	api::slide.slide	Slide	1
30	4	5	services.service-card	CardBackground	1
34	6	6	services.service-card	CardBackground	1
36	5	7	services.service-card	CardBackground	1
37	10	3	api::slide.slide	Slide	1
\.


--
-- TOC entry 5485 (class 0 OID 29989)
-- Dependencies: 252
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-08-13 19:39:13.744	2024-08-13 19:39:13.744	\N	\N
2	Russian (ru)	ru	2024-08-24 17:00:46.288	2024-08-24 17:00:58.765	1	1
\.


--
-- TOC entry 5497 (class 0 OID 30055)
-- Dependencies: 264
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items (id, "order", title, url, target, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5543 (class 0 OID 30313)
-- Dependencies: 310
-- Data for Name: menu_items_parent_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items_parent_links (id, menu_item_id, inv_menu_item_id) FROM stdin;
\.


--
-- TOC entry 5541 (class 0 OID 30301)
-- Dependencies: 308
-- Data for Name: menu_items_root_menu_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menu_items_root_menu_links (id, menu_item_id, menu_id, menu_item_order) FROM stdin;
\.


--
-- TOC entry 5495 (class 0 OID 30042)
-- Dependencies: 262
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.menus (id, title, slug, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5471 (class 0 OID 29902)
-- Dependencies: 238
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.services (id, title, description, meta, tab_title, created_at, updated_at, published_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
6	Антикризисное управление	Сюда бахнем <span class="font-medium text-blue_light"> твою </span> фразу	Антикризисное управление	Антикризисное управление - Цена на услуги юриста в Минске	2024-08-23 21:21:52.333	2024-08-25 23:23:13.049	2024-08-25 23:15:01.786	2	2	\N
7	Медиация	Сюда бахнем <span class="font-medium text-blue_light"> твою </span> фразу	Медиация	Медиация - Цена на услуги юриста в Минске	2024-08-25 23:32:31.385	2024-08-25 23:35:15.599	2024-08-25 23:34:38.575	2	2	f
1	Юридические услуги	Защита <span class="font-medium text-blue_light"> ваших </span> прав и интересов	Юридическая фирма LegaLex предлагает услуги опытного юриста в Минске. Узнать цены на юридические консультации, оформление договоров, представление в суде и многое другое можно на нашем сайте.	Юридические услуги - Цена на услуги юриста в Минске	2024-08-13 20:00:19.773	2024-08-23 18:34:13.159	2024-08-13 20:00:24.615	1	1	\N
5	HR-услуги	<span class="font-medium text-blue_light">Эффективное </span> управление ресурсами	LegaLex предлагает услуги опытного HR-специалиста в Минске. Узнать цены на консультацию и сопровождение от специалиста по управлению персоналом можно на нашем сайте.	Услуги HR в Минске - Специалист по управлению персоналом от компании LegaLex	2024-08-23 21:21:52.333	2024-08-23 21:22:33.599	2024-08-23 21:22:04.784	1	1	\N
\.


--
-- TOC entry 5521 (class 0 OID 30178)
-- Dependencies: 288
-- Data for Name: services_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services.service-card	ServiceCard	\N
20	5	5	services.service-card	ServiceCard	\N
22	6	6	services.service-card	ServiceCard	\N
26	7	7	services.service-card	ServiceCard	\N
\.


--
-- TOC entry 5499 (class 0 OID 30066)
-- Dependencies: 266
-- Data for Name: sitemap; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.sitemap (id, sitemap_string, name, type, delta, link_count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5501 (class 0 OID 30077)
-- Dependencies: 268
-- Data for Name: sitemap_cache; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.sitemap_cache (id, sitemap_json, name, sitemap_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5473 (class 0 OID 29913)
-- Dependencies: 240
-- Data for Name: slides; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.slides (id, description, button_text, created_at, updated_at, published_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
1	Мы здесь, чтобы оказать вам юридическую помощь и обеспечить вашу уверенность в завтрашнем дне	Получить помощь юрисконсульта	2024-08-23 18:18:36.925	2024-08-23 19:02:07.588	2024-08-23 18:26:43.529	1	1	\N
2	Мы здесь, чтобы помочь вам подобрать персонал, создавая команду, на которую можно положиться	Получить помощь HR-менеджера	2024-08-23 20:39:23.522	2024-08-23 20:39:42.922	2024-08-23 20:39:42.915	1	1	\N
3	Медитируйте, буьте спокойны	Медиация как медитация	2024-08-25 23:42:29.806	2024-08-25 23:42:38.393	2024-08-25 23:42:38.388	2	2	f
\.


--
-- TOC entry 5523 (class 0 OID 30192)
-- Dependencies: 290
-- Data for Name: slides_service_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.slides_service_links (id, slide_id, service_id) FROM stdin;
1	1	1
2	2	1
3	3	7
\.


--
-- TOC entry 5465 (class 0 OID 29873)
-- Dependencies: 232
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5517 (class 0 OID 30154)
-- Dependencies: 284
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- TOC entry 5463 (class 0 OID 29862)
-- Dependencies: 230
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Legalex		read-only	f73205768b28f918218911ba8024531e1bd1cb2888b288cd8bc83e1c81880430c650b7b3f3b3f8f500663598d46bb6fc74e9ed9674e81dbe12cb929967689bbd	\N	\N	\N	2024-08-13 21:13:58.091	2024-08-13 23:08:31.6	\N	\N
\.


--
-- TOC entry 5453 (class 0 OID 29811)
-- Dependencies: 220
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
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::email-designer.email-template":{"kind":"collectionType","collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"email-template","connection":"default","uid":"plugin::email-designer.email-template","plugin":"email-designer","globalId":"EmailDesignerEmailTemplate"},"plugin::menus.menu":{"kind":"collectionType","collectionName":"menus","info":{"name":"Menu","displayName":"Menu","singularName":"menu","pluralName":"menus","tableName":"menus"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"items":{"type":"relation","relation":"oneToMany","target":"plugin::menus.menu-item","mappedBy":"root_menu"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"menus","info":{"name":"Menu","displayName":"Menu","singularName":"menu","pluralName":"menus","tableName":"menus"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"items":{"type":"relation","relation":"oneToMany","target":"plugin::menus.menu-item","mappedBy":"root_menu"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu","connection":"default","uid":"plugin::menus.menu","plugin":"menus","globalId":"MenusMenu"},"plugin::menus.menu-item":{"kind":"collectionType","collectionName":"menu_items","info":{"name":"MenuItem","displayName":"Menu Item","singularName":"menu-item","pluralName":"menu-items","tableName":"menu_items"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"order":{"type":"integer"},"title":{"type":"string","required":true},"url":{"type":"string"},"target":{"type":"enumeration","enum":["_blank","_parent","_self","_top"]},"root_menu":{"type":"relation","relation":"manyToOne","target":"plugin::menus.menu","inversedBy":"items","required":true},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::menus.menu-item"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"menu_items","info":{"name":"MenuItem","displayName":"Menu Item","singularName":"menu-item","pluralName":"menu-items","tableName":"menu_items"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"order":{"type":"integer"},"title":{"type":"string","required":true},"url":{"type":"string"},"target":{"type":"enumeration","enum":["_blank","_parent","_self","_top"]},"root_menu":{"type":"relation","relation":"manyToOne","target":"plugin::menus.menu","inversedBy":"items","required":true},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::menus.menu-item"}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu-item","connection":"default","uid":"plugin::menus.menu-item","plugin":"menus","globalId":"MenusMenuItem"},"plugin::sitemap.sitemap":{"kind":"collectionType","collectionName":"sitemap","info":{"singularName":"sitemap","pluralName":"sitemaps","displayName":"sitemap"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_string":{"type":"text","required":true},"name":{"type":"string","default":"default","required":true},"type":{"type":"enumeration","enum":["default_hreflang","index"],"default":"default_hreflang"},"delta":{"type":"integer","default":1},"link_count":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sitemap","info":{"singularName":"sitemap","pluralName":"sitemaps","displayName":"sitemap"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_string":{"type":"text","required":true},"name":{"type":"string","default":"default","required":true},"type":{"type":"enumeration","enum":["default_hreflang","index"],"default":"default_hreflang"},"delta":{"type":"integer","default":1},"link_count":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"sitemap","connection":"default","uid":"plugin::sitemap.sitemap","plugin":"sitemap","globalId":"SitemapSitemap"},"plugin::sitemap.sitemap-cache":{"kind":"collectionType","collectionName":"sitemap_cache","info":{"singularName":"sitemap-cache","pluralName":"sitemap-caches","displayName":"sitemap-cache"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_json":{"type":"json","required":true},"name":{"type":"string","default":"default","required":true},"sitemap_id":{"type":"integer","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sitemap_cache","info":{"singularName":"sitemap-cache","pluralName":"sitemap-caches","displayName":"sitemap-cache"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"sitemap_json":{"type":"json","required":true},"name":{"type":"string","default":"default","required":true},"sitemap_id":{"type":"integer","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"sitemap-cache","connection":"default","uid":"plugin::sitemap.sitemap-cache","plugin":"sitemap","globalId":"SitemapSitemapCache"},"api::service.service":{"kind":"collectionType","collectionName":"services","info":{"singularName":"service","pluralName":"services","displayName":"Услуги","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ServiceCard":{"type":"component","repeatable":false,"component":"services.service-card"},"Title":{"type":"string"},"Description":{"type":"richtext"},"Meta":{"type":"string"},"TabTitle":{"type":"string"},"Tabs":{"type":"relation","relation":"oneToMany","target":"api::tab.tab","mappedBy":"Service"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"services","info":{"singularName":"service","pluralName":"services","displayName":"Услуги","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ServiceCard":{"type":"component","repeatable":false,"component":"services.service-card"},"Title":{"type":"string"},"Description":{"type":"richtext"},"Meta":{"type":"string"},"TabTitle":{"type":"string"},"Tabs":{"type":"relation","relation":"oneToMany","target":"api::tab.tab","mappedBy":"Service"}},"kind":"collectionType"},"modelType":"contentType","modelName":"service","connection":"default","uid":"api::service.service","apiName":"service","globalId":"Service","actions":{},"lifecycles":{}},"api::slide.slide":{"kind":"collectionType","collectionName":"slides","info":{"singularName":"slide","pluralName":"slides","displayName":"Slide","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Description":{"type":"text"},"ButtonText":{"type":"string"},"Slide":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"Service":{"type":"relation","relation":"oneToOne","target":"api::service.service"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"slides","info":{"singularName":"slide","pluralName":"slides","displayName":"Slide","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Description":{"type":"text"},"ButtonText":{"type":"string"},"Slide":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"Service":{"type":"relation","relation":"oneToOne","target":"api::service.service"}},"kind":"collectionType"},"modelType":"contentType","modelName":"slide","connection":"default","uid":"api::slide.slide","apiName":"slide","globalId":"Slide","actions":{},"lifecycles":{}},"api::tab.tab":{"kind":"collectionType","collectionName":"tabs","info":{"singularName":"tab","pluralName":"tabs","displayName":"Tab","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Tables":{"type":"component","repeatable":true,"component":"services.table","required":true},"Trailer":{"type":"text"},"Service":{"type":"relation","relation":"manyToOne","target":"api::service.service","inversedBy":"Tabs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"sitemap_exclude":{"writable":true,"private":true,"configurable":false,"visible":false,"default":false,"type":"boolean"}},"__schema__":{"collectionName":"tabs","info":{"singularName":"tab","pluralName":"tabs","displayName":"Tab","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Tables":{"type":"component","repeatable":true,"component":"services.table","required":true},"Trailer":{"type":"text"},"Service":{"type":"relation","relation":"manyToOne","target":"api::service.service","inversedBy":"Tabs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"tab","connection":"default","uid":"api::tab.tab","apiName":"tab","globalId":"Tab","actions":{},"lifecycles":{}}}	object	\N	\N
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
19	plugin_upload_metrics	{"weeklySchedule":"2 56 12 * * 5","lastWeeklyUpdate":1724406962095}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
30	plugin_content_manager_configuration_components::services.table	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Row":{"edit":{"label":"Row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Row","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","Row","Title"],"edit":[[{"name":"Row","size":12}],[{"name":"Title","size":6}]]},"uid":"services.table","isComponent":true}	object	\N	\N
23	plugin_i18n_default_locale	"ru"	string	\N	\N
26	plugin_content_manager_configuration_content_types::api::service.service	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"ServiceCard":{"edit":{"label":"ServiceCard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ServiceCard","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"Meta":{"edit":{"label":"Meta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Meta","searchable":true,"sortable":true}},"TabTitle":{"edit":{"label":"TabTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TabTitle","searchable":true,"sortable":true}},"Tabs":{"edit":{"label":"Tabs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Tabs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"Title","size":6}],[{"name":"ServiceCard","size":12}],[{"name":"Description","size":12}],[{"name":"Meta","size":6},{"name":"TabTitle","size":6}],[{"name":"Tabs","size":6}]],"list":["id","Title","ServiceCard"]},"uid":"api::service.service"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::tab.tab	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Tables":{"edit":{"label":"Tables","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tables","searchable":false,"sortable":false}},"Trailer":{"edit":{"label":"Trailer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Trailer","searchable":true,"sortable":true}},"Service":{"edit":{"label":"Service","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Service","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"Title","size":6}],[{"name":"Tables","size":12}],[{"name":"Trailer","size":6},{"name":"Service","size":6}]],"list":["Service","Title"]},"uid":"api::tab.tab"}	object	\N	\N
37	plugin_content_manager_configuration_content_types::plugin::menus.menu	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","items"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"items","size":6}]]},"uid":"plugin::menus.menu"}	object	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
38	plugin_content_manager_configuration_content_types::plugin::menus.menu-item	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"order":{"edit":{"label":"order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"order","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"target":{"edit":{"label":"target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"target","searchable":true,"sortable":true}},"root_menu":{"edit":{"label":"root_menu","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"root_menu","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"parent","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","order","title","url"],"edit":[[{"name":"order","size":4},{"name":"title","size":6}],[{"name":"url","size":6},{"name":"target","size":6}],[{"name":"root_menu","size":6},{"name":"parent","size":6}]]},"uid":"plugin::menus.menu-item"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::plugin::sitemap.sitemap	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"sitemap_string":{"edit":{"label":"sitemap_string","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_string","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"delta":{"edit":{"label":"delta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"delta","searchable":true,"sortable":true}},"link_count":{"edit":{"label":"link_count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link_count","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","sitemap_string","name","type"],"edit":[[{"name":"sitemap_string","size":6},{"name":"name","size":6}],[{"name":"type","size":6},{"name":"delta","size":4}],[{"name":"link_count","size":4}]]},"uid":"plugin::sitemap.sitemap"}	object	\N	\N
35	plugin_content_manager_configuration_content_types::api::slide.slide	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ButtonText","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"ButtonText":{"edit":{"label":"ButtonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonText","searchable":true,"sortable":true}},"Slide":{"edit":{"label":"Slide","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slide","searchable":false,"sortable":false}},"Service":{"edit":{"label":"Service","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Service","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"Slide","size":12}],[{"name":"Service","size":6},{"name":"ButtonText","size":6}],[{"name":"Description","size":6}]],"list":["id","Slide","Service"]},"uid":"api::slide.slide"}	object	\N	\N
25	plugin_content_manager_configuration_components::services.service-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Link","defaultSortBy":"Link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"CardBackground":{"edit":{"label":"CardBackground","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CardBackground","searchable":false,"sortable":false}},"Link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":true,"sortable":true}}},"layouts":{"list":["id","CardBackground","Link"],"edit":[[{"name":"CardBackground","size":6}],[{"name":"Link","size":6}]]},"uid":"services.service-card","isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_content_types::plugin::email-designer.email-template	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"templateReferenceId":{"edit":{"label":"templateReferenceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"templateReferenceId","searchable":true,"sortable":true}},"design":{"edit":{"label":"design","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"design","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"bodyHtml":{"edit":{"label":"bodyHtml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyHtml","searchable":true,"sortable":true}},"bodyText":{"edit":{"label":"bodyText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyText","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enabled","searchable":true,"sortable":true}},"tags":{"edit":{"label":"tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tags","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","templateReferenceId","name","subject"],"edit":[[{"name":"templateReferenceId","size":4}],[{"name":"design","size":12}],[{"name":"name","size":6},{"name":"subject","size":6}],[{"name":"bodyHtml","size":6},{"name":"bodyText","size":6}],[{"name":"enabled","size":4}],[{"name":"tags","size":12}]]},"uid":"plugin::email-designer.email-template"}	object	\N	\N
40	plugin_content_manager_configuration_content_types::plugin::sitemap.sitemap-cache	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"sitemap_json":{"edit":{"label":"sitemap_json","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_json","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"sitemap_id":{"edit":{"label":"sitemap_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sitemap_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","sitemap_id","createdAt"],"edit":[[{"name":"sitemap_json","size":12}],[{"name":"name","size":6},{"name":"sitemap_id","size":4}]]},"uid":"plugin::sitemap.sitemap-cache"}	object	\N	\N
41	plugin_sitemap_settings	{"hostname":"","includeHomepage":true,"excludeDrafts":true,"defaultLanguageUrlType":"","defaultLanguageUrl":"","hostname_overrides":{},"contentTypes":{},"customEntries":{}}	object	\N	\N
42	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"metaImage":{"edit":{"label":"metaImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaImage","searchable":false,"sortable":false}},"metaSocial":{"edit":{"label":"metaSocial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaSocial","searchable":false,"sortable":false}},"keywords":{"edit":{"label":"keywords","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keywords","searchable":true,"sortable":true}},"metaRobots":{"edit":{"label":"metaRobots","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaRobots","searchable":true,"sortable":true}},"structuredData":{"edit":{"label":"structuredData","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"structuredData","searchable":false,"sortable":false}},"metaViewport":{"edit":{"label":"metaViewport","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaViewport","searchable":true,"sortable":true}},"canonicalURL":{"edit":{"label":"canonicalURL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"canonicalURL","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","metaImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"metaImage","size":6}],[{"name":"metaSocial","size":12}],[{"name":"keywords","size":6},{"name":"metaRobots","size":6}],[{"name":"structuredData","size":12}],[{"name":"metaViewport","size":6},{"name":"canonicalURL","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
43	plugin_content_manager_configuration_components::shared.meta-social	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"socialNetwork":{"edit":{"label":"socialNetwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialNetwork","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","socialNetwork","title","description"],"edit":[[{"name":"socialNetwork","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"image","size":6}]]},"uid":"shared.meta-social","isComponent":true}	object	\N	\N
\.


--
-- TOC entry 5451 (class 0 OID 29802)
-- Dependencies: 218
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
66	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"email_templates","indexes":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"]},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"template_reference_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"design","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_html","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tags","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"menus","indexes":[{"type":"unique","name":"menus_slug_unique","columns":["slug"]},{"name":"menus_created_by_id_fk","columns":["created_by_id"]},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menus_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menus_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"menu_items","indexes":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"]},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sitemap","indexes":[{"name":"sitemap_created_by_id_fk","columns":["created_by_id"]},{"name":"sitemap_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sitemap_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sitemap_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sitemap_string","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"delta","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sitemap_cache","indexes":[{"name":"sitemap_cache_created_by_id_fk","columns":["created_by_id"]},{"name":"sitemap_cache_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sitemap_cache_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sitemap_cache_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sitemap_json","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sitemap_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"services","indexes":[{"name":"services_created_by_id_fk","columns":["created_by_id"]},{"name":"services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tab_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"slides","indexes":[{"name":"slides_created_by_id_fk","columns":["created_by_id"]},{"name":"slides_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"slides_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"slides_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"tabs","indexes":[{"name":"tabs_created_by_id_fk","columns":["created_by_id"]},{"name":"tabs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tabs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tabs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trailer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sitemap_exclude","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keywords","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_robots","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"structured_data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_viewport","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"canonical_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_meta_socials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"social_network","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_tables","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_tab_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_service_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menu_items_root_menu_links","indexes":[{"name":"menu_items_root_menu_links_fk","columns":["menu_item_id"]},{"name":"menu_items_root_menu_links_inv_fk","columns":["menu_id"]},{"name":"menu_items_root_menu_links_unique","columns":["menu_item_id","menu_id"],"type":"unique"},{"name":"menu_items_root_menu_links_order_inv_fk","columns":["menu_item_order"]}],"foreignKeys":[{"name":"menu_items_root_menu_links_fk","columns":["menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"},{"name":"menu_items_root_menu_links_inv_fk","columns":["menu_id"],"referencedColumns":["id"],"referencedTable":"menus","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_item_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menu_items_parent_links","indexes":[{"name":"menu_items_parent_links_fk","columns":["menu_item_id"]},{"name":"menu_items_parent_links_inv_fk","columns":["inv_menu_item_id"]},{"name":"menu_items_parent_links_unique","columns":["menu_item_id","inv_menu_item_id"],"type":"unique"}],"foreignKeys":[{"name":"menu_items_parent_links_fk","columns":["menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"},{"name":"menu_items_parent_links_inv_fk","columns":["inv_menu_item_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_menu_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"services_components","indexes":[{"name":"services_field_index","columns":["field"]},{"name":"services_component_type_index","columns":["component_type"]},{"name":"services_entity_fk","columns":["entity_id"]},{"name":"services_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slides_service_links","indexes":[{"name":"slides_service_links_fk","columns":["slide_id"]},{"name":"slides_service_links_inv_fk","columns":["service_id"]},{"name":"slides_service_links_unique","columns":["slide_id","service_id"],"type":"unique"}],"foreignKeys":[{"name":"slides_service_links_fk","columns":["slide_id"],"referencedColumns":["id"],"referencedTable":"slides","onDelete":"CASCADE"},{"name":"slides_service_links_inv_fk","columns":["service_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slide_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tabs_components","indexes":[{"name":"tabs_field_index","columns":["field"]},{"name":"tabs_component_type_index","columns":["component_type"]},{"name":"tabs_entity_fk","columns":["entity_id"]},{"name":"tabs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"tabs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"tabs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tabs_service_links","indexes":[{"name":"tabs_service_links_fk","columns":["tab_id"]},{"name":"tabs_service_links_inv_fk","columns":["service_id"]},{"name":"tabs_service_links_unique","columns":["tab_id","service_id"],"type":"unique"},{"name":"tabs_service_links_order_inv_fk","columns":["tab_order"]}],"foreignKeys":[{"name":"tabs_service_links_fk","columns":["tab_id"],"referencedColumns":["id"],"referencedTable":"tabs","onDelete":"CASCADE"},{"name":"tabs_service_links_inv_fk","columns":["service_id"],"referencedColumns":["id"],"referencedTable":"services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tab_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tab_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_seos_components","indexes":[{"name":"components_shared_seos_field_index","columns":["field"]},{"name":"components_shared_seos_component_type_index","columns":["component_type"]},{"name":"components_shared_seos_entity_fk","columns":["entity_id"]},{"name":"components_shared_seos_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_seos_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_seos","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_services_tables_components","indexes":[{"name":"components_services_tables_field_index","columns":["field"]},{"name":"components_services_tables_component_type_index","columns":["component_type"]},{"name":"components_services_tables_entity_fk","columns":["entity_id"]},{"name":"components_services_tables_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_services_tables_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_services_tables","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-08-30 06:20:26.954	83c5f957c2847788705c2174e1d7a5de
\.


--
-- TOC entry 5449 (class 0 OID 29795)
-- Dependencies: 216
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 5483 (class 0 OID 29978)
-- Dependencies: 250
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5535 (class 0 OID 30265)
-- Dependencies: 302
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- TOC entry 5481 (class 0 OID 29967)
-- Dependencies: 248
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5469 (class 0 OID 29893)
-- Dependencies: 236
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5519 (class 0 OID 30166)
-- Dependencies: 286
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- TOC entry 5467 (class 0 OID 29882)
-- Dependencies: 234
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5455 (class 0 OID 29820)
-- Dependencies: 222
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 5475 (class 0 OID 29924)
-- Dependencies: 242
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
23	Банкротство	\N	2024-08-25 23:28:57.539	2024-08-25 23:29:02.036	2024-08-25 23:29:02.027	2	2	f
24	Предварительные переговоры	\N	2024-08-25 23:34:30.837	2024-08-25 23:34:34.546	2024-08-25 23:34:34.54	2	2	f
15	Обучение персонала	\N	2024-08-23 21:54:07.225	2024-08-25 23:18:54.901	2024-08-23 21:54:08.096	1	2	\N
14	Оценка персонала	\N	2024-08-23 21:53:19.579	2024-08-25 23:19:00.593	2024-08-23 21:53:20.624	1	2	\N
13	Проведение HR-аудита	\N	2024-08-23 21:52:03.865	2024-08-25 23:19:22.929	2024-08-23 21:52:05.975	1	2	\N
16	Рекрутинг + кадровое делопроизводство	\N	2024-08-23 21:56:17.999	2024-08-25 23:19:30.493	2024-08-23 21:56:18.935	1	2	\N
12	Работа с HR-брендом	\N	2024-08-23 21:43:46.35	2024-08-25 23:19:37.918	2024-08-23 21:50:21.273	1	2	\N
11	Абонентский рекрутинг	Общие условия: 3 месяца испытательного срока кандидата, бесплатная гарантийная замена кандидата, не прошедшего испытательный срок. Срок подбора зависит от сложности вакансии, в среднем от 1 до 3 недель.	2024-08-23 21:34:25.645	2024-08-25 23:23:22.508	2024-08-23 21:34:38.895	1	2	\N
25	Проведение переговоров (одна сессия)	\N	2024-08-25 23:36:09.264	2024-08-25 23:36:12.025	2024-08-25 23:36:12.021	2	2	f
2	Суд	\N	2024-08-14 22:44:06.538	2024-08-25 23:38:16.652	2024-08-25 23:38:16.643	1	2	\N
26	Составление медиативного соглашения	\N	2024-08-25 23:45:36.25	2024-08-25 23:45:37.304	2024-08-25 23:45:37.3	2	2	f
\.


--
-- TOC entry 5525 (class 0 OID 30203)
-- Dependencies: 292
-- Data for Name: tabs_components; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.tabs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services.table	Tables	1
4	2	2	services.table	Tables	1
54	24	25	services.table	Tables	1
5	3	3	services.table	Tables	1
55	25	26	services.table	Tables	1
56	26	27	services.table	Tables	1
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
52	23	24	services.table	Tables	1
\.


--
-- TOC entry 5527 (class 0 OID 30217)
-- Dependencies: 294
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
25	17	6	1
26	18	6	2
27	19	6	3
28	20	6	4
29	21	6	5
30	22	6	6
31	23	6	7
32	24	7	1
33	25	7	2
34	26	7	3
\.


--
-- TOC entry 5487 (class 0 OID 30000)
-- Dependencies: 254
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
-- TOC entry 5537 (class 0 OID 30277)
-- Dependencies: 304
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
-- TOC entry 5489 (class 0 OID 30009)
-- Dependencies: 256
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-08-13 19:39:13.672	2024-08-13 19:39:13.672	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-08-13 19:39:13.677	2024-08-30 06:20:27.391	\N	\N
\.


--
-- TOC entry 5491 (class 0 OID 30020)
-- Dependencies: 258
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id, sitemap_exclude) FROM stdin;
\.


--
-- TOC entry 5539 (class 0 OID 30289)
-- Dependencies: 306
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- TOC entry 5479 (class 0 OID 29952)
-- Dependencies: 246
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Изображения услуг	1	/1	2024-08-14 18:05:11.652	2024-08-14 18:06:31.334	1	1
2	Изобржения слайдов	2	/2	2024-08-23 17:20:09.503	2024-08-23 17:24:36.799	1	1
\.


--
-- TOC entry 5533 (class 0 OID 30253)
-- Dependencies: 300
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: legalexs_admin
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- TOC entry 5603 (class 0 OID 0)
-- Dependencies: 223
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 243, true);


--
-- TOC entry 5604 (class 0 OID 0)
-- Dependencies: 279
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 243, true);


--
-- TOC entry 5605 (class 0 OID 0)
-- Dependencies: 227
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 5606 (class 0 OID 0)
-- Dependencies: 225
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- TOC entry 5607 (class 0 OID 0)
-- Dependencies: 281
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 4, true);


--
-- TOC entry 5608 (class 0 OID 0)
-- Dependencies: 277
-- Name: components_services_service_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_service_cards_id_seq', 7, true);


--
-- TOC entry 5609 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_services_tab_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tab_rows_id_seq', 68, true);


--
-- TOC entry 5610 (class 0 OID 0)
-- Dependencies: 313
-- Name: components_services_tables_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tables_components_id_seq', 128, true);


--
-- TOC entry 5611 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_services_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_services_tables_id_seq', 27, true);


--
-- TOC entry 5612 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_meta_socials_id_seq', 1, false);


--
-- TOC entry 5613 (class 0 OID 0)
-- Dependencies: 311
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_seos_components_id_seq', 1, false);


--
-- TOC entry 5614 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- TOC entry 5615 (class 0 OID 0)
-- Dependencies: 259
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.email_templates_id_seq', 1, false);


--
-- TOC entry 5616 (class 0 OID 0)
-- Dependencies: 297
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 14, true);


--
-- TOC entry 5617 (class 0 OID 0)
-- Dependencies: 243
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_id_seq', 10, true);


--
-- TOC entry 5618 (class 0 OID 0)
-- Dependencies: 295
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 37, true);


--
-- TOC entry 5619 (class 0 OID 0)
-- Dependencies: 251
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);


--
-- TOC entry 5620 (class 0 OID 0)
-- Dependencies: 263
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);


--
-- TOC entry 5621 (class 0 OID 0)
-- Dependencies: 309
-- Name: menu_items_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_parent_links_id_seq', 1, false);


--
-- TOC entry 5622 (class 0 OID 0)
-- Dependencies: 307
-- Name: menu_items_root_menu_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menu_items_root_menu_links_id_seq', 1, false);


--
-- TOC entry 5623 (class 0 OID 0)
-- Dependencies: 261
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.menus_id_seq', 1, false);


--
-- TOC entry 5624 (class 0 OID 0)
-- Dependencies: 287
-- Name: services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.services_components_id_seq', 27, true);


--
-- TOC entry 5625 (class 0 OID 0)
-- Dependencies: 237
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.services_id_seq', 7, true);


--
-- TOC entry 5626 (class 0 OID 0)
-- Dependencies: 267
-- Name: sitemap_cache_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.sitemap_cache_id_seq', 1, false);


--
-- TOC entry 5627 (class 0 OID 0)
-- Dependencies: 265
-- Name: sitemap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.sitemap_id_seq', 1, false);


--
-- TOC entry 5628 (class 0 OID 0)
-- Dependencies: 239
-- Name: slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.slides_id_seq', 3, true);


--
-- TOC entry 5629 (class 0 OID 0)
-- Dependencies: 289
-- Name: slides_service_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.slides_service_links_id_seq', 3, true);


--
-- TOC entry 5630 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 5631 (class 0 OID 0)
-- Dependencies: 283
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 5632 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- TOC entry 5633 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 43, true);


--
-- TOC entry 5634 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 66, true);


--
-- TOC entry 5635 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 5636 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 5637 (class 0 OID 0)
-- Dependencies: 301
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- TOC entry 5638 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 5639 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 5640 (class 0 OID 0)
-- Dependencies: 285
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 5641 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 5642 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 5643 (class 0 OID 0)
-- Dependencies: 291
-- Name: tabs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_components_id_seq', 56, true);


--
-- TOC entry 5644 (class 0 OID 0)
-- Dependencies: 241
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_id_seq', 26, true);


--
-- TOC entry 5645 (class 0 OID 0)
-- Dependencies: 293
-- Name: tabs_service_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.tabs_service_links_id_seq', 34, true);


--
-- TOC entry 5646 (class 0 OID 0)
-- Dependencies: 253
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 14, true);


--
-- TOC entry 5647 (class 0 OID 0)
-- Dependencies: 303
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 14, true);


--
-- TOC entry 5648 (class 0 OID 0)
-- Dependencies: 255
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 5649 (class 0 OID 0)
-- Dependencies: 257
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 5650 (class 0 OID 0)
-- Dependencies: 305
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- TOC entry 5651 (class 0 OID 0)
-- Dependencies: 245
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 2, true);


--
-- TOC entry 5652 (class 0 OID 0)
-- Dependencies: 299
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: legalexs_admin
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- TOC entry 4993 (class 2606 OID 29836)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5109 (class 2606 OID 30134)
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5111 (class 2606 OID 30138)
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 5001 (class 2606 OID 29858)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4997 (class 2606 OID 29847)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5117 (class 2606 OID 30146)
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5119 (class 2606 OID 30150)
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 5104 (class 2606 OID 30127)
-- Name: components_services_service_cards components_services_service_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_service_cards
    ADD CONSTRAINT components_services_service_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 5102 (class 2606 OID 30120)
-- Name: components_services_tab_rows components_services_tab_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tab_rows
    ADD CONSTRAINT components_services_tab_rows_pkey PRIMARY KEY (id);


--
-- TOC entry 5223 (class 2606 OID 30345)
-- Name: components_services_tables_components components_services_tables_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_components_pkey PRIMARY KEY (id);


--
-- TOC entry 5100 (class 2606 OID 30111)
-- Name: components_services_tables components_services_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables
    ADD CONSTRAINT components_services_tables_pkey PRIMARY KEY (id);


--
-- TOC entry 5227 (class 2606 OID 31299)
-- Name: components_services_tables_components components_services_tables_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 5098 (class 2606 OID 30104)
-- Name: components_shared_meta_socials components_shared_meta_socials_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_meta_socials
    ADD CONSTRAINT components_shared_meta_socials_pkey PRIMARY KEY (id);


--
-- TOC entry 5216 (class 2606 OID 30331)
-- Name: components_shared_seos_components components_shared_seos_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_components_pkey PRIMARY KEY (id);


--
-- TOC entry 5096 (class 2606 OID 30095)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 5220 (class 2606 OID 31297)
-- Name: components_shared_seos_components components_shared_seos_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 5075 (class 2606 OID 30038)
-- Name: email_templates email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- TOC entry 5170 (class 2606 OID 30246)
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5172 (class 2606 OID 30250)
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- TOC entry 5033 (class 2606 OID 29942)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 5165 (class 2606 OID 30236)
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- TOC entry 5059 (class 2606 OID 29996)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 5211 (class 2606 OID 30318)
-- Name: menu_items_parent_links menu_items_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5213 (class 2606 OID 30322)
-- Name: menu_items_parent_links menu_items_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_unique UNIQUE (menu_item_id, inv_menu_item_id);


--
-- TOC entry 5085 (class 2606 OID 30062)
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- TOC entry 5205 (class 2606 OID 30306)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5207 (class 2606 OID 30310)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_unique UNIQUE (menu_item_id, menu_id);


--
-- TOC entry 5079 (class 2606 OID 30049)
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- TOC entry 5081 (class 2606 OID 30051)
-- Name: menus menus_slug_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_slug_unique UNIQUE (slug);


--
-- TOC entry 5136 (class 2606 OID 30185)
-- Name: services_components services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_components_pkey PRIMARY KEY (id);


--
-- TOC entry 5021 (class 2606 OID 29909)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- TOC entry 5140 (class 2606 OID 31293)
-- Name: services_components services_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 5093 (class 2606 OID 30084)
-- Name: sitemap_cache sitemap_cache_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_pkey PRIMARY KEY (id);


--
-- TOC entry 5089 (class 2606 OID 30073)
-- Name: sitemap sitemap_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_pkey PRIMARY KEY (id);


--
-- TOC entry 5025 (class 2606 OID 29920)
-- Name: slides slides_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_pkey PRIMARY KEY (id);


--
-- TOC entry 5144 (class 2606 OID 30197)
-- Name: slides_service_links slides_service_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5146 (class 2606 OID 30201)
-- Name: slides_service_links slides_service_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_unique UNIQUE (slide_id, service_id);


--
-- TOC entry 5009 (class 2606 OID 29878)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5124 (class 2606 OID 30159)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5126 (class 2606 OID 30163)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 5005 (class 2606 OID 29869)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4988 (class 2606 OID 29818)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4986 (class 2606 OID 29809)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 4984 (class 2606 OID 29800)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5055 (class 2606 OID 29985)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5184 (class 2606 OID 30270)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5186 (class 2606 OID 30274)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- TOC entry 5051 (class 2606 OID 29974)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 5017 (class 2606 OID 29898)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5131 (class 2606 OID 30171)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5133 (class 2606 OID 30175)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 5013 (class 2606 OID 29889)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4990 (class 2606 OID 29827)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 5149 (class 2606 OID 30210)
-- Name: tabs_components tabs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_components_pkey PRIMARY KEY (id);


--
-- TOC entry 5029 (class 2606 OID 29931)
-- Name: tabs tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_pkey PRIMARY KEY (id);


--
-- TOC entry 5158 (class 2606 OID 30222)
-- Name: tabs_service_links tabs_service_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5160 (class 2606 OID 30226)
-- Name: tabs_service_links tabs_service_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_unique UNIQUE (tab_id, service_id);


--
-- TOC entry 5153 (class 2606 OID 31295)
-- Name: tabs_components tabs_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- TOC entry 5063 (class 2606 OID 30005)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5191 (class 2606 OID 30282)
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5193 (class 2606 OID 30286)
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 5067 (class 2606 OID 30016)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5071 (class 2606 OID 30027)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5198 (class 2606 OID 30294)
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5200 (class 2606 OID 30298)
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 5177 (class 2606 OID 30258)
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- TOC entry 5179 (class 2606 OID 30262)
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 5043 (class 2606 OID 29961)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 5045 (class 2606 OID 29963)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 5047 (class 2606 OID 29959)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 4991 (class 1259 OID 29837)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 5105 (class 1259 OID 30135)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 5106 (class 1259 OID 30136)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 5107 (class 1259 OID 30139)
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- TOC entry 4994 (class 1259 OID 29838)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 4999 (class 1259 OID 29859)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 5002 (class 1259 OID 29860)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 4995 (class 1259 OID 29848)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 5112 (class 1259 OID 30147)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 5113 (class 1259 OID 30148)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 5114 (class 1259 OID 30151)
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- TOC entry 5115 (class 1259 OID 30152)
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- TOC entry 4998 (class 1259 OID 29849)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 5221 (class 1259 OID 30347)
-- Name: components_services_tables_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_component_type_index ON public.components_services_tables_components USING btree (component_type);


--
-- TOC entry 5224 (class 1259 OID 30348)
-- Name: components_services_tables_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_entity_fk ON public.components_services_tables_components USING btree (entity_id);


--
-- TOC entry 5225 (class 1259 OID 30346)
-- Name: components_services_tables_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_services_tables_field_index ON public.components_services_tables_components USING btree (field);


--
-- TOC entry 5214 (class 1259 OID 30333)
-- Name: components_shared_seos_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_component_type_index ON public.components_shared_seos_components USING btree (component_type);


--
-- TOC entry 5217 (class 1259 OID 30334)
-- Name: components_shared_seos_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_entity_fk ON public.components_shared_seos_components USING btree (entity_id);


--
-- TOC entry 5218 (class 1259 OID 30332)
-- Name: components_shared_seos_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX components_shared_seos_field_index ON public.components_shared_seos_components USING btree (field);


--
-- TOC entry 5073 (class 1259 OID 30039)
-- Name: email_templates_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX email_templates_created_by_id_fk ON public.email_templates USING btree (created_by_id);


--
-- TOC entry 5076 (class 1259 OID 30040)
-- Name: email_templates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX email_templates_updated_by_id_fk ON public.email_templates USING btree (updated_by_id);


--
-- TOC entry 5031 (class 1259 OID 29949)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 5166 (class 1259 OID 30247)
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- TOC entry 5167 (class 1259 OID 30248)
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- TOC entry 5168 (class 1259 OID 30251)
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- TOC entry 5161 (class 1259 OID 30237)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 5162 (class 1259 OID 30239)
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- TOC entry 5163 (class 1259 OID 30238)
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- TOC entry 5034 (class 1259 OID 29950)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 5057 (class 1259 OID 29997)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 5060 (class 1259 OID 29998)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 5083 (class 1259 OID 30063)
-- Name: menu_items_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_created_by_id_fk ON public.menu_items USING btree (created_by_id);


--
-- TOC entry 5208 (class 1259 OID 30319)
-- Name: menu_items_parent_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_parent_links_fk ON public.menu_items_parent_links USING btree (menu_item_id);


--
-- TOC entry 5209 (class 1259 OID 30320)
-- Name: menu_items_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_parent_links_inv_fk ON public.menu_items_parent_links USING btree (inv_menu_item_id);


--
-- TOC entry 5201 (class 1259 OID 30307)
-- Name: menu_items_root_menu_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_fk ON public.menu_items_root_menu_links USING btree (menu_item_id);


--
-- TOC entry 5202 (class 1259 OID 30308)
-- Name: menu_items_root_menu_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_inv_fk ON public.menu_items_root_menu_links USING btree (menu_id);


--
-- TOC entry 5203 (class 1259 OID 30311)
-- Name: menu_items_root_menu_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_root_menu_links_order_inv_fk ON public.menu_items_root_menu_links USING btree (menu_item_order);


--
-- TOC entry 5086 (class 1259 OID 30064)
-- Name: menu_items_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menu_items_updated_by_id_fk ON public.menu_items USING btree (updated_by_id);


--
-- TOC entry 5077 (class 1259 OID 30052)
-- Name: menus_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menus_created_by_id_fk ON public.menus USING btree (created_by_id);


--
-- TOC entry 5082 (class 1259 OID 30053)
-- Name: menus_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX menus_updated_by_id_fk ON public.menus USING btree (updated_by_id);


--
-- TOC entry 5134 (class 1259 OID 30187)
-- Name: services_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_component_type_index ON public.services_components USING btree (component_type);


--
-- TOC entry 5019 (class 1259 OID 29910)
-- Name: services_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_created_by_id_fk ON public.services USING btree (created_by_id);


--
-- TOC entry 5137 (class 1259 OID 30188)
-- Name: services_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_entity_fk ON public.services_components USING btree (entity_id);


--
-- TOC entry 5138 (class 1259 OID 30186)
-- Name: services_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_field_index ON public.services_components USING btree (field);


--
-- TOC entry 5022 (class 1259 OID 29911)
-- Name: services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX services_updated_by_id_fk ON public.services USING btree (updated_by_id);


--
-- TOC entry 5091 (class 1259 OID 30085)
-- Name: sitemap_cache_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_cache_created_by_id_fk ON public.sitemap_cache USING btree (created_by_id);


--
-- TOC entry 5094 (class 1259 OID 30086)
-- Name: sitemap_cache_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_cache_updated_by_id_fk ON public.sitemap_cache USING btree (updated_by_id);


--
-- TOC entry 5087 (class 1259 OID 30074)
-- Name: sitemap_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_created_by_id_fk ON public.sitemap USING btree (created_by_id);


--
-- TOC entry 5090 (class 1259 OID 30075)
-- Name: sitemap_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX sitemap_updated_by_id_fk ON public.sitemap USING btree (updated_by_id);


--
-- TOC entry 5023 (class 1259 OID 29921)
-- Name: slides_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_created_by_id_fk ON public.slides USING btree (created_by_id);


--
-- TOC entry 5141 (class 1259 OID 30198)
-- Name: slides_service_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_service_links_fk ON public.slides_service_links USING btree (slide_id);


--
-- TOC entry 5142 (class 1259 OID 30199)
-- Name: slides_service_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_service_links_inv_fk ON public.slides_service_links USING btree (service_id);


--
-- TOC entry 5026 (class 1259 OID 29922)
-- Name: slides_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX slides_updated_by_id_fk ON public.slides USING btree (updated_by_id);


--
-- TOC entry 5007 (class 1259 OID 29879)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 5120 (class 1259 OID 30160)
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- TOC entry 5121 (class 1259 OID 30161)
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- TOC entry 5122 (class 1259 OID 30164)
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- TOC entry 5010 (class 1259 OID 29880)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5003 (class 1259 OID 29870)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 5006 (class 1259 OID 29871)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 5053 (class 1259 OID 29986)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 5180 (class 1259 OID 30271)
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- TOC entry 5181 (class 1259 OID 30272)
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- TOC entry 5182 (class 1259 OID 30275)
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- TOC entry 5056 (class 1259 OID 29987)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 5049 (class 1259 OID 29975)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 5052 (class 1259 OID 29976)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 5015 (class 1259 OID 29899)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 5127 (class 1259 OID 30172)
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- TOC entry 5128 (class 1259 OID 30173)
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- TOC entry 5129 (class 1259 OID 30176)
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- TOC entry 5018 (class 1259 OID 29900)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5011 (class 1259 OID 29890)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 5014 (class 1259 OID 29891)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 5147 (class 1259 OID 30212)
-- Name: tabs_component_type_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_component_type_index ON public.tabs_components USING btree (component_type);


--
-- TOC entry 5027 (class 1259 OID 29932)
-- Name: tabs_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_created_by_id_fk ON public.tabs USING btree (created_by_id);


--
-- TOC entry 5150 (class 1259 OID 30213)
-- Name: tabs_entity_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_entity_fk ON public.tabs_components USING btree (entity_id);


--
-- TOC entry 5151 (class 1259 OID 30211)
-- Name: tabs_field_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_field_index ON public.tabs_components USING btree (field);


--
-- TOC entry 5154 (class 1259 OID 30223)
-- Name: tabs_service_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_fk ON public.tabs_service_links USING btree (tab_id);


--
-- TOC entry 5155 (class 1259 OID 30224)
-- Name: tabs_service_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_inv_fk ON public.tabs_service_links USING btree (service_id);


--
-- TOC entry 5156 (class 1259 OID 30227)
-- Name: tabs_service_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_service_links_order_inv_fk ON public.tabs_service_links USING btree (tab_order);


--
-- TOC entry 5030 (class 1259 OID 29933)
-- Name: tabs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX tabs_updated_by_id_fk ON public.tabs USING btree (updated_by_id);


--
-- TOC entry 5061 (class 1259 OID 30006)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 5187 (class 1259 OID 30283)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 5188 (class 1259 OID 30284)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 5189 (class 1259 OID 30287)
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- TOC entry 5064 (class 1259 OID 30007)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 5065 (class 1259 OID 30017)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 5068 (class 1259 OID 30018)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 5069 (class 1259 OID 30028)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 5194 (class 1259 OID 30295)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 5195 (class 1259 OID 30296)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 5196 (class 1259 OID 30299)
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- TOC entry 5072 (class 1259 OID 30029)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 5035 (class 1259 OID 29944)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 5036 (class 1259 OID 29948)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 5037 (class 1259 OID 29943)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 5038 (class 1259 OID 29946)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 5039 (class 1259 OID 29947)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 5040 (class 1259 OID 29945)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 5041 (class 1259 OID 29964)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 5173 (class 1259 OID 30259)
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- TOC entry 5174 (class 1259 OID 30260)
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- TOC entry 5175 (class 1259 OID 30263)
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- TOC entry 5048 (class 1259 OID 29965)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: legalexs_admin
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 5228 (class 2606 OID 30351)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5274 (class 2606 OID 30581)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5275 (class 2606 OID 30586)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5229 (class 2606 OID 30356)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5232 (class 2606 OID 30371)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5233 (class 2606 OID 30376)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5230 (class 2606 OID 30361)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5276 (class 2606 OID 30591)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5277 (class 2606 OID 30596)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5231 (class 2606 OID 30366)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5304 (class 2606 OID 30731)
-- Name: components_services_tables_components components_services_tables_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_services_tables_components
    ADD CONSTRAINT components_services_tables_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_services_tables(id) ON DELETE CASCADE;


--
-- TOC entry 5303 (class 2606 OID 30726)
-- Name: components_shared_seos_components components_shared_seos_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_seos(id) ON DELETE CASCADE;


--
-- TOC entry 5264 (class 2606 OID 30531)
-- Name: email_templates email_templates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5265 (class 2606 OID 30536)
-- Name: email_templates email_templates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5248 (class 2606 OID 30451)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5289 (class 2606 OID 30656)
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5290 (class 2606 OID 30661)
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5288 (class 2606 OID 30651)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5249 (class 2606 OID 30456)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5256 (class 2606 OID 30491)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5257 (class 2606 OID 30496)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5268 (class 2606 OID 30551)
-- Name: menu_items menu_items_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5301 (class 2606 OID 30716)
-- Name: menu_items_parent_links menu_items_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 5302 (class 2606 OID 30721)
-- Name: menu_items_parent_links menu_items_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_inv_fk FOREIGN KEY (inv_menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 5299 (class 2606 OID 30706)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- TOC entry 5300 (class 2606 OID 30711)
-- Name: menu_items_root_menu_links menu_items_root_menu_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_inv_fk FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;


--
-- TOC entry 5269 (class 2606 OID 30556)
-- Name: menu_items menu_items_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5266 (class 2606 OID 30541)
-- Name: menus menus_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5267 (class 2606 OID 30546)
-- Name: menus menus_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5242 (class 2606 OID 30421)
-- Name: services services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5282 (class 2606 OID 30621)
-- Name: services_components services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 5243 (class 2606 OID 30426)
-- Name: services services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5272 (class 2606 OID 30571)
-- Name: sitemap_cache sitemap_cache_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5273 (class 2606 OID 30576)
-- Name: sitemap_cache sitemap_cache_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap_cache
    ADD CONSTRAINT sitemap_cache_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5270 (class 2606 OID 30561)
-- Name: sitemap sitemap_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5271 (class 2606 OID 30566)
-- Name: sitemap sitemap_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.sitemap
    ADD CONSTRAINT sitemap_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5244 (class 2606 OID 30431)
-- Name: slides slides_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5283 (class 2606 OID 30626)
-- Name: slides_service_links slides_service_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_fk FOREIGN KEY (slide_id) REFERENCES public.slides(id) ON DELETE CASCADE;


--
-- TOC entry 5284 (class 2606 OID 30631)
-- Name: slides_service_links slides_service_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides_service_links
    ADD CONSTRAINT slides_service_links_inv_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 5245 (class 2606 OID 30436)
-- Name: slides slides_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.slides
    ADD CONSTRAINT slides_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5236 (class 2606 OID 30391)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5278 (class 2606 OID 30601)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5279 (class 2606 OID 30606)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5237 (class 2606 OID 30396)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5234 (class 2606 OID 30381)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5235 (class 2606 OID 30386)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5254 (class 2606 OID 30481)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5293 (class 2606 OID 30676)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 5294 (class 2606 OID 30681)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 5255 (class 2606 OID 30486)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5252 (class 2606 OID 30471)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5253 (class 2606 OID 30476)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5240 (class 2606 OID 30411)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5280 (class 2606 OID 30611)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5281 (class 2606 OID 30616)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5241 (class 2606 OID 30416)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5238 (class 2606 OID 30401)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5239 (class 2606 OID 30406)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5246 (class 2606 OID 30441)
-- Name: tabs tabs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5285 (class 2606 OID 30636)
-- Name: tabs_components tabs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_components
    ADD CONSTRAINT tabs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.tabs(id) ON DELETE CASCADE;


--
-- TOC entry 5286 (class 2606 OID 30641)
-- Name: tabs_service_links tabs_service_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_fk FOREIGN KEY (tab_id) REFERENCES public.tabs(id) ON DELETE CASCADE;


--
-- TOC entry 5287 (class 2606 OID 30646)
-- Name: tabs_service_links tabs_service_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs_service_links
    ADD CONSTRAINT tabs_service_links_inv_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- TOC entry 5247 (class 2606 OID 30446)
-- Name: tabs tabs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.tabs
    ADD CONSTRAINT tabs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5258 (class 2606 OID 30501)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5295 (class 2606 OID 30686)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5296 (class 2606 OID 30691)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5259 (class 2606 OID 30506)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5260 (class 2606 OID 30511)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5261 (class 2606 OID 30516)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5262 (class 2606 OID 30521)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5297 (class 2606 OID 30696)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5298 (class 2606 OID 30701)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5263 (class 2606 OID 30526)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5250 (class 2606 OID 30461)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5291 (class 2606 OID 30666)
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5292 (class 2606 OID 30671)
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5251 (class 2606 OID 30466)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: legalexs_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2024-08-30 06:22:53

--
-- PostgreSQL database dump complete
--

