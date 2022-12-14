PGDMP          3                z            libreria    14.5    14.5 d    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16648    libreria    DATABASE     g   CREATE DATABASE libreria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE libreria;
                postgres    false            ?            1259    16672 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16671    auth_group_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            ?            1259    16680    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16679    auth_group_permissions_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            ?            1259    16666    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16665    auth_permission_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            ?            1259    16686 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            ?            1259    16694    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16693    auth_user_groups_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            ?            1259    16685    auth_user_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            ?            1259    16700    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16699 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            ?            1259    16758    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            ?            1259    16757    django_admin_log_id_seq    SEQUENCE     ?   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            ?            1259    16658    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16657    django_content_type_id_seq    SEQUENCE     ?   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            ?            1259    16650    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16649    django_migrations_id_seq    SEQUENCE     ?   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            ?            1259    16786    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16795    sistema_libro    TABLE       CREATE TABLE public.sistema_libro (
    "ISBN" character varying(20) NOT NULL,
    titulo character varying(100) NOT NULL,
    autor character varying(100) NOT NULL,
    "numPaginas" smallint NOT NULL,
    CONSTRAINT "sistema_libro_numPaginas_check" CHECK (("numPaginas" >= 0))
);
 !   DROP TABLE public.sistema_libro;
       public         heap    postgres    false            ?            1259    16807    sistema_prestamo    TABLE     ?   CREATE TABLE public.sistema_prestamo (
    "IDprestamo" integer NOT NULL,
    "fechaPrestamo" date NOT NULL,
    "fechaDevolucion" date NOT NULL,
    "ISBN_id" character varying(20) NOT NULL,
    "numDocumento_id" character varying(50) NOT NULL
);
 $   DROP TABLE public.sistema_prestamo;
       public         heap    postgres    false            ?            1259    16806    sistema_prestamo_IDprestamo_seq    SEQUENCE     ?   ALTER TABLE public.sistema_prestamo ALTER COLUMN "IDprestamo" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."sistema_prestamo_IDprestamo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?            1259    16801    sistema_usuario    TABLE     ?  CREATE TABLE public.sistema_usuario (
    "numDocumento" character varying(50) NOT NULL,
    "tipoDocumento" character varying(3) NOT NULL,
    "primerNombre" character varying(50) NOT NULL,
    "segundoNombre" character varying(50),
    "primerApellido" character varying(50) NOT NULL,
    "segundoApellido" character varying(50) NOT NULL,
    direccion character varying(100),
    telefono character varying(50)
);
 #   DROP TABLE public.sistema_usuario;
       public         heap    postgres    false            o          0    16672 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   T?       q          0    16680    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   q?       m          0    16666    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ??       s          0    16686 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   ?       u          0    16694    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ȍ       w          0    16700    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   ??       y          0    16758    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ?       k          0    16658    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ??       i          0    16650    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   k?       z          0    16786    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   t?       {          0    16795    sistema_libro 
   TABLE DATA           L   COPY public.sistema_libro ("ISBN", titulo, autor, "numPaginas") FROM stdin;
    public          postgres    false    228   ??       ~          0    16807    sistema_prestamo 
   TABLE DATA           z   COPY public.sistema_prestamo ("IDprestamo", "fechaPrestamo", "fechaDevolucion", "ISBN_id", "numDocumento_id") FROM stdin;
    public          postgres    false    231   ??       |          0    16801    sistema_usuario 
   TABLE DATA           ?   COPY public.sistema_usuario ("numDocumento", "tipoDocumento", "primerNombre", "segundoNombre", "primerApellido", "segundoApellido", direccion, telefono) FROM stdin;
    public          postgres    false    229   q?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
          public          postgres    false    225            ?           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    209            ?           0    0    sistema_prestamo_IDprestamo_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."sistema_prestamo_IDprestamo_seq"', 18, true);
          public          postgres    false    230            ?           2606    16784    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            ?           2606    16715 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            ?           2606    16684 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            ?           2606    16676    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            ?           2606    16706 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            ?           2606    16670 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            ?           2606    16698 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            ?           2606    16730 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            ?           2606    16690    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            ?           2606    16704 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            ?           2606    16744 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            ?           2606    16779     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            ?           2606    16765 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            ?           2606    16664 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            ?           2606    16662 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            ?           2606    16656 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    16792 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            ?           2606    16800     sistema_libro sistema_libro_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.sistema_libro
    ADD CONSTRAINT sistema_libro_pkey PRIMARY KEY ("ISBN");
 J   ALTER TABLE ONLY public.sistema_libro DROP CONSTRAINT sistema_libro_pkey;
       public            postgres    false    228            ?           2606    16811 &   sistema_prestamo sistema_prestamo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sistema_prestamo
    ADD CONSTRAINT sistema_prestamo_pkey PRIMARY KEY ("IDprestamo");
 P   ALTER TABLE ONLY public.sistema_prestamo DROP CONSTRAINT sistema_prestamo_pkey;
       public            postgres    false    231            ?           2606    16805    sistema_usuario usuario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sistema_usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY ("numDocumento");
 F   ALTER TABLE ONLY public.sistema_usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    229            ?           1259    16785    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            ?           1259    16726 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            ?           1259    16727 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            ?           1259    16712 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            ?           1259    16742 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            ?           1259    16741 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            ?           1259    16756 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            ?           1259    16755 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            ?           1259    16780     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            ?           1259    16776 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            ?           1259    16777 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            ?           1259    16794 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            ?           1259    16793 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            ?           1259    16812     sistema_libro_ISBN_08b6a232_like    INDEX     r   CREATE INDEX "sistema_libro_ISBN_08b6a232_like" ON public.sistema_libro USING btree ("ISBN" varchar_pattern_ops);
 6   DROP INDEX public."sistema_libro_ISBN_08b6a232_like";
       public            postgres    false    228            ?           1259    16824 !   sistema_prestamo_ISBN_id_a5fe10ca    INDEX     e   CREATE INDEX "sistema_prestamo_ISBN_id_a5fe10ca" ON public.sistema_prestamo USING btree ("ISBN_id");
 7   DROP INDEX public."sistema_prestamo_ISBN_id_a5fe10ca";
       public            postgres    false    231            ?           1259    16825 &   sistema_prestamo_ISBN_id_a5fe10ca_like    INDEX     ~   CREATE INDEX "sistema_prestamo_ISBN_id_a5fe10ca_like" ON public.sistema_prestamo USING btree ("ISBN_id" varchar_pattern_ops);
 <   DROP INDEX public."sistema_prestamo_ISBN_id_a5fe10ca_like";
       public            postgres    false    231            ?           1259    16826 )   sistema_prestamo_numDocumento_id_17784fa4    INDEX     u   CREATE INDEX "sistema_prestamo_numDocumento_id_17784fa4" ON public.sistema_prestamo USING btree ("numDocumento_id");
 ?   DROP INDEX public."sistema_prestamo_numDocumento_id_17784fa4";
       public            postgres    false    231            ?           1259    16827 .   sistema_prestamo_numDocumento_id_17784fa4_like    INDEX     ?   CREATE INDEX "sistema_prestamo_numDocumento_id_17784fa4_like" ON public.sistema_prestamo USING btree ("numDocumento_id" varchar_pattern_ops);
 D   DROP INDEX public."sistema_prestamo_numDocumento_id_17784fa4_like";
       public            postgres    false    231            ?           1259    16813 "   usuario_numDocumento_ce1527b4_like    INDEX     ~   CREATE INDEX "usuario_numDocumento_ce1527b4_like" ON public.sistema_usuario USING btree ("numDocumento" varchar_pattern_ops);
 8   DROP INDEX public."usuario_numDocumento_ce1527b4_like";
       public            postgres    false    229            ?           2606    16721 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    3233    218            ?           2606    16716 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3238    216            ?           2606    16707 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    212    3228            ?           2606    16736 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3238    216    222            ?           2606    16731 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    220    3246            ?           2606    16750 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    3233    214            ?           2606    16745 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3246            ?           2606    16766 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    212    3228            ?           2606    16771 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    220    3246            ?           2606    16814 H   sistema_prestamo sistema_prestamo_ISBN_id_a5fe10ca_fk_sistema_libro_ISBN    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sistema_prestamo
    ADD CONSTRAINT "sistema_prestamo_ISBN_id_a5fe10ca_fk_sistema_libro_ISBN" FOREIGN KEY ("ISBN_id") REFERENCES public.sistema_libro("ISBN") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.sistema_prestamo DROP CONSTRAINT "sistema_prestamo_ISBN_id_a5fe10ca_fk_sistema_libro_ISBN";
       public          postgres    false    231    3272    228            ?           2606    16819 G   sistema_prestamo sistema_prestamo_numDocumento_id_17784fa4_fk_usuario_n    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sistema_prestamo
    ADD CONSTRAINT "sistema_prestamo_numDocumento_id_17784fa4_fk_usuario_n" FOREIGN KEY ("numDocumento_id") REFERENCES public.sistema_usuario("numDocumento") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.sistema_prestamo DROP CONSTRAINT "sistema_prestamo_numDocumento_id_17784fa4_fk_usuario_n";
       public          postgres    false    3275    229    231            o      x?????? ? ?      q      x?????? ? ?      m   u  x?]??j?0????????)?{???Z??88?F?~???;K?@?Wp?????Ks??&?Ky??^?׫??G@???xM??-??tK??%???!?lm??fS*?a??<?j??{-g@?S?A??{EC????jy-?1????F????	ډ?!$?
`A??<?T?֧[???????N -G`/?i?qx???y\^??,?)?Pk??p?"o0	??^o<?i>nD??]Æj='??=S??ɻ0?Y1?v?H?b*??UE$????dw??[?>????/?kF??Qqf ?ǝ?У/CvG?T???$1S?DX?yb?F???S??I?TҼ???:?}*}kҭ(>?
??+????*?
Óg??????)??      s   ?   x?3?,H?NI3?/?H425S1?4 ?2?? ??|??R?#?$Ӡ`??T?
3?23C??lmS?????Ш??0????L???Pc7s??@s?B?@[N###]]CSCc+C3+=CS#c??)g	gbJnf''?v ?z???@?4??V? ???Ʀ@?\1z\\\ W?1       u      x?????? ? ?      w      x?????? ? ?      y   ?   x???1n1Ek?)F???????]????T??p?(Zi???,?H9ˆ?D(M?j~1z?}R???&d??hBC?ޑF?^MsM6????J??aY?i?$?\?2??V??????`???A?0w?Hm?????Y??????????????E?%@?a???]??r=???:a=?Ҿd?&??????k???H|Է???[?_u??sSU?'.k?      k   q   x?M??
?@??F????x?j??Y???o?X,??̞?U??d?????oj?E#?*?K?z?i??8??j~????V0P?????B??R?&}???z?ή??Z?K$?}??#8      i   ?  x????n? ??ݧ??@?YNB?RK?b???`?k?6?^????? .;=?p??/BX????? B?H?1{??f?&?"@0T?;?B???($g8%?P?`????c?"?!??],?]?Ӄ??2?o?j?}F?YU&?3?Έ9??`?(?z???ݚ&?eU??K??fy!?9?A??+????????I??x?JJy9?/?뱋_??e?Hb%?B?}??A???3??Z)tKI?\??¾????4F+?m??!?7qcs??s?E?z???£܏ٸ?n?.??}P
"C??Y.?|?޴*X?s??s??A{????????Ê?v43 (s?1]I?/GO???a???hAu???SN8??*?b????H??ٯ?f ??p* ?:?N3&?]??䶸??bH^/??*J??H?XUx?C????`??X???{??rƦ?Oe<<???y??F?q!/i??- m???I???s??yl?h??8?jl?`??JP?4???JK???N??Ae?\      z      x?????? ? ?      {   N  x?uP1N?0?7?????I??8? ??f/??V??`''?7??!?щ?jVڙ??1??J???k????C?cLm?C??ΒE?<f???=????D ??z?*?ȮUڴm???b(?qb???-tyH?%??m?¸?4,߄w?gz??U??!??Z#a?x??;%?=?4Z?X?t?i????y"x?d??	?i_?????Ia
3?ѥ\ Ӵ|???%?Ü????[u?Ӣ?k-?5֘8<??????#q?ή??q?J?`?ɪ??Z(#????K???!l?pGӞ?r??,4R?T}-????r??????u??_???0)??????_????      ~   r   x?m??BAC????AI???????'!?f煏??ru??m???k??h?jĂ"Úb~??j^Gep2?G?Q?.x?Z?-SY??????L?R?????m(?:蝁{l?3χ?? ?/(      |     x?=??J?0?ϓ????$͟?????"^?6?fM??6}?}1S<??o???6J?ָ?-<-a?????_??c???K?7\?JH`?v???
e??`??w?? H?K?.?}?p?Tڴ?V
v?????'???t?)O"ńc????????ᔹ?|??P?9???G?	?W BP?6??FH?jU?u+I?O?>`?3rc*?KV[?^ѤvJ??W??0?8e$?a???jo?}[???'_?@	?S7Ʋ???/?3]?     