PGDMP     "    	    
            {            nave_espacial    15.1    15.1 ]    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16435    nave_espacial    DATABASE     ?   CREATE DATABASE nave_espacial WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE nave_espacial;
                postgres    false            ?            1259    16468 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16467    auth_group_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            ?            1259    16476    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16475    auth_group_permissions_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            ?            1259    16462    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16461    auth_permission_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    16482 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16490    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16489    auth_user_groups_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            ?            1259    16481    auth_user_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            ?            1259    16496    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16495 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            ?            1259    16554    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16553    django_admin_log_id_seq    SEQUENCE     ?   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?            1259    16454    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16453    django_content_type_id_seq    SEQUENCE     ?   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    16446    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16445    django_migrations_id_seq    SEQUENCE     ?   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    16582    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16592 
   naves_nave    TABLE     i  CREATE TABLE public.naves_nave (
    id bigint NOT NULL,
    tipo_id bigint,
    nombre character varying(200) NOT NULL,
    nacionalidad character varying(200) NOT NULL,
    ano_lanza character varying(200) NOT NULL,
    combustible character varying(200) NOT NULL,
    imagen character varying(100),
    activa boolean,
    utilidad character varying(200)
);
    DROP TABLE public.naves_nave;
       public         heap    postgres    false            ?            1259    16591    naves_naves_id_seq    SEQUENCE     ?   ALTER TABLE public.naves_nave ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.naves_naves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            ?            1259    16601 
   naves_tipo    TABLE     j   CREATE TABLE public.naves_tipo (
    id bigint NOT NULL,
    tipo_nave character varying(259) NOT NULL
);
    DROP TABLE public.naves_tipo;
       public         heap    postgres    false            ?            1259    16600    naves_tipo_id_seq    SEQUENCE     ?   ALTER TABLE public.naves_tipo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.naves_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            o          0    16468 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    221   m~       q          0    16476    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    223   ?~       m          0    16462    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   ?~       s          0    16482 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    225   ?       u          0    16490    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    227   ׀       w          0    16496    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    229   ??       y          0    16554    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    231   ?       k          0    16454    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    217   ??       i          0    16446    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   	?       z          0    16582    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   ??       |          0    16592 
   naves_nave 
   TABLE DATA           y   COPY public.naves_nave (id, tipo_id, nombre, nacionalidad, ano_lanza, combustible, imagen, activa, utilidad) FROM stdin;
    public          postgres    false    234   X?       ~          0    16601 
   naves_tipo 
   TABLE DATA           3   COPY public.naves_tipo (id, tipo_nave) FROM stdin;
    public          postgres    false    236   3?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    220            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    222            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    218            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    224            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    228            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 72, true);
          public          postgres    false    230            ?           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          postgres    false    216            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    214            ?           0    0    naves_naves_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.naves_naves_id_seq', 10, true);
          public          postgres    false    233            ?           0    0    naves_tipo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.naves_tipo_id_seq', 3, true);
          public          postgres    false    235            ?           2606    16580    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    221            ?           2606    16511 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    223    223            ?           2606    16480 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    223            ?           2606    16472    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    221            ?           2606    16502 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            ?           2606    16466 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            ?           2606    16494 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    227            ?           2606    16526 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    227    227            ?           2606    16486    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    225            ?           2606    16500 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    229            ?           2606    16540 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    229    229            ?           2606    16575     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    225            ?           2606    16561 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    231            ?           2606    16460 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    217    217            ?           2606    16458 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    217            ?           2606    16452 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215            ?           2606    16588 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232            ?           2606    16598    naves_nave naves_naves_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.naves_nave
    ADD CONSTRAINT naves_naves_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.naves_nave DROP CONSTRAINT naves_naves_pkey;
       public            postgres    false    234            ?           2606    16605    naves_tipo naves_tipo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.naves_tipo
    ADD CONSTRAINT naves_tipo_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.naves_tipo DROP CONSTRAINT naves_tipo_pkey;
       public            postgres    false    236            ?           1259    16581    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    221            ?           1259    16522 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    223            ?           1259    16523 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    223            ?           1259    16508 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            ?           1259    16538 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    227            ?           1259    16537 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    227            ?           1259    16552 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    229            ?           1259    16551 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    229            ?           1259    16576     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    225            ?           1259    16572 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    231            ?           1259    16573 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    231            ?           1259    16590 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            ?           1259    16589 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            ?           1259    16612    naves_naves_tipo_id_04ecf3a0    INDEX     V   CREATE INDEX naves_naves_tipo_id_04ecf3a0 ON public.naves_nave USING btree (tipo_id);
 0   DROP INDEX public.naves_naves_tipo_id_04ecf3a0;
       public            postgres    false    234            ?           2606    16517 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    223    219    3238            ?           2606    16512 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3243    223    221            ?           2606    16503 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    219    217    3233            ?           2606    16532 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    221    227    3243            ?           2606    16527 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3251    225    227            ?           2606    16546 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    219    229    3238            ?           2606    16541 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    229    3251    225            ?           2606    16562 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    231    217    3233            ?           2606    16567 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    231    3251    225            ?           2606    16613 8   naves_nave naves_naves_tipo_id_04ecf3a0_fk_naves_tipo_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.naves_nave
    ADD CONSTRAINT naves_naves_tipo_id_04ecf3a0_fk_naves_tipo_id FOREIGN KEY (tipo_id) REFERENCES public.naves_tipo(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.naves_nave DROP CONSTRAINT naves_naves_tipo_id_04ecf3a0_fk_naves_tipo_id;
       public          postgres    false    234    3279    236            o      x?????? ? ?      q      x?????? ? ?      m   a  x?]??n?0E?????? m???&?FRh????s?m?b?H>V?w?m_??kqnE?????{????K*????-*?^?=.L-+?]?3????fc?~?y??ޕ?&j??a?أ?3,{EC??????6???7????????ӆ@H)*??l????*X??+?S?O@????4?c^??Ǽ?2???׊?5FW?Zk??I??`???v<?4_DsG??a}??c?Ն?QQi?.<3f?.?2??.[eD?޷?8?#???J?m &? *??K??n܉?'?aL?>&? ?<*???4?vu:?j?=?B??۞M??W???냈?t??      s   ?   x?]?K?@ ?????-??o}C??%?`D?C??n??>:???ss?!H>?y??b`Z*u??ʭ(??6?I?g??zW???j??Q?????E???蟮|?E?|?cs7?[?'?60P????=J= ݵm?,?D#b??BH?~?&?f|mK?x?g?X????uJ {Y(w]Q???5j      u      x?????? ? ?      w      x?????? ? ?      y   q  x?Ś?nG?????ȡ?u??ܭ???![Q?w?7Yv?z??G?S?b??Y?u?=??_ $W}}???`5?=??4?K%???{???γ雦h^?V?-?;pW????Q5?ԓQY|???Ŏ߁]??R?C ?q?j?)?q??A?d|?CW??Mq8?Jp?!??8G?ۺ??~2?0>,?==xrr8~0R?wv^?_?G?N???B??|??=?_??Ld?D??ցgl~5???o?e?\,??e4?a?s?????>[͚bV??W?zQ?Lm?? ?<K[1?,n?UW??b??????I???ɢyS????.f??V?Is??8????#??KvJkh????~???????p|?????ӯެ?9?)PV?JJ???&?ެTo??߅??tq?^?-??.??,?[9????????9j^?\lX??%?6?$'???????|?_??]X??W?|,֥&Ŏ?l?]??/g??%j??̈́9X4c?y?????-??`?긙	?ޏ?z?\???d??????EÑ?[&No??c/?߽?5?zqy~?o?????[v?s*??O??2-???:nΛK?`??ȤD ?@˶U]??N??zU???????#|?{?????H???5m?s-??YN??e??g?e?????r??ւ?[3??y=߬????<?W?}y?{?=?:??PP??k9
-J?@?f?????qSBNb@?6R?o[?SLU??DP?X??9?M?-ٵ????D/7???U?K?)???E?`y?V??CU)??H??
??v??29??? |??P$N?o3?R()T?? E=2?s&q戌?b
?0H??`ƇtN%??j?Q??.T??pL??1J]?D?1??7??(??H?U?9? R?世?=ف?2$+?E?2?ճR&??1??8?/I??ko?( ?_?L?Pc?A???Q2}?8}???U?ތ<g??q6E??~I2??RguK?gK??STbͽ?\U_?*>????f?)s?J??q@,?c!+c?????9????p0??.?2Fi?t?8W?	S;?`0?PL?? 7*`{???F?T(m??A?pTpUPD?0?M?9Q|z>???O???/֕q(7mR-??V+??s?r???x???B???? ?T???U^@? ??
v???Gӳ?6?N??? z&???k
???K?L?1N???S?~I2?8?o?7}?W?	0Ƈl9??/??U?%i?J?????\?,?R6????b4>[N?V[`????YY???7݉hRD?C?
?]_&?Ц?b??Sc???<v???/Z?????l'?O	?ԨL???oӝt!??5??:|??ϙ/v)????D?.V?SV.?Sڃi?4ݚk褂????????D'?X????-?]P????? MV?g      k   g   x?M??
?@Dϙ?)???c?,5?BM?M??߫U??0o?WQ?(?Ց????B???9?E4?2f-	??qƋ>*?i?$?;?%??mWAG~??cR?O???
??-?      i   &  x???k??0??Sp???39?J??R^?n???I?%,??B	???\1f??]3??? ?????2b'??#????R??ev??+8g??`??Ծy/ Z?(ᛄL?^???nzW?7g??????>A???m??3?<??1????g??!?}?֒E?|????,/L|c[?}+4?4Ԛ[??7??k??Rԛ?~??5???]?J`D???4????Wo)B+N?R??H?K??v??x?RLD?????c?އɦ?š+%tq?Ȑ????k?)wCۇhz???S-Vn??;???N??}ۛ????:????c+N???&f??3???WR??яP$?HmD??BXP׾???a??8;?+?ԅ??????????|$??G?k??????O?
Sa*"?lpˮo?
??|?E????/1*J9r2mE?iȌ?k??iz?A?? G@%fnښF??q}TD5y?ǋTu?M͓??:Ա?t?HT?B椥???6?x????G??ɒC^???L|S?Y??O????/
+E?B???+? !??      z   	  x???n?@  г|E 2????QPD?ibP???u??o??????????4\?LVV=ou?n?aYI?v????J??? ?ZQ?4?????H??s??r3???=?Z:f%???M׏?-?h??]?>T,??:??u?0>]?Q%???/?8?9??`????Q?Ox?e??ʠB??-???.^?
'?WA?:?lk??Un??!T???[?߳???.i-m?d??????Qϗ??go&0L?? ?P???????d?@????? ?t\?      |   ?  x?}??n?@???O???,Qp??e?ZRmhP/"ES??M?;????7?u??l )??{u??3gǝ?8ce??7?)?t?ד??P?*`???B??c?bdV??Z?\m^M?1?!9Yv{ˈ?@|?T?F?Qj?'?`n?_?$??7?o?$H>F阠qI???	?ύd?4J???k???I??|h?zg???5,?VFe婣s&~E?A???SҌ???????ѬFN?o?As???]?????d?6E??5Z???}?F\??-o^????z???О???? ??@??:???d?d?3f??;??߄AO\'??X?[??V??zK?F??yz?c??????b???z?*?d???Yy??eiU?V?j?W)?Ue??S.?Z?\1?*???>?Ѭ)?/yeȕ?<Ť?ǗGUT??B???J?\.??
2<?(?????A??8?|?˜?-????ZQ??#?      ~   ?   x?3?tpt?t?Q	??qtq?2B??#?r??z?u??W?q??rtqr?????? ??]     