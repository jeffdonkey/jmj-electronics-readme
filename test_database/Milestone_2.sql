PGDMP     2                    z            milestone_2_testing    15.1    15.1                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17758    milestone_2_testing    DATABASE     �   CREATE DATABASE milestone_2_testing WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 #   DROP DATABASE milestone_2_testing;
                postgres    false            �            1259    17778 
   appliances    TABLE     -  CREATE TABLE public.appliances (
    appliances_id integer NOT NULL,
    "desc" character varying NOT NULL,
    cost money NOT NULL,
    image character varying,
    brand character varying,
    model_num character varying,
    spec text,
    color character varying,
    utility character varying
);
    DROP TABLE public.appliances;
       public         heap    postgres    false            �            1259    17777    appliances_appliances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appliances_appliances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.appliances_appliances_id_seq;
       public          postgres    false    219                       0    0    appliances_appliances_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.appliances_appliances_id_seq OWNED BY public.appliances.appliances_id;
          public          postgres    false    218            �            1259    17760 	   computers    TABLE     3  CREATE TABLE public.computers (
    computers_id integer NOT NULL,
    "desc" character varying NOT NULL,
    cost money NOT NULL,
    image character varying,
    brand character varying,
    model_num character varying,
    spec character varying,
    os character varying,
    color character varying
);
    DROP TABLE public.computers;
       public         heap    postgres    false            �            1259    17759    computers_computers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_computers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.computers_computers_id_seq;
       public          postgres    false    215                       0    0    computers_computers_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.computers_computers_id_seq OWNED BY public.computers.computers_id;
          public          postgres    false    214            �            1259    17769    phones    TABLE     a  CREATE TABLE public.phones (
    phones_id integer NOT NULL,
    "desc" character varying NOT NULL,
    cost money NOT NULL,
    image character varying,
    brand character varying,
    model_num character varying,
    spec text,
    os character varying,
    color character varying,
    screen_size character varying,
    memory character varying
);
    DROP TABLE public.phones;
       public         heap    postgres    false            �            1259    17768    phones_phones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phones_phones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.phones_phones_id_seq;
       public          postgres    false    217                       0    0    phones_phones_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.phones_phones_id_seq OWNED BY public.phones.phones_id;
          public          postgres    false    216            �            1259    17787    tvs    TABLE     (  CREATE TABLE public.tvs (
    tvs_id integer NOT NULL,
    "desc" character varying NOT NULL,
    cost money NOT NULL,
    image character varying,
    brand character varying,
    model_num character varying,
    spec text,
    screen_size character varying,
    resolution character varying
);
    DROP TABLE public.tvs;
       public         heap    postgres    false            �            1259    17786    tvs_tvs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tvs_tvs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tvs_tvs_id_seq;
       public          postgres    false    221                       0    0    tvs_tvs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tvs_tvs_id_seq OWNED BY public.tvs.tvs_id;
          public          postgres    false    220            v           2604    17781    appliances appliances_id    DEFAULT     �   ALTER TABLE ONLY public.appliances ALTER COLUMN appliances_id SET DEFAULT nextval('public.appliances_appliances_id_seq'::regclass);
 G   ALTER TABLE public.appliances ALTER COLUMN appliances_id DROP DEFAULT;
       public          postgres    false    219    218    219            t           2604    17763    computers computers_id    DEFAULT     �   ALTER TABLE ONLY public.computers ALTER COLUMN computers_id SET DEFAULT nextval('public.computers_computers_id_seq'::regclass);
 E   ALTER TABLE public.computers ALTER COLUMN computers_id DROP DEFAULT;
       public          postgres    false    214    215    215            u           2604    17772    phones phones_id    DEFAULT     t   ALTER TABLE ONLY public.phones ALTER COLUMN phones_id SET DEFAULT nextval('public.phones_phones_id_seq'::regclass);
 ?   ALTER TABLE public.phones ALTER COLUMN phones_id DROP DEFAULT;
       public          postgres    false    216    217    217            w           2604    17790 
   tvs tvs_id    DEFAULT     h   ALTER TABLE ONLY public.tvs ALTER COLUMN tvs_id SET DEFAULT nextval('public.tvs_tvs_id_seq'::regclass);
 9   ALTER TABLE public.tvs ALTER COLUMN tvs_id DROP DEFAULT;
       public          postgres    false    221    220    221                      0    17778 
   appliances 
   TABLE DATA           p   COPY public.appliances (appliances_id, "desc", cost, image, brand, model_num, spec, color, utility) FROM stdin;
    public          postgres    false    219   �%                 0    17760 	   computers 
   TABLE DATA           i   COPY public.computers (computers_id, "desc", cost, image, brand, model_num, spec, os, color) FROM stdin;
    public          postgres    false    215   �&                 0    17769    phones 
   TABLE DATA           x   COPY public.phones (phones_id, "desc", cost, image, brand, model_num, spec, os, color, screen_size, memory) FROM stdin;
    public          postgres    false    217   �'                 0    17787    tvs 
   TABLE DATA           k   COPY public.tvs (tvs_id, "desc", cost, image, brand, model_num, spec, screen_size, resolution) FROM stdin;
    public          postgres    false    221   �(                   0    0    appliances_appliances_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.appliances_appliances_id_seq', 5, true);
          public          postgres    false    218            !           0    0    computers_computers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.computers_computers_id_seq', 5, true);
          public          postgres    false    214            "           0    0    phones_phones_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.phones_phones_id_seq', 5, true);
          public          postgres    false    216            #           0    0    tvs_tvs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tvs_tvs_id_seq', 4, true);
          public          postgres    false    220            }           2606    17785    appliances appliances_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.appliances
    ADD CONSTRAINT appliances_pkey PRIMARY KEY (appliances_id);
 D   ALTER TABLE ONLY public.appliances DROP CONSTRAINT appliances_pkey;
       public            postgres    false    219            y           2606    17767    computers computers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.computers
    ADD CONSTRAINT computers_pkey PRIMARY KEY (computers_id);
 B   ALTER TABLE ONLY public.computers DROP CONSTRAINT computers_pkey;
       public            postgres    false    215            {           2606    17776    phones phones_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (phones_id);
 <   ALTER TABLE ONLY public.phones DROP CONSTRAINT phones_pkey;
       public            postgres    false    217                       2606    17794    tvs tvs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tvs
    ADD CONSTRAINT tvs_pkey PRIMARY KEY (tvs_id);
 6   ALTER TABLE ONLY public.tvs DROP CONSTRAINT tvs_pkey;
       public            postgres    false    221               �   x���1k�0���Wh�X�,[%���[�x�"�G,�HFz�ɿo�������q%�>҈�&���Mɦhv-&]��A;(�`~d������=)��;�ab����&؟j;h]���Xm�N�ū�P⏧?��DV.OɅ���q�XV�vy�]�D!V��L:�����|b��5��N����ώF�S�!?�i9�,��v�:4R��C�A\
�D2.��=�Lf_c��Ԁ�         >  x�M�1o�0F��Wܐ1E@�"�&m�P�J�,]8����m����6����{~!g"����$��$��*ؓRd���E�1�е�%�B�ƺ����-X%�OJ���V�ȹ�𖹻���j^�\r��Ƿ �a��f���ƈ����Q36�'9�`�VT:�I�
�i��~�Ҷ�������(�l�FA�?������Ħ�����Z�l���C>��A��D���'3v���=�4�]o>��a�=k�&�����+��T��C��
7V��?8?
��BOѡȊ,��3����˪RS�V�ʐ��纖%ṕ�����9�{         �   x��ϱn�0����S�5��-R�"�v�$�$����}B�%Q+2���	Cu�N�@Jmmf-���p�0P� �v�K�Qq��8�#<NA"*�UcY;6��[�>��7�p�Qn��u�G�N���]�<��%�r�Q�5�bǨX�	|�Z���Cz�d��<	6�M7=p�w���3�޵�;K���v         �   x���=�P����O!�������|��&qj5\����p�A���Y�Ï ���wQV�ս�u���(�:�wq�mQV����X#>���e���,'"��fB ���t�N�w[�v:�삭���n'܀Y�IY��?�����,0�-�8K!���i     