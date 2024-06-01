PGDMP                      |        
   entreprise    16.2    16.3 a    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384 
   entreprise    DATABASE     u   CREATE DATABASE entreprise WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE entreprise;
                utilisateur    false            �            1259    16389    accounts_customuser    TABLE     �  CREATE TABLE public.accounts_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(254) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL
);
 '   DROP TABLE public.accounts_customuser;
       public         heap    utilisateur    false            �            1259    16392    accounts_customuser_groups    TABLE     �   CREATE TABLE public.accounts_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);
 .   DROP TABLE public.accounts_customuser_groups;
       public         heap    utilisateur    false            �            1259    16395 !   accounts_customuser_groups_id_seq    SEQUENCE     �   ALTER TABLE public.accounts_customuser_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accounts_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    216            �            1259    16396    accounts_customuser_id_seq    SEQUENCE     �   ALTER TABLE public.accounts_customuser ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accounts_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    215            �            1259    16397 $   accounts_customuser_user_permissions    TABLE     �   CREATE TABLE public.accounts_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 8   DROP TABLE public.accounts_customuser_user_permissions;
       public         heap    utilisateur    false            �            1259    16400 +   accounts_customuser_user_permissions_id_seq    SEQUENCE       ALTER TABLE public.accounts_customuser_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accounts_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    219            �            1259    16401    accounts_project    TABLE       CREATE TABLE public.accounts_project (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id bigint NOT NULL
);
 $   DROP TABLE public.accounts_project;
       public         heap    utilisateur    false            �            1259    16406    accounts_project_id_seq    SEQUENCE     �   ALTER TABLE public.accounts_project ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accounts_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    221            �            1259    16407    accounts_task    TABLE     �   CREATE TABLE public.accounts_task (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    completed boolean NOT NULL,
    assigned_to_id bigint,
    project_id bigint NOT NULL
);
 !   DROP TABLE public.accounts_task;
       public         heap    utilisateur    false            �            1259    16412    accounts_task_id_seq    SEQUENCE     �   ALTER TABLE public.accounts_task ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accounts_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    223            �            1259    16413 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    utilisateur    false            �            1259    16416    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    225            �            1259    16417    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    utilisateur    false            �            1259    16420    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    227            �            1259    16421    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    utilisateur    false            �            1259    16424    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    229            �            1259    16425    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    utilisateur    false            �            1259    16431    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    231            �            1259    16432    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    utilisateur    false            �            1259    16435    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    233            �            1259    16436    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    utilisateur    false            �            1259    16441    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          utilisateur    false    235            �            1259    16442    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    utilisateur    false            �          0    16389    accounts_customuser 
   TABLE DATA           �   COPY public.accounts_customuser (id, password, last_login, email, first_name, last_name, is_active, is_staff, is_superuser) FROM stdin;
    public          utilisateur    false    215   X�       �          0    16392    accounts_customuser_groups 
   TABLE DATA           Q   COPY public.accounts_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          utilisateur    false    216   ��       �          0    16397 $   accounts_customuser_user_permissions 
   TABLE DATA           `   COPY public.accounts_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          utilisateur    false    219   �       �          0    16401    accounts_project 
   TABLE DATA           c   COPY public.accounts_project (id, name, description, created_at, updated_at, owner_id) FROM stdin;
    public          utilisateur    false    221   �       �          0    16407    accounts_task 
   TABLE DATA           f   COPY public.accounts_task (id, title, description, completed, assigned_to_id, project_id) FROM stdin;
    public          utilisateur    false    223   |�       �          0    16413 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          utilisateur    false    225   Ҏ       �          0    16417    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          utilisateur    false    227   �       �          0    16421    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          utilisateur    false    229   Z�       �          0    16425    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          utilisateur    false    231   ǐ       �          0    16432    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          utilisateur    false    233   b�       �          0    16436    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          utilisateur    false    235   �       �          0    16442    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          utilisateur    false    237   ݓ       �           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_customuser_groups_id_seq', 6, true);
          public          utilisateur    false    217            �           0    0    accounts_customuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_customuser_id_seq', 8, true);
          public          utilisateur    false    218            �           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.accounts_customuser_user_permissions_id_seq', 1, false);
          public          utilisateur    false    220            �           0    0    accounts_project_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.accounts_project_id_seq', 3, true);
          public          utilisateur    false    222            �           0    0    accounts_task_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.accounts_task_id_seq', 3, true);
          public          utilisateur    false    224            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 8, true);
          public          utilisateur    false    226            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 70, true);
          public          utilisateur    false    228            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          utilisateur    false    230            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          utilisateur    false    232            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          utilisateur    false    234            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          utilisateur    false    236            �           2606    16448 1   accounts_customuser accounts_customuser_email_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_email_key UNIQUE (email);
 [   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_email_key;
       public            utilisateur    false    215            �           2606    16450 Z   accounts_customuser_groups accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq UNIQUE (customuser_id, group_id);
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq;
       public            utilisateur    false    216    216            �           2606    16452 :   accounts_customuser_groups accounts_customuser_groups_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_pkey;
       public            utilisateur    false    216            �           2606    16454 ,   accounts_customuser accounts_customuser_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_pkey;
       public            utilisateur    false    215            �           2606    16456 d   accounts_customuser_user_permissions accounts_customuser_user_customuser_id_permission_9632a709_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq;
       public            utilisateur    false    219    219            �           2606    16458 N   accounts_customuser_user_permissions accounts_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_permissions_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_permissions_pkey;
       public            utilisateur    false    219            �           2606    16460 &   accounts_project accounts_project_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.accounts_project
    ADD CONSTRAINT accounts_project_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.accounts_project DROP CONSTRAINT accounts_project_pkey;
       public            utilisateur    false    221            �           2606    16462     accounts_task accounts_task_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.accounts_task
    ADD CONSTRAINT accounts_task_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.accounts_task DROP CONSTRAINT accounts_task_pkey;
       public            utilisateur    false    223            �           2606    16464    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            utilisateur    false    225                       2606    16466 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            utilisateur    false    227    227                       2606    16468 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            utilisateur    false    227                       2606    16470    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            utilisateur    false    225            
           2606    16472 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            utilisateur    false    229    229                       2606    16474 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            utilisateur    false    229                       2606    16476 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            utilisateur    false    231                       2606    16478 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            utilisateur    false    233    233                       2606    16480 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            utilisateur    false    233                       2606    16482 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            utilisateur    false    235                       2606    16484 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            utilisateur    false    237            �           1259    16485 '   accounts_customuser_email_4fd8e7ce_like    INDEX     |   CREATE INDEX accounts_customuser_email_4fd8e7ce_like ON public.accounts_customuser USING btree (email varchar_pattern_ops);
 ;   DROP INDEX public.accounts_customuser_email_4fd8e7ce_like;
       public            utilisateur    false    215            �           1259    16486 1   accounts_customuser_groups_customuser_id_bc55088e    INDEX     �   CREATE INDEX accounts_customuser_groups_customuser_id_bc55088e ON public.accounts_customuser_groups USING btree (customuser_id);
 E   DROP INDEX public.accounts_customuser_groups_customuser_id_bc55088e;
       public            utilisateur    false    216            �           1259    16487 ,   accounts_customuser_groups_group_id_86ba5f9e    INDEX     w   CREATE INDEX accounts_customuser_groups_group_id_86ba5f9e ON public.accounts_customuser_groups USING btree (group_id);
 @   DROP INDEX public.accounts_customuser_groups_group_id_86ba5f9e;
       public            utilisateur    false    216            �           1259    16488 ;   accounts_customuser_user_permissions_customuser_id_0deaefae    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_customuser_id_0deaefae ON public.accounts_customuser_user_permissions USING btree (customuser_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_customuser_id_0deaefae;
       public            utilisateur    false    219            �           1259    16489 ;   accounts_customuser_user_permissions_permission_id_aea3d0e5    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_permission_id_aea3d0e5 ON public.accounts_customuser_user_permissions USING btree (permission_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_permission_id_aea3d0e5;
       public            utilisateur    false    219            �           1259    16490 "   accounts_project_owner_id_9e658e68    INDEX     c   CREATE INDEX accounts_project_owner_id_9e658e68 ON public.accounts_project USING btree (owner_id);
 6   DROP INDEX public.accounts_project_owner_id_9e658e68;
       public            utilisateur    false    221            �           1259    16491 %   accounts_task_assigned_to_id_02f93926    INDEX     i   CREATE INDEX accounts_task_assigned_to_id_02f93926 ON public.accounts_task USING btree (assigned_to_id);
 9   DROP INDEX public.accounts_task_assigned_to_id_02f93926;
       public            utilisateur    false    223            �           1259    16492 !   accounts_task_project_id_7c96104d    INDEX     a   CREATE INDEX accounts_task_project_id_7c96104d ON public.accounts_task USING btree (project_id);
 5   DROP INDEX public.accounts_task_project_id_7c96104d;
       public            utilisateur    false    223            �           1259    16493    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            utilisateur    false    225                       1259    16494 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            utilisateur    false    227                       1259    16495 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            utilisateur    false    227                       1259    16496 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            utilisateur    false    229                       1259    16497 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            utilisateur    false    231                       1259    16498 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            utilisateur    false    231                       1259    16499 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            utilisateur    false    237                       1259    16500 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            utilisateur    false    237                       2606    16501 ]   accounts_customuser_user_permissions accounts_customuser__customuser_id_0deaefae_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_;
       public          utilisateur    false    215    3305    219                       2606    16506 S   accounts_customuser_groups accounts_customuser__customuser_id_bc55088e_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_;
       public          utilisateur    false    3305    216    215                       2606    16511 ]   accounts_customuser_user_permissions accounts_customuser__permission_id_aea3d0e5_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm;
       public          utilisateur    false    229    219    3340                       2606    16516 X   accounts_customuser_groups accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id;
       public          utilisateur    false    3329    225    216                       2606    16521 M   accounts_project accounts_project_owner_id_9e658e68_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_project
    ADD CONSTRAINT accounts_project_owner_id_9e658e68_fk_accounts_customuser_id FOREIGN KEY (owner_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.accounts_project DROP CONSTRAINT accounts_project_owner_id_9e658e68_fk_accounts_customuser_id;
       public          utilisateur    false    215    221    3305                        2606    16526 M   accounts_task accounts_task_assigned_to_id_02f93926_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_task
    ADD CONSTRAINT accounts_task_assigned_to_id_02f93926_fk_accounts_customuser_id FOREIGN KEY (assigned_to_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.accounts_task DROP CONSTRAINT accounts_task_assigned_to_id_02f93926_fk_accounts_customuser_id;
       public          utilisateur    false    215    223    3305            !           2606    16531 F   accounts_task accounts_task_project_id_7c96104d_fk_accounts_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_task
    ADD CONSTRAINT accounts_task_project_id_7c96104d_fk_accounts_project_id FOREIGN KEY (project_id) REFERENCES public.accounts_project(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.accounts_task DROP CONSTRAINT accounts_task_project_id_7c96104d_fk_accounts_project_id;
       public          utilisateur    false    3320    221    223            "           2606    16536 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          utilisateur    false    229    227    3340            #           2606    16541 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          utilisateur    false    3329    225    227            $           2606    16546 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          utilisateur    false    233    229    3348            %           2606    16551 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          utilisateur    false    233    231    3348            &           2606    16556 L   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id;
       public          utilisateur    false    215    231    3305            �   E  x�u�[o�@�g���iŁm�I�QAT�"�4ٌ0���A��o��ݶq��_N�3����?�_e��ܘ}y4��<�3b�MY�;�s�̡C���*��\��"�-2�I�Ҿ��f�YG��C㑮��O�yM�%)����,&�^z�i�P(%TE�CܮwI.-�` m[�Ǌ���@C7(ц��Zt��1��'X�4{�S%
�Ģ��|�_���T�C�.���	x ��dg�;�tZ�
h㒴M[��,&�D���x�A�����A��5���
�8���Vo!�%3o#�s��Քݵ"�����m�*���ͲQ2���.*#�	ö�/z���Q��� 7�%}G���X+a�皫"$̈�mD燓�F��Gș[Jj��p��]�;�/v'gF��oK��!q�}�}ğ�݆�<o�L�����k���&�U&W�;��M
#1\ZM;9�5ԑh[�z�}����ȿE�ې�f��-]�|�T���*%��C1Wl�ZU5�
,��ս�a�;.w9*$���� ,��XxǱ? x��������R8&��3>Ư4��s�U������M()      �   *   x�3�4�4�2�4��2�4�M8̀$�1� �1z\\\ j�      �      x������ � �      �   h   x�3�(��JM.Q0�tI-N.�,(���SH�/R(������Y*ZXX�뙙Zi��42Ir�m0�i�vC�M-LMpZ���a����� >q1G      �   F   x�3�I,�V0�tI-N.�,(���SH�/R(��qrqATaWeTeTeQe�]�1�,c�=... Y�"       �   "   x�3��M�KLO-*��tI-K��/ qb���� ���      �   F   x�˹ !A�	�O+���q��VG�l�D�"�=�?�ѰM;Ѳm�Q��l�|��}��Iv������      �   ]  x�]�[n�0E��U�����ۨT!�(� �f��q����'ґ�[�꽛�n��2fvv�K����`�eP��ͣ���Z:؇u	�3�6��N�O�W°�v{N�>-�2(�D�w.)Q��t�=%�����*Yp�!�q[�U�Da�U�	@=dJnFJ!SE"@�5Y����Cf�Ze*���t�p��F3������)>ܣl����[2�-^�iu�sa�+q�{2�+�����ؒ����̎�n�4��]��ES6��-	N�p֘��d(kͶ|�ީ�7�O��u!&T%`�'��� ���������?���s�u#z֨�	ъ@��'X'�`������/      �   �   x��ͽ
�0@���)BVm��IK�������j���(����8��3}�X%��|�R{�hW�`��y2[~�tX�����sOܩ gu�y��+k��|�cL��R��w�ei�T����`Q��ʿA���G�O�o?%      �   t   x�M��
1Dϙ����x)5�U۔&9��+���fo���5����ޯ̓=�L�VK����|,���;u��m���C��O�������mx"����|^?s�k�����T7a      �   �  x����n� ���������y��rhʮm\�U���%��UrÅ���sf u���2�� �nrə�À�3�g��?`t`|��T����S�SJ��>��@/Bҙ���0U%�*�z�|j8�`G�n�Y���x�fp�2ؕA���ӦO�O�e0'ݿz�g;�,����7����uC�=��n��H��r�����
�X�!٠gFc1QNԣ�Ѓ�N��M�B�eA��"+j�y��q�=��]
�������z�����0B*5�e&��-��-�v4S�p��F�!o��#�U���!@�Vi���nw4ɇXƆ��m���ìH�Ԛm8��ν�fpq�I}��!��_��(+��2?�� HEԦ!��9"���?�7#�C>��*��3·�^\xЖ��Ŗ�]O�{�Q�r0|yq��������?-����ӂ�-�����i��R��l<9q@dX2Uߙ���n��<�]      �   �  x�U�G��P  ����GX>}0ʹ��id�M��O�h�E��ȡ|A2y�u	;P���y��bn�b���c��ק���Jp�SF_e�I��c�ޫuiL��M��w�v�KnZ��%������')7ND�,�	�YF�Q��S2�SG<�g�9��e � ��vZ{�!�M��?|�4dx�(Ş�5��������v3q��vNH�K�����t�cE`}W�e�Qw!�^��d��&v�Z:z��4�� �8�C���,C�?8e��	�nn�;3���Xg늒�m�+
ĿE�O����l��M
�6bS��ː�~�lxΫ�c�H���)�6���8p��Dw��T���D�t���67}�N��<���!�I�Oq[&O����)V�T����U&hW�>~h��h�v?����m^v��*(�5�x����Nc���ڄ>�u��B-Y�"2< �G���Я��p�κ     