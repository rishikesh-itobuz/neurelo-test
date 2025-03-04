PGDMP                      |            trouvailledb    16.2    16.0 s   g           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            h           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            i           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            j           1262    16384    trouvailledb    DATABASE     w   CREATE DATABASE trouvailledb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE trouvailledb;
                fitbithealthuser    false            �            1259    16424    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
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
 %   DROP TABLE public.admin_permissions;
       public         heap    fitbithealthuser    false            �            1259    16423    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          fitbithealthuser    false    224            k           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          fitbithealthuser    false    223            �            1259    16593    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    fitbithealthuser    false            �            1259    16592 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          fitbithealthuser    false    254            l           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          fitbithealthuser    false    253            �            1259    16446    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    fitbithealthuser    false            �            1259    16445    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          fitbithealthuser    false    228            m           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          fitbithealthuser    false    227            �            1259    16435    admin_users    TABLE     B  CREATE TABLE public.admin_users (
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
    DROP TABLE public.admin_users;
       public         heap    fitbithealthuser    false            �            1259    16434    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          fitbithealthuser    false    226            n           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          fitbithealthuser    false    225                        1259    16605    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    fitbithealthuser    false            �            1259    16604    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          fitbithealthuser    false    256            o           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          fitbithealthuser    false    255                       1259    17093 	   amenities    TABLE       CREATE TABLE public.amenities (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.amenities;
       public         heap    fitbithealthuser    false            .           1259    17383    amenities_admin_creator_links    TABLE     �   CREATE TABLE public.amenities_admin_creator_links (
    id integer NOT NULL,
    amenity_id integer,
    user_id integer,
    amenity_order double precision
);
 1   DROP TABLE public.amenities_admin_creator_links;
       public         heap    fitbithealthuser    false            -           1259    17382 $   amenities_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.amenities_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.amenities_admin_creator_links_id_seq;
       public          fitbithealthuser    false    302            p           0    0 $   amenities_admin_creator_links_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.amenities_admin_creator_links_id_seq OWNED BY public.amenities_admin_creator_links.id;
          public          fitbithealthuser    false    301                       1259    17092    amenities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.amenities_id_seq;
       public          fitbithealthuser    false    276            q           0    0    amenities_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.amenities_id_seq OWNED BY public.amenities.id;
          public          fitbithealthuser    false    275            $           1259    17175    amenities_trips_links    TABLE     �   CREATE TABLE public.amenities_trips_links (
    id integer NOT NULL,
    amenity_id integer,
    trip_id integer,
    trip_order double precision,
    amenity_order double precision
);
 )   DROP TABLE public.amenities_trips_links;
       public         heap    fitbithealthuser    false            #           1259    17174    amenities_trips_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.amenities_trips_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.amenities_trips_links_id_seq;
       public          fitbithealthuser    false    292            r           0    0    amenities_trips_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.amenities_trips_links_id_seq OWNED BY public.amenities_trips_links.id;
          public          fitbithealthuser    false    291                       1259    17148 /   components_repeatable_activities_day_activities    TABLE     s   CREATE TABLE public.components_repeatable_activities_day_activities (
    id integer NOT NULL,
    details text
);
 C   DROP TABLE public.components_repeatable_activities_day_activities;
       public         heap    fitbithealthuser    false                       1259    17147 6   components_repeatable_activities_day_activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_repeatable_activities_day_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_repeatable_activities_day_activities_id_seq;
       public          fitbithealthuser    false    286            s           0    0 6   components_repeatable_activities_day_activities_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_repeatable_activities_day_activities_id_seq OWNED BY public.components_repeatable_activities_day_activities.id;
          public          fitbithealthuser    false    285                        1259    17157 3   components_repeatable_trip_faq_repeatable_trip_faqs    TABLE     �   CREATE TABLE public.components_repeatable_trip_faq_repeatable_trip_faqs (
    id integer NOT NULL,
    title character varying(255),
    answer text
);
 G   DROP TABLE public.components_repeatable_trip_faq_repeatable_trip_faqs;
       public         heap    fitbithealthuser    false                       1259    17156 :   components_repeatable_trip_faq_repeatable_trip_faqs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_repeatable_trip_faq_repeatable_trip_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.components_repeatable_trip_faq_repeatable_trip_faqs_id_seq;
       public          fitbithealthuser    false    288            t           0    0 :   components_repeatable_trip_faq_repeatable_trip_faqs_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_repeatable_trip_faq_repeatable_trip_faqs_id_seq OWNED BY public.components_repeatable_trip_faq_repeatable_trip_faqs.id;
          public          fitbithealthuser    false    287            "           1259    17166 3   components_repeatable_triphighlights_triphighlights    TABLE     �   CREATE TABLE public.components_repeatable_triphighlights_triphighlights (
    id integer NOT NULL,
    title character varying(255),
    name character varying(255),
    description text
);
 G   DROP TABLE public.components_repeatable_triphighlights_triphighlights;
       public         heap    fitbithealthuser    false            !           1259    17165 :   components_repeatable_triphighlights_triphighlights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_repeatable_triphighlights_triphighlights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.components_repeatable_triphighlights_triphighlights_id_seq;
       public          fitbithealthuser    false    290            u           0    0 :   components_repeatable_triphighlights_triphighlights_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_repeatable_triphighlights_triphighlights_id_seq OWNED BY public.components_repeatable_triphighlights_triphighlights.id;
          public          fitbithealthuser    false    289            �            1259    16497    files    TABLE     �  CREATE TABLE public.files (
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
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    fitbithealthuser    false                       1259    16654    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    fitbithealthuser    false                       1259    16653    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          fitbithealthuser    false    264            v           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          fitbithealthuser    false    263            �            1259    16496    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          fitbithealthuser    false    238            w           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          fitbithealthuser    false    237                       1259    16642    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    fitbithealthuser    false                       1259    16641    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          fitbithealthuser    false    262            x           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          fitbithealthuser    false    261            �            1259    16551    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    fitbithealthuser    false            �            1259    16550    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          fitbithealthuser    false    246            y           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          fitbithealthuser    false    245                       1259    17104 
   occassions    TABLE       CREATE TABLE public.occassions (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.occassions;
       public         heap    fitbithealthuser    false            0           1259    17395    occassions_admin_creator_links    TABLE        CREATE TABLE public.occassions_admin_creator_links (
    id integer NOT NULL,
    occassion_id integer,
    user_id integer
);
 2   DROP TABLE public.occassions_admin_creator_links;
       public         heap    fitbithealthuser    false            /           1259    17394 %   occassions_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.occassions_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.occassions_admin_creator_links_id_seq;
       public          fitbithealthuser    false    304            z           0    0 %   occassions_admin_creator_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.occassions_admin_creator_links_id_seq OWNED BY public.occassions_admin_creator_links.id;
          public          fitbithealthuser    false    303                       1259    17103    occassions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.occassions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.occassions_id_seq;
       public          fitbithealthuser    false    278            {           0    0    occassions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.occassions_id_seq OWNED BY public.occassions.id;
          public          fitbithealthuser    false    277            :           1259    17530    order_details    TABLE     8  CREATE TABLE public.order_details (
    id integer NOT NULL,
    name character varying(255),
    quantity integer,
    product_stripe_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 !   DROP TABLE public.order_details;
       public         heap    fitbithealthuser    false            9           1259    17529    order_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_details_id_seq;
       public          fitbithealthuser    false    314            |           0    0    order_details_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_details_id_seq OWNED BY public.order_details.id;
          public          fitbithealthuser    false    313            @           1259    17563    order_details_order_id_links    TABLE     �   CREATE TABLE public.order_details_order_id_links (
    id integer NOT NULL,
    order_detail_id integer,
    stripe_payment_id integer
);
 0   DROP TABLE public.order_details_order_id_links;
       public         heap    fitbithealthuser    false            ?           1259    17562 #   order_details_order_id_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_details_order_id_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.order_details_order_id_links_id_seq;
       public          fitbithealthuser    false    320            }           0    0 #   order_details_order_id_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.order_details_order_id_links_id_seq OWNED BY public.order_details_order_id_links.id;
          public          fitbithealthuser    false    319            B           1259    17574    order_details_product_id_links    TABLE     �   CREATE TABLE public.order_details_product_id_links (
    id integer NOT NULL,
    order_detail_id integer,
    trip_id integer
);
 2   DROP TABLE public.order_details_product_id_links;
       public         heap    fitbithealthuser    false            A           1259    17573 %   order_details_product_id_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_details_product_id_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.order_details_product_id_links_id_seq;
       public          fitbithealthuser    false    322            ~           0    0 %   order_details_product_id_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.order_details_product_id_links_id_seq OWNED BY public.order_details_product_id_links.id;
          public          fitbithealthuser    false    321            �            1259    16468    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    fitbithealthuser    false            �            1259    16467 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          fitbithealthuser    false    232                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          fitbithealthuser    false    231                       1259    16618 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    fitbithealthuser    false                       1259    16617 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          fitbithealthuser    false    258            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          fitbithealthuser    false    257            �            1259    16457    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
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
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    fitbithealthuser    false            �            1259    16456    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          fitbithealthuser    false    230            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          fitbithealthuser    false    229            �            1259    16406    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    fitbithealthuser    false            �            1259    16405 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          fitbithealthuser    false    220            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          fitbithealthuser    false    219            �            1259    16397    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    fitbithealthuser    false            �            1259    16396    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          fitbithealthuser    false    218            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          fitbithealthuser    false    217            �            1259    16390    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    fitbithealthuser    false            �            1259    16389    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          fitbithealthuser    false    216            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          fitbithealthuser    false    215            �            1259    16540    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
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
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap    fitbithealthuser    false            �            1259    16539    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          fitbithealthuser    false    244            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          fitbithealthuser    false    243                       1259    16678 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    fitbithealthuser    false                       1259    16677 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          fitbithealthuser    false    268            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          fitbithealthuser    false    267            �            1259    16529    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE public.strapi_releases;
       public         heap    fitbithealthuser    false            �            1259    16528    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          fitbithealthuser    false    242            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          fitbithealthuser    false    241            �            1259    16488 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    fitbithealthuser    false            �            1259    16487 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          fitbithealthuser    false    236            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          fitbithealthuser    false    235                       1259    16630 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    fitbithealthuser    false                       1259    16629 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          fitbithealthuser    false    260            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          fitbithealthuser    false    259            �            1259    16477    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
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
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    fitbithealthuser    false            �            1259    16476    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          fitbithealthuser    false    234            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          fitbithealthuser    false    233            �            1259    16415    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    fitbithealthuser    false            �            1259    16414    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          fitbithealthuser    false    222            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          fitbithealthuser    false    221            D           1259    17712    stripe_loggers    TABLE     �   CREATE TABLE public.stripe_loggers (
    id integer NOT NULL,
    event_id text,
    event_name character varying(255),
    event_data jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 "   DROP TABLE public.stripe_loggers;
       public         heap    fitbithealthuser    false            C           1259    17711    stripe_loggers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stripe_loggers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stripe_loggers_id_seq;
       public          fitbithealthuser    false    324            �           0    0    stripe_loggers_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.stripe_loggers_id_seq OWNED BY public.stripe_loggers.id;
          public          fitbithealthuser    false    323            8           1259    17519    stripe_payments    TABLE     %  CREATE TABLE public.stripe_payments (
    id integer NOT NULL,
    stripe_id text,
    amount numeric(10,2),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE public.stripe_payments;
       public         heap    fitbithealthuser    false            7           1259    17518    stripe_payments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stripe_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stripe_payments_id_seq;
       public          fitbithealthuser    false    312            �           0    0    stripe_payments_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.stripe_payments_id_seq OWNED BY public.stripe_payments.id;
          public          fitbithealthuser    false    311            >           1259    17552    stripe_payments_user_links    TABLE     �   CREATE TABLE public.stripe_payments_user_links (
    id integer NOT NULL,
    stripe_payment_id integer,
    user_id integer
);
 .   DROP TABLE public.stripe_payments_user_links;
       public         heap    fitbithealthuser    false            =           1259    17551 !   stripe_payments_user_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stripe_payments_user_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.stripe_payments_user_links_id_seq;
       public          fitbithealthuser    false    318            �           0    0 !   stripe_payments_user_links_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.stripe_payments_user_links_id_seq OWNED BY public.stripe_payments_user_links.id;
          public          fitbithealthuser    false    317                       1259    17115    traveltypes    TABLE     	  CREATE TABLE public.traveltypes (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.traveltypes;
       public         heap    fitbithealthuser    false            2           1259    17406    traveltypes_admin_creator_links    TABLE     �   CREATE TABLE public.traveltypes_admin_creator_links (
    id integer NOT NULL,
    traveltype_id integer,
    user_id integer
);
 3   DROP TABLE public.traveltypes_admin_creator_links;
       public         heap    fitbithealthuser    false            1           1259    17405 &   traveltypes_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.traveltypes_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.traveltypes_admin_creator_links_id_seq;
       public          fitbithealthuser    false    306            �           0    0 &   traveltypes_admin_creator_links_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.traveltypes_admin_creator_links_id_seq OWNED BY public.traveltypes_admin_creator_links.id;
          public          fitbithealthuser    false    305                       1259    17114    traveltypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.traveltypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.traveltypes_id_seq;
       public          fitbithealthuser    false    280            �           0    0    traveltypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.traveltypes_id_seq OWNED BY public.traveltypes.id;
          public          fitbithealthuser    false    279                       1259    17137    trip_categories    TABLE       CREATE TABLE public.trip_categories (
    id integer NOT NULL,
    categoryname character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE public.trip_categories;
       public         heap    fitbithealthuser    false            6           1259    17429 #   trip_categories_admin_creator_links    TABLE     �   CREATE TABLE public.trip_categories_admin_creator_links (
    id integer NOT NULL,
    trip_category_id integer,
    user_id integer
);
 7   DROP TABLE public.trip_categories_admin_creator_links;
       public         heap    fitbithealthuser    false            5           1259    17428 *   trip_categories_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trip_categories_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.trip_categories_admin_creator_links_id_seq;
       public          fitbithealthuser    false    310            �           0    0 *   trip_categories_admin_creator_links_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.trip_categories_admin_creator_links_id_seq OWNED BY public.trip_categories_admin_creator_links.id;
          public          fitbithealthuser    false    309                       1259    17136    trip_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trip_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.trip_categories_id_seq;
       public          fitbithealthuser    false    284            �           0    0    trip_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.trip_categories_id_seq OWNED BY public.trip_categories.id;
          public          fitbithealthuser    false    283            <           1259    17541    trip_purchase_records    TABLE     �  CREATE TABLE public.trip_purchase_records (
    id integer NOT NULL,
    trip_id integer,
    trip_name character varying(255),
    discount_percentage integer,
    price integer,
    numberofpeoples integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    start_date character varying(255),
    end_date character varying(255)
);
 )   DROP TABLE public.trip_purchase_records;
       public         heap    fitbithealthuser    false            ;           1259    17540    trip_purchase_records_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trip_purchase_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.trip_purchase_records_id_seq;
       public          fitbithealthuser    false    316            �           0    0    trip_purchase_records_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.trip_purchase_records_id_seq OWNED BY public.trip_purchase_records.id;
          public          fitbithealthuser    false    315                       1259    17126    trips    TABLE     �  CREATE TABLE public.trips (
    id integer NOT NULL,
    title character varying(255),
    numberofdays integer,
    numberofplaces integer,
    maximumguests integer,
    briefdescription text,
    status boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    price_per_head integer,
    discount_percentage integer
);
    DROP TABLE public.trips;
       public         heap    fitbithealthuser    false            4           1259    17417    trips_admin_creator_links    TABLE     �   CREATE TABLE public.trips_admin_creator_links (
    id integer NOT NULL,
    trip_id integer,
    user_id integer,
    trip_order double precision
);
 -   DROP TABLE public.trips_admin_creator_links;
       public         heap    fitbithealthuser    false            3           1259    17416     trips_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.trips_admin_creator_links_id_seq;
       public          fitbithealthuser    false    308            �           0    0     trips_admin_creator_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.trips_admin_creator_links_id_seq OWNED BY public.trips_admin_creator_links.id;
          public          fitbithealthuser    false    307            &           1259    17188    trips_components    TABLE     �   CREATE TABLE public.trips_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 $   DROP TABLE public.trips_components;
       public         heap    fitbithealthuser    false            %           1259    17187    trips_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.trips_components_id_seq;
       public          fitbithealthuser    false    294            �           0    0    trips_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.trips_components_id_seq OWNED BY public.trips_components.id;
          public          fitbithealthuser    false    293                       1259    17125    trips_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.trips_id_seq;
       public          fitbithealthuser    false    282            �           0    0    trips_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;
          public          fitbithealthuser    false    281            *           1259    17215    trips_occassions_links    TABLE     �   CREATE TABLE public.trips_occassions_links (
    id integer NOT NULL,
    trip_id integer,
    occassion_id integer,
    occassion_order double precision,
    trip_order double precision
);
 *   DROP TABLE public.trips_occassions_links;
       public         heap    fitbithealthuser    false            )           1259    17214    trips_occassions_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_occassions_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.trips_occassions_links_id_seq;
       public          fitbithealthuser    false    298            �           0    0    trips_occassions_links_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.trips_occassions_links_id_seq OWNED BY public.trips_occassions_links.id;
          public          fitbithealthuser    false    297            ,           1259    17228    trips_travel_type_links    TABLE     �   CREATE TABLE public.trips_travel_type_links (
    id integer NOT NULL,
    trip_id integer,
    traveltype_id integer,
    trip_order double precision
);
 +   DROP TABLE public.trips_travel_type_links;
       public         heap    fitbithealthuser    false            +           1259    17227    trips_travel_type_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_travel_type_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.trips_travel_type_links_id_seq;
       public          fitbithealthuser    false    300            �           0    0    trips_travel_type_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.trips_travel_type_links_id_seq OWNED BY public.trips_travel_type_links.id;
          public          fitbithealthuser    false    299            (           1259    17202    trips_trip_categories_links    TABLE     �   CREATE TABLE public.trips_trip_categories_links (
    id integer NOT NULL,
    trip_id integer,
    trip_category_id integer,
    trip_category_order double precision,
    trip_order double precision
);
 /   DROP TABLE public.trips_trip_categories_links;
       public         heap    fitbithealthuser    false            '           1259    17201 "   trips_trip_categories_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trips_trip_categories_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.trips_trip_categories_links_id_seq;
       public          fitbithealthuser    false    296            �           0    0 "   trips_trip_categories_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.trips_trip_categories_links_id_seq OWNED BY public.trips_trip_categories_links.id;
          public          fitbithealthuser    false    295            �            1259    16562    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    fitbithealthuser    false            �            1259    16561    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          fitbithealthuser    false    248            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          fitbithealthuser    false    247                       1259    16690    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    fitbithealthuser    false                       1259    16689     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          fitbithealthuser    false    270            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          fitbithealthuser    false    269            �            1259    16571    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    fitbithealthuser    false            �            1259    16570    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          fitbithealthuser    false    250            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          fitbithealthuser    false    249            �            1259    16582    up_users    TABLE     �  CREATE TABLE public.up_users (
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
    phone character varying(255),
    gender character varying(255),
    dob date,
    address character varying(255),
    fullname character varying(255),
    maritalstatus character varying(255),
    country character varying(255)
);
    DROP TABLE public.up_users;
       public         heap    fitbithealthuser    false                       1259    16982    up_users_admin_creator_links    TABLE     |   CREATE TABLE public.up_users_admin_creator_links (
    id integer NOT NULL,
    user_id integer,
    inv_user_id integer
);
 0   DROP TABLE public.up_users_admin_creator_links;
       public         heap    fitbithealthuser    false                       1259    16981 #   up_users_admin_creator_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_admin_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.up_users_admin_creator_links_id_seq;
       public          fitbithealthuser    false    274            �           0    0 #   up_users_admin_creator_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.up_users_admin_creator_links_id_seq OWNED BY public.up_users_admin_creator_links.id;
          public          fitbithealthuser    false    273            �            1259    16581    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          fitbithealthuser    false    252            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          fitbithealthuser    false    251                       1259    16702    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    fitbithealthuser    false                       1259    16701    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          fitbithealthuser    false    272            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          fitbithealthuser    false    271            �            1259    16514    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    fitbithealthuser    false            �            1259    16513    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          fitbithealthuser    false    240            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          fitbithealthuser    false    239            
           1259    16666    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    fitbithealthuser    false            	           1259    16665 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          fitbithealthuser    false    266            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          fitbithealthuser    false    265            �           2604    16427    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    224    223    224            �           2604    16596    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    253    254    254            �           2604    16449    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    227    228    228            �           2604    16438    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    225    226    226            �           2604    16608    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    255    256    256            �           2604    17096    amenities id    DEFAULT     l   ALTER TABLE ONLY public.amenities ALTER COLUMN id SET DEFAULT nextval('public.amenities_id_seq'::regclass);
 ;   ALTER TABLE public.amenities ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    275    276    276            �           2604    17386     amenities_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.amenities_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.amenities_admin_creator_links_id_seq'::regclass);
 O   ALTER TABLE public.amenities_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    302    301    302            �           2604    17178    amenities_trips_links id    DEFAULT     �   ALTER TABLE ONLY public.amenities_trips_links ALTER COLUMN id SET DEFAULT nextval('public.amenities_trips_links_id_seq'::regclass);
 G   ALTER TABLE public.amenities_trips_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    292    291    292            �           2604    17151 2   components_repeatable_activities_day_activities id    DEFAULT     �   ALTER TABLE ONLY public.components_repeatable_activities_day_activities ALTER COLUMN id SET DEFAULT nextval('public.components_repeatable_activities_day_activities_id_seq'::regclass);
 a   ALTER TABLE public.components_repeatable_activities_day_activities ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    285    286    286            �           2604    17160 6   components_repeatable_trip_faq_repeatable_trip_faqs id    DEFAULT     �   ALTER TABLE ONLY public.components_repeatable_trip_faq_repeatable_trip_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_repeatable_trip_faq_repeatable_trip_faqs_id_seq'::regclass);
 e   ALTER TABLE public.components_repeatable_trip_faq_repeatable_trip_faqs ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    287    288    288            �           2604    17169 6   components_repeatable_triphighlights_triphighlights id    DEFAULT     �   ALTER TABLE ONLY public.components_repeatable_triphighlights_triphighlights ALTER COLUMN id SET DEFAULT nextval('public.components_repeatable_triphighlights_triphighlights_id_seq'::regclass);
 e   ALTER TABLE public.components_repeatable_triphighlights_triphighlights ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    290    289    290            �           2604    16500    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    237    238    238            �           2604    16657    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    263    264    264            �           2604    16645    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    261    262    262            �           2604    16554    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    246    245    246            �           2604    17107    occassions id    DEFAULT     n   ALTER TABLE ONLY public.occassions ALTER COLUMN id SET DEFAULT nextval('public.occassions_id_seq'::regclass);
 <   ALTER TABLE public.occassions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    277    278    278            �           2604    17398 !   occassions_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.occassions_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.occassions_admin_creator_links_id_seq'::regclass);
 P   ALTER TABLE public.occassions_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    303    304    304            �           2604    17533    order_details id    DEFAULT     t   ALTER TABLE ONLY public.order_details ALTER COLUMN id SET DEFAULT nextval('public.order_details_id_seq'::regclass);
 ?   ALTER TABLE public.order_details ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    314    313    314            �           2604    17566    order_details_order_id_links id    DEFAULT     �   ALTER TABLE ONLY public.order_details_order_id_links ALTER COLUMN id SET DEFAULT nextval('public.order_details_order_id_links_id_seq'::regclass);
 N   ALTER TABLE public.order_details_order_id_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    319    320    320            �           2604    17577 !   order_details_product_id_links id    DEFAULT     �   ALTER TABLE ONLY public.order_details_product_id_links ALTER COLUMN id SET DEFAULT nextval('public.order_details_product_id_links_id_seq'::regclass);
 P   ALTER TABLE public.order_details_product_id_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    322    321    322            �           2604    16471    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    231    232    232            �           2604    16621 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    258    257    258            �           2604    16460    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    230    229    230            �           2604    16409    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    220    219    220            �           2604    16400    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    217    218    218            �           2604    16393    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    216    215    216            �           2604    16543    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    244    243    244            �           2604    16681 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    267    268    268            �           2604    16532    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    242    241    242            �           2604    16491 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    235    236    236            �           2604    16633 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    260    259    260            �           2604    16480    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    234    233    234            �           2604    16418    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    222    221    222            �           2604    17715    stripe_loggers id    DEFAULT     v   ALTER TABLE ONLY public.stripe_loggers ALTER COLUMN id SET DEFAULT nextval('public.stripe_loggers_id_seq'::regclass);
 @   ALTER TABLE public.stripe_loggers ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    323    324    324            �           2604    17522    stripe_payments id    DEFAULT     x   ALTER TABLE ONLY public.stripe_payments ALTER COLUMN id SET DEFAULT nextval('public.stripe_payments_id_seq'::regclass);
 A   ALTER TABLE public.stripe_payments ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    311    312    312            �           2604    17555    stripe_payments_user_links id    DEFAULT     �   ALTER TABLE ONLY public.stripe_payments_user_links ALTER COLUMN id SET DEFAULT nextval('public.stripe_payments_user_links_id_seq'::regclass);
 L   ALTER TABLE public.stripe_payments_user_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    317    318    318            �           2604    17118    traveltypes id    DEFAULT     p   ALTER TABLE ONLY public.traveltypes ALTER COLUMN id SET DEFAULT nextval('public.traveltypes_id_seq'::regclass);
 =   ALTER TABLE public.traveltypes ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    280    279    280            �           2604    17409 "   traveltypes_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.traveltypes_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.traveltypes_admin_creator_links_id_seq'::regclass);
 Q   ALTER TABLE public.traveltypes_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    306    305    306            �           2604    17140    trip_categories id    DEFAULT     x   ALTER TABLE ONLY public.trip_categories ALTER COLUMN id SET DEFAULT nextval('public.trip_categories_id_seq'::regclass);
 A   ALTER TABLE public.trip_categories ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    283    284    284            �           2604    17432 &   trip_categories_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.trip_categories_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.trip_categories_admin_creator_links_id_seq'::regclass);
 U   ALTER TABLE public.trip_categories_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    310    309    310            �           2604    17544    trip_purchase_records id    DEFAULT     �   ALTER TABLE ONLY public.trip_purchase_records ALTER COLUMN id SET DEFAULT nextval('public.trip_purchase_records_id_seq'::regclass);
 G   ALTER TABLE public.trip_purchase_records ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    316    315    316            �           2604    17129    trips id    DEFAULT     d   ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);
 7   ALTER TABLE public.trips ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    282    281    282            �           2604    17420    trips_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.trips_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.trips_admin_creator_links_id_seq'::regclass);
 K   ALTER TABLE public.trips_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    307    308    308            �           2604    17191    trips_components id    DEFAULT     z   ALTER TABLE ONLY public.trips_components ALTER COLUMN id SET DEFAULT nextval('public.trips_components_id_seq'::regclass);
 B   ALTER TABLE public.trips_components ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    294    293    294            �           2604    17218    trips_occassions_links id    DEFAULT     �   ALTER TABLE ONLY public.trips_occassions_links ALTER COLUMN id SET DEFAULT nextval('public.trips_occassions_links_id_seq'::regclass);
 H   ALTER TABLE public.trips_occassions_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    298    297    298            �           2604    17231    trips_travel_type_links id    DEFAULT     �   ALTER TABLE ONLY public.trips_travel_type_links ALTER COLUMN id SET DEFAULT nextval('public.trips_travel_type_links_id_seq'::regclass);
 I   ALTER TABLE public.trips_travel_type_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    300    299    300            �           2604    17205    trips_trip_categories_links id    DEFAULT     �   ALTER TABLE ONLY public.trips_trip_categories_links ALTER COLUMN id SET DEFAULT nextval('public.trips_trip_categories_links_id_seq'::regclass);
 M   ALTER TABLE public.trips_trip_categories_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    296    295    296            �           2604    16565    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    248    247    248            �           2604    16693    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    270    269    270            �           2604    16574    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    250    249    250            �           2604    16585    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    251    252    252            �           2604    16985    up_users_admin_creator_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_admin_creator_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_admin_creator_links_id_seq'::regclass);
 N   ALTER TABLE public.up_users_admin_creator_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    274    273    274            �           2604    16705    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    272    271    272            �           2604    16517    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    239    240    240            �           2604    16669    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          fitbithealthuser    false    266    265    266                       0    16424    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    224   ��                0    16593    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          fitbithealthuser    false    254   i�                0    16446    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    228   ϋ                0    16435    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    226   ��                 0    16605    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          fitbithealthuser    false    256   L�      4          0    17093 	   amenities 
   TABLE DATA           q   COPY public.amenities (id, title, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    276   n�      N          0    17383    amenities_admin_creator_links 
   TABLE DATA           _   COPY public.amenities_admin_creator_links (id, amenity_id, user_id, amenity_order) FROM stdin;
    public          fitbithealthuser    false    302   ώ      D          0    17175    amenities_trips_links 
   TABLE DATA           c   COPY public.amenities_trips_links (id, amenity_id, trip_id, trip_order, amenity_order) FROM stdin;
    public          fitbithealthuser    false    292   �      >          0    17148 /   components_repeatable_activities_day_activities 
   TABLE DATA           V   COPY public.components_repeatable_activities_day_activities (id, details) FROM stdin;
    public          fitbithealthuser    false    286   ]�      @          0    17157 3   components_repeatable_trip_faq_repeatable_trip_faqs 
   TABLE DATA           `   COPY public.components_repeatable_trip_faq_repeatable_trip_faqs (id, title, answer) FROM stdin;
    public          fitbithealthuser    false    288   ��      B          0    17166 3   components_repeatable_triphighlights_triphighlights 
   TABLE DATA           k   COPY public.components_repeatable_triphighlights_triphighlights (id, title, name, description) FROM stdin;
    public          fitbithealthuser    false    290   �                0    16497    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    238   X�      (          0    16654    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          fitbithealthuser    false    264   j�      &          0    16642    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          fitbithealthuser    false    262   ��                0    16551    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    246   ��      6          0    17104 
   occassions 
   TABLE DATA           r   COPY public.occassions (id, title, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    278   ��      P          0    17395    occassions_admin_creator_links 
   TABLE DATA           S   COPY public.occassions_admin_creator_links (id, occassion_id, user_id) FROM stdin;
    public          fitbithealthuser    false    304   &�      Z          0    17530    order_details 
   TABLE DATA           �   COPY public.order_details (id, name, quantity, product_stripe_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    314   `�      `          0    17563    order_details_order_id_links 
   TABLE DATA           ^   COPY public.order_details_order_id_links (id, order_detail_id, stripe_payment_id) FROM stdin;
    public          fitbithealthuser    false    320   ��      b          0    17574    order_details_product_id_links 
   TABLE DATA           V   COPY public.order_details_product_id_links (id, order_detail_id, trip_id) FROM stdin;
    public          fitbithealthuser    false    322   ��                0    16468    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    232   	�      "          0    16618 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          fitbithealthuser    false    258   &�                0    16457    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    230   C�      �          0    16406    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          fitbithealthuser    false    220   `�      �          0    16397    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          fitbithealthuser    false    218   ��      �          0    16390    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          fitbithealthuser    false    216   �                0    16540    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    244   4�      ,          0    16678 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          fitbithealthuser    false    268   Q�                0    16529    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    242   n�                0    16488 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    236   ��      $          0    16630 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          fitbithealthuser    false    260   ��      
          0    16477    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    234   ��      �          0    16415    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          fitbithealthuser    false    222   ��      d          0    17712    stripe_loggers 
   TABLE DATA           f   COPY public.stripe_loggers (id, event_id, event_name, event_data, created_at, updated_at) FROM stdin;
    public          fitbithealthuser    false    324   ��      X          0    17519    stripe_payments 
   TABLE DATA           }   COPY public.stripe_payments (id, stripe_id, amount, email, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    312   ��      ^          0    17552    stripe_payments_user_links 
   TABLE DATA           T   COPY public.stripe_payments_user_links (id, stripe_payment_id, user_id) FROM stdin;
    public          fitbithealthuser    false    318   �       8          0    17115    traveltypes 
   TABLE DATA           s   COPY public.traveltypes (id, title, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    280         R          0    17406    traveltypes_admin_creator_links 
   TABLE DATA           U   COPY public.traveltypes_admin_creator_links (id, traveltype_id, user_id) FROM stdin;
    public          fitbithealthuser    false    306         <          0    17137    trip_categories 
   TABLE DATA           ~   COPY public.trip_categories (id, categoryname, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    284   ;      V          0    17429 #   trip_categories_admin_creator_links 
   TABLE DATA           \   COPY public.trip_categories_admin_creator_links (id, trip_category_id, user_id) FROM stdin;
    public          fitbithealthuser    false    310          \          0    17541    trip_purchase_records 
   TABLE DATA           �   COPY public.trip_purchase_records (id, trip_id, trip_name, discount_percentage, price, numberofpeoples, created_at, updated_at, created_by_id, updated_by_id, start_date, end_date) FROM stdin;
    public          fitbithealthuser    false    316   Y      :          0    17126    trips 
   TABLE DATA           �   COPY public.trips (id, title, numberofdays, numberofplaces, maximumguests, briefdescription, status, created_at, updated_at, created_by_id, updated_by_id, price_per_head, discount_percentage) FROM stdin;
    public          fitbithealthuser    false    282   l      T          0    17417    trips_admin_creator_links 
   TABLE DATA           U   COPY public.trips_admin_creator_links (id, trip_id, user_id, trip_order) FROM stdin;
    public          fitbithealthuser    false    308   �      F          0    17188    trips_components 
   TABLE DATA           g   COPY public.trips_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          fitbithealthuser    false    294   F	      J          0    17215    trips_occassions_links 
   TABLE DATA           h   COPY public.trips_occassions_links (id, trip_id, occassion_id, occassion_order, trip_order) FROM stdin;
    public          fitbithealthuser    false    298         L          0    17228    trips_travel_type_links 
   TABLE DATA           Y   COPY public.trips_travel_type_links (id, trip_id, traveltype_id, trip_order) FROM stdin;
    public          fitbithealthuser    false    300         H          0    17202    trips_trip_categories_links 
   TABLE DATA           u   COPY public.trips_trip_categories_links (id, trip_id, trip_category_id, trip_category_order, trip_order) FROM stdin;
    public          fitbithealthuser    false    296   ]                0    16562    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    248   R      .          0    16690    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          fitbithealthuser    false    270   @                0    16571    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    250   ~                0    16582    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id, phone, gender, dob, address, fullname, maritalstatus, country) FROM stdin;
    public          fitbithealthuser    false    252   g      2          0    16982    up_users_admin_creator_links 
   TABLE DATA           P   COPY public.up_users_admin_creator_links (id, user_id, inv_user_id) FROM stdin;
    public          fitbithealthuser    false    274   �      0          0    16702    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          fitbithealthuser    false    272   /                0    16514    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          fitbithealthuser    false    240   �      *          0    16666    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          fitbithealthuser    false    266   �      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 159, true);
          public          fitbithealthuser    false    223            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 159, true);
          public          fitbithealthuser    false    253            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          fitbithealthuser    false    227            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          fitbithealthuser    false    225            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          fitbithealthuser    false    255            �           0    0 $   amenities_admin_creator_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.amenities_admin_creator_links_id_seq', 18, true);
          public          fitbithealthuser    false    301            �           0    0    amenities_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.amenities_id_seq', 31, true);
          public          fitbithealthuser    false    275            �           0    0    amenities_trips_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.amenities_trips_links_id_seq', 134, true);
          public          fitbithealthuser    false    291            �           0    0 6   components_repeatable_activities_day_activities_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.components_repeatable_activities_day_activities_id_seq', 174, true);
          public          fitbithealthuser    false    285            �           0    0 :   components_repeatable_trip_faq_repeatable_trip_faqs_id_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.components_repeatable_trip_faq_repeatable_trip_faqs_id_seq', 72, true);
          public          fitbithealthuser    false    287            �           0    0 :   components_repeatable_triphighlights_triphighlights_id_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.components_repeatable_triphighlights_triphighlights_id_seq', 74, true);
          public          fitbithealthuser    false    289            �           0    0    files_folder_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 238, true);
          public          fitbithealthuser    false    263            �           0    0    files_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.files_id_seq', 240, true);
          public          fitbithealthuser    false    237            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 182, true);
          public          fitbithealthuser    false    261            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          fitbithealthuser    false    245            �           0    0 %   occassions_admin_creator_links_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.occassions_admin_creator_links_id_seq', 17, true);
          public          fitbithealthuser    false    303            �           0    0    occassions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.occassions_id_seq', 19, true);
          public          fitbithealthuser    false    277            �           0    0    order_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_details_id_seq', 8, true);
          public          fitbithealthuser    false    313            �           0    0 #   order_details_order_id_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.order_details_order_id_links_id_seq', 8, true);
          public          fitbithealthuser    false    319            �           0    0 %   order_details_product_id_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.order_details_product_id_links_id_seq', 8, true);
          public          fitbithealthuser    false    321            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          fitbithealthuser    false    231            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          fitbithealthuser    false    257            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          fitbithealthuser    false    229            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 63, true);
          public          fitbithealthuser    false    219            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 17, true);
          public          fitbithealthuser    false    217            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          fitbithealthuser    false    215            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          fitbithealthuser    false    243            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          fitbithealthuser    false    267            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          fitbithealthuser    false    241            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          fitbithealthuser    false    235            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          fitbithealthuser    false    259            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          fitbithealthuser    false    233            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          fitbithealthuser    false    221            �           0    0    stripe_loggers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.stripe_loggers_id_seq', 2, true);
          public          fitbithealthuser    false    323            �           0    0    stripe_payments_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stripe_payments_id_seq', 24, true);
          public          fitbithealthuser    false    311            �           0    0 !   stripe_payments_user_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.stripe_payments_user_links_id_seq', 24, true);
          public          fitbithealthuser    false    317            �           0    0 &   traveltypes_admin_creator_links_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.traveltypes_admin_creator_links_id_seq', 17, true);
          public          fitbithealthuser    false    305            �           0    0    traveltypes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.traveltypes_id_seq', 24, true);
          public          fitbithealthuser    false    279            �           0    0 *   trip_categories_admin_creator_links_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.trip_categories_admin_creator_links_id_seq', 12, true);
          public          fitbithealthuser    false    309            �           0    0    trip_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.trip_categories_id_seq', 14, true);
          public          fitbithealthuser    false    283            �           0    0    trip_purchase_records_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.trip_purchase_records_id_seq', 8, true);
          public          fitbithealthuser    false    315            �           0    0     trips_admin_creator_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.trips_admin_creator_links_id_seq', 35, true);
          public          fitbithealthuser    false    307            �           0    0    trips_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.trips_components_id_seq', 331, true);
          public          fitbithealthuser    false    293            �           0    0    trips_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.trips_id_seq', 35, true);
          public          fitbithealthuser    false    281            �           0    0    trips_occassions_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.trips_occassions_links_id_seq', 90, true);
          public          fitbithealthuser    false    297            �           0    0    trips_travel_type_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.trips_travel_type_links_id_seq', 51, true);
          public          fitbithealthuser    false    299            �           0    0 "   trips_trip_categories_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.trips_trip_categories_links_id_seq', 118, true);
          public          fitbithealthuser    false    295            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 81, true);
          public          fitbithealthuser    false    247            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 81, true);
          public          fitbithealthuser    false    269            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 5, true);
          public          fitbithealthuser    false    249            �           0    0 #   up_users_admin_creator_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.up_users_admin_creator_links_id_seq', 45, true);
          public          fitbithealthuser    false    273            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 85, true);
          public          fitbithealthuser    false    251            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 85, true);
          public          fitbithealthuser    false    271            �           0    0    upload_folders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, true);
          public          fitbithealthuser    false    239            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          fitbithealthuser    false    265            �           2606    16431 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            fitbithealthuser    false    224            E           2606    16598 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            fitbithealthuser    false    254            G           2606    16602 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            fitbithealthuser    false    254    254                       2606    16453    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            fitbithealthuser    false    228                       2606    16442    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            fitbithealthuser    false    226            M           2606    16610 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            fitbithealthuser    false    256            O           2606    16614 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            fitbithealthuser    false    256    256            �           2606    17388 @   amenities_admin_creator_links amenities_admin_creator_links_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.amenities_admin_creator_links
    ADD CONSTRAINT amenities_admin_creator_links_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.amenities_admin_creator_links DROP CONSTRAINT amenities_admin_creator_links_pkey;
       public            fitbithealthuser    false    302            �           2606    17392 B   amenities_admin_creator_links amenities_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.amenities_admin_creator_links
    ADD CONSTRAINT amenities_admin_creator_links_unique UNIQUE (amenity_id, user_id);
 l   ALTER TABLE ONLY public.amenities_admin_creator_links DROP CONSTRAINT amenities_admin_creator_links_unique;
       public            fitbithealthuser    false    302    302            �           2606    17100    amenities amenities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.amenities
    ADD CONSTRAINT amenities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.amenities DROP CONSTRAINT amenities_pkey;
       public            fitbithealthuser    false    276            �           2606    17180 0   amenities_trips_links amenities_trips_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.amenities_trips_links
    ADD CONSTRAINT amenities_trips_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.amenities_trips_links DROP CONSTRAINT amenities_trips_links_pkey;
       public            fitbithealthuser    false    292            �           2606    17184 2   amenities_trips_links amenities_trips_links_unique 
   CONSTRAINT     |   ALTER TABLE ONLY public.amenities_trips_links
    ADD CONSTRAINT amenities_trips_links_unique UNIQUE (amenity_id, trip_id);
 \   ALTER TABLE ONLY public.amenities_trips_links DROP CONSTRAINT amenities_trips_links_unique;
       public            fitbithealthuser    false    292    292            �           2606    17155 d   components_repeatable_activities_day_activities components_repeatable_activities_day_activities_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_repeatable_activities_day_activities
    ADD CONSTRAINT components_repeatable_activities_day_activities_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_repeatable_activities_day_activities DROP CONSTRAINT components_repeatable_activities_day_activities_pkey;
       public            fitbithealthuser    false    286            �           2606    17164 l   components_repeatable_trip_faq_repeatable_trip_faqs components_repeatable_trip_faq_repeatable_trip_faqs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_repeatable_trip_faq_repeatable_trip_faqs
    ADD CONSTRAINT components_repeatable_trip_faq_repeatable_trip_faqs_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_repeatable_trip_faq_repeatable_trip_faqs DROP CONSTRAINT components_repeatable_trip_faq_repeatable_trip_faqs_pkey;
       public            fitbithealthuser    false    288            �           2606    17173 l   components_repeatable_triphighlights_triphighlights components_repeatable_triphighlights_triphighlights_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_repeatable_triphighlights_triphighlights
    ADD CONSTRAINT components_repeatable_triphighlights_triphighlights_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_repeatable_triphighlights_triphighlights DROP CONSTRAINT components_repeatable_triphighlights_triphighlights_pkey;
       public            fitbithealthuser    false    290            g           2606    16659 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            fitbithealthuser    false    264            i           2606    16663 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            fitbithealthuser    false    264    264                       2606    16504    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            fitbithealthuser    false    238            b           2606    16649 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            fitbithealthuser    false    262            3           2606    16558    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            fitbithealthuser    false    246            �           2606    17400 B   occassions_admin_creator_links occassions_admin_creator_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.occassions_admin_creator_links
    ADD CONSTRAINT occassions_admin_creator_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.occassions_admin_creator_links DROP CONSTRAINT occassions_admin_creator_links_pkey;
       public            fitbithealthuser    false    304            �           2606    17404 D   occassions_admin_creator_links occassions_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.occassions_admin_creator_links
    ADD CONSTRAINT occassions_admin_creator_links_unique UNIQUE (occassion_id, user_id);
 n   ALTER TABLE ONLY public.occassions_admin_creator_links DROP CONSTRAINT occassions_admin_creator_links_unique;
       public            fitbithealthuser    false    304    304            �           2606    17111    occassions occassions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.occassions
    ADD CONSTRAINT occassions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.occassions DROP CONSTRAINT occassions_pkey;
       public            fitbithealthuser    false    278                       2606    17568 >   order_details_order_id_links order_details_order_id_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.order_details_order_id_links
    ADD CONSTRAINT order_details_order_id_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.order_details_order_id_links DROP CONSTRAINT order_details_order_id_links_pkey;
       public            fitbithealthuser    false    320                       2606    17572 @   order_details_order_id_links order_details_order_id_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_details_order_id_links
    ADD CONSTRAINT order_details_order_id_links_unique UNIQUE (order_detail_id, stripe_payment_id);
 j   ALTER TABLE ONLY public.order_details_order_id_links DROP CONSTRAINT order_details_order_id_links_unique;
       public            fitbithealthuser    false    320    320            �           2606    17537     order_details order_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            fitbithealthuser    false    314                       2606    17579 B   order_details_product_id_links order_details_product_id_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_details_product_id_links
    ADD CONSTRAINT order_details_product_id_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.order_details_product_id_links DROP CONSTRAINT order_details_product_id_links_pkey;
       public            fitbithealthuser    false    322            	           2606    17583 D   order_details_product_id_links order_details_product_id_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_details_product_id_links
    ADD CONSTRAINT order_details_product_id_links_unique UNIQUE (order_detail_id, trip_id);
 n   ALTER TABLE ONLY public.order_details_product_id_links DROP CONSTRAINT order_details_product_id_links_unique;
       public            fitbithealthuser    false    322    322                       2606    16473 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            fitbithealthuser    false    232            T           2606    16623 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            fitbithealthuser    false    258            V           2606    16627 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            fitbithealthuser    false    258    258            	           2606    16464 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            fitbithealthuser    false    230            �           2606    16413 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            fitbithealthuser    false    220            �           2606    16404 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            fitbithealthuser    false    218            �           2606    16395 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            fitbithealthuser    false    216            /           2606    16547 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            fitbithealthuser    false    244            u           2606    16683 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            fitbithealthuser    false    268            w           2606    16687 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            fitbithealthuser    false    268    268            +           2606    16536 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            fitbithealthuser    false    242                       2606    16493 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            fitbithealthuser    false    236            [           2606    16635 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            fitbithealthuser    false    260            ]           2606    16639 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            fitbithealthuser    false    260    260                       2606    16484 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            fitbithealthuser    false    234            �           2606    16422 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            fitbithealthuser    false    222                       2606    17719 "   stripe_loggers stripe_loggers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.stripe_loggers
    ADD CONSTRAINT stripe_loggers_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.stripe_loggers DROP CONSTRAINT stripe_loggers_pkey;
       public            fitbithealthuser    false    324            �           2606    17526 $   stripe_payments stripe_payments_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.stripe_payments
    ADD CONSTRAINT stripe_payments_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.stripe_payments DROP CONSTRAINT stripe_payments_pkey;
       public            fitbithealthuser    false    312            �           2606    17557 :   stripe_payments_user_links stripe_payments_user_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.stripe_payments_user_links
    ADD CONSTRAINT stripe_payments_user_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.stripe_payments_user_links DROP CONSTRAINT stripe_payments_user_links_pkey;
       public            fitbithealthuser    false    318            �           2606    17561 <   stripe_payments_user_links stripe_payments_user_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.stripe_payments_user_links
    ADD CONSTRAINT stripe_payments_user_links_unique UNIQUE (stripe_payment_id, user_id);
 f   ALTER TABLE ONLY public.stripe_payments_user_links DROP CONSTRAINT stripe_payments_user_links_unique;
       public            fitbithealthuser    false    318    318            �           2606    17411 D   traveltypes_admin_creator_links traveltypes_admin_creator_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes_admin_creator_links
    ADD CONSTRAINT traveltypes_admin_creator_links_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.traveltypes_admin_creator_links DROP CONSTRAINT traveltypes_admin_creator_links_pkey;
       public            fitbithealthuser    false    306            �           2606    17415 F   traveltypes_admin_creator_links traveltypes_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes_admin_creator_links
    ADD CONSTRAINT traveltypes_admin_creator_links_unique UNIQUE (traveltype_id, user_id);
 p   ALTER TABLE ONLY public.traveltypes_admin_creator_links DROP CONSTRAINT traveltypes_admin_creator_links_unique;
       public            fitbithealthuser    false    306    306            �           2606    17122    traveltypes traveltypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.traveltypes
    ADD CONSTRAINT traveltypes_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.traveltypes DROP CONSTRAINT traveltypes_pkey;
       public            fitbithealthuser    false    280            �           2606    17434 L   trip_categories_admin_creator_links trip_categories_admin_creator_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories_admin_creator_links
    ADD CONSTRAINT trip_categories_admin_creator_links_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.trip_categories_admin_creator_links DROP CONSTRAINT trip_categories_admin_creator_links_pkey;
       public            fitbithealthuser    false    310            �           2606    17438 N   trip_categories_admin_creator_links trip_categories_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories_admin_creator_links
    ADD CONSTRAINT trip_categories_admin_creator_links_unique UNIQUE (trip_category_id, user_id);
 x   ALTER TABLE ONLY public.trip_categories_admin_creator_links DROP CONSTRAINT trip_categories_admin_creator_links_unique;
       public            fitbithealthuser    false    310    310            �           2606    17144 $   trip_categories trip_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.trip_categories
    ADD CONSTRAINT trip_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.trip_categories DROP CONSTRAINT trip_categories_pkey;
       public            fitbithealthuser    false    284            �           2606    17548 0   trip_purchase_records trip_purchase_records_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.trip_purchase_records
    ADD CONSTRAINT trip_purchase_records_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.trip_purchase_records DROP CONSTRAINT trip_purchase_records_pkey;
       public            fitbithealthuser    false    316            �           2606    17422 8   trips_admin_creator_links trips_admin_creator_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.trips_admin_creator_links
    ADD CONSTRAINT trips_admin_creator_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.trips_admin_creator_links DROP CONSTRAINT trips_admin_creator_links_pkey;
       public            fitbithealthuser    false    308            �           2606    17426 :   trips_admin_creator_links trips_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trips_admin_creator_links
    ADD CONSTRAINT trips_admin_creator_links_unique UNIQUE (trip_id, user_id);
 d   ALTER TABLE ONLY public.trips_admin_creator_links DROP CONSTRAINT trips_admin_creator_links_unique;
       public            fitbithealthuser    false    308    308            �           2606    17195 &   trips_components trips_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trips_components
    ADD CONSTRAINT trips_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.trips_components DROP CONSTRAINT trips_components_pkey;
       public            fitbithealthuser    false    294            �           2606    17220 2   trips_occassions_links trips_occassions_links_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.trips_occassions_links
    ADD CONSTRAINT trips_occassions_links_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.trips_occassions_links DROP CONSTRAINT trips_occassions_links_pkey;
       public            fitbithealthuser    false    298            �           2606    17224 4   trips_occassions_links trips_occassions_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trips_occassions_links
    ADD CONSTRAINT trips_occassions_links_unique UNIQUE (trip_id, occassion_id);
 ^   ALTER TABLE ONLY public.trips_occassions_links DROP CONSTRAINT trips_occassions_links_unique;
       public            fitbithealthuser    false    298    298            �           2606    17133    trips trips_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.trips DROP CONSTRAINT trips_pkey;
       public            fitbithealthuser    false    282            �           2606    17233 4   trips_travel_type_links trips_travel_type_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.trips_travel_type_links
    ADD CONSTRAINT trips_travel_type_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.trips_travel_type_links DROP CONSTRAINT trips_travel_type_links_pkey;
       public            fitbithealthuser    false    300            �           2606    17237 6   trips_travel_type_links trips_travel_type_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trips_travel_type_links
    ADD CONSTRAINT trips_travel_type_links_unique UNIQUE (trip_id, traveltype_id);
 `   ALTER TABLE ONLY public.trips_travel_type_links DROP CONSTRAINT trips_travel_type_links_unique;
       public            fitbithealthuser    false    300    300            �           2606    17207 <   trips_trip_categories_links trips_trip_categories_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.trips_trip_categories_links
    ADD CONSTRAINT trips_trip_categories_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.trips_trip_categories_links DROP CONSTRAINT trips_trip_categories_links_pkey;
       public            fitbithealthuser    false    296            �           2606    17211 >   trips_trip_categories_links trips_trip_categories_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trips_trip_categories_links
    ADD CONSTRAINT trips_trip_categories_links_unique UNIQUE (trip_id, trip_category_id);
 h   ALTER TABLE ONLY public.trips_trip_categories_links DROP CONSTRAINT trips_trip_categories_links_unique;
       public            fitbithealthuser    false    296    296            �           2606    17721    trips_components trips_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.trips_components
    ADD CONSTRAINT trips_unique UNIQUE (entity_id, component_id, field, component_type);
 G   ALTER TABLE ONLY public.trips_components DROP CONSTRAINT trips_unique;
       public            fitbithealthuser    false    294    294    294    294            7           2606    16567 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            fitbithealthuser    false    248            |           2606    16695 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            fitbithealthuser    false    270            ~           2606    16699 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            fitbithealthuser    false    270    270            ;           2606    16578    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            fitbithealthuser    false    250            �           2606    16987 >   up_users_admin_creator_links up_users_admin_creator_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.up_users_admin_creator_links
    ADD CONSTRAINT up_users_admin_creator_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.up_users_admin_creator_links DROP CONSTRAINT up_users_admin_creator_links_pkey;
       public            fitbithealthuser    false    274            �           2606    16991 @   up_users_admin_creator_links up_users_admin_creator_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_users_admin_creator_links
    ADD CONSTRAINT up_users_admin_creator_links_unique UNIQUE (user_id, inv_user_id);
 j   ALTER TABLE ONLY public.up_users_admin_creator_links DROP CONSTRAINT up_users_admin_creator_links_unique;
       public            fitbithealthuser    false    274    274            ?           2606    16589    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            fitbithealthuser    false    252            �           2606    16707 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            fitbithealthuser    false    272            �           2606    16711 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            fitbithealthuser    false    272    272            n           2606    16671 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            fitbithealthuser    false    266            p           2606    16675 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            fitbithealthuser    false    266    266            #           2606    16523 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            fitbithealthuser    false    240            %           2606    16525 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            fitbithealthuser    false    240            '           2606    16521 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            fitbithealthuser    false    240            �           1259    16432 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            fitbithealthuser    false    224            A           1259    16599    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            fitbithealthuser    false    254            B           1259    16600 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            fitbithealthuser    false    254            C           1259    16603 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            fitbithealthuser    false    254            �           1259    16433 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            fitbithealthuser    false    224                       1259    16454    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            fitbithealthuser    false    228                       1259    16455    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            fitbithealthuser    false    228            �           1259    16443    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            fitbithealthuser    false    226            H           1259    16611    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            fitbithealthuser    false    256            I           1259    16612    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            fitbithealthuser    false    256            J           1259    16615     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            fitbithealthuser    false    256            K           1259    16616 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            fitbithealthuser    false    256                       1259    16444    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            fitbithealthuser    false    226            �           1259    17389     amenities_admin_creator_links_fk    INDEX     p   CREATE INDEX amenities_admin_creator_links_fk ON public.amenities_admin_creator_links USING btree (amenity_id);
 4   DROP INDEX public.amenities_admin_creator_links_fk;
       public            fitbithealthuser    false    302            �           1259    17390 $   amenities_admin_creator_links_inv_fk    INDEX     q   CREATE INDEX amenities_admin_creator_links_inv_fk ON public.amenities_admin_creator_links USING btree (user_id);
 8   DROP INDEX public.amenities_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    302            �           1259    17393 *   amenities_admin_creator_links_order_inv_fk    INDEX     }   CREATE INDEX amenities_admin_creator_links_order_inv_fk ON public.amenities_admin_creator_links USING btree (amenity_order);
 >   DROP INDEX public.amenities_admin_creator_links_order_inv_fk;
       public            fitbithealthuser    false    302            �           1259    17101    amenities_created_by_id_fk    INDEX     Y   CREATE INDEX amenities_created_by_id_fk ON public.amenities USING btree (created_by_id);
 .   DROP INDEX public.amenities_created_by_id_fk;
       public            fitbithealthuser    false    276            �           1259    17181    amenities_trips_links_fk    INDEX     `   CREATE INDEX amenities_trips_links_fk ON public.amenities_trips_links USING btree (amenity_id);
 ,   DROP INDEX public.amenities_trips_links_fk;
       public            fitbithealthuser    false    292            �           1259    17182    amenities_trips_links_inv_fk    INDEX     a   CREATE INDEX amenities_trips_links_inv_fk ON public.amenities_trips_links USING btree (trip_id);
 0   DROP INDEX public.amenities_trips_links_inv_fk;
       public            fitbithealthuser    false    292            �           1259    17185    amenities_trips_links_order_fk    INDEX     f   CREATE INDEX amenities_trips_links_order_fk ON public.amenities_trips_links USING btree (trip_order);
 2   DROP INDEX public.amenities_trips_links_order_fk;
       public            fitbithealthuser    false    292            �           1259    17186 "   amenities_trips_links_order_inv_fk    INDEX     m   CREATE INDEX amenities_trips_links_order_inv_fk ON public.amenities_trips_links USING btree (amenity_order);
 6   DROP INDEX public.amenities_trips_links_order_inv_fk;
       public            fitbithealthuser    false    292            �           1259    17102    amenities_updated_by_id_fk    INDEX     Y   CREATE INDEX amenities_updated_by_id_fk ON public.amenities USING btree (updated_by_id);
 .   DROP INDEX public.amenities_updated_by_id_fk;
       public            fitbithealthuser    false    276                       1259    16511    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            fitbithealthuser    false    238            c           1259    16660    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            fitbithealthuser    false    264            d           1259    16661    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            fitbithealthuser    false    264            e           1259    16664    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            fitbithealthuser    false    264            ^           1259    16650    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            fitbithealthuser    false    262            _           1259    16652 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            fitbithealthuser    false    262            `           1259    16651     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            fitbithealthuser    false    262                       1259    16512    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            fitbithealthuser    false    238            1           1259    16559    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            fitbithealthuser    false    246            4           1259    16560    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            fitbithealthuser    false    246            �           1259    17401 !   occassions_admin_creator_links_fk    INDEX     t   CREATE INDEX occassions_admin_creator_links_fk ON public.occassions_admin_creator_links USING btree (occassion_id);
 5   DROP INDEX public.occassions_admin_creator_links_fk;
       public            fitbithealthuser    false    304            �           1259    17402 %   occassions_admin_creator_links_inv_fk    INDEX     s   CREATE INDEX occassions_admin_creator_links_inv_fk ON public.occassions_admin_creator_links USING btree (user_id);
 9   DROP INDEX public.occassions_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    304            �           1259    17112    occassions_created_by_id_fk    INDEX     [   CREATE INDEX occassions_created_by_id_fk ON public.occassions USING btree (created_by_id);
 /   DROP INDEX public.occassions_created_by_id_fk;
       public            fitbithealthuser    false    278            �           1259    17113    occassions_updated_by_id_fk    INDEX     [   CREATE INDEX occassions_updated_by_id_fk ON public.occassions USING btree (updated_by_id);
 /   DROP INDEX public.occassions_updated_by_id_fk;
       public            fitbithealthuser    false    278            �           1259    17538    order_details_created_by_id_fk    INDEX     a   CREATE INDEX order_details_created_by_id_fk ON public.order_details USING btree (created_by_id);
 2   DROP INDEX public.order_details_created_by_id_fk;
       public            fitbithealthuser    false    314            �           1259    17569    order_details_order_id_links_fk    INDEX     s   CREATE INDEX order_details_order_id_links_fk ON public.order_details_order_id_links USING btree (order_detail_id);
 3   DROP INDEX public.order_details_order_id_links_fk;
       public            fitbithealthuser    false    320            �           1259    17570 #   order_details_order_id_links_inv_fk    INDEX     y   CREATE INDEX order_details_order_id_links_inv_fk ON public.order_details_order_id_links USING btree (stripe_payment_id);
 7   DROP INDEX public.order_details_order_id_links_inv_fk;
       public            fitbithealthuser    false    320                       1259    17580 !   order_details_product_id_links_fk    INDEX     w   CREATE INDEX order_details_product_id_links_fk ON public.order_details_product_id_links USING btree (order_detail_id);
 5   DROP INDEX public.order_details_product_id_links_fk;
       public            fitbithealthuser    false    322                       1259    17581 %   order_details_product_id_links_inv_fk    INDEX     s   CREATE INDEX order_details_product_id_links_inv_fk ON public.order_details_product_id_links USING btree (trip_id);
 9   DROP INDEX public.order_details_product_id_links_inv_fk;
       public            fitbithealthuser    false    322            �           1259    17539    order_details_updated_by_id_fk    INDEX     a   CREATE INDEX order_details_updated_by_id_fk ON public.order_details USING btree (updated_by_id);
 2   DROP INDEX public.order_details_updated_by_id_fk;
       public            fitbithealthuser    false    314                       1259    16474 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            fitbithealthuser    false    232            P           1259    16624 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            fitbithealthuser    false    258            Q           1259    16625 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            fitbithealthuser    false    258            R           1259    16628 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            fitbithealthuser    false    258                       1259    16475 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            fitbithealthuser    false    232                       1259    16465 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            fitbithealthuser    false    230            
           1259    16466 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            fitbithealthuser    false    230            -           1259    16548 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            fitbithealthuser    false    244            q           1259    16684 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            fitbithealthuser    false    268            r           1259    16685 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            fitbithealthuser    false    268            s           1259    16688 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            fitbithealthuser    false    268            0           1259    16549 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            fitbithealthuser    false    244            )           1259    16537     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            fitbithealthuser    false    242            ,           1259    16538     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            fitbithealthuser    false    242                       1259    16494 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            fitbithealthuser    false    236            W           1259    16636 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            fitbithealthuser    false    260            X           1259    16637 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            fitbithealthuser    false    260            Y           1259    16640 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            fitbithealthuser    false    260                       1259    16495 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            fitbithealthuser    false    236                       1259    16485 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            fitbithealthuser    false    234                       1259    16486 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            fitbithealthuser    false    234            �           1259    17527     stripe_payments_created_by_id_fk    INDEX     e   CREATE INDEX stripe_payments_created_by_id_fk ON public.stripe_payments USING btree (created_by_id);
 4   DROP INDEX public.stripe_payments_created_by_id_fk;
       public            fitbithealthuser    false    312            �           1259    17528     stripe_payments_updated_by_id_fk    INDEX     e   CREATE INDEX stripe_payments_updated_by_id_fk ON public.stripe_payments USING btree (updated_by_id);
 4   DROP INDEX public.stripe_payments_updated_by_id_fk;
       public            fitbithealthuser    false    312            �           1259    17558    stripe_payments_user_links_fk    INDEX     q   CREATE INDEX stripe_payments_user_links_fk ON public.stripe_payments_user_links USING btree (stripe_payment_id);
 1   DROP INDEX public.stripe_payments_user_links_fk;
       public            fitbithealthuser    false    318            �           1259    17559 !   stripe_payments_user_links_inv_fk    INDEX     k   CREATE INDEX stripe_payments_user_links_inv_fk ON public.stripe_payments_user_links USING btree (user_id);
 5   DROP INDEX public.stripe_payments_user_links_inv_fk;
       public            fitbithealthuser    false    318            �           1259    17412 "   traveltypes_admin_creator_links_fk    INDEX     w   CREATE INDEX traveltypes_admin_creator_links_fk ON public.traveltypes_admin_creator_links USING btree (traveltype_id);
 6   DROP INDEX public.traveltypes_admin_creator_links_fk;
       public            fitbithealthuser    false    306            �           1259    17413 &   traveltypes_admin_creator_links_inv_fk    INDEX     u   CREATE INDEX traveltypes_admin_creator_links_inv_fk ON public.traveltypes_admin_creator_links USING btree (user_id);
 :   DROP INDEX public.traveltypes_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    306            �           1259    17123    traveltypes_created_by_id_fk    INDEX     ]   CREATE INDEX traveltypes_created_by_id_fk ON public.traveltypes USING btree (created_by_id);
 0   DROP INDEX public.traveltypes_created_by_id_fk;
       public            fitbithealthuser    false    280            �           1259    17124    traveltypes_updated_by_id_fk    INDEX     ]   CREATE INDEX traveltypes_updated_by_id_fk ON public.traveltypes USING btree (updated_by_id);
 0   DROP INDEX public.traveltypes_updated_by_id_fk;
       public            fitbithealthuser    false    280            �           1259    17435 &   trip_categories_admin_creator_links_fk    INDEX     �   CREATE INDEX trip_categories_admin_creator_links_fk ON public.trip_categories_admin_creator_links USING btree (trip_category_id);
 :   DROP INDEX public.trip_categories_admin_creator_links_fk;
       public            fitbithealthuser    false    310            �           1259    17436 *   trip_categories_admin_creator_links_inv_fk    INDEX     }   CREATE INDEX trip_categories_admin_creator_links_inv_fk ON public.trip_categories_admin_creator_links USING btree (user_id);
 >   DROP INDEX public.trip_categories_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    310            �           1259    17145     trip_categories_created_by_id_fk    INDEX     e   CREATE INDEX trip_categories_created_by_id_fk ON public.trip_categories USING btree (created_by_id);
 4   DROP INDEX public.trip_categories_created_by_id_fk;
       public            fitbithealthuser    false    284            �           1259    17146     trip_categories_updated_by_id_fk    INDEX     e   CREATE INDEX trip_categories_updated_by_id_fk ON public.trip_categories USING btree (updated_by_id);
 4   DROP INDEX public.trip_categories_updated_by_id_fk;
       public            fitbithealthuser    false    284            �           1259    17549 &   trip_purchase_records_created_by_id_fk    INDEX     q   CREATE INDEX trip_purchase_records_created_by_id_fk ON public.trip_purchase_records USING btree (created_by_id);
 :   DROP INDEX public.trip_purchase_records_created_by_id_fk;
       public            fitbithealthuser    false    316            �           1259    17550 &   trip_purchase_records_updated_by_id_fk    INDEX     q   CREATE INDEX trip_purchase_records_updated_by_id_fk ON public.trip_purchase_records USING btree (updated_by_id);
 :   DROP INDEX public.trip_purchase_records_updated_by_id_fk;
       public            fitbithealthuser    false    316            �           1259    17423    trips_admin_creator_links_fk    INDEX     e   CREATE INDEX trips_admin_creator_links_fk ON public.trips_admin_creator_links USING btree (trip_id);
 0   DROP INDEX public.trips_admin_creator_links_fk;
       public            fitbithealthuser    false    308            �           1259    17424     trips_admin_creator_links_inv_fk    INDEX     i   CREATE INDEX trips_admin_creator_links_inv_fk ON public.trips_admin_creator_links USING btree (user_id);
 4   DROP INDEX public.trips_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    308            �           1259    17427 &   trips_admin_creator_links_order_inv_fk    INDEX     r   CREATE INDEX trips_admin_creator_links_order_inv_fk ON public.trips_admin_creator_links USING btree (trip_order);
 :   DROP INDEX public.trips_admin_creator_links_order_inv_fk;
       public            fitbithealthuser    false    308            �           1259    17197    trips_component_type_index    INDEX     a   CREATE INDEX trips_component_type_index ON public.trips_components USING btree (component_type);
 .   DROP INDEX public.trips_component_type_index;
       public            fitbithealthuser    false    294            �           1259    17134    trips_created_by_id_fk    INDEX     Q   CREATE INDEX trips_created_by_id_fk ON public.trips USING btree (created_by_id);
 *   DROP INDEX public.trips_created_by_id_fk;
       public            fitbithealthuser    false    282            �           1259    17198    trips_entity_fk    INDEX     Q   CREATE INDEX trips_entity_fk ON public.trips_components USING btree (entity_id);
 #   DROP INDEX public.trips_entity_fk;
       public            fitbithealthuser    false    294            �           1259    17196    trips_field_index    INDEX     O   CREATE INDEX trips_field_index ON public.trips_components USING btree (field);
 %   DROP INDEX public.trips_field_index;
       public            fitbithealthuser    false    294            �           1259    17221    trips_occassions_links_fk    INDEX     _   CREATE INDEX trips_occassions_links_fk ON public.trips_occassions_links USING btree (trip_id);
 -   DROP INDEX public.trips_occassions_links_fk;
       public            fitbithealthuser    false    298            �           1259    17222    trips_occassions_links_inv_fk    INDEX     h   CREATE INDEX trips_occassions_links_inv_fk ON public.trips_occassions_links USING btree (occassion_id);
 1   DROP INDEX public.trips_occassions_links_inv_fk;
       public            fitbithealthuser    false    298            �           1259    17225    trips_occassions_links_order_fk    INDEX     m   CREATE INDEX trips_occassions_links_order_fk ON public.trips_occassions_links USING btree (occassion_order);
 3   DROP INDEX public.trips_occassions_links_order_fk;
       public            fitbithealthuser    false    298            �           1259    17226 #   trips_occassions_links_order_inv_fk    INDEX     l   CREATE INDEX trips_occassions_links_order_inv_fk ON public.trips_occassions_links USING btree (trip_order);
 7   DROP INDEX public.trips_occassions_links_order_inv_fk;
       public            fitbithealthuser    false    298            �           1259    17234    trips_travel_type_links_fk    INDEX     a   CREATE INDEX trips_travel_type_links_fk ON public.trips_travel_type_links USING btree (trip_id);
 .   DROP INDEX public.trips_travel_type_links_fk;
       public            fitbithealthuser    false    300            �           1259    17235    trips_travel_type_links_inv_fk    INDEX     k   CREATE INDEX trips_travel_type_links_inv_fk ON public.trips_travel_type_links USING btree (traveltype_id);
 2   DROP INDEX public.trips_travel_type_links_inv_fk;
       public            fitbithealthuser    false    300            �           1259    17238 $   trips_travel_type_links_order_inv_fk    INDEX     n   CREATE INDEX trips_travel_type_links_order_inv_fk ON public.trips_travel_type_links USING btree (trip_order);
 8   DROP INDEX public.trips_travel_type_links_order_inv_fk;
       public            fitbithealthuser    false    300            �           1259    17208    trips_trip_categories_links_fk    INDEX     i   CREATE INDEX trips_trip_categories_links_fk ON public.trips_trip_categories_links USING btree (trip_id);
 2   DROP INDEX public.trips_trip_categories_links_fk;
       public            fitbithealthuser    false    296            �           1259    17209 "   trips_trip_categories_links_inv_fk    INDEX     v   CREATE INDEX trips_trip_categories_links_inv_fk ON public.trips_trip_categories_links USING btree (trip_category_id);
 6   DROP INDEX public.trips_trip_categories_links_inv_fk;
       public            fitbithealthuser    false    296            �           1259    17212 $   trips_trip_categories_links_order_fk    INDEX     {   CREATE INDEX trips_trip_categories_links_order_fk ON public.trips_trip_categories_links USING btree (trip_category_order);
 8   DROP INDEX public.trips_trip_categories_links_order_fk;
       public            fitbithealthuser    false    296            �           1259    17213 (   trips_trip_categories_links_order_inv_fk    INDEX     v   CREATE INDEX trips_trip_categories_links_order_inv_fk ON public.trips_trip_categories_links USING btree (trip_order);
 <   DROP INDEX public.trips_trip_categories_links_order_inv_fk;
       public            fitbithealthuser    false    296            �           1259    17135    trips_updated_by_id_fk    INDEX     Q   CREATE INDEX trips_updated_by_id_fk ON public.trips USING btree (updated_by_id);
 *   DROP INDEX public.trips_updated_by_id_fk;
       public            fitbithealthuser    false    282            5           1259    16568    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            fitbithealthuser    false    248            x           1259    16696    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            fitbithealthuser    false    270            y           1259    16697     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            fitbithealthuser    false    270            z           1259    16700 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            fitbithealthuser    false    270            8           1259    16569    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            fitbithealthuser    false    248            9           1259    16579    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            fitbithealthuser    false    250            <           1259    16580    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            fitbithealthuser    false    250            �           1259    16988    up_users_admin_creator_links_fk    INDEX     k   CREATE INDEX up_users_admin_creator_links_fk ON public.up_users_admin_creator_links USING btree (user_id);
 3   DROP INDEX public.up_users_admin_creator_links_fk;
       public            fitbithealthuser    false    274            �           1259    16989 #   up_users_admin_creator_links_inv_fk    INDEX     s   CREATE INDEX up_users_admin_creator_links_inv_fk ON public.up_users_admin_creator_links USING btree (inv_user_id);
 7   DROP INDEX public.up_users_admin_creator_links_inv_fk;
       public            fitbithealthuser    false    274            =           1259    16590    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            fitbithealthuser    false    252                       1259    16708    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            fitbithealthuser    false    272            �           1259    16709    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            fitbithealthuser    false    272            �           1259    16712     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            fitbithealthuser    false    272            @           1259    16591    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            fitbithealthuser    false    252                       1259    16506    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            fitbithealthuser    false    238                       1259    16510    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            fitbithealthuser    false    238                       1259    16505    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            fitbithealthuser    false    238                       1259    16508    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            fitbithealthuser    false    238                       1259    16509    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            fitbithealthuser    false    238                        1259    16507    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            fitbithealthuser    false    238            !           1259    16526    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            fitbithealthuser    false    240            j           1259    16672    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            fitbithealthuser    false    266            k           1259    16673 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            fitbithealthuser    false    266            l           1259    16676 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            fitbithealthuser    false    266            (           1259    16527    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            fitbithealthuser    false    240                       2606    16713 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          fitbithealthuser    false    224    3585    226            *           2606    16863 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          fitbithealthuser    false    254    3581    224            +           2606    16868 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          fitbithealthuser    false    228    3589    254                       2606    16718 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          fitbithealthuser    false    224    226    3585                       2606    16733 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    228                       2606    16738 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          fitbithealthuser    false    226    3585    228                       2606    16723 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    226            ,           2606    16873 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          fitbithealthuser    false    3585    256    226            -           2606    16878 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          fitbithealthuser    false    256    3589    228                       2606    16728 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          fitbithealthuser    false    3585    226    226            R           2606    17439 >   amenities_admin_creator_links amenities_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities_admin_creator_links
    ADD CONSTRAINT amenities_admin_creator_links_fk FOREIGN KEY (amenity_id) REFERENCES public.amenities(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.amenities_admin_creator_links DROP CONSTRAINT amenities_admin_creator_links_fk;
       public          fitbithealthuser    false    302    276    3726            S           2606    17444 B   amenities_admin_creator_links amenities_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities_admin_creator_links
    ADD CONSTRAINT amenities_admin_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.amenities_admin_creator_links DROP CONSTRAINT amenities_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    3647    302    252            ?           2606    17251 $   amenities amenities_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities
    ADD CONSTRAINT amenities_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.amenities DROP CONSTRAINT amenities_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    276            I           2606    17301 .   amenities_trips_links amenities_trips_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities_trips_links
    ADD CONSTRAINT amenities_trips_links_fk FOREIGN KEY (amenity_id) REFERENCES public.amenities(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.amenities_trips_links DROP CONSTRAINT amenities_trips_links_fk;
       public          fitbithealthuser    false    276    292    3726            J           2606    17306 2   amenities_trips_links amenities_trips_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities_trips_links
    ADD CONSTRAINT amenities_trips_links_inv_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.amenities_trips_links DROP CONSTRAINT amenities_trips_links_inv_fk;
       public          fitbithealthuser    false    292    3738    282            @           2606    17256 $   amenities amenities_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenities
    ADD CONSTRAINT amenities_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.amenities DROP CONSTRAINT amenities_updated_by_id_fk;
       public          fitbithealthuser    false    276    3585    226                       2606    16783    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          fitbithealthuser    false    238    226    3585            3           2606    16908 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          fitbithealthuser    false    3609    264    238            4           2606    16913 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          fitbithealthuser    false    3623    264    240            2           2606    16903 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          fitbithealthuser    false    262    3609    238                       2606    16788    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          fitbithealthuser    false    3585    226    238            "           2606    16823 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          fitbithealthuser    false    246    226    3585            #           2606    16828 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          fitbithealthuser    false    246    226    3585            T           2606    17449 @   occassions_admin_creator_links occassions_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.occassions_admin_creator_links
    ADD CONSTRAINT occassions_admin_creator_links_fk FOREIGN KEY (occassion_id) REFERENCES public.occassions(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.occassions_admin_creator_links DROP CONSTRAINT occassions_admin_creator_links_fk;
       public          fitbithealthuser    false    304    278    3730            U           2606    17454 D   occassions_admin_creator_links occassions_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.occassions_admin_creator_links
    ADD CONSTRAINT occassions_admin_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.occassions_admin_creator_links DROP CONSTRAINT occassions_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    252    304    3647            A           2606    17261 &   occassions occassions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.occassions
    ADD CONSTRAINT occassions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.occassions DROP CONSTRAINT occassions_created_by_id_fk;
       public          fitbithealthuser    false    226    3585    278            B           2606    17266 &   occassions occassions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.occassions
    ADD CONSTRAINT occassions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.occassions DROP CONSTRAINT occassions_updated_by_id_fk;
       public          fitbithealthuser    false    3585    278    226            ^           2606    17594 ,   order_details order_details_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_created_by_id_fk;
       public          fitbithealthuser    false    3585    314    226            d           2606    17624 <   order_details_order_id_links order_details_order_id_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details_order_id_links
    ADD CONSTRAINT order_details_order_id_links_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.order_details_order_id_links DROP CONSTRAINT order_details_order_id_links_fk;
       public          fitbithealthuser    false    314    320    3826            e           2606    17629 @   order_details_order_id_links order_details_order_id_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details_order_id_links
    ADD CONSTRAINT order_details_order_id_links_inv_fk FOREIGN KEY (stripe_payment_id) REFERENCES public.stripe_payments(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.order_details_order_id_links DROP CONSTRAINT order_details_order_id_links_inv_fk;
       public          fitbithealthuser    false    312    3822    320            f           2606    17634 @   order_details_product_id_links order_details_product_id_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details_product_id_links
    ADD CONSTRAINT order_details_product_id_links_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.order_details_product_id_links DROP CONSTRAINT order_details_product_id_links_fk;
       public          fitbithealthuser    false    322    3826    314            g           2606    17639 D   order_details_product_id_links order_details_product_id_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details_product_id_links
    ADD CONSTRAINT order_details_product_id_links_inv_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.order_details_product_id_links DROP CONSTRAINT order_details_product_id_links_inv_fk;
       public          fitbithealthuser    false    3738    322    282            _           2606    17599 ,   order_details order_details_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_updated_by_id_fk;
       public          fitbithealthuser    false    3585    314    226                       2606    16753 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          fitbithealthuser    false    226    3585    232            .           2606    16883 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          fitbithealthuser    false    232    3597    258            /           2606    16888 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          fitbithealthuser    false    3593    258    230                       2606    16758 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          fitbithealthuser    false    3585    232    226                       2606    16743 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    230                       2606    16748 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          fitbithealthuser    false    230    226    3585                        2606    16813 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    244            7           2606    16928 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          fitbithealthuser    false    3631    268    244            8           2606    16933 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          fitbithealthuser    false    268    3627    242            !           2606    16818 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          fitbithealthuser    false    226    244    3585                       2606    16803 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    242                       2606    16808 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          fitbithealthuser    false    3585    226    242                       2606    16773 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          fitbithealthuser    false    226    236    3585            0           2606    16893 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          fitbithealthuser    false    236    3605    260            1           2606    16898 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          fitbithealthuser    false    234    260    3601                       2606    16778 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          fitbithealthuser    false    226    3585    236                       2606    16763 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          fitbithealthuser    false    226    234    3585                       2606    16768 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          fitbithealthuser    false    3585    226    234            \           2606    17584 0   stripe_payments stripe_payments_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.stripe_payments
    ADD CONSTRAINT stripe_payments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.stripe_payments DROP CONSTRAINT stripe_payments_created_by_id_fk;
       public          fitbithealthuser    false    226    312    3585            ]           2606    17589 0   stripe_payments stripe_payments_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.stripe_payments
    ADD CONSTRAINT stripe_payments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.stripe_payments DROP CONSTRAINT stripe_payments_updated_by_id_fk;
       public          fitbithealthuser    false    3585    312    226            b           2606    17614 8   stripe_payments_user_links stripe_payments_user_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.stripe_payments_user_links
    ADD CONSTRAINT stripe_payments_user_links_fk FOREIGN KEY (stripe_payment_id) REFERENCES public.stripe_payments(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.stripe_payments_user_links DROP CONSTRAINT stripe_payments_user_links_fk;
       public          fitbithealthuser    false    3822    318    312            c           2606    17619 <   stripe_payments_user_links stripe_payments_user_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.stripe_payments_user_links
    ADD CONSTRAINT stripe_payments_user_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.stripe_payments_user_links DROP CONSTRAINT stripe_payments_user_links_inv_fk;
       public          fitbithealthuser    false    3647    252    318            V           2606    17459 B   traveltypes_admin_creator_links traveltypes_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes_admin_creator_links
    ADD CONSTRAINT traveltypes_admin_creator_links_fk FOREIGN KEY (traveltype_id) REFERENCES public.traveltypes(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.traveltypes_admin_creator_links DROP CONSTRAINT traveltypes_admin_creator_links_fk;
       public          fitbithealthuser    false    3734    306    280            W           2606    17464 F   traveltypes_admin_creator_links traveltypes_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes_admin_creator_links
    ADD CONSTRAINT traveltypes_admin_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.traveltypes_admin_creator_links DROP CONSTRAINT traveltypes_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    252    306    3647            C           2606    17271 (   traveltypes traveltypes_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes
    ADD CONSTRAINT traveltypes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.traveltypes DROP CONSTRAINT traveltypes_created_by_id_fk;
       public          fitbithealthuser    false    226    3585    280            D           2606    17276 (   traveltypes traveltypes_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.traveltypes
    ADD CONSTRAINT traveltypes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.traveltypes DROP CONSTRAINT traveltypes_updated_by_id_fk;
       public          fitbithealthuser    false    280    3585    226            Z           2606    17479 J   trip_categories_admin_creator_links trip_categories_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories_admin_creator_links
    ADD CONSTRAINT trip_categories_admin_creator_links_fk FOREIGN KEY (trip_category_id) REFERENCES public.trip_categories(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.trip_categories_admin_creator_links DROP CONSTRAINT trip_categories_admin_creator_links_fk;
       public          fitbithealthuser    false    3742    310    284            [           2606    17484 N   trip_categories_admin_creator_links trip_categories_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories_admin_creator_links
    ADD CONSTRAINT trip_categories_admin_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.trip_categories_admin_creator_links DROP CONSTRAINT trip_categories_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    3647    252    310            G           2606    17291 0   trip_categories trip_categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories
    ADD CONSTRAINT trip_categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.trip_categories DROP CONSTRAINT trip_categories_created_by_id_fk;
       public          fitbithealthuser    false    226    284    3585            H           2606    17296 0   trip_categories trip_categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_categories
    ADD CONSTRAINT trip_categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.trip_categories DROP CONSTRAINT trip_categories_updated_by_id_fk;
       public          fitbithealthuser    false    284    226    3585            `           2606    17604 <   trip_purchase_records trip_purchase_records_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_purchase_records
    ADD CONSTRAINT trip_purchase_records_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.trip_purchase_records DROP CONSTRAINT trip_purchase_records_created_by_id_fk;
       public          fitbithealthuser    false    3585    316    226            a           2606    17609 <   trip_purchase_records trip_purchase_records_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip_purchase_records
    ADD CONSTRAINT trip_purchase_records_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.trip_purchase_records DROP CONSTRAINT trip_purchase_records_updated_by_id_fk;
       public          fitbithealthuser    false    3585    316    226            X           2606    17469 6   trips_admin_creator_links trips_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_admin_creator_links
    ADD CONSTRAINT trips_admin_creator_links_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.trips_admin_creator_links DROP CONSTRAINT trips_admin_creator_links_fk;
       public          fitbithealthuser    false    3738    308    282            Y           2606    17474 :   trips_admin_creator_links trips_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_admin_creator_links
    ADD CONSTRAINT trips_admin_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.trips_admin_creator_links DROP CONSTRAINT trips_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    3647    252    308            E           2606    17281    trips trips_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.trips DROP CONSTRAINT trips_created_by_id_fk;
       public          fitbithealthuser    false    3585    282    226            K           2606    17311     trips_components trips_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_components
    ADD CONSTRAINT trips_entity_fk FOREIGN KEY (entity_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.trips_components DROP CONSTRAINT trips_entity_fk;
       public          fitbithealthuser    false    294    282    3738            N           2606    17326 0   trips_occassions_links trips_occassions_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_occassions_links
    ADD CONSTRAINT trips_occassions_links_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.trips_occassions_links DROP CONSTRAINT trips_occassions_links_fk;
       public          fitbithealthuser    false    282    3738    298            O           2606    17331 4   trips_occassions_links trips_occassions_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_occassions_links
    ADD CONSTRAINT trips_occassions_links_inv_fk FOREIGN KEY (occassion_id) REFERENCES public.occassions(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.trips_occassions_links DROP CONSTRAINT trips_occassions_links_inv_fk;
       public          fitbithealthuser    false    298    3730    278            P           2606    17336 2   trips_travel_type_links trips_travel_type_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_travel_type_links
    ADD CONSTRAINT trips_travel_type_links_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.trips_travel_type_links DROP CONSTRAINT trips_travel_type_links_fk;
       public          fitbithealthuser    false    3738    282    300            Q           2606    17341 6   trips_travel_type_links trips_travel_type_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_travel_type_links
    ADD CONSTRAINT trips_travel_type_links_inv_fk FOREIGN KEY (traveltype_id) REFERENCES public.traveltypes(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.trips_travel_type_links DROP CONSTRAINT trips_travel_type_links_inv_fk;
       public          fitbithealthuser    false    300    280    3734            L           2606    17316 :   trips_trip_categories_links trips_trip_categories_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_trip_categories_links
    ADD CONSTRAINT trips_trip_categories_links_fk FOREIGN KEY (trip_id) REFERENCES public.trips(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.trips_trip_categories_links DROP CONSTRAINT trips_trip_categories_links_fk;
       public          fitbithealthuser    false    282    3738    296            M           2606    17321 >   trips_trip_categories_links trips_trip_categories_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips_trip_categories_links
    ADD CONSTRAINT trips_trip_categories_links_inv_fk FOREIGN KEY (trip_category_id) REFERENCES public.trip_categories(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.trips_trip_categories_links DROP CONSTRAINT trips_trip_categories_links_inv_fk;
       public          fitbithealthuser    false    3742    296    284            F           2606    17286    trips trips_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.trips DROP CONSTRAINT trips_updated_by_id_fk;
       public          fitbithealthuser    false    3585    282    226            $           2606    16833 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          fitbithealthuser    false    226    3585    248            9           2606    16938 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          fitbithealthuser    false    3639    248    270            :           2606    16943 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          fitbithealthuser    false    3643    270    250            %           2606    16838 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          fitbithealthuser    false    248    226    3585            &           2606    16843 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          fitbithealthuser    false    3585    226    250            '           2606    16848 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          fitbithealthuser    false    226    250    3585            =           2606    16992 <   up_users_admin_creator_links up_users_admin_creator_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_admin_creator_links
    ADD CONSTRAINT up_users_admin_creator_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.up_users_admin_creator_links DROP CONSTRAINT up_users_admin_creator_links_fk;
       public          fitbithealthuser    false    252    274    3647            >           2606    16997 @   up_users_admin_creator_links up_users_admin_creator_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_admin_creator_links
    ADD CONSTRAINT up_users_admin_creator_links_inv_fk FOREIGN KEY (inv_user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.up_users_admin_creator_links DROP CONSTRAINT up_users_admin_creator_links_inv_fk;
       public          fitbithealthuser    false    274    252    3647            (           2606    16853 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          fitbithealthuser    false    252    226    3585            ;           2606    16948 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          fitbithealthuser    false    252    272    3647            <           2606    16953 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          fitbithealthuser    false    3643    250    272            )           2606    16858 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          fitbithealthuser    false    252    226    3585                       2606    16793 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          fitbithealthuser    false    226    3585    240            5           2606    16918 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          fitbithealthuser    false    240    3623    266            6           2606    16923 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          fitbithealthuser    false    266    240    3623                       2606    16798 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          fitbithealthuser    false    240    226    3585                y  x��ZKs�6>{���@��&�䲕Cnٔ�<&f� cǕ���@�ڱ������7v��Z�^������ù.�$��dW�}�����oW��Q����k'8����vE �����O�\nZ�����0�)gϛf�J:�KOږu��r�;�-�	A| � ���P.���,���z.��6���@@N������mBA|�7��&�N�ۼ���T�@E��P���� >0į̪���u�i��[��$u_�j!�j�J5wQ��s-rA\��	�C߱��NI�Yc�?9k�/2V���Z��5�U�攷m^���YQ$��
\*���yy,�սԬݛ�qH@\G qZK;n�W�G�Ց�:^!?�UɑK�"y���6ql��˥�Y��s^d��b��h\Ҍu�NI^�<�;�I`J���%�k�.�j1�<S_p��ՐK"����+�C!˴���x�zȅQ�z8��d� �C.
���bܙ�>�'_�i��J�'^o��+H��@��8�|m6�B��BUs�ݢjؑ��������ۦø0r RI@ƒ�ݨ��*M
�.xc�p)��㴏����E|�td�]ǴJ���[���ՀK���梩
�n�.��]��I�Ʌ����R��)�d�F��u6���"����������r����������C�a�h�'\��~cu�T�kch�=��t'���l�=믰&�SR�,���Y7*=R�N�]�Xkc�Ǳ�qx%�S�<��{3E�_�@xzA#%���=T�#�]y�9!.e��8�]s(.�K��d��=ϼn\�v���#�����)�}�]M�T&S�8?�@}A�N�b���u ��`����vD��Z{�pE�]N�<$�εh*�_�x>�Rp<��oln��ǈ��:��ꑉ旦�m7�`*&z,\�td�cv���t� G�:�{]@���$����ҩQs��B����>�Ȭ!�+�q�U��=���۽LϞ{X2� .���1е�5I�޳�ޙ�>`����!
l ����:�M@�$�O�.D��4�Ѓ-�Dd�.iD����<�\= p��a����ybe޽��s��q�������A\�{���4M�-����t���ҁ�ց����/״�]WZЯ�"�m�c�9 �F���b�R��Ǫy�'wk�\��Wφ�;�9o�sVd����כ.�
v���M�ڔ�)���m��B�V\����z�55��҉.[�V �83�����!�+3913��Ր���W����`CV�����<���*ꘓL��*�ٗ�J���_$ԋA\=�]>C[7�݋��N�Z���Ĉ(JWf z�̌.��qe����(�Ȯp�.��3޿H"s�����xf�G�I�T<���.��B�sx.�"�6\�W[�	���N^ĳũI�w�y��{��e'��yq!N�&���]������v�g�%�Tߵ՚�^5k��u\���*����ً��}vN�ۉQ�������͊E�}�%�,ڵ��z���(�(�t������gn��nX˺�%��9ڿ8М�'�s��wWT��p)��ħt�̐v��}��YS?Te�|��*e�ݐ�Wh�����\ʪTdX�G�4y�m�t�Vz�,?qW�E(  �"��fj�|�b	cW�ïjm)���O����g��[��u��k���P��x\-ߩT�c;�}�+�gR���\,Bs�������[��E��0�d$�"��n�X`E��J��z�٘�+j ���?�,tj��&}HZf5,�*�i��{�KM|�9���H��'�խ���4M�.���ף��t�x�e�����R���t>Ϭ��!?>����\e��M�o�R7y�~f͏|u�*o�*�P*�0<��� *�cܭ���������?F}�MR��CɎ%7)�y����������\;с�?��q���:�B�_�GA\�|ך�-����V!���ie���@�`�uUa��5ݭH�~�Tf�Z����8��$%XU�ų4ʍ;8�;.�+��&���6��A\���H��`8�@\���m���8���'.j�S���j7?$]2S�8b�Eb��7�1�+�_}���J!�+��,[cWj#NS��6�r�/��O��o0��         V  x�%�[��0D��Ō���^���1U��Q�� 9vss��i�{��x/�5�}p�p����N<{�'�3���ƕ|Ǚ�����i��1-=����ϴ� >�r���D�,���Ab�/�ey���`����`��x!��@ވk!��Y��r��d���C�`��C�/�e)Zp@m)Z$r,E�Br*�E#9�b���hqP��hqQ��h�P�h��8;��Q�h��-�E�J�,Ա-u�D�A=+��?k��9k���!E���#Z9��E�@�k�V���bT�X�V��֢ՠ��hu0��hu1�����P������1e#Z�mD��P/Ѻ0�f�s�F�̳��gG��8tF�~8aG��pҎh�R�h��p�.�z�-����ˮLfQ��Jfn��vp��ˀ[|�=,y�~L-�W��l�y�~�&�Z�t0����Z�ŏ�����eK���Kߟ��KЕ�?&���,P����1��\E���e�Z�<@.IWT�
��+(�cā�����R�~G�<��z�]F�xe���ZI�0\6�����r�dˌ�}�dό�}�dό�M��9;��+('���u�y|\����ⱷ5�y�\��������         �   x�u�1n�0Eg����I�6[��]�fa$&�H�H���Dp�8�O �#7�JptwK�ŷ�D-�Пo��Zb��F��WBɉ
g��Ɲ�a��Z��a�q�ߺ�����V3�O�%�ՇJW`�X�5mɗ��6� >�9; �"�+D�t�̔jR��ʋ���������OJ�V���&�V��D�*��*/��i�Q�~�         �   x�3�H�I,��t�H�KI���, 8d��'�V�%��r�%��y�{��y�G$�%y�V�X�G�T&gZ$�De�WYF��[:�d����L��4ed`d�k D�
fVFFVz�8D��b����  O,             x�3�4�@�=... �      4   Q  x�픻n� �g�g�� �/����*U]R�Kb�$(,�I����SE�����n?� ��'i���Zzi4y3���S 8�ڦ��S��_��	��R{�� t�oѡ�Rם�p��$��P{Ky�}������a��pȎ3��#\O�Zh��Y���Do�E�`?�fW��B��A��J�C`��+�B�}(��3��X��b^�ae�(ֳ��=����V���:I�t�Y}��!��n�6�I
������O�
�^�[�D(-YA�,��Gr	#�N�AT����P��<�է;��g��1�b���?�Ф��B�J�t4�=����1�mH      N   :   x���� ��=L�t��?G��{�74.�������M5|���ڨ�7�����
�      D   4  x�%���!D�3f�4����V}�9̗�4f�V�j�2�n���ا�~1b�V�Ō�[�+N��_|q��z�� pT�	�q�:�}hi�!���n��ہ��vhǈ�Ў��+�@s|q'�mK�]���ۄ��:i�#�]C;��[�J�&��������ޓjiO�9�Qmc~�.�|!e�`�l�+JfvLM�f&f�c3�%3�	%3'�Kfr:��3��͍���<�.��7%S���Y�钩[2��YS��F��R��K�,i�y�4̊�+x3��W�� t��A;t��v�ؓA;Vl������~�qj      >   #  x�UQMk�0=;����2�ĉ���1�ؠ�v�758N��B���6Z�����eI��C4'��t���H�Liy�yV��(7��I 3��
�$����EJMJ�(%W�\a��`lYAl�$�I�^�{���o�,�;Š�q]&Ԇ������Ѓ���&����STR�	'���+c?8���iw͖���e�s	�[�u�A�꽹hn�JV��'� r�M����c}��hG�!�.ct�T�L��/�tJ%�N���k������xY��-����NMD"i�7�yʲ����N      @   F  x��?k�0�g�S�֥��u��tj��]�(�9���\�߾r�HրZ����n�*}�B�B�c &,���%qyI,���`4�L���hW�Ahk����9��m+��Z�	b���v��  Q�����|z!�w�J6���{��N��:M'Î��=%3G15F�#h8����8��-�	����bj����[�����}���D���d-�M�$sr���4s�9����:u(�1)}^G�z����ܰ����)�寴T��*�����$q��2:��p�1L�&���z���pG��)���]Y��)sr'��I��:'�IQ?�p�a      B   b   x�33�,I-.�)���E�%��y\ff���9@\R���ef��acq�Y`U �������Is|���$��Ip��	�������"m����� )�k3            x��}��9���)
u��l���˹�� {ۀ�f�w]�Q���w���Ѿ�>ɒR2#��!�R�_��r8HE�<��o�o_�|:0E����������k�#);��?��{���/���������%p����G ���_?}��o=2�R��uT��V�-�+���?������_�_�����R��_���7>���������ZpQ�������_%!A���߾���O�������\D�<2��F4)���cQ}J*i&�S������󟻬L��o���de��_�>�ӧ/m�)��_�y����g"���w����?�gd/X��<9�Ol�����������Aֲg��:>��VZN$Mx��I���b,#��x|Y<K[G��%+��y����c���^O�GN?����_]��	����o����e�?�y�z��F��6��~�{���O��:���Կ���}&��d��������@a�'b/x%���P蚠�\����5eP�wCP@$(3�@�{�����g�(l�����?>|����/N?Z}����h�����w8�d+�B�dwlsR������?yd+�@�B�G�{�|\WY��_��,w�!�,��n�j ��f.��eҬ�Y� �Xnkד��i��	�L�,(~D�{���TL�,} E�

iZ'�z(#�B`AI5\E����r�#��u!-����$�n
II�a?�$f�� } E�	���R��2eP�wCP@$(3��=�#&K@1k�"בF��wCP@$(3SP���~�e����������쪈Pې��1� �B`I5\�L(�K?��y��X_u5,�pmϝ!eP�wCP@$(3��=9"K@Yu5\+΄�ڏaEP�wCP@$(3�������r����5AѤuu/�A���B A�i���K6��Y� ʪ�y�6��)3�
�n
�e��(vO��N*!D�>���b�Ժ���H�A!���4,�"Te���PV]�kњ�oL�!��Ȼe�����T�eP�]�#�M����}S�mU�w���j�����׻˛�9�K�5�����i�_���J���Or���O�g�������ہJk�U�Ș��=$���m]kE��i�2{�S)�l�M��R�JC�^�O�� �VL���U-�w�䕟�B�e9I(��NVVü"IF��o�����_�q��P�g��80������~M�;�o�=pA�,�B��|-��ByT�kN\cJ�B���r�=��{6Ij/[��t�y%��輆�5�z��Z^����0��B���y�Q���{A�+�7�B�{�QQ��^��]w3]��b�x��L��n��f��������"O?a��^�w%���s�IpD�MQt�#�p�T��,��ɪ��igIGm�8�0�ny�a{�!հ���Q��vԌ~����ִ%\9�9�4�ny�i{�)�p	���!c���Uw�E�uFI�gK�w˼�(6�j��޳𧒖e�(��s�M�("�0�w˃�؃���P��a�+e�<@��^��%�,�"�BB !�i�˘�0p�̸�(5YzȘ�U7�)���z�sa����L��G"B��6l�����3Y�T�qJX�ED��w��5
��\��ˠ0�<��Y� ʪ��j�4W���1y�̘�B`3橆P������PV]�+�l�_Y!�#�y�Ql0�p���V�Ͽ�����������1���[�)��1%հ ����S� ɪK���n�zA/��	�L�$!���-_u<��U�4�E���屸Q챸T�B��/f� ��%�c&��"l���(�I5\$dIIŨ��P�=c�(���w˝�Q��J��(4$I��)aY� ʪ�	#�H�7q�x�<7
�=�jX ��)��u��Gfֽtܲ����%Q��{�8հ
S~r�����U7������F���-�čB`�ĥ.�.��BY� ʪÍ���1Џ�[��؁>�p	n|r[i�����5��c�����A!���4̂b�p�?��VY� ʪ�ú5�q�1فw��5
�_��ˠ�녪�&�S� ɪ{�̏��e�!v��w˹�(v�j��9��3����HV]ɷ̱�;-G��2%?
�Mɧ.A����9��trF@Yu5�IՒ�Sb{x���B`�é�P���Mw!g��uW�α��RcnL��[��G!���T�(:,�=e����7�:Ws����p��t:�@O��@1�(*�'*K?�"W]�;Mhk{Mg�w���(v:�j� JX��,�Fe�(��歗Yۦ5�1x7���L5,������9} e�c^�h�GB�9,1�nyXb{X"հ ��?��6K@Yu5olͭ��"��wCP@�q�T�eP$�SRie����A��߽&?��EP���=��/r��5s�O�/]%���=kS�*�w�J��P����Cc�Z��Ҙl�Ȼ�d;+I5,zg��X��U7�V72���l���Q,(���/��pȜ�pv�X�������8'�U
���M��Qt�:�p	�x�{�c�$|��(�n?��M/jL=��rOh�'�jX ��	���,} e�����i���2(��呛Q쑛T�eP�������uk�5��:�w�1x���@W�K4,���m25�h��O��U��ᆵ�֘JT#�Ql�'հ 
?���Pֽe�m�[&��/e���K��~)��ˠpjz�U���$�Vl��Y�q����[~'���$�pqL�q6Q�>����C]KU�7�,�n
����jX E�&K@Yu=�s#�$F ���HPf.��'X�3Y� ʪ�yר�v��_
�n�e��fR�A�C�������'F���� r��;M��Ph�"��Y� ʺ�y��֝CT�-����|�al�������w�u� �����2
�SR�A*W�gc
�PV]Ϸ��&֐sj���K��~)��ˠ�zUٳ/�'P�����i7�1�s�#��Q�:%�p	�zZq������WTsb��T��A!��0R��ؐ5�*��d�1I*NIR:I�z�&IRz��VY��3ώQ3K�N� ��,�h'B3��?�n>��]��(��[NG!��T�e�	o�y\�#����uO>�Z��
����w˓�ؓ��EP|D��@@Y�\���Ԧ7�%U��tI�@/���C��y� ʪ��qnx�P��#��٣諽��P��x<��P֭rc�$Bs��;y��;��.�
;�����Y� ʺw:�+ڶ
�n
��ːjX ��/��@�(f�|��?>~����g��`d'�������b4$܉M׸�������\�~}�@�a�	B��)B��5ZoD���g}��7~�6Q�2{�Y���ғW�_�W�ڧaSLe郿��_��_��0��b�u��э#�	U�p�M�܊_�ݮ*90T���4�/!�����!�+*��|��~|s|���	tx�n�.�z8�z��3��*���v��
�R%�pqVY6���s�.�r���PkT<��2L����p���>�D��������4��<�W2]����ᓺ22O�c�_����p�ӏw�؎��>�c�F:ɤ�z�[huͧwI�,����]�$��i+9�J�(����fM�<��׏��5�k��o�\d�>f�,����[I�J�<}�I�?�nR˾=�����L:�7���̤A�+gҩ�{*+�r��[��F��
kz���y44y�d�n�O�/����������~�'���b��/���A�~"Й�r·�+Y��x�����,UY�%�+|���ŧ�΅�;���ɋS�,8��SQs�郳�4V��b;47Nʾ_X�e��+�r�����X1�i���h��s���1��|��|��6��T�
D.x7�w!���Ss�Pr��j����,} e��E�eZ���    ��,��!( ��j��(��px��2Vg�'P��d�9����A!�7�R�@	SõFem�>��n����$�\��A!��JR��]��u�9} e�C;�^�Q>�"Ɣ�w�1e;��@���b"K@Y�]*-����qx�<�7
�=��j�
��꾕����U�8k� ���ۀwˁ~;Ч.��pѕ�<K@Y�H�e��`����!( ��D��2(�t����(��1��Nv�#f_��!( ��a�a1<��xe&ۄs� ʪ�vl���JԅG��r�5
��}�A	�|Fe�(�� ��)�z2�n9���ξR���z��})#} e�}-�vB������!( ��a��(jOȞ�/b:%��O�P�꒞6�k�ۙ��AG�-?�Q짒jX@E�OBX��GT�q�����>|�����}��ˏ��돟?|k�g��?>�����>��������C��s���������3����r^5�-$V��N?�?~�~�0��!����󇖩��tl��Y�]��H��Y��OYq������,�9ϧbrf�l��a��v_6��߻/�2<��Ņ��Tݝ�'�r���?�Ž�Z��Z]1&��;V�zrLSc�A\��-ԣ�u�a�[���ʪ{Oޅdgtow��w˭�Q��y�an+B��,�#*�n>u�8a\-E5�wCT@앋T�eT8�K^�3T�QYu������8�E��{�/հ�
ui��YzDeݗl�V��V�n�F!�,հ�� �Tg��H���]�91�%B5�� ;�.� <W~�+���*�v�Ѯ�MӉ�b�2TI'3m��xŖ�������e����5.{�-(�8����ྋ�펞3�d���4E�,{u(��+.�@�^m��B�]�zI{�WC����͞ЫA��:5H����:��j�G��owW�!�ϛY�ѻ��@��:W���ݿ�������B�8V�t>��;(y��CZ�R.붹{쀮�cǕ��o�/;@�c��b�`�2��#}�\��y�;�i��KC��K�m�l��sitj�e��|/Y��|?�ѫW�r�V0�v@� �-w�F!��Q��TD(�J�*#=��j�����ʶ��w�������TԞؤ�ԜQ��ζNKn�{���EF���͞p �nR��:�4��=B�G�^5K�Dǉ$�!��@ƚ��T���J�<}@����?>~=/����q�'�q�n�}mE+uG�B9����e����Ȃ$e%�%�.,<.K3����H@*�r-Fý=B�ۑT���R�Hg:�y�w����Ȑ���� �#Cj�b���l:ңW�z&_����S=bd �G[r6հ�����|b$GL��kl�,�#4y�H����F�H����LW�^p���>Ϋ{k��������E�:od�'�j��NR�j)*MU�>x5[�N��^+0�7�w��s;~�.�����?�":K��<p�Q��^+�#���EbM��fOk@�[F�� E�f���f�ѫ��SB
#e��+Ph�"^����z5wKv*1H��՞H��QYz�j�8�V��T����ɋxu��fO�� �^���ՌN�@���O��{�t\;C��w?�]��@�������O ��+�@��U�>���Y�H��C����R���
�#v�;�4�}��� vDUW�	\�ءC>�~�����Vyz��M^jUj�R+;�����F��/���褤�Y�K��UL�,=�G&Te_��P���c����m�l��jb��'(y%�ңW?�뛖�H"4ګ�ɋxu��fO�� �^������?+v��>ңW?2%��Mӵ��>6y��� ��	���eC=1Hѫ��=[j����LIK!�5�I��#4y��� ��	�����S����=Ց<�4×�-�NQs�탱���+M��_�`Tu�����Au(dJD�#�.��ә��N�=r@���J�߷����ꊑcW!r��g'���c�x���Ú��
��16y��t��fO8��n��HR�ji*��đ���GSt�m��w=�ɋxu��fO�� �^�d٫���ڙW=z���\���;�ρ���|d�@Y�iX@��4��/ہ/����~�YbɁwCT@l!�T�¥O�����cBU��|�P�_�cB�՝j���RBUT����&�|*��y>u���Z>p��uR�����UF���͞q���e�JR��:�1��l��ѫ��ݕ�~�e3��1����]�+M��_~WT]��[
�r�E�U%��,�c�x�Y����SJ��tl�"#b��fO8"�p�\9MR�j�{	;�kz�����JXŵ�5ګ�ɋxu��fO�� �^���ՒTZ�,=z��bئ����ǟ�&/��y �=�W�p�<ΐ���ǒ�T��W�U����LrjbWg��rWg���j�������=�6�GTY�W��F�+N3�M^$��m�l������4cb��W�=!ge�������О���M��_���Nɕ��o�/�S���S2��;B�o���1r<�Ck�����a4h�"�a��fO8�p��`H��Ӓ�C�
� =fT����X���8ԍkIi�b��N��AD����u�����W(�;�f^^��ʨK�u�*/gZ)?���T̘�c�U�2�b�iU��źc�T��	!k�R\���*�f��iT���"&K����pmôi�0r��t�>պ������Z��S�\�a���R��@�����`���5���{�������c��b��U��TZ�MiGz�,�Qw���Q�OhC�Y��m�l��5�
��A
^-B�G���@�^���S��b� y7L���ʩ�ET��8�'I�Qy�1������,4y�X������X����*$C$?AGz��7���hykI�����A���+M��_~���8���U��2�lD�C���I�ZE�/��M^dD�� ��	GD��S��چ+ڂ��=z�.� �S�j[q�c����x�����ˏ���,R���C�,�>�K�b5�w�sZ
\���!�
�\�bMU.�XE(�H���c���~��ˏ���T;y����`��6���I~u��^�A 39�6��!��d3�w������a6v�>$]i��v��C��f���!��	�Y))��;x���&�Tw��Q��Eiy �=�"���Ib��W.4Bd�ѫ���#�r�k����#"t�>"^i��v��#"���8��;Ğ�Jٳ�1�c�x`]�Fkhߺ+n;�M^dD�� ��	GD��N�A��:�&�:K�^���0��=�m�ۡɋxu��fO�� �^����6����L9z��V,���#F����W�m�l��^�ݲzIR�jF+�T����G�LC9m���WC����͞ЫA��:5ȲW3���}�)=z�>J��Z�\��ݿ^������J�߷��_���k��O�*���*�B��1qJ'�S�N�zV���8��ߔ8e��S�+2=]H�N��'N��4��8��\H�J���gwSGzL��ݿ~��W�������0�S��?ZC��:�^~`�Vb☗�r�LWZ�,}�4��Ck��aDh������+od�'�{�p��N�?�^�Ń�>��ңW�5��P�(մ���f���^ܝ����+#3�����Jg��&*�J��7\
� �HTf.�"e��#���#*|UTT�k?j�-��wKTF!���.�^�{b*���ʪ�p4=�}����Q�Q!���4,����,=���\���hͭ��%h�"����͞p����Ub��W��H��ѫ՚��3�P*4C� ��a�!��f�a����GT�롡�V�[�3��H��� ��	cwC�IR�j}�l����ի�c%Y�k������kfP1���^]L��7�� -5��%w�U@�﹊+M��_>W�������;(����d�&�;�#�=s.Xݐ~���<%od� �	  '���p�\{NR�j��#��	=z����S�kݶ���~��}D�������GDPu��}
�R�`�1��IKx&�;�ڽ�D���sy�M^dD�� ��	GDV��Zz�D������9�J�X�0m��}D�������GDPu�´	\�ء��U,=��c�x��S���-Q�_�;v@���J�߷����ꊱcW!v�=���g��c�s�֭ntG�(4;6y��t��fO8��n9�����vOX���ңW��;"J�
��h�
e�b��#╦�o�/?"�����K�*��*�/Ď�c�O���k�q����&/2"�m�l��#"w�)�� �^�͞Y�W��������z�pfګ�ɋxu��fO�� �^����6��4r������1�#-%��e.��}�w��������@�5kU�p-�A��Tᩑ}�WJ��c�������V��ӁJ��C'�0\���ۧ����ج|�T�P�F����x��\��Zݝ{�׃���]-jqIj? �RO���欢�sLs��y����]c����"���#����o�/�A�#��l��?�({**>��:����O��Zu���#��{�������c��f���b�`�2�vf�;xZ��MM�6_���ȾG��fO���ݒ�J���j����L�"�ѣW���b��S���U����~�4�}��T]����B�0{a���g�1v�����N������Ȉ������ �-�@�����Z�O�1�ѣW˷;"vM�D�t}s��~�4�}��T]qD���;(	�����،c��������o�G~>1�P����3����������/�6-J��QA����?~u��f
��[��[����J��\���}�:!�����z�M���߬��ג��S��S�$�֕�[?����ҟ4�M��6��f�i]���Ȃ�~w���clv���F�����κ��lԯ���=P-�	�0�+���ֻ���/�|��**25��z*Wj0/l�d�!����H�î߱�beM����r�=��$�Sy�;C�Ӕ�K�S��{�*{*�Ŝ�<�O�M�U�u�U�kM�%�`�UO��pؙY��#�x�w*���$���T�z�r�S]jf\�=�;�#Z�V�����5Ԙr&�f	y�L ��L�"*���r��Q����L�_=ٝ>��/rhUM_w�����=k������5�b��YzV����o]�������F�E5ur��d&甽��^�S�,9J�NRN+�{)>J��7�jJ�3)iE�L�);JJ���,=ʩOrN#�b�O�ӏ?�=\�x��2��R39��9e��msz�Ӝ�>��9��84�&��9{���9��!�
'��p��G9�IN9�SM�)�4�i��/��虜Sv��~=��=Gz<�������=�5���X��}K�J�߷���U׼R�µ0�&~�f�BWdR�qN���9RJQ��]�ǎ+M��_>v��+Ǝ\��a�"��,=Ǝ�r]��\���Mc�h�r}��r],.�������T�����dg%��2Z��Re��7|��/@��\v�H?v��4�}��H?��f�O�*������g�1v�Gl�j#��2�ۘ�gؘi�ؘMU.�%º_(��G��#�}dT+/~'%��G�	�;?��\��c��Zz�u)��#Zo����}#��D�����+M��_~\UW�gpb������#��4.��{��Yz �$u��勽���B�w���{&ó�r�ڀ\l*5���فײv=k���ԌVB\{�!������9}��G,w3J(��A-w���� ���T�,Z�������,=�E�yM�� ��~��5eh��i'�/�2n��(;�"��-�3}�'�?>�v~hE��ң�_j@bz�-���Ζ�fe��'�uE�ң�o�V0���^�;ophW<d�Ş�JX��G�%�J��ڑ�ꋂg�$@3�ܜWT��Qn�78m^�&L��28�+�b�jz`!%G�5�X���Sa[w�(E�X4+K�Ix�Oh��G���4~��Hބ?W|��!�S-D��x{���;Gz~q���74C��e��̜�ge�4�Ѣ��U�2h��ل%���Qj�� G{�Z�]�K�?Hh�[���9�����sSE����4CH}<�I��ң�����}��MsU܆fe���HYz$fF�r�ܭu�4��ů��!��B���O�Q�7|k��Nk�3v��i���&˕��o�/����y�8�+;�q7�8��F���o��̶�ם��-t�;�4�}���1��f�H�Z�������m��c�x`�m�*^��E� �&�o�A��f�\ yP��A��:����������5��k�-����E�:od�'�j��NR�j6æ����������5T��+�A����͞ЫA�[*�'Y�jFC�4bE�>x�x��5\�΁q�^M^ī�6@6{B��n��� �a�ј3��'��[��O?�?��H      (   }  x�-�ۑ�0�����;����W7p�=�5���?կ����̮�̡��̩�[̥��̭�;̣��̫����/}��E?}\���J��%�.O_���)O_�[���-O7|G�J��\QM�ʭ����*1�m��,����VS�r[-1��U��]QG���+PwEo�|A�@��/�o���]ч@�}
�������o����h��_���Fh�m|��EJ���_�?���h�mL����h�ml����h�m\���fh�m~M��h��M�M���)�t�\M��-�r�<-��+�r�j-��O��U-��.��37Zn[<�<�n[K�嶵�n[G���u�n�M����	�ݶK�����n�C���|
�ݶy�y�ݶ�@�m�tܶ�@�m�	t�v>���N	t�v�@�mgt�v�@'�j	t�v8i�w�v�@�m�
t�v�@�m���@�m�t�v�@�mw
t�v�@7�x˨��r�a�}���<g�qč[��8��-��q��[�w㬛���q7o9�o�r��޼�7ν��p�͟T�b���x�^l�'K�����1��z̟ql�'��y�2걆��	�{1��8��<")<")<&")<2")<>")�r/�)<�")<�")<�")<�")<�")�?[��(���X������𸋤�苤����H���x��𨌤�،����~7��4�£5��c6��#7���7�£8��c9��#:���:�£;���{=�U��H
��H
��H
��H
� I
�I
�I
�	I
�I
�I
_�m�7'<V$)<b$)<n$)<z$)<�$)<�$)<�$)<�$)<�$)<�$)|���_��h��𘓤�ȓ������(���X������𸔤�蔤�����v	�^,r/�5<j%)<v%)<�%)<�%)<�%)<�%)<�%)<�%)<�%ɼ�[m��x�ɽ\o:�:�.I��d^�.I��d^�.I��d^�.I��d^�.I��d^�[��xy�^�yŻ$�W�K�yŻ$�W�K�yŻ$�W�K�yŻ$�����z|����l�o��Ƚ��ϫ�w��z�:��@/�����Ka�[^���Л!��n��^o=Ļ��d^�.I���*굔{�wI2�x�$�wI2�x�$�wI2�x���$����      &   �  x���َ� E���2��|�H#wĤ-e�l�H���崗y���M���T!�2�E7���<�������_��Dy>������˥������o+e��U��o�k���u�Zp���
���P�Ne[��5��X��H�AC�k+,<`��G�l&%R(c�re,]�%�XA�u��")��w�q�䞕�����?W)��9Sm�����y4��s5F���	N1d�5�)&�YF#6�� jG2X�p������k��t�x�CL5�#������%7��ߏ"�"bk����5��5ߜ{��ìІw�4���4�G�i�,f��&�y�������w���*ܢy�Ik�!��dHk���9,���(H�E��IW�"�TM|�p�S%�C�:��*�!-�栜�P��*h9�z��̑�>T�$�df U9{�#I���XJNx��&��Rr�@S���<uM�9��:A�Z��%MJ,��6�f�,)���V�iޑAi�x�(-g!�b���M�����f�,[��20������o�,�\�<::۸h1�!vs�q���b��_?o�<���o:0�θ
73�6	(����GVp[J�
	��s3�!CaN�2	ϫ�.%�p�h��K���Th���g��������         <   x�3�t�K��,�P�H���L��4202�50�5�P00�2��21�317�)�D\1z\\\ �b      6   <  x�픿N�0�g�)nc���$m�	100uq���ۑ����1I�*��A$/�O?Y�%yVF�	>U]���%oΣ��.�t��M��MoL�����B絍��A�b�0`��6}�>Q�uPv�v�Z������on7�	}^lkܼb,���������;�1@6F玠`��Ӑ.�R��+�k���:��X��䉻�N�`�\�j!p��Ćqʪդ�}ϧ��pFe5�1��J3���(�\����ߒ<6'���8�����ä~�"O}�!��~�ȍT��O�p[�g17�tW@�����nK����%      P   *   x�34�44�44�24�443�\30�53�\#F��� ��      Z   Q   x����-�MJ��4��Ɍ7�5+7��4�,�̩�K/�L�u3�4202�50�56P04�24�25�370�)�D\1z\\\ &      `      x����42����� ��      b      x����46������ t�            x������ � �      "      x������ � �            x������ � �      �      x��]��6���<�FU�g��n_���z��6;�;;��Tl	��4E*$�Ng���5���I��	��,ۨ�$j88���p���{�b{���EU��l��̮PM��̯�u��*mo7�9?ϖ�<?����״Am��W���_Ӌmq�]hz��[t2�̋���e�b�?�������L�Y^~��b9=���MO�Kt�m��MU�������%�߼��a�͖Y�Q��%�7Z�-�/.,����*p\q�`���;ܐv�HI��fQ�2^�!~�)�ZUc?�ɛ\���zp9�Cx[TK�7�<o�poF�.�zqNM�!oT7��`4���_�u��O0/z�پ̊���> �oP�Λ�����%�����i�{,j��h��EZz�[�`k䃄e���
����݈��+.�� 	׻0��;����m�;�m�m��2Z�����O�˾{�/����݉,ƙ�?Qm,k�4�hk����|��Z��w����E{�����>�4T�Q��b.�
�9xǀ�k,��cJ����j,#��o:u�qmt�m�-T�qQ�_E;d�7u������UiV�.�*1U�J�S�|��f���{K>7����BJ��BH�7I�I��G�. f w�@�C��f�!HdXF��i��B��xJ�U=���M>k�kT� �g(!�qJ��`�å�4C�T�q����j�5�O��Cj�1�5�!��$Ȅ~��5j�AW�1�\�$ �%j6hdY�P�*M�4���A�����s:V�ij���i��ОF��YN{�P��� ��xӁ�����0�ц	�w��"-8P�Et��Yrfə��X��(i��(� ��ڀl�����dA+�7P�u�����7 �&c��:��	��SYk�;�O"K>>eY>5�!|",�8��Q���rP!k�U��8�eQֱ�>1�E�k��� ���Y���׸¤���x�R��p�	y��y����y�,��hăƺ*�ZVp����@�EQ-����(��*�a����h�CV^m�/�W��:q�N�l"�&�l�3�б��$���~tcM�S��t�䴕0Z��Ё�P�"�e��6`C��� k�,�7s&G�L��'.�@ZN���/��ִ�ډ0�RkZjMx2��hK���y�ZV=�^T�?1qҹ�j�چ,�� ����kZ`M�Ʌ%��,�z��'��'X��������)��)%�q�22�eF�Voѯ�ᲫDqbNA6,��?DQ��cِ�Ǉ|ٮ YA��V(�Z�ߝ��`P�ڢP��c�(��I;,|���3��Q�Z�5;�6�k�:�M#}�5N8�7�.���y����p����q��%u�����O0Zi�UWE>��MN�OK��Hg��!|�@�bXU�ɹ�K����Bf���@��>eoa·T~��.\+��4�i��&�i���u����� �M
���
���N��Ĉ}l
��4p���{� ��`��үu�zOe�L��4�X��x2*���jT��A�)��BG��_��Y��|�f�Zn�zq�9�A?h	ۓߪ���,ʱ~E<h`݂۬Q^e8��墎\X{߰�-�[r>Ի��20&���f�4��fI�M�
��,���h�j.mp��9)�qP�n����1&��+�.��[z�u��s���L�5p2�i�6�U�� y�%Q6�	��kt=T�Luv��۲�o�++r�Q���A
�%�����po�On� ��M(cY`hs�4~>��ih볻�1988��=r�t��HdN`�:�8�M���oQ��^r�Dj�ͽ�yyY���^+
��4�l��~i��2��R��	a�`	�}�t�ǥڈ��	�W��X3��#S4�G��!�]ls�dcU$�׶��m�N�����`�Y����%��T^���>���B��m^�å� A�9�6t�z����� ��y�b��l���3�!����h��V��䱪d<�-�c�T޾�^�)E^��/�,�%�mV_�vzn�t��*�X.2Q�ھ(7�G'�x�#������<���[�m�q�����QiS�7�/)���8V61��y�&9qs=�&o>O.�d�B�W�H�Z��͇-pDK U��JĥK��?���{Q�\�EV|O�?'�L���_�ŕ�����3,��V��jy��ϔࡕ��rd�ƶ��*��IS��D1��9�z�R��89q�]c�i�5S�(��%�<>�/���� �U�����#vDȕ�/�zN��v'�N4ul��t3!,�Ϳ��vS(;h1O\��g`�ٜ1xg$��ϫC	a�>�#tЧJ8�xؼ�)X3�?lV�rI~	%�tڨ3J'�\lr���&�b�ϴ���c)�=��U~��9�,�����0���ok}�$�0�?���ǋ����i�MK-��E)@nﴛw�;p�^g��m�MA�t����1Efp�@�#��`��9�&s���'m��C���!���nH �ݹ�RD����i%@�o�L|l���m�,p�Q'g��'���'H��4|���c:hbW��ڕ�5������^�����,��_n�b�E��6m�&{-��N��H�Y)�0��\�̅h{��$�b����y�·"ӥN����;���PL�r�H-����LBZ����H+�d���O�!3���!�ZƤ�b+�dg=�!m�׽o�����A��Jκv�|F����ǁ��h�6&sLl��$��ruz��k6x��_F���J�ܡ ��Ϳ�|���ʒn�ԕk�zB�{A���I���~�p:�cbs4�Hf6��df��̎�~�b��>H����`;���p�֨{�c��a�.��_�3!??i:4b:d_����1��g��4>i����v��C!=�3�A�2ë́t���`�6mg��hbJ�w9���(Av�t7i����n�k o���;�ܝ~�C`����H�N�|�۸+q_�n]�����E�Ί��<��n}�����VOO�k�@���oJm�qL�cX�z����8�K��hi�m�$�F\X����D��=A8@�p��yG�a�~%6\�`M�eN%c��`���0�u)?�vM|ʻ�VL6l�-�E��*2���7�Z��*��G�CM��Q#� :�nb%!
�zQ�&"@,����Θ=ᐄCI8�K�!�g��LvN<���6�d����O�����R~Ǩ'BktYw1��}��,�j�I��=���K�V����5�0��/V��k �� "����e�6w'\���a��K)"�AJ��G�f�T��>XB �)�*t �5�@gw��lc����m�</=�h
�QԻ�]vбp$���Re:6�N����iqÂ���e�]������E������Ǡ�����0�Ϻ����5d�w�_�Ë�gt�ċ�'X[2,�4	=�4�7�-1֞4�#5�'R3ye�~Z}��,���ы��F$�w1��*�r�^�y[���w_�R.��&ġCѯdsu�Q���хTn�]�i��9�^��Ib��o8�6�ߐ�#rCh��gO�ټ.��:��z��`��P�C�T/�ν�F��9Ԓ�>*6�嶓EI�cY��9y%��|�!⻻|%�C�)6��g��n�<V�SaHiq�9oڡ�V������Z���T'Ϊ��[�Ij�����wnNY%�"����I$�o3=���O;6�B|WR����xC�w�!���f~Y�it��g�߯��hV����|4�--m8g;̠o��^�
��2D��k�1ر������6+ۼ�5^�&�m����Cb�hP^�������] ����ɥfW�����?ߜ���@�SH{D;ޕX�i�#q?q���\#�,< Eu��C�:kُSx0LQDL�do0���/���|�Z��'���`��h���q�~��|��6�����S��|Ly�����FUd~�<7�c��o/�:�uz���N�3{���N����&�9�o���
�Ⱥ��1y}[�|.�kV���^��Yg7|    Гpb��>k�r�|���q{?��@e�����i�;�'p�l���������n%<;C��׷���L�B�k�4�\�@yd�s�O��c�."�ȣP	��ky|�̡7Y��n�s/ځ��
�n�CyH��x��J��If�S1;{�jp�X/��%�*���zn��ƺ�: >L�y�f�M�v[��ug�����Ʒ�����'-�^����p��H�<�Μ��7ߍ�����J0���Q6Է���P����v��Y���`�Vk�2�Ѱ��y��z��v�hܞ���]SX���c�v���x��C+�*M;oe�;�~��>��]�V�譺���W[��&��{Cw�6��(h����`W��/Ȏ>c�w_����Lx��&E?�߳�����{������s��7�gEQ}@K��y~Z�h'����3b7���7��z�%{LIv��|�$��À'����(ꞿ���9���k���)���?�K�1aƄfL��Č�	
G�HP�u�@�0��k��৆ݻ�L��y��Һ�M/�ˮ
�E�yk���%08�G�������\���/x	�<f}zU��<�&?�P��������ٿ�5Y�dM�ך���Jx;ݾ����Uq��*�!jq�`���ϯ��ũ�5���V]'M$e�������W������(��2D5�[_���br�G�f�Of!�����X�~_yK��O5��J����:�A�S�s�WV�:�O�m)��ܹ�Mފ�/I��س�'ND�}�y+$b��Rr�_��N�#Y���}�!��Nv���7k~��Q=�ы�1̹�PL�J�TI��VF���Z�&Jx�/�ݺ���ׂ]��0��oO���V����7��ҢZo���e�m�~�^;�U�s��L�?]f�ڟS�r`f�����%���|�7gA��!��~�����5�:d�W�ժ wH�h��U�V�tE>_�ר������V8�SZ`.����iS��<x� �J�����@���������_��d{S�K<���O�g`�j`?��(�K������f������BFs�v�֕r>|>3��DJ)A��DJ� ia����Q1,=(C�Ve@ f�ْ����h��W
���9#ЃB�� TbׁQ��5�5����H�R3��S
���a$�a��9=m�G�ˁ-�/";�:#��3P�)F�4[96�f+�n$����~\8 �\:к���Q6s����`������V�<��jP��*ߗ�
~��z2�g�ÓYq���'>P����[Z�>8;;3?�f���*�'L8��*[��&��d��I�|MҞ��&�a�71�^b��Z��rw���'f���/�?_=���9�9�q6��Ch�R�������=lP�b��"t�-����e^��֟��ٓ��M�"�Ad%/��QAޕ�ڽ��ʐ���8�K��yA?j3l�3��<`i� 5���*�%h���d��DZ�5�$Ɏ����W��x�@Zj�����r�	��f��E�8�&��ET��G���"'���f���;�SS�3yˡ;٩��@i�d�<�d֌}�.e ܋��6��ͻ*�?�WLt�!�b�Vg�ea^u�!��3�����`\�u��$C�v�x��
�z���@d�Ֆ-�2Z�<	���O�˾{'���@]�ӻY`Yc^��D5��ij���TeQF�e�����G�蘒D�gk��� �D�`�Bci��T��P䰱����|Z��`(�J��r@R�Ebb)��R&��#Bن8	-��*��r�>i�z�Uq��c���q���'㟌�샫J����=����~��m���l�*[�^�QN��(,�&kW�/!�xI�$�0k���f�U2?���U^,kN�dف�����`\��m�Y�D�|RM�bI�%!�^�"�=7�� �����T6�:��¤Һ��L�u�`��#�js�r��4ɶ�u�_/gCZ�f�g���&_���l��l�V���7dM�ɳ:}duz��&(�ݛx�|G�@��-A�ǂ�ZlׂN��w����PX,�5 Oz�.`��{S������S�>vb~Uge�{���QI�Qna�2��TTl� ݹ������D�-j�L��-S��i�o�fq�-��t��}�MV�y���7Y�����/�16�]b}����6D�Y����vDS���UU]�X/��0�g֢�߼]m/��e��K[���m%�?犇u�����l;������C3�I���iMN����eW x50�����i3�*뎮T���F޷���7��t������o�d���b�3���С]���zN>�&aE^^c�Vv� ��B����E�"1�ؙ�)?�Z��4�wU�m��U��f{��v��oO埧�j������FBTR��KK��y��|���v��k�a��[��|��F�X�ZܼlO��3N��9:b��QZ����7�b���w�"S6�Q�%�C8�Ժ?׉�������>�Y��0�Q(�X-��Y-ֈ���> t]ܾY��rK���ɣ��g���{8%`�i�A+��aL|���gO�=8{b����=�"Мn����&@���pb �#�¸��>�A�+"��mQ�i��]&?�U�S{$�<����yȹ����|	���{���KL7/���(��O�5d�	�օ;�	�͐7/ԉpʍ��_�a=U�{���~�ߓ�����9m��ݢS���1�m��[�/�!��ω��a�>y������E�~����I�M~�W�;9ICsQ�tA�����2�/g¾���q����
��]e��IQ5�G-ۜN�׷��:Z�w�����?��L���*�����| 57�oLh��<���`�VT�^M`��Մ����9��I��vs~�>���0C������63Q�/d��O���&o_��ۗ�������*+��S�̧cÌ	������W�v�M��5�T���X�ߔ�9���U��h<��g#�h�� �589�=h���N'�D�g.�|q=�oA�'��� TN���Y_�����E��~����������(wѕ"��`w\�<?�ߐ9���Ԓ��o�攃v���>+�w���(;��Q>M�&��69N�O����:����'�ƫ�7IOR�cR�c^���Π�v6��y9�I�H�7f��5}��B���7�7k��_���N�A�|K���	���d(�h(���׮����S�I �-�i�Я����T��M�/���������ڮa@�����7TSiu�F�.�`��h����� h"	�$ ��H"	�$ ��H�Ő6�-��?x�#	�$8��H�#	�$8��H��6 �-�O_6Ĩ��H��A@�����p����J0;H�%!��\rI���G.������p�?鲅f��K@BΘb�T�0c�S��؛��6c�y �dY5�A�H�j�]�s&Is�ۨ�N�(	(�^B^�J?��E����-��+����'[�,<��{L�%��Z���h��5]l���fCIA ���l ]��g ��A��3o��&+h�A��D�FbcLo����'7V�+��>@�N���p�e^��0ȡ�������.���C�7��/og�������3���-�jK'��l\؉����u<k_�-�P�ü�h��ؘ�x�!f��q�.s'*��o���[��׾�܁�zyXov4�p�V�q�k��[v¹s��͸Y!�v��j�i�q�#�}��L�g]9�B}�<���� (��o����ZQ��P7ASC�����Ps,����<Y
�{�/Ҋ����؃]�,�8ub��I��\,�2;.�.�0� 9���|�J�A���>w����^��/n��]o�nt�A^^˃*��v�gJq��m=�DP�e���)�u.cǢ����G�N�
jn�Tq�@��E�7&�^ڀ+�C� ʱ��2Ăr��{�&|UQK�k�w`�`��b�ߎ�Kv���Z���k� :  ��gVTWW�oM@7���𚥧� �1�7��#�b8_E;�ɗ�%Vs��0�2|����&/��0��z�3�t�Q%��\u_7���c���!�Wx�Zs�,;���O����
���n��t��l���d��-����dE=Ș�4�!��V{7b�r���ճg��E1��kvT�M�Q��2�E*�x�ty�5o󶺆��jEd�����J��-�Jq��̀w@�̨�({�5�AՂ�F㨼(J�T��O�^��b�ݒ{A<!U�ʡ6���~��?�x�fU��ೂ(N�S��+Tz8/���$��X]�ˍ�q��EJ7h)�_B.��(�*$�0&?�r�ׂX�P��m��eY��7E<7l˶���(f��6~Ԙ^�_.4+���a�8� ��Р�gΡ�#mK�;HA��f�֬�`�<�n�L��M�����Y�!K ���Y�� �O��b��3��.�(O��R��x���֊Lk�O��C,
�<��u�-�93��tbd5�Ҡ\����r��ph�Y�
��c��l�%
ѠY���q�q�%:O �Sv���t�8��xF1�C���Eat f�:\�sv��uK�Fھ���˥�WY%4��ٶ:��[ի�ܸj�{�h��ٓ�;P��ܭnW��^��.&p���oC�t���R� �L�<0����z�xƑ�N2��@{ӣ��͍��z�ឃ)������۠��Ǳߙp n���	�5�ax1��D	�
ҟ��:3���\�~y�_�	#$����N4�,����މ�
��.�M�]{���ϧ_}����_�      �   S  x��]K��6>ǿ"�����k{n)'�Ԧr����bA$$!�H����)���S��GsF"�X�� ��n<�}��?��B�m����&B'���dy���q��,���<'�!�l7$
�׺���f_�Hѿ�c����)P#AY+L�G~�O8�+J(=4���P�����o��%���%� �Q���}T��v����?*ٻzE����`s�Ga��o�"|*I�e([W6��?I��&#����r�5��o�8:�_�3� 6G$��j� ���`��G�A��_��ǟ.Uk��C��K(�� �Y���,�vV���0QU�҈]�Ev�'y	NO$�H�V\�+��8�v�	����ћ��)C�H	���%%Ɣlɸݤx�S�8���_K��U��Si��ѯ8�yU��>�����cc���E{������Hj8x	J��9,Hd��o���$�K��	�l�G�[x c��#���2���.鬃���v����'�Mm��5�~�����'b�L�I���S�>���m-#�;������sih�u+r�;���ȕ�I����l��yT#��	A�ʲ/q@�Hq�s�����'J��@�i_P�s#�W�.�X��\va��v�1K�1���P��f����Ê4�4����a��\�a�FCWV@{b?@�8�S�@O��^3춋��u�# _��6��l����pl�hʗ��{m��q�y�[�՜�R�'�]�5!��i��g	��fG��#�s�kv��v�֜0�6�=ɗt�nso�����s0�,�FYis�����7&g�] �"���鈛.���W�'g����zO�ك�6,�S�<��#>�����$�QikU	o�Ai�	ʏ^]vh��ϕ5WZE�뵊G�ҹY�z��Q��g��;���,
�ƥP}?���mJ���?�XU�4�HSߣ!��h܊|��yuj�:��y.p�
�O���D9��<�p,Mꘃ�(���@�v�(;B�"��QԮ��e�@������Bؔ�dM��_<p6�	j���p�JG� -��\��w����k]����2m������>�,Y���9
��9�4݀uD�V�j"dk�\�Z��h26s��9��4Z���vF�LW��t,�]�ɷ�J�^�[�7����#�8(§�b�-�`�9ʋ̹%�l�%�ٷ�坺���ԙ��ғv9����y.�ă���s`�n�@�ŏK�#x>a��ɼ�!���B����ܕ�9�`/A�t�]�ĳ�Xti���2��ȉ��DKw� :�}c%�f��,�����tp^j� �E�AyH�$�	��]C��}.P���Ѫq�ȃ��=�oqX�X#H��a�y� �5����B��4�4\�O��ݲi; �o#Ｘ��H���M�V4�-d,��P�\̕]kG���d:5oX���Hҝ�t���\:�xt�t�Lrk��	hٽzUO"`�r����B�i��׍���3�_Mp���z�{3Cj�W����sW���G{Re�.�E�Þ;Z�9�u���Rv~>b~�0T�n�6�� (a
���,
��[T!!Y�����w@)��J����O�D�~��L��s(z2�>����E�9�a(s��p�Α_�#Q�}$�c��?ד�vNS*��o��t���A�3��<E8���*��4[�-$<j7���G���I"D��'L�j�CCeY`qP�q�!`T�v8��z̬���Q"ò:���T��rXN���:>�1���* Y��Xq�K=<��o��_�?��=�6�s��.�K��?V�y�����%3E�\4Kͦ�6�څ6~M.��-�{k��a%Z�uN�A�( 籴o�Æe�-'!p��\�ջT��v�S�f񨐙��Xu���N���i�]��$G�݂��N���SG�mL)N��U�[�##z�>n.3ٿ�7�\���F�=����R�|�E��L��ۑ�a��O6���%9A�F��)�U�����h��3�Ř�22$z`H�?�i_��ȳ퉞;�}Dʤ�g�'/Ū.$?[iЩ�@S��٩p��/�����fw�t��D�UyB=[�+X��-������i\�B���L�FM���I�a
�S��2JV�uհ��σ���
���l���!�\"�F�B΅&�>�2�n�<��p= ԫ�%��ඁg�U����q_?"μ�|#���������l�<��k�R���H�툟Kg��"W�i��?X��%`Y-j�����b���A�/�gј�U��o���b ��H0
-�&���lx�3�jD���Ҧly��u�8b�5gAFV�Ģ̅]��c���Sz�l�/�lQPޓj�����9�ir`/�$��U�1�q+v(�<��΁��I�5�x4��;�j-R������[�X�y`?6p���kOpz�Rо/���r
�?��sxm��ʼh�W[��$��G55�� F�{,B�IG+����m:}�B2!`�h����V��K�ARa���(�4��N�?��Q�����N�Ӏ�١Fmm�օ8K������m�e�������!iMvCiPZ�R#'�ݧjK���A+�v�czyG�SX#γ�r��Ao��}�y�Z���zq���Eș\��p(90����/qyF1�E9$"$<N0��Xy����nIqŠ�Mt���$�hu�rD$=S�l!��p�ѡL���l�g 3aYFA���eg2B<m�#��Ϡǲm��6۰�:Fт�����FW� ϳ�tV9��|P�I�>��͏�X=C���ؤE+��g�g��V��ڹZ�*
�]i�Z�j?�����aq��1��g��l%E�9Xʈ��H�8Y����بu��]�>����'�e\p�L�WOM���Y<���
J�cwFm��+A��HOX(s�DM>J��K�d5�0�G@�g�LH��
s�ƃ#�VO�d�o8��t����47��ryEٔ����U���=�67�g/��O��g0��8�ܬ�V�)��]��3H��3���>�kX5���-�X@'/54;�����iu���A�)�R*��'�C沰^��� �)��Jb�e�l�j9��^,��5�:�NAW���ә�7d�;&�Hz��:Au��~�kb�ĠOW����<��4ۀ'*���cۛ�4׆��rl)���ذ'�'	�kRrC6�ٕX�X.ݔ�Gj���l�*U��R+��7	Y��.���D�S������1���������c��7Eɠ牺��=��`�1����љP2�h[+�Z��.�u\���&��dA�F��z&Ϯ�NS����Y�9���!��>����@�.^���+��.k���y,�ep��ʳᲉ������P�bOU�B�88��!Pcm�����Z�k���]3{n�3B�Qa��p\Wp��p��Oe*-�L�c��B��]�i����5��b�U���¢�����-1�(�qd�~���%Q�6@q+�Ol;/�ʁ�LTT_i�"��/S��H3����d�������&8Yh9po����n�^�t����7?��ܿ|w�����^���_ݽ�{��&xs�C��nvwoo�ޢ��oz�_�x���Va      �      x������ � �            x������ � �      ,      x������ � �            x������ � �            x������ � �      $      x������ � �      
      x������ � �      �      x������ � �      d   �  x��VmO�H������b'i"��J[
%Z^dm��e�uv�	i��Y{�!ѕ�IW��0	3�ٙg��q�`�}��1�����t��W��ug���!���mJ1mS�4k�oo7X���P�kP�'KrИt��Η�/����vN��^�>��{�$���\�=;�����2�st�����s�s�[2� }x��$:����Tǹ����0*�� T� I�}������v�Z�q��v�*�"��ɣ�  "})
�C�H�q���c�&:��dDh�Yt� ����9�>�%�'�[P�Z��.(�C�t{�2 �EE4`2��L[�,�=���F9LN� $�W?���I�Z��+
)�,-�Y�*n�m:�f��J�4'Om*�
�ЬFc�j�a�|��)�7w%��G�_HVx�!���,�KhWtϬ�G�|1@0�!R�R�����f�|+��`1�2@�G	�P$m-Єq5ˡ��Km)�� ��$�Ԫ�u�'V�E��I�%M�k��Cx�$����5�ڛ��&!jMU Ŀ�Y�ɴ�'�̈��G$��vS�WC1	�Isz�PDP[�8Qf��X~�����P~
KZ�n�s�e�X0Z	Ɋ*׹��s� ���6)�fJ�Ҳ�8��d�|_���bcJ%UI��4;>E	���}�z,��SVcm3�LX��\�AB�q8>7���a-I���a~6`j���'֘�0��M�9&<�9�S�v�u��is�gL��~?�7�;P�Q���}7wzw��6h�i�M���?�Eڎ\#d��YїŊv�GÁlͽ��Pip+���`n\/J����r�d�v~P��R$��ը�P__������yZpT�:ӱGd�71z����̎Jd�l1p9��8� 7�ۻ�]��S!�aaƓ��9�M �mT����t�k��Q�<��$.���d���(����->ӕ��vl���Y|�ř�[q���/��Ÿ_�e�%3�޾9xڻ�o���ӏ�q��ƒR�g�4�sS�6�2�˳��[���0�ԭ&�Y��D҂�X3Cd˩o�:�\�c��n{��L�^˹w�wQ�M0������g���6<�����Q_	�.8$G�G�ҋO��]�������ǭAS>~P��}so�;��t�%Ի�Y1�fޭfcż�����"�?Ƴncų�!�vW4{�w�ߡ��ާb�}׫��O�+����+����l�ծ{ێW[&_��^__��g      X   �  x����r�@ ��5>��T�K��*7%^0XV� �#��1��3��35�p{��r{�bֽ�;�3�꬏bQR�V���@_,���g��ܚ���*Z:��
�#���D < \T���.��]�|��8~�(} R,SA�	�����@��cr�	{���C;��F��J��94T�.�v�]�_�4���*�6�+(���û`2E�B�e��L��K�A�%C膦����@�Ʀ~�Y݄���?�<�`MYJ�Eل��([E���N��Pp#��Ǝ�8n�#�]|�O } QA��D�{V(�t��t��ފ�H�k1/�ކ�1~���]��l��NL�Mf�������שnl'j�A���tD���8��L!��P~���,�` �4� �?�}��HsR<[�i���S����cwt�P�y��U�ƃ�B|e��J��/�ͤ��{��'�G��      ^   *   x�3�4�4�2�4�FF�@da�e��&�@d��qqq �f      8   �   x��P1n�0��Wp���jI��N���(A����%l���;O��-�!1Z�s*�CB��g.Cv>N�������#vtCx���׿#;gNK{��d�i��A�D��o��o�oL��z\�u�T~�� lC0�H�N�r#��i�eu'fVW�O�w�\�X`��(�m�#�΋b'���J7���Z��ӹ>V������W��B#J!��o�SSW�j����UY��f��      R      x�34�42�44�24�421b���� )9      <   �  x�uUM��6=k��rY�Mv�[R,�m�&�)��4���H������������!mo
g�F�̛7o��O��{1nG<�Dm���mkjz�.���7Q����xwK��$No%Oi/��s�-�d\���������/?l�4v"��|��1Q�_5cY��9}�¨���FFs4�!��sV��#Ռ�|��|o�4�\�8	SnIܳ�Ju�9�v�%����J���v�W˻�zvw?[.h�ܬV��r�^/_������'cm����ۆFa�����澗�.�q�6�׍XS?Dj��	n$��k/���d�>�$%�Z)Te2F~�����``OlP���$���v*�L*�;�ؚ�J%��>$�JJ�Fr��QyDg��f�n���ݫ����z�@����M$� m�����5v&Qa*Y'֏/g(R�"�?^��H��iѻ8��GD;�8�shT�QPx��\�Y
JF�H{ T8R(>D �J؋>R�{}S��DmJ�f�63��6���H�qC�F�j��P�h0OkZ���~s����W���OT/���c)��gi����F��d�s8���v;)�p0ͬU��ꂥ=�4�'�����`�}�!3��|�J��9�d�V�e�2(�D��e%ES�����8c��,����-=��)�w�Y���W"��O�,�%��.k�o�����Ev�ģX�����2Z�;��gR�i��!E��m1���R�!?�ԏ|4�Fz����Ys̫�ƽ���K"�1��8�	�G��Gsd�� 1y̫��
*5/>��p��o����5<�Og'h����n��������U�;:��)�������>x�����]���7}L��'h�g��Ë_^�1kQ��Șz��v�c�[��^�Դp	�(�\�wC����ܛ�����8z��(=}�_�byϦ�[�%'����%h�wx��_��9\X�2����4؅D      V   )   x�3��44�2�Q 6�rA4�gf �� F� ��3      \     x���1O�0�����s��َ7&&XY�Ղ�6Hi���&���AB���l���#�����u�z���5��x���g )È�ۡ��蓋��������gC�'&���	Ԓ�,p�> !��Y�ĩ�5�SS_��w�]�(��U	X�a~��8N/������9M�'F#�%C�s�B�)����0B��Y�¨1$I�x��¨�]I���^�_�Z��k�(��o	a%�J��(��������VF��F)�	�@�      :   m  x����n�0���S�j�?;�wHH,݀Xuc��jf���J}z��/J� g�ŗ���<=�r��{�v��y�_��x�Yo�ݐ�Ib��
�_��IBN��}��[  Doa>��)�6Y_�iL�����N����	��>�Y~f��La�%Z�����ВP�ۧ�v�#���e:����	�R�e��>�$-�hW�VF������"��~��.�h�(���sH��4��:)Fn��𺜎�,��(V0a��Z_�jZ%ﾞ?�M�F�7��1ĵ���m_�[�=_�@����������lA����8�z���<����\��C�S�j�R��r�K-�~\���v���:`������Yc�7�;�      T   M   x�%̻�PC��%6���A�)n
G2�)�d_�D��P�M������{҂�?�6J��J��s�|T��      F   �  x����N�0���w�J���7
����UH�=v|�D+*{��I���ZpP\H�]��<���y~�^��kY��6�M�wKw�3�@ࠆ�`d8�{v�.����q:ӳ�F^�.ݟ%P�؋�M���s������w!����mc@�ط��7�H�GC��{����}`8�G��z�m돺�v^�y�h���m.&��;_��6��ErUn�w@_�.�ɪA`�K��;c�1y�^d;)G.!��'X�#d��E`����Y%�^$h�Ғ�F&�o��,�^p>
�;�V��Z� MH�������%�Ҭ�"�
�Lon�XD�3�Ev��#�A4Ӈi$�k���5���u�P�ћ��&�L[N�Y`��#�E`��P+�;����z�m"���\Tq<�Y����U����lW���nBn�4��3�l����,ܹ��ߪ�q�4�      J   �   x�-�ɍ�0гX�������cD:� /���ek�<6m������6���5�̆�з���\!{f!��|31�4z��Gl�I��m�w[���o&)�k+�[wrm��!��s
|��%pу�BY?���WPHX�X�I
,��X����wT5$j
,�d	,�XpP����9P.��P!��QJ�H�>����C��W��3�����sG      L   K   x���	�0�u���{I�K�����jB&K��eh@�-h�m�$0k�k�Jp���	�=�.~��I      H   �   x�-��� C�P�Q�e���'ٽ8yCH��mma彨�=��������e����pm�S���	"��-���v)~��Z�g��	�aa6�����b�h���h=�}�+;2�����Y~�����>�r�+��Nȅ¢�k{� ���)K.袖;����Xh��Dzp���0��o����v�Oݟץ�PI�O���������0�����RsF�         �  x���ݎ�0��7O���c�V�m� {�7�J ��*o_���&�6�+E	��w3���9��V��h�qכ�P�cݵ#8G���`���*��*\(* #��6}6y��h�A��۽����O7T�28(���.-�(q�g��֔6�OC�����SX��T޺a�e������њ!U@��A�͗�}����S<U�)�����/5*�c_i{+��g�bB1	8����u�V�U*�W���mr�������T���/�ʌv�N�|_}?��h�����1��+�%�"��|_5�S�J�|�����t��g����O�7���]ۚ��t_�k�!E
3 �t�gt��/�P�r���D1��f\��_������n���b���bP��j���J��T$]F>�}$�-C��a$�/C+Әt��B������(ӫ�ON�J76�3
��,�(r����s��A�6�=�|:�xƔ����>v��̇����y.�����+ǹb	��|�e9��3.���qYN0|���)�}7���Y�7��ç��hX!�?�s���<&���0%9�3��_� C�!q�g��^�(6�k�4�C�<D29m����(8�E#�q"K��?�d�B���w��L�{�h��ʖ�\՟��2�?�*�v.#u��w�h����t�8�CD�"�����L�䢑tm��ò�G��9)���^�0Sa���y�0�C��QB��Rx���/^��      .   .  x�-�[��0C��bF�H�r���q(�N��&���UPM*q�q��64?Jp0��t@5]P|Xl�jRPM�$7q�$KPM�y�l��q6������o	����� =^��x�k���^M����wD�X��8�5l��Y��Oo	(���cJ0�9�����f�d��dZ���ߧ%��9�?��qn��v��m�*)�&C������~�-����D�ϝ��A�"(a��T�2���^ƕ2����Mf>�k�jJPlC�P��A�{���n�Y8�>rG�~"���e8         �   x�u�I��0еs��@,�lǉw=�Q��;���  n��H��������|􁽺�@a��.�z"4QJ.^!�pY�.>�a*)�G����"
T��-� �U�v�Q뚫{���ʞ+Tl���F������ӗ+K��;��˕�J�S�~r�f(�"g�[�.veq��p�c�uۙ�K�{��dou�2�ΧL��[���h��
͍����M�|�d
         y  x�}UYW�<����s'��K�t�O�as�p�&MS,[�R~�@T=�=�7���,y"�7O�S}n�|���a�3]dQ�&?9ʌy?������L�7�p6���V�O�I��C�����I���i���Wo�j4I{����/�0���L}(��S쨮7����\p����Rp���ٿ����G`|�Kt�4⶜�{u� �E�43#@ڮ��;�@5�z�<��b3�Э�FRa�3*(� H�$"�Xc8�F0kMn�L��Dibi�M�!�"	��N","1��H%�0)T��T cs��f�iG'�~�J��� )��x�+2Gl��j�-z�V
��f�zd_�#���P/��F���M'}��w�N�>����ߚ�������~���y��a��aQ46�X�� 6�W�r2[�'4��fM8�.���L E�Q]��A��N�����!��:����t��t/$8�ao�G::��8����U��[������Vq��.+� ���^/z8�v�uQڛi|k��'��ɝ�2�8w��ч4@2@)��+(eR�v��L�C���s\<²7�ǻ���A��O�#���4���"������u����]��hY�ۯ
��˕!J�"��+¥51U	�62��)�}�|��( ��1��@�W�R̱^c+1R
^@|�����=Y���[�(����ɛ�v����A�v���'=��������O9�zL\F���[#���2'O%Cb����X8��\N|��$ W�d]P���w�\~��{�"�v�(�^n�J�f?z9���m�T�0��
!�K�D��M[$uD������~P�@���ХR�쟽n��K'E�?����廙�Q��ԑ����1�Ƽ���e=��mLs�j�V��߭�j�U&H���E'=+����"p������67����b�o�\~�'!��nx�Y�+��]���o��D97����+2������?_��HXJM�M��q�������E�T;5��=��f��Z^%�i���h0Z��H��ˈm�K���Zwj#�r�	��C��I���y���)u,p��m,WJ~4�_�V�Ī�c�~�M��+K;)lɿ������Y��      2   /   x�3��43�44�21ⴀ0�9-�8��LL8-�����@�=... ��      0   C   x����@���t�0��ik�����fT�Z^Ds˅���&�G��T-�$�%��zIv�         =   x�3�t�T-��OL)�4��7�4202�50�5�P00�21�2��32��)�D\1z\\\ ��      *      x������ � �     