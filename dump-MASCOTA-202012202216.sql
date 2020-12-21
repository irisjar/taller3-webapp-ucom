PGDMP     -                    x           MASCOTA    10.14    10.14 0    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    24807    articulo    TABLE     �   CREATE TABLE public.articulo (
    id_articulo integer NOT NULL,
    descripcion character varying(100),
    precio_publico integer,
    precio_mayorista integer,
    activo character varying
);
    DROP TABLE public.articulo;
       public         postgres    false    3            �            1259    24805    articulo_id_articulo_seq    SEQUENCE     �   CREATE SEQUENCE public.articulo_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.articulo_id_articulo_seq;
       public       postgres    false    206    3            6           0    0    articulo_id_articulo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.articulo_id_articulo_seq OWNED BY public.articulo.id_articulo;
            public       postgres    false    205            �            1259    24699 	   categoria    TABLE     ^   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(200)
);
    DROP TABLE public.categoria;
       public         postgres    false    3            �            1259    24702    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    apellido character varying,
    direccion character varying,
    telefono character varying
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    24708    cliente_mascota    TABLE     �   CREATE TABLE public.cliente_mascota (
    id integer NOT NULL,
    id_cliente integer,
    id_mascota integer,
    activo boolean
);
 #   DROP TABLE public.cliente_mascota;
       public         postgres    false    3            �            1259    24711    cliente_mascota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_mascota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_mascota_id_seq;
       public       postgres    false    198    3            7           0    0    cliente_mascota_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_mascota_id_seq OWNED BY public.cliente_mascota.id;
            public       postgres    false    199            �            1259    24713    mascota    TABLE     y   CREATE TABLE public.mascota (
    id_mascota integer NOT NULL,
    nombre character varying,
    id_categoria integer
);
    DROP TABLE public.mascota;
       public         postgres    false    3            �            1259    24719    servicio    TABLE     �   CREATE TABLE public.servicio (
    fecha_servicio date,
    id_cliente integer,
    estado character varying,
    id_tipo_servicio integer,
    id_servicio integer NOT NULL,
    id_mascota integer
);
    DROP TABLE public.servicio;
       public         postgres    false    3            �            1259    24725    servicio_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicio_id_servicio_seq;
       public       postgres    false    201    3            8           0    0    servicio_id_servicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;
            public       postgres    false    202            �            1259    24727    tipo_servicio    TABLE     t   CREATE TABLE public.tipo_servicio (
    id_tipo_servicio integer NOT NULL,
    nombre_servicio character varying
);
 !   DROP TABLE public.tipo_servicio;
       public         postgres    false    3            �            1259    24733 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_servicio_id_tipo_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_servicio_id_tipo_servicio_seq;
       public       postgres    false    203    3            9           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_servicio_id_tipo_servicio_seq OWNED BY public.tipo_servicio.id_tipo_servicio;
            public       postgres    false    204            �            1259    24818    venta    TABLE     �   CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    fecha_venta date,
    id_cliente integer,
    monto_total integer,
    nro_factura character varying(50),
    activo boolean
);
    DROP TABLE public.venta;
       public         postgres    false    3            �            1259    24816    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public       postgres    false    3    208            :           0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
            public       postgres    false    207            �
           2604    24810    articulo id_articulo    DEFAULT     |   ALTER TABLE ONLY public.articulo ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulo_id_articulo_seq'::regclass);
 C   ALTER TABLE public.articulo ALTER COLUMN id_articulo DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    24735    cliente_mascota id    DEFAULT     x   ALTER TABLE ONLY public.cliente_mascota ALTER COLUMN id SET DEFAULT nextval('public.cliente_mascota_id_seq'::regclass);
 A   ALTER TABLE public.cliente_mascota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    24736    servicio id_servicio    DEFAULT     |   ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);
 C   ALTER TABLE public.servicio ALTER COLUMN id_servicio DROP DEFAULT;
       public       postgres    false    202    201            �
           2604    24737    tipo_servicio id_tipo_servicio    DEFAULT     �   ALTER TABLE ONLY public.tipo_servicio ALTER COLUMN id_tipo_servicio SET DEFAULT nextval('public.tipo_servicio_id_tipo_servicio_seq'::regclass);
 M   ALTER TABLE public.tipo_servicio ALTER COLUMN id_tipo_servicio DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    24821    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public       postgres    false    208    207    208            -          0    24807    articulo 
   TABLE DATA               f   COPY public.articulo (id_articulo, descripcion, precio_publico, precio_mayorista, activo) FROM stdin;
    public       postgres    false    206            #          0    24699 	   categoria 
   TABLE DATA               /   COPY public.categoria (id, nombre) FROM stdin;
    public       postgres    false    196            $          0    24702    cliente 
   TABLE DATA               T   COPY public.cliente (id_cliente, nombre, apellido, direccion, telefono) FROM stdin;
    public       postgres    false    197            %          0    24708    cliente_mascota 
   TABLE DATA               M   COPY public.cliente_mascota (id, id_cliente, id_mascota, activo) FROM stdin;
    public       postgres    false    198            '          0    24713    mascota 
   TABLE DATA               C   COPY public.mascota (id_mascota, nombre, id_categoria) FROM stdin;
    public       postgres    false    200            (          0    24719    servicio 
   TABLE DATA               q   COPY public.servicio (fecha_servicio, id_cliente, estado, id_tipo_servicio, id_servicio, id_mascota) FROM stdin;
    public       postgres    false    201            *          0    24727    tipo_servicio 
   TABLE DATA               J   COPY public.tipo_servicio (id_tipo_servicio, nombre_servicio) FROM stdin;
    public       postgres    false    203            /          0    24818    venta 
   TABLE DATA               d   COPY public.venta (id_venta, fecha_venta, id_cliente, monto_total, nro_factura, activo) FROM stdin;
    public       postgres    false    208            ;           0    0    articulo_id_articulo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.articulo_id_articulo_seq', 3, true);
            public       postgres    false    205            <           0    0    cliente_mascota_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_mascota_id_seq', 3, true);
            public       postgres    false    199            =           0    0    servicio_id_servicio_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 17, true);
            public       postgres    false    202            >           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_servicio_id_tipo_servicio_seq', 4, true);
            public       postgres    false    204            ?           0    0    venta_id_venta_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.venta_id_venta_seq', 3, true);
            public       postgres    false    207            �
           2606    24815    articulo articulo_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pk PRIMARY KEY (id_articulo);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pk;
       public         postgres    false    206            �
           2606    24739 "   cliente_mascota cliente_mascota_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente_mascota
    ADD CONSTRAINT cliente_mascota_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cliente_mascota DROP CONSTRAINT cliente_mascota_pk;
       public         postgres    false    198            �
           2606    24741    cliente cliente_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pk;
       public         postgres    false    197            �
           2606    24743    mascota mascota_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT mascota_pk PRIMARY KEY (id_mascota);
 <   ALTER TABLE ONLY public.mascota DROP CONSTRAINT mascota_pk;
       public         postgres    false    200            �
           2606    24745    servicio servicio_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pk PRIMARY KEY (id_servicio);
 >   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pk;
       public         postgres    false    201            �
           2606    24747    tipo_servicio tipo_servicio_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.tipo_servicio
    ADD CONSTRAINT tipo_servicio_pk PRIMARY KEY (id_tipo_servicio);
 H   ALTER TABLE ONLY public.tipo_servicio DROP CONSTRAINT tipo_servicio_pk;
       public         postgres    false    203            �
           2606    24823    venta venta_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pk PRIMARY KEY (id_venta);
 8   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pk;
       public         postgres    false    208            -   T   x�3�HM�L/JMU�UH���LIT(H,JTHNL��/*�/�fs�p�I.#N�����"���Ē|N#��<HA� �88      #   +   x�3�,H-*��2�LO,��2����L83s�KR��b���� �v
B      $   �   x�%̱
�@��9y�{��p`G�����j��H��}zO���O�W�[���z3�%+��M��6�[�1��6�R�3��Y*��TO��É�Wm��ŒsD������0����{�x� ��T(      %   +   x�3�4�4�,�2�4�J�����6��iS m�c���� ���      '   E   x�3���L���4�2�,�OJ��4�2�,H�K���4�2�,�/��4�2�t/M,�ʚq:fg�1z\\\ ��      (   �   x�u�A�0���.��/-q�<����D)Q�4Sw�����j�AT�t�?e�����k�X��+/�G�n��*c�xa���X��l� �vE�ׯyz<�d6j�� ��� �F{Q���e�DDE6���`�}`��mbmS���ύr����W���9���c�      *   :   x�3�LJ<�1�ˈ�,1�4/19���<.c���"(ۄ39��$U!%U����D�=... 7y^      /   .   x�3�4202�54�52�4�41  ]�e�,a�i�0J��qqq �9�      0    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    24807    articulo    TABLE     �   CREATE TABLE public.articulo (
    id_articulo integer NOT NULL,
    descripcion character varying(100),
    precio_publico integer,
    precio_mayorista integer,
    activo character varying
);
    DROP TABLE public.articulo;
       public         postgres    false    3            �            1259    24805    articulo_id_articulo_seq    SEQUENCE     �   CREATE SEQUENCE public.articulo_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.articulo_id_articulo_seq;
       public       postgres    false    206    3            6           0    0    articulo_id_articulo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.articulo_id_articulo_seq OWNED BY public.articulo.id_articulo;
            public       postgres    false    205            �            1259    24699 	   categoria    TABLE     ^   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(200)
);
    DROP TABLE public.categoria;
       public         postgres    false    3            �            1259    24702    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    apellido character varying,
    direccion character varying,
    telefono character varying
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    24708    cliente_mascota    TABLE     �   CREATE TABLE public.cliente_mascota (
    id integer NOT NULL,
    id_cliente integer,
    id_mascota integer,
    activo boolean
);
 #   DROP TABLE public.cliente_mascota;
       public         postgres    false    3            �            1259    24711    cliente_mascota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_mascota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_mascota_id_seq;
       public       postgres    false    198    3            7           0    0    cliente_mascota_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_mascota_id_seq OWNED BY public.cliente_mascota.id;
            public       postgres    false    199            �            1259    24713    mascota    TABLE     y   CREATE TABLE public.mascota (
    id_mascota integer NOT NULL,
    nombre character varying,
    id_categoria integer
);
    DROP TABLE public.mascota;
       public         postgres    false    3            �            1259    24719    servicio    TABLE     �   CREATE TABLE public.servicio (
    fecha_servicio date,
    id_cliente integer,
    estado character varying,
    id_tipo_servicio integer,
    id_servicio integer NOT NULL,
    id_mascota integer
);
    DROP TABLE public.servicio;
       public         postgres    false    3            �            1259    24725    servicio_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicio_id_servicio_seq;
       public       postgres    false    201    3            8           0    0    servicio_id_servicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;
            public       postgres    false    202            �            1259    24727    tipo_servicio    TABLE     t   CREATE TABLE public.tipo_servicio (
    id_tipo_servicio integer NOT NULL,
    nombre_servicio character varying
);
 !   DROP TABLE public.tipo_servicio;
       public         postgres    false    3            �            1259    24733 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_servicio_id_tipo_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_servicio_id_tipo_servicio_seq;
       public       postgres    false    203    3            9           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_servicio_id_tipo_servicio_seq OWNED BY public.tipo_servicio.id_tipo_servicio;
            public       postgres    false    204            �            1259    24818    venta    TABLE     �   CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    fecha_venta date,
    id_cliente integer,
    monto_total integer,
    nro_factura character varying(50),
    activo boolean
);
    DROP TABLE public.venta;
       public         postgres    false    3            �            1259    24816    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public       postgres    false    3    208            :           0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
            public       postgres    false    207            �
           2604    24810    articulo id_articulo    DEFAULT     |   ALTER TABLE ONLY public.articulo ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulo_id_articulo_seq'::regclass);
 C   ALTER TABLE public.articulo ALTER COLUMN id_articulo DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    24735    cliente_mascota id    DEFAULT     x   ALTER TABLE ONLY public.cliente_mascota ALTER COLUMN id SET DEFAULT nextval('public.cliente_mascota_id_seq'::regclass);
 A   ALTER TABLE public.cliente_mascota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    24736    servicio id_servicio    DEFAULT     |   ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);
 C   ALTER TABLE public.servicio ALTER COLUMN id_servicio DROP DEFAULT;
       public       postgres    false    202    201            �
           2604    24737    tipo_servicio id_tipo_servicio    DEFAULT     �   ALTER TABLE ONLY public.tipo_servicio ALTER COLUMN id_tipo_servicio SET DEFAULT nextval('public.tipo_servicio_id_tipo_servicio_seq'::regclass);
 M   ALTER TABLE public.tipo_servicio ALTER COLUMN id_tipo_servicio DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    24821    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public       postgres    false    208    207    208            -          0    24807    articulo 
   TABLE DATA               f   COPY public.articulo (id_articulo, descripcion, precio_publico, precio_mayorista, activo) FROM stdin;
    public       postgres    false    206   C       #          0    24699 	   categoria 
   TABLE DATA               /   COPY public.categoria (id, nombre) FROM stdin;
    public       postgres    false    196   �       $          0    24702    cliente 
   TABLE DATA               T   COPY public.cliente (id_cliente, nombre, apellido, direccion, telefono) FROM stdin;
    public       postgres    false    197   �       %          0    24708    cliente_mascota 
   TABLE DATA               M   COPY public.cliente_mascota (id, id_cliente, id_mascota, activo) FROM stdin;
    public       postgres    false    198   r       '          0    24713    mascota 
   TABLE DATA               C   COPY public.mascota (id_mascota, nombre, id_categoria) FROM stdin;
    public       postgres    false    200   �       (          0    24719    servicio 
   TABLE DATA               q   COPY public.servicio (fecha_servicio, id_cliente, estado, id_tipo_servicio, id_servicio, id_mascota) FROM stdin;
    public       postgres    false    201          *          0    24727    tipo_servicio 
   TABLE DATA               J   COPY public.tipo_servicio (id_tipo_servicio, nombre_servicio) FROM stdin;
    public       postgres    false    203   �       /          0    24818    venta 
   TABLE DATA               d   COPY public.venta (id_venta, fecha_venta, id_cliente, monto_total, nro_factura, activo) FROM stdin;
    public       postgres    false    208          ;           0    0    articulo_id_articulo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.articulo_id_articulo_seq', 3, true);
            public       postgres    false    205            <           0    0    cliente_mascota_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_mascota_id_seq', 3, true);
            public       postgres    false    199            =           0    0    servicio_id_servicio_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 17, true);
            public       postgres    false    202            >           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_servicio_id_tipo_servicio_seq', 4, true);
            public       postgres    false    204            ?           0    0    venta_id_venta_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.venta_id_venta_seq', 3, true);
            public       postgres    false    207            �
           2606    24815    articulo articulo_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pk PRIMARY KEY (id_articulo);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pk;
       public         postgres    false    206            �
           2606    24739 "   cliente_mascota cliente_mascota_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente_mascota
    ADD CONSTRAINT cliente_mascota_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cliente_mascota DROP CONSTRAINT cliente_mascota_pk;
       public         postgres    false    198            �
           2606    24741    cliente cliente_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pk;
       public         postgres    false    197            �
           2606    24743    mascota mascota_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT mascota_pk PRIMARY KEY (id_mascota);
 <   ALTER TABLE ONLY public.mascota DROP CONSTRAINT mascota_pk;
       public         postgres    false    200            �
           2606    24745    servicio servicio_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pk PRIMARY KEY (id_servicio);
 >   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pk;
       public         postgres    false    201            �
           2606    24747    tipo_servicio tipo_servicio_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.tipo_servicio
    ADD CONSTRAINT tipo_servicio_pk PRIMARY KEY (id_tipo_servicio);
 H   ALTER TABLE ONLY public.tipo_servicio DROP CONSTRAINT tipo_servicio_pk;
       public         postgres    false    203            �
           2606    24823    venta venta_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pk PRIMARY KEY (id_venta);
 8   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pk;
       public         postgres    false    208           