PGDMP                      |            travel    16.3    16.3 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16421    travel    DATABASE     �   CREATE DATABASE travel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE travel;
                postgres    false            �            1259    16780    address    TABLE        CREATE TABLE public.address (
    address_id integer NOT NULL,
    address character varying(50),
    address2 character varying(50),
    district character varying(30),
    city_id smallint,
    postal_code character varying(10),
    phone character varying(20),
    last_update date
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16779    address_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_address_id_seq;
       public          postgres    false    224            �           0    0    address_address_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;
          public          postgres    false    223            �            1259    16766    city    TABLE     �   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city character varying(50),
    country_id smallint,
    last_update date
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16765    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    220            �           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    219            �            1259    16773    country    TABLE     z   CREATE TABLE public.country (
    country_id integer NOT NULL,
    country character varying(50),
    last_update date
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    16772    country_country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.country_country_id_seq;
       public          postgres    false    222            �           0    0    country_country_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;
          public          postgres    false    221            �            1259    16440    tour    TABLE     �   CREATE TABLE public.tour (
    id integer NOT NULL,
    reviews character varying,
    place character varying,
    dayes character varying,
    price character varying
);
    DROP TABLE public.tour;
       public         heap    postgres    false            �            1259    16439    tour_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tour_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tour_id_seq;
       public          postgres    false    218            �           0    0    tour_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tour_id_seq OWNED BY public.tour.id;
          public          postgres    false    217            �            1259    16423    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(10),
    phone bigint,
    email character varying(20),
    hashedpass text,
    conformpass text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16422    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            2           2604    16783    address address_id    DEFAULT     x   ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);
 A   ALTER TABLE public.address ALTER COLUMN address_id DROP DEFAULT;
       public          postgres    false    223    224    224            0           2604    16769    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    219    220    220            1           2604    16776    country country_id    DEFAULT     x   ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);
 A   ALTER TABLE public.country ALTER COLUMN country_id DROP DEFAULT;
       public          postgres    false    222    221    222            /           2604    16443    tour id    DEFAULT     b   ALTER TABLE ONLY public.tour ALTER COLUMN id SET DEFAULT nextval('public.tour_id_seq'::regclass);
 6   ALTER TABLE public.tour ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            .           2604    16426    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16780    address 
   TABLE DATA           t   COPY public.address (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM stdin;
    public          postgres    false    224   )       �          0    16766    city 
   TABLE DATA           F   COPY public.city (city_id, city, country_id, last_update) FROM stdin;
    public          postgres    false    220   �o       �          0    16773    country 
   TABLE DATA           C   COPY public.country (country_id, country, last_update) FROM stdin;
    public          postgres    false    222   Ɔ       �          0    16440    tour 
   TABLE DATA           @   COPY public.tour (id, reviews, place, dayes, price) FROM stdin;
    public          postgres    false    218   ��       �          0    16423    users 
   TABLE DATA           T   COPY public.users (id, username, phone, email, hashedpass, conformpass) FROM stdin;
    public          postgres    false    216   {�       �           0    0    address_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);
          public          postgres    false    223            �           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 1, false);
          public          postgres    false    219            �           0    0    country_country_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);
          public          postgres    false    221            �           0    0    tour_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tour_id_seq', 4, true);
          public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 24, true);
          public          postgres    false    215            <           2606    16785    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    224            8           2606    16771    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    220            :           2606    16778    country country_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    222            6           2606    16447    tour tour_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tour DROP CONSTRAINT tour_pkey;
       public            postgres    false    218            4           2606    16430    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �      x���Yw�F�����
<��~�]21<j�%[�-�}�뼀$�YU�Q��_��
���^w�$�XY@f;"vD&SD�>�w���^���f��7�v�M�7Yo6�4��8�H������}=�]�����o_nl��?�m�,����������/��8�?�����F�$��v�{��w��іoʓ"M���Z�n�*ɢ���k�?���}}S�~�g���g����4i�?�o�$՗v�u�LO<4�͋z�~��C[o��6IQ�����\+�yn�//6y�F�t��9E�N}Ӝ6�g�S{��-�1[TZ�4E�T���W.7�����Cs�������F�������f6O6ElKmZ��/�����Ǻ��6�����L�2iV���\mʼ0�&�ޫ��'�|[�t�u�������H*�.~n�]7i��-�m�<66���d�Zɦ��[jy����׻�S�_jk�2�TYY�"�m��i���n*I-�u���޷�Sw��6EQ�r�Ϧe���*��M2�K���N2;	�v��W}�d�Ŗ�茴A�M��\�����n���/��>l�<��穾۔��+�vi�kˬI��u����[�>H2�!W��X��LUEZ��W���e�|��׋h������eʹڟܖeQ�E��G"9)��پﶫ#�p�ׇ���[�ǫ\R�W�U^6�D3)��q�����;>^=>�I�y��I!��ɜ��椊~޵7�dt��=T__7��Fz�,�MU�U�$q�Y�]�%YG�e{��؜�����Nʲ1�Pk2�Ve�,I1.��(i��-qXY1�n�pǫXmxR�UL\HLbr��z�TR���iٌ7���I��B�*U��W��L�{�fX��-��������?m�����M�ڎ��W�$[棬<�H%�yYF��~R���i���z���Z�c�}��j�����n.#鿑�*O�g��~������q���Zv��'3c$e%Q��h��r�ċ��;�	���Y��o�e}��*]�Y����_�)�i.�M�:�0��I�Elo�n���޶�}}�3�$�ҔJ��sO�pID.%��3w�E�]"��[�[Y Sd��[����
��������q�뢏��T/���E��U���+�!���"�=Ǩ�*��C{������i�4�g�㪐��'�J%<ϻ�q[_6;�W�O�0
�;=�LC�I��z -��x�P�z�&!����o��������V秃�eS�\G^Ȯ��q�/�m/����w��k����7��VNW�����<Nt��Ἄ��eۏ�V~����&ӑ�8�H�Rk�ўx�IF&ˢW2�S��pg��Ӏ�p#ѓFȇ�Ca�.��CY��"�Fw;<t��yS�y:��b��E�6)�D�k���}i&9MIGh�F��J��]��6{=f�o�rx��ys��"9�D�?���A�.�2l�(|*S���)�*����n�v�u{��A�u����3�C��J���|%��I�����iK��?���Տ���G"m1��CR+O�	�I�8q��p7��Wݽ�Ws���K>*�K
+ᴱ|��q-�Wz�}�[}خ�ö=��zb�����`h+�"��=�%��
}
J]����x߷�a�J���֮i!�D�ȗ'y�I��,/��U_?�Ϥo�N�2ӡ �ry`��\��V���eH9���3�����DP�� �%c���}�ڣ��cN2C�è�r��6UK	���ZpE��~8N��޶��of�X��'3YKy�����<~��Y��JIOǻ��c�#�� �e�~�?\�g�^���v?��A��Lr�xV\v��������t��n���x�}�~xў�!y ��e9��tR�ҷ�2A���+ ��z���L^�M���U�A�2xY��
?�Yn��+ Մ�
TP��ͿDE��|l�KfIx��ɽ�^I�|RY���ݳ08����T	`���i�k+�E��lTV�8��"M2=��o�z��^� ]���Xn���S���T0��*ƥL��FO3��+�r�|BQ��P�ĉ+->=z#�ݭ}�t[nY��l�E��s\O�ǈ�t6z&+w?<
���?7����?�:��4uBN�!O��C�OfP��}�u����������I����I�m��"�L�x2]ۧ�=��a����'�Cǳ*`�0%�'���dV�V��sH�������:Q,L=e��K��DH:���o��<IJ�
`
�OZ�U	��C������� �'����	���85��� �Fh:z�]7������9���R�Xyu����˛
��/!`&y����y����fw��T_�6���S�Ŕ�&Y����.1{5Ԅҷ ��h��c���ݔ��|��������6r�Vh.���H��$��J�Xr%��?��|��f�������r���#p5y�)�<S.���t�3|Q?4�F��.���@gUj��^V"�`�ћv��O��ݡ�v�WBD��\�^&/+b?�!'n1�C������d4���:�,}4&�Oi��Y��8��=�L��$ъ���
_
Ib��e=��_����,�ϯ ��U[�o6J����x�X`9S=?t���t�/�NA���2$9����J�xd>�]w�~�9}��r���NF�[�ʢ[O����X�i����u��[A����zS��#X���U�k�D/�YH_��˾Ի�����A>?�i�+KrHxXRc�r��J��<z��~�wVZ���BhźH[J�m����_"�(�Ӗ�0F�S|(H�M{tH/Rބ|R,��e�b=h����]��c�u�]��c7U)��&���2�<a���Gm�h��p:�J(\����m2���$~]�6>�(~��3%�p^8�孒��ύ��?��O*���j���I��5_P_P����$��迣��@$��h����|��wB�Ru���*���*>��$�@Sn���{4U��%$��w$-V��o��x�-vS��l�"Eo��i�pF���ǦY��pR�&��^�E�ʭ�F	�$�;��S{U�� ��;9f�KQ�1,��:�ʦyK9y��?�ؠ�s�ħʛI01�y�����$�v����d�IQ�ݖ'@�?ɢH���=�Z�d�������6���/W}�qXK�B.�*��Bb�F�_)�x��˩=�����(�yH�6���R�����$�\R�y��N��t~ �T�Y�+T$�ű�|��;�:�B2*�K��t�FkT9��͵6E�M��V�TKb�P
J�md��x���x~�~84��b��jE(��	�|��B�ƾ�$���~��;\<�I�e�W]{�Fe`ɽ0`�HM& ��^�(K���p�������YN�����y�4:��R�b��V����"������5k�����>r���g���^5A�ϲÒ6�8n��ᦞ\^*�'�^��b\��6W��y�t����}ϵ�5����1n���uWw�b���F��*]�4��t��a!KE�?�}�X_�ד�<����W�~R,�`�I�J�]GY�I���������N�g:�7$h��\°BW6�._�dɃ1cQ�B�;|�����U�t$�Hɖ�	G[�~ �ʲ�Dώ���MAj	�g�Rh�R�`D[E��[�Z��;El����$d2L������f�'�|�7��+8�!���c@��u��OP�̣iߺsƙ����F�r�/^p��b����4�rH���ʌ�$h�e � GR��M������!
�5Ql粫� ���Z�4������jy֟����vzY��B%�,S(�Vd��� �����M���w�y�M`{S���ƕ����V`Q�Y���v__㱗���Wz��*Sx-��
�Ǉ��C���L`yN�c!IP�d��"��M��f'i�"
�b��ےYr�˦E9�����d���۝Q���v��e+_j9�����n�zGjC��PkH3	Q�e�I��,����"�D��Ð�$���4��J� ���������/��/���		-�E�D��;�}3��Ս��ovK*E[|�o��p�6!�I�D�씥KE �8=�/��[    �'��u�:�d�
+w�BeLzU���_���&q�O�r[��Y��q����cʖH+Z��t0�ګ��D�Z)��+�>����(R��x��YWq)PelU��3���S�	%*a��EW_ջ+W�}��}�=^�5Fc^�.~�w�e�Pつ�.+�0B;���O�+�"D��<
ˎ��7L=��G0O,�ʿX�E�)�I��ˬ>W� �!�Bţ"î)x
���]<�ۘ��H^����������4�Sg�%�5��i�V���-*���z�H٘r.F�^͡Q�-d��W�"�$�X�uTɊ�o���
<O[9Cin˪��D��A99sy�<����͂���`����,`��z�`	�z��o�C�����j��Bzì"�i+�#�vۘ4�us�^��xW�چ$.�5�O�N��[&C�M��E����b�vJ�$�Rl+@I3٣"x�ݛ���$��<��GpLl�3Y�B�N������*�����/������
�9�^ �u|k��(�e��H����K�r�%i�� <�2�v�Z.O�d�X���� ��
�	� ���*�NH�HD��8�L�ѷ��**p'w3����RvF>P{$t�W�2��t:�C3V<��h���[�FI]!y�\v=��͂J��O�E�����|��L��]x4'���k�b�:_񌋺*��:�٦6;9A���Ȫ
�d�D�/�$J�yP,{�s�AT@6D�J�Y�)�cE���X 5%�[��t��:��Æ$����EAO�3H���?o�ŻFO�[��d��7ΐgYQ��U�!XE�.���	��@�q�EL(e�O�ΨR�J�=�ܻ)���� ��
C?]u'���Ky�q��*^C��Ȥ�P�+����+�
��J,gG�$8�ұh�9_��K��"�99��*?t#o	��Ѻ�.=�PU�PY�Y*��1�%!PQ-�ұ��<�d�a�`�t�CT
�1�u(�sR�[��n�J�H�O�}�r�@A�\��H��f�1W|�L�����K	�����Ye���b�hy�����G�:��>��plN���e�Gବ��?�2aeS�R�^���ܵ�"��V��1�p%�ґ;'��kgu�$����B��s��Ɗ��OuB�o����Ƀ��TY4���X��\9�
Bn�8�/��T0�Q���w����N/�[����*����T-2�B�����/d|n�s�[��%{��Z#.Fql�p���}�U�NQ�\i��
��DŲ���L�1��s� �ؖ�T���|�*����U��a�J6+�v,py2F��}$<~P�yql�b��`]�W�%L��6�����7K�t�^(<�1��
���R�Ok%�*��4�m��:�Z��@�]V�(s���*��Q��`V���vΖd*��Z�c��e �(��U1*��9�c�H&e$���l�@j pW�2�|�h�>�.���B)��ܓ�Ŝ*|5@gWE�V�x%��?���/�Y�j���J��N'!H�J&��R�V�v���sR���*�|���y"��?�G|���Zbf-a���`!�Hb�����|�`���|��$~�k�I��(�PT�+��+li��軫]���=�R/y���(G��$!{�S<1�1ŦӾ���ʺbDB��(�1��m�'����E6��@>�:����L6e��(���0�UK�U�)Ú9th�

,�6XhV�?�����.���F���K0���R�\�3x ɾ�wV��l����زs˰f�j��>Hb�c��]�����~��O��m�����t2�2��F�yB	��Z�p��Nx��d�6�PlI��z�I��PQ���
�ߐ!��d�U�-az����E���4�~�k�)d��X�H9ҧK�^}�<1u�
�����)B(Y輬�X�·���*�~k��W#9Gy�9��,�A7UP�sy򸬢��է� /��H��YfI�2ef.w�������7+|x��H�*�'�F�D�wP'�"�態ߡ]���nWKT��M�erlo��كg=&sN��v���P������f��ϯ�GH���ا0x�2)�7���D�����t&^�����y/cp8IK��	�5>�ʬ�gYMչ��Rԙ��b���]�U*!w�a'����2��	C�6	���(~�I)p	�قS��4���9Is�������*�.�U�ߵPԒ�������
&.�P$���{+�7�I�б���s���ې��p�(��-!Y�`��V��E/vB ����%7"C��C OK�~͇}��(�gx��ߺ��zq�/^v�5`�f%8%-Ss�Է���ڛA.P���R�
Sb���9$uRy$�0�?��gG�^��R^�^B�(U�#��Ҫ$�}8n�j���{�.N�|C��N
��U�G���@ ���ங@���x5��)�kpЂi.���6�ӥT�b����\�Lq��h��tj��]o�|r�9�$��Fe���"� e���Z�U-���)�(�צR.��m+e�7����WOtU�黊*h�Je���S\��ο���m�e���Jbjh����l�}k����4�(���Q[)���ɮ���MK�U��9��%���,�^�~��RX1�Rf(�
<�
sz)Jl����&��z"�� x�k�m��%d�99�2�6�T��S�e)���,V��G�"K-�R9${�	�&A�Z�	^m�1��+�v��K(�$Y--��[90���+��x�r#t�v;�$�9�J�7�q�+���`c�i��@v�g�4
��T��Pt�2;�pJ���oj�Pt�MX}����6��A���ɢ����@�3b��r�*�վ�����7p��?�"o� H6�?�)����2zw�+��/-�6PtI�m�l�&*����R��$�����̑ܶ�5h�1+d$�2`q���'���]w�n�ID?����θd&��a(��&t�:թ�hf.�ы��0�4��;L�
��B�3{���5��a�xh�M��Y���%k���q��I
vS
�;nE �S�pr򊏿��C�>���*������U���(�m���O+��e��S�4�c�O�]��ϊ��U��G<gX֕�1ŝ[DN�_~�"��(A�����ѕ�V��j�RHԀ�ʯ�&!���J�3�EP�鼒�u�ͪ���:�T���F!xV�d�%�j�ڜ�Ͷ>E?���]}���_v����v-��@Q�.9�B�>�W��NNfgegjJJ�|K���W\H�㐦xn[°Zо��р���14gw>�������K� ��M-��e(H�3��m}v�!Y�HU^C�����h�&�%C�Dn��l�>�c�����d���\����R�7+�e��������A*!�XJ!u0��G����e�rΣ�n�W�bB�w}q$��?��{�&��l<�N�^��A�9����S�oXo1Ӎ����!u�A�X���k���_��3f�z,�0p�(~ �r�p<�y%�Q�l)�����%V��%W���.��oJïg
�Ǹ}m �	�
�i�eJa�
�i�g)^R���������v:����9�����L�+�Li�F�s
^,?u�}��u7봲H	�����̐�D�\<�qc�J[d�p�`�\���.��-��M������撜)Ƭ,}n�`'u��+K�	=�N_|L��I�#K$��!�"��80���������Y�N�;KY�@�.��(2��ʏ�h�L�8���.I��O��ml�zr�B6��A)�V�h��ݘ�9/Ѱ�!aT��_V1�u�� ���2�'�~wݹ�c���]����]3�UT�Gc��h�f�LQO]FO���n5�%Y�:3���Roߠ²�I?�w�'~XI6WzA�������dWG䛹�y�%��� K�K51��9p�/;:���ޛ��-�;BI,�+9��0~~��v]�^�����O��al�4"=��7�Q��a(�P�����ȔNW���>o\��g���L�Ɩ���"�2�r@����H>ӋY7�:Ei���j{    ��D0��"���J�j���#�����5�xxi0��a���kO���X;Z%����e��ŭSO���#C6���a�DT��޷�԰�c�	}�iXF�4�W��両�O��:���Ȟ��kH�t�������˛D]ثc?8M*���R8+{�gR��
(꾹^ѰeS[8$PqJ��
�%��� "��&ѿ�n8w~Rз�7���1��>4�iK�vyR�<��ܣ5N� �l\� �6ח/JV�Kn�ݓ������J�eP<�ϖ��ں��p}�n���U������+dЌ���Wy�O�ʌS���Sq���y�ߧ?�p�*����.'�w�N�օ� ���`&�Ŧ��a�BM K��������ZO5ր�lB�52�(�"��9d�]��8���v���Bj�"S���_��@u˒Ǧ��HVci�i���}�*�.��П
m���d��P2�P֠w.ϑ�Y�������*҂N�|n�Y�:��R��)}k[���ż��M���!3����R�U�O
Cd]�m��>�0�7���8X'4�����#�=Y1�@�0�W���=��m����52�d4K&��#%!D�k�����I}<#*�i�s�$~�S�w��̈́���6ek���M�Դ�:��nw3��v�O2��G�9c��2	ր0P�Հ�پ�d�?�E+7A��*R7ʢ�!��J�Oǋ��u�~8s�~.>d�H@şAA���M�}�ȥ��ς.\giQ��i<RK_x� J�Ԗ�ʙJ�h��X LI"���R8_�zvcχ�TL�/'��ʩ���D���<�0z����u{���`�r2��NA�滷�V�ј�{��
\��n���Q1:A��$S�p�S�մ}Pt����%�H��e.l�ݦ�'�CqK>7�G,,Q(�2��d�e)h��i���1=5�	�7f���)�}9e�W\��ِ�R��O�����/��I^��� I#|�i�=*r�Y��<.*����M���A��)r.��m�V22m��X��+�1���� G����LA��p�d��b�ORbm�l��|L)iiK�؊e:\��T=[KG����8����6�k�JR]R�E���v'ơ�O� ��D}Aq��`u���#e�z��#�e0ˊTy��Ҋ��}د�����M��?�\W��W��M�3*��Uz����%�D@ {�q`Id�U�pl�~��!�����ח)q��y�"|���N���|�A�G�3�**��va����V	 ��m��j���$S�P9��D}b�k?���͌�8i�ĨJ�����w��^�u�Մ�Wu��ĸN?�t��OK3	��/:��������%\�{}`C)l�
�Y�J��`6��
|�_�.i-�TJN��
%H�Z�k0���B%Kk���:�R����!��MN�#7Z��=��j�)��z#��K��opyi(�JVcrAY�/�c���e�N������X��q����g�c����^vqE=hcl}�D��H�ꦩ���(N�}�јM�p���bP��F��L�B>.�;%9J���26��nK![3E��͗��$�r�8�t�\Gk��\y�\�[=LA�2u��t�Y�X�V�mn�s�D�^O�����hX(i�q��$��ׁ�&c"U2��Gi�V.�"���G���R�����k5�롹N#��������Nط�����
fWvl�`A7Վͺ���Ջ�)p	���c�
�%I�W9]���i��y���	$4m8
Q��ҍ��lz�p3/�.LKq��u44~U(U����]f���)��z7S-��xc)�Om�K]/�pW���Bf"�%G��4zqX��T����\tȐxD���	ߏn���B-d�-����2C�%d+�IU��Y�Ķ���v�q[��lI�þ{��< y9�vCc��M�ے�ܔ�hݵˉ��ߎw���!I���ylQBJ�e��#��6'ph�ϽFG��,hA�^%%�a�D0܉D~^�T��<nz�3�Nt�PP"��mK
�������,꒘�:r�z7+D�R��t_]H����,�S�< �-\��v�^��z���|���uGзήrm�U�p�Ls?b�(m�+x�fn8��(��ulGI�>.2��u=��wݝ�#(r��@-ጉ}���D�gI�-H��~q�QR�/�|@��K�%��Җ==(b�
�uK��p��7_K]C>뛡����j@���2�D����Y+��WR����M:%$��h{s�jAS��6e�И`���ϛ���W�2G.����S:P:2-̒ ��Q�����I��wp�C�b�t�ܨ	0��e';q���!�3��=%n���s��3��8G�
'���@D!al���\�P{@:<.��#p�1���EHi�}8*�O1�Q��М���?���+w��&���$�)9�zwA�p?��H2#����J�f30�_�հ �����P.�Z3=FᆁV㥋 Ɍ�$�[k<�I�]J�r�%�^
�\t��<�\��Ln-+H�sBl��)��u��$(��8��сd!���!L��.S�R,zΧ���r��%��� ge(�2QbѦ!�6>g0�*��)���)�+
�2�ס� 9��̣)֧�~�dL������C�uÊ����n2嘦�|��<������G��uف"z����BDz�ij��S�������N�:� m.�}�ӭ6cCg�����RN�fp4�1755uÈH�Z��Ba0`!f�T��܇e�$�0Ru �J0�*��\��Z�PT���ܐW������%nV�s����&@u�nk��\lÄW��ʂБ���W��3o�����6��̲2߹)]G�����ي��?-]�n�T�o��b҇�1�fd�%��Q2�r�U�Gpj�C+U��'��Ͽ�ժ ��:�r'ϋѽ$��,p���l��f�˵?��<l2��3-�
豌B��p@.Ӕҿ��8Sj���B!RL#p"dǔ���5�̲�$f\ 8?�/��w[ǖ�ɝ�&x&�LjL.���(�>��oK{�?����,M���X�f.�* >Ӳ�ަqd�L�����.�TC3:�#|�k/q4����p�P�Ei$���3�*bQ��|u�Q+~z�Q"XQ�n'͉���u���bWN#{-���\��ş���_��9 �!Ή����Q9�sP��T�i[(�h�S�
�4��!�#�ZLۜþS�������kKb���`ʂ㡒��qߴ.6�OV!L�*0��0.����"x��>���\�̇�m���+����DP����D��y����Ɗr�~1���*%�e4��m�j�w������ez�4r'w�����Z��I�E^�-E�fZ7�eE�8O��Ş���r�0')AF�A�@��& B���8�$��x��J3
�Ȃ�i6]��3U��y��wD&F�`t��%y��Ш�����qFd����gD 2��8�oz%?��v5��e�ބF.)R�ۣ��7|S�v�9N*S&�2�H���fn�`R��7
e��R/ə��U��: (`i������pm�v�fYW^�}T����ɍ��z��Oͥޣ=�j�p6������Dx�J��sg�x��n��m�uY`ES��_T�������x�R�ww��?��P��[�EJHQdT���P<���W����FSW@�#�L)%ɂ�D����gqf�����k�3�,�a[˦�}�z�z�^6t�3d�y�:�UlQV�}���N�X����Qm0%|Z��C����,ӟ� B�J]/��NOʞ��֍!�״���dnNx7 �rb�r�A�_�����e�w}��LpN���,I�%.���
�N:/f�:���^��0�r>#�L�R��7��	��|��f�:&#���D�I��s�3	y{�^m���R��e�we�#K��&�;Vg����v�?����J��C�`����.zӯo��n�k.�Ǜ�B�D��\&�a��R�U8t�/S�}�`�ZPBMq�O�7-Y    eQΉ��i��%���E�Z�� ��0��E{�c��io��%���\�}�eC���@���I�=�+aQ�c��8&y���	E ��M��U(��+Z�XW��l�3�I���}ƻq}WU�K�^ۍ�Ɔ�ŧAQ�koK�Y$L�J�)������X�T�'ʼ��s@J�U�3�Iԅ�P��z8�<�Vǩ^��2w^���f����ؾ��$Z+�,(A�s��w3��������wG��IJ�-V���l���.������}�OҦ���.����чr�n������|�ߍI��:-:�e�L��������y��]*%M,�	�kP��)�m���2���)�����8��qhS�<F�
�W!@�<m�jF�aXE��)��������];6M_��T��#[��8Ҕ;b�B��X�'k׌Ώ�[��^N���sѢj)�5�	R}Ч�\�1��=�΅_��!�>�3	U��/�~��s�3�F(q��d�6>3�wk�+�-sFu��O
�ĩ��v��4��3ׂ�=�̫,\Z�d2 FT����p�2_��nɼ��$��46�{G��÷=��:�Ո�Qu��w�ڞtʐ?\k�Ş�E܂⦼��$�)�}E�@�ƹ�SED���oI�8YP�pݯ�8T���7IMn1�j��0)]x��p�]��%'�D�����ud�Q$tC'�	�_�ͺn6^YV_�2��a����R��¹�S����� Vc��܊4�L� S=�<��ʔM2L%���/D_c��.�L}�ޅMP���-e ���,�mʀ�u�8QJ�o�����f��Dr��s˃�u&���&��i�"��ȒIM
�� �eF;��2i�Pj��4w�C�oAv"�Q�)����%s��C�[%���.v�ȼ���"��h�7�|�}?ߐ�	�ܜ�e<��b�8/��P)�Q�Ƒ79�V�=���E��`\5 �*n��%g?ױf8]�H*�0㍁`���Q������uݞ��}���y�}��A���9�j-!�O��xC��9�C�x�5 �_C{�H� V��ML<�6�e&���0�=�T�=�I�-]!��?��p�v�!���=O�4�ޖ~=���S솫s��k`sK��H�3p!.�U*7`��L�r�|��r/a �F������8�a�i�j��e���⊮MC��}���h����D,��S{�J�w���	�!�m�ޟr�f0]݌,�|���Ӹ�:�M(�n�.�`1�V�
��Q������~�]����7�e�c�+�>~2z\�@p*�������KA'b�{t����"����5n��[M\��)A��զ&8�	����l���ɵn����L^0�ɚ�n�13�����dwFJ�4��qR -����ݱs�D�{ܭ��<��+vQx��4\L@�R�˺�kf��֩����ڜQ���aH�6\��G��]�lk|K�;��qq����y�CZ�Y�i�i��&N�ٸx,Ϙ�c�����r_eh��ܕe��r�CQ[��R?IG.#GwO��{^��Mo\����L?m0�ָ:W~.Y��8�M۸�rh�D	c3�\|���Sq�|7� �`���S��3O}�q�Mj�/MOk�}ջ��ă�s�x4\����A�����zs�$�f��\y�d%�ZG�1�d���:@S��F'!#��+�ܞ��?�ђ"�Ǚ�L_+3��j��,7���CS7C��w�N$tʆ�0��]}�M3���v�?[�݃�'���R��v������GR��\���ۙ��Rhd9s��]Y�3^gD��D7�(-���\(�S�S���e��t�f�j�A�ՏA8/������}r���Ю��_C��p7k g�
�9��)|JZ�T��ݨ�2cO3rr9]�A�CI+O�3C{����ܽ�*i�Z���iGH��ڸ�������P�ĄY��̲~ I��vQ�<��@(5����7�𺽹�`~1���U*�4�#��<5-9��	��ʩ(f+7�ͧ�K�Ɯ��0�y���R�����k]���f�j�Ns��kV��8W�n��Ar��P}0W�ud�ֿ��Yʅ��V�s�(-��|]�'u��v�y�x�Ԗ��i���&A����K"�a�!96�����W/�,I��!�r������>��U��M�{S7��u`"%9�X�.�r�|���h���h�����G- �T��"h����W�vC�����		H���9��(3��2 /�5�<���U��ΔG�@�o%�� ��L�]H�^sE���UP����1Z��?�Y�_�^Q$ Y��d��"RLu�I�I�.ܵF����(c��q��E�a�r��R�nw�\|j�pǻ���<������)Af,��Wj��b�!�L�jW���������q�!�	��t������m!�o�l��zX �}�[��V_�*s�ՠUɩ�[�������Ͽ��/�B6�����zs# w;��	�R��i�@��w�'(�q������	9�,��I�*�W��㭖ɥ�L��t\Ba�2w#�E�x�Ľ��ٻN��y�
˚Hjc�c08M_j]	�e��A�� ���Lz�������\ 54li�e�ۦ�c��W��h���5�B�I�1�����S� �r�5�K�`� ��~ם�PI�)YV��H	�?5n{��*W4�N�C}�q��orȱxC]m��Qw<�-��]�����;��n�l�HT��ɛ��ܼ׹��f�єO�$}�z.I	.�fJ��聖#����R1\�@.�Q�bv��ݣ�3Kk�c�kz���G2�$6r:�+F3���j��e9��ܺր�/2ؐȏ!m!�	�[��t�sŎ���A΁������)=\U.��������̑��0��R��@��6I��sӟ��^����+�&Xq�t�.� 9Ot\��:��]��]B���+���|�qA�`�7��L>���qPN�(�	��<|R+��͍-�y'��d�:���~υu�q���t���J��0�3wƏU�*��hvR�t���@ �U�W
.΃�U��DBO`�;��N�z	Xg#���NpҌ�����4+&Ō&���@��)	ә���/7�*�L?7��I}!E�D�vq3-%F���R�O�ť�]�v��u(�f���K���D�c�?�2w��Ŀӑ�j�>�ȍ����_�P�Ry�J4�o���9���[��s3!�|�~ܲ��ǵL����tS� և��g2)e�W*�B��e���qs�o]O���@"r�Q6���C��:��e����b\Em��@�c
̞#{[G�/Q�W@�d��to<�4N�b� �2������A_�IE/�z��~k�̄���L����V�ɥ���
���J���~�e:���A��3�&�tٹ*񋚎�&h���o���z�c[s3��]K�0c���e������q��>B�����G[+�ER"x��r���3�|5��|��-��ob���ź�8��r���&'��jj�L�� ���q7d���x��s'+����KH-`�Y�tR�#�ZA�Ew��Ԝ����V ����a�I�X�F1|������%Qp�m�gL� Q�r���猒_�ޡ����ut�Q~.<Sѕ�rg���,�L�)_U�����?��������(n�B.�J�6�f)Zn)|�B�ȵ��hi^l^��5�s�b�[����ʘ&�4��ȷ��.�anH-e"��yr��8��\j�zX62\r�.�ƛ��:�Xf�q��9&s������A�(d)f��BFo=�+Hk[7i	s���5ȃA�*�eP�M�Ǌ�o�o��1�	��ҫ_1�!�QP�[�<���y�n[-(����R��|n�u�*G������?#}Ę�a����5��?u!�cB9�_
U�;�3�ګ�L�[��ۋ�T,�}��:���	�l@��n�_=�G�".���_��Ȩ�a��`3�_��ZN)��M::�� �K2f5�	��d��8�:�����U���+4x��Y�l����/~k���N1��n8���)$�/�KZ$��3��ƺn��/OYW�J�_��ǡ �  9����D�����U��3�����uWaU�)��ӷ>w�+
~���	�ɩ�cv&��fjk,�{��!��@�`�\�q��K%n�O�]lm�����x���z�!�d�p�${�i�����)N]u�=1L����ĝ��|�$U����n�g�r�Dr�b!2	�ђ�'��?������ni�#�ol�Y7L0l�&2J��ס���|�ۑ�J���ь7x1O����Ǉc#+������`mw/$Mx%|N��/���O��4Y�<�,�J��J���Ҁ`Eu�w����m&L	������ӕy�e�&Q��W#�;uO�L�D��i�1��#E�X��*w����kK�8���`\�@���Z���:`�YuF�[�{w���f�k��g�\�d��x��zZ�\�����8����?�b�<��2%�:�,�$o�nc���h����
��<R��)�gxy�=I[@{����>g6�]�g���쨙��ɧ0�F�Q�91x�r�2������^v�S�G?S����������dͬY��&���4�T�s��'����&�K��c� `R��Ib'ކ�&����w��_p�>.��u"������LFʍ$
�3�qO��?4���,�Go��K���{<�G��3�P"l�,x�j\���֓��;^��a�XU�6�"�I��X�À� �w�M��;u����z�}�W��2�觺���w�5�y�W�+ܦ�������b��~��6�(��ү2���'e���x}Ip�I�i�ӧ�'e��;b&�����|vx�N����].X9�r��i\Qn]�*.?��7o�����ҭ����XǭfR�k�����JO�����i�<Y����a�� 9�܁��c�kU�oms�Jw- �E�K��7eP����n��!��Rx_Ѝ8f������yG�֮$8&�G����*=�H?u��ج�GI7SY�ʗa�Z�2�{��˘�đ<]�2�9�����Mb�Э���Q����J80o�Ur�j�/H�(���7��}{S�"�)�@`^��zUeܖ�f�xk����5W���Mw�>�"Wh�\����ֆr��y?ueG�]Z/������Qc3g�/&��8d��ȓ��Qb���
��1���o��t79iHSr�e$/1�y��-��5%��Ñ�
&��5m�����}�N�Ъ�(N��`l�x���ĳe�)�}R�x�+�q* 2�/���iO;,��)L�*q�E�$����x��,
�v eʹ��rJ����ͨ��M�-��0�3M]�\>��[_��0���7Dn��<�r���9�;�ѭ���e	��n2wӅ�X�6bm��)S��#�����x�,C@6�#�1���_�5��2�ZV����q[�Y�N
ڲ��731[0�~�Ȃ�/����7.�-�I�X�I������t�ǿ�Ǜ�\�ԹIf's� 7���d^����	�BYpg5W��]�	J�y4���.M���j ��ߍ��: Z~���H>7��u�	�'�2i�цL'�H}��Rj�:�H�Ma���v�6L�����b�JPC�)P����E�ׁ�0�\`��#������6���n�=eт�D�v'Gj3�/������_��'�      �      x�u�]۶����O�˞��"˗��ı�ZNz���@,¢$�J�~��n1�^�I8$A�1�y������:��N������ϲ��ttr���_��bV�l���b�E?����d���?Mev1�*���b�],T�����#�.L7���ʊ�5g�t�ˣ'�\�����Wϳ�z��Z*'L���be�ڬUVE�4bq64QD��L5'�VvlXÍz7;)ǰ�{zH3���*�~S��k6>�l�[,��~��N�gTVƏ�BӨ���k����F��%�~n��B���ѤY��^>9��f�Ȏ2��:�9���i��3��^��k��Wk]��b�%���D���]:5X�n�M'[�?ڍmR괽}e��^ey$]�:���,x�|��5IG�f��_ۊ�-P�)���|Ų��H�MBk3���/Bטv٧NV IW/�"+���*\_*4��c�(X��/ϠF�۹i�����k�*���޴�*G�Q���1έ𘒞��G�g3�׶],|��d�J���I��ոm�q�HA��Z
�ˊ���'���F���.�<n�,XvH!�����|Tt����2!����4�JwƉ�U�ɻe���\��L8:�]��S����^�w�OD���
�o�"n0��a���q�A�N7�ys��B?����U� C��mѩ D����4
*��b�#�0z�(Ȱ��]v�(h��K�4����	:��D�(�}�W��k�G�Q0���0�?�^7��0sr\��Fq��c;�4x�(�3:��R����g�`��zc������d�=�Í���Zm��3ĨM�����
��چ��Aj��s�:�Ծ����7�I��z��A��<�3��i���b^�ø�o߲Q�ͤ�O�k�R����7�I���1��j�݄�.Lt߮��.�:o{K�4�Y�@�Ba�ȧ���j���\�����p~=}b�q���t7O2�y~0�Yߏδ��� ���Ց�q�~���d_�Q�#�V�dffq�J�K�����,%R̥����b���10c�.p��z�ښ�b��F���$V��%�;W��b�NL8�H;�K�5��Z�T;ݶ:+�e�]v�@H^ց��8��t|0.�w5&������N�m��:�1��� �Ś\�(�'���;�T���~��X<�"�Q;#?o�Й0�F1��g.kO�l����tD�� Ʈ,i@_���$�:�n�Y�}���0��Ce��;si�Z�k���ܥ��8�u݅�oA�F�U�5�����Y3������,��!�On��jn��]bG6����C �������s~^���	dP/��u��s��l}�8-�y�I"ĜyjD*���O���8a�š�9?$]�����g]�)��y��A��P�R����4]V��c�&�e|^�?�:�6��J�ɍ�\Q!n�"M�+r��1�i�'�@.j5�_����0*����+zE&=�<1YB�:����Q���c�6�P����,�Q��C��ʛ��V�c�x�6-S�*��k�?B�C��:z�g@�ׯ��=��rw�vp�u3�hz���c,�|��zY=Rl���1)���9dp�}g����N�(�^�����캥r���9׎�`�#B;�u7g�91����U��KaA�ne:]'�?�N�{ ���^���I]���R*+����3�zEDfF�qvO%��������!:��Ȩ6)�����~E�O�B���}�^=hq�����%=bR�ǺJ��B�������r��8�M�����.R�9&��&�����k_�ބ���C��yK&(|���m��!�zt�`�}�.�P��G�������Sƙ�c�qn�gb!9��m7���3���z%����*V���wB�K����䏏%��2�Y�xX�'Y7ʳ�$���n��(�I#��eS�,!�r�Q�¤�����?�2��҅�*yjl���T)���Zˠ�_���^F��4��Z#�;'���_�吜��1KEp��X�锓�oh#/�s��bd�؅6a� ^���獭k�'}B��6�R���֛��k_�В�7^�	8Zo��1'�M��ĝ�<z�aR8%xճ�i	M9�z�͟�Q���Č2��sYW�x��3��u���ūi�~}�	-�Z�� ��p�}�MV%r��+��.��U��}�ܟg_[�lD�ɑ����Y%�Rf_;��9����-n��"U�p���cO���6����������ޯ�I�?������T1�g�y�d>�țcX)G~�`r�2ag՜Lk�
-b��;o�=Mxo�d9�y���֍���yc���}�s����`�^,�|Nd�Ս���<�nɹ��G�A�[��C�''z{,�� ��ѵ� ����������J��-j�h{k){�r�����{�ˌ���^�%���l�71� �[o�a�~>��
3� Ih�sn��{�$�y�f�j?��sy����%�p�5S1,�I�;�� 3�,���N�b�P����G�xv09
�d�Olo��EN��"f�i@��<�֔�������e������&]��GA��#9� ��H�|r�.yz��� �ӎZ����P�	�("fA�w���5z']�����+9#z��P]�c��2������EoPU�)9xzg:��Y�U������b�M�M���n#��$rg�Mȵ�!�`z�I��#���<�D.�,�m�6i5�{cm;�����;+Ŷ�8��o�Z>+N�azU��iNL���:�[ �;����m�E�X�c:@iN@Dl!��0��QS��{�)���D�T��`hT/J�:��l��uy�W�t��{H�I��z���N���*�@�Dm�I��L�@�D9�H�;�J'�w!:��������=�L���@��P�y�f���t��T��9�}=sf����tR�U��Z17�[����}��>M��P9�u�8��N�U���N���'��h�t6�$ʚߞ�c�`rO�ֺV�P�����n'�L'������.F��(�/����mE
)ȃ�t:�8�}_���O������j� E����V�(zO�#�PyU�1_{�̊�%�F�U�����ˤ}lf��}�vl�.�e�(@�`5������I�9T����f-��F�?,�Ϭ\},���*}_�ąH&�ʃ$���΢�VA�^�����(� 	̫EP*��{m��0@�^oj��qL�{���U���?��H�G�ԛ��4zo���Z���Z
T�'�����*��KӼ�m6���6ԇ=G������n%d L;�d#dzo��}�~F_0�se���_�^�l�3���n�+�-�]�Z�{�Ǟ�&>A�u�O�L��#B܇E�]�#�"����z�%��A�F�s��b[� :1F��ݛ��M������W\F�R��.����E�>0�_?��b�b�c�[<A�A� ���pL�\4w�y=�2�\��c33o���Jۓ!E�A�]��
�{�zS됥�I�P�9!7Z Y�>轪�j�;��=�}���ũt���G̾��i� H�֠�B�S�b������G�����+�I�y�~���t�ig����d��a{����G�|\���v��OA~\��@DF�׏�D��2mZb0�cC3~�������8pV���:�_/?ɗ�{���֮��<���%R,����t�o�Y��YlׇB����:���X=�m;=����<�X�����;d��]z���5r��`�<)���İ'5����6��\,��Oj5�s��b��O�	�����Z�E/A�'f�J5�'��" a��Fk
�xO� D����*9%Y��O�ǲ���Rɀ`3���j	�b������ ϖ�D9Z�G@I�Oz����Kf˓��P�< F4x"4�� C	�>����I��7��HA���u�ĉ�7���iUS¢O���
��蓕��@�'��g�J��׆���T������(_�!Mm�b�-���ٙ'�ráI��¯�^ɑ.��'���X�ܓw�V��[�%p���� �  _�D
$yHg����T��3�<%������BY9@��7��j--J\�7o�uXb�U��4��t�t�H��ގ�7P�|8����-�^$-�I0�I+`����1M#B`	�>;�G�N�;N� �=[��U�yT��v��I'�O�q�N2����w�-�X��˽n��<� jwrCf�� "�bW�$L	�37_%��%Yt

�͑ŽP�*�����)�����|��űA����^ɸp5��p(��`X��1
6��o8��A��˚�*��2҆s&-UOX��o�Nw|�_7�Oa_���<����0������.9�[�;o}h]�>l�C$�z����*7O¶�ފ#5eU��&��_��q,�����Jv��*(���'7S�<�c(H��g��Y�w����vJ$�:�K�]��90D8���rt��x/��ѡx*�*3������U�r4��LVn�(���
��ީ�eP���m|m�b�t�֪v'zpf��`0��]����b�c��gb5&����j0m�5��C�P����b̫%�mm����=XZ��d�dl�n�	�$�������>�9�����{�F��>JXxj�י������$�S�f��Cll#!�d ����q�$|<5(����ɵ�<���j!�T���tm}��=�xj��#���p�Xz'��m��H�Hdé�.�"�ՁVcY��)i}U3�bZ-!�uv��C�`�Ԇͥ��:����wd��X/�C_�M�P�aS���;�>̺]���d�Uz���M�JbD�MX~꒯E�>����)�%�<�� ��m��iO&>�rŤ�����U�mSoj/#M�˧>�VB��V�3�^�3�K��U �ԯ�P���.~�0
�����P>��R�EC��P�����V�g-+z��QZ�h�[��-V��
hz��9���@=ݯt��k����A�5ct.e08���k1P�Ǜ� ��^��x�ח>9�^�/���2�U0����N&�
.|	g*k�TH��_Қ�C_�g��<��U>9�P�A�va�8�Vy��Fl�WyP�;bU�ʃa�N�$p��'� ���Up=%|�E��D�ꔓp������F ���bk�'�܂�?n�_BE/�U0�K8��(���_�~M����F�؊��bW�Y��t?�|*-��*�8X��~�X�C� �b}c�b]�\Bc��T�$C�}i��?8�
�6:�)�{��QA�/ݱs���xq�oʃ��e7�w���xǷű�$��b�2@��¯�D�0�7�3�fZ�ߚ�{�2���o.]?���oΫMrH�T�u��b���o�m����̌�V�MK�%x~� wa�����·���Z�}V�����	��S����`k�Cv\����������e�`U�	�'	�W�S0Y��r���#�t�'��N�U�~7s~V:ل�"�u��M��E2J �wCϾ릖�Q��[C|��w¯ߏ,�W��w��KH���T�����������6��R���n�>��
������F�0�e�CQ�z��r�OX�zM���V�>5�u��TVI��S1[��?Ԛ�7x8r2�X�T���5�X��mU�Gu�������ކ$β�xUZ�T�)�e��_A�?�[%P�������
4�q�prE��V%CГ�S�7��`����G6I*�����#1��B4�Y�"����ط�ؚd������_���j���WG�����=A]�p���~���D�Ϲ      �   �  x�m�Ks�6��ȧб����E=�N�ɺy4%�ٝ^��XK��"�ڟ����t/����?@&�x�z�jr�!���s�~N�Y
���V�a���u��h�-��������W�,l'�S���(5߱����Ł��'�0�aq��՟�,I�[T��Du7`+��2��Z?1�Å�{����50X�Z*K��C�a�\��j� �3��^���Ɩ��	\��2�R�d,��y�å���wOa��詗�9��E��ѣ��ׁ~����|�.r���Ì%|1��G���C˵��XFkXv��c�a99�$K`�ze�N�
���jP���YWJϘ��,�5;[&JM���
y
����`���SA	��7��Z�������|�<>8���~Q#e���\��rD:�+�M�Ww�}0��W�I�,�<��䘋������,o�����*XM%k����Ám-b��|=��p(��{>o2��;TL0"�[tA�
���ꤞ��Ads��@c��;j��52����X����AƊ��_jmL���y�)QkցoF�0K�gJ)r�ۣyl��{��3V���"+GQ���'}RTd�E�%�,j�W'�Dý��'�Y�-	�>�*�)<����)3�;�Le����@�Nm����,PG!�%<xi����<�1�yYã׊O�*&8Qaut%[9���!��n�(�$�MQ��2�V��FZ���[-,��ʠ�Zv�XU�@j���)���f���IQ��mp5V4VE��7ܷ�Ʒ�Tu͎��!%`��᧜�%�'T�`���>�ɯsx�Q�,!��&w-���4[]��DTWG8?5B��5��q`
K��7��Ar���VN�ǲE�Q�xa�8��Q�k�ȭه�8�����B�?x9�/J:��ba�)�q�}��ϛs�S�79�R%q�|g�O��&������������RV�:      �   �   x���=O�@���2�@�\��F|�ed�Z7�t���%���A��j[�߷�Ǐ�IL�CG^NT��FN�׋x��	wF	�0Idh�Hs��k��y�}�i�������i�.�iZ��߅/��倃M�D�]�j�h?��}�+V�� ��4Z`X��Pg�H:C^�E�-U�W��@z�n�7����w�L��)_.���[�e�'��m^      �   �  x������@Fcxc�m$[PA����M@Ć}�uj6��I���Su��VLL�� ��zm�+��⒦ff�4`���;?JY�j����غ��M.E��
���bȚO��yڣ�&�,���(#�"Psd얚.H���U���Ws���L9Jzq<���9��ҍ�-�I0�̥�.q�%%�Z.��r��Z�a���*=�q% �l�}CF�"���ě2�f^�
<e�`&��u�w��9�R��ݔ�rL����v�lD��l�~����^�G݄�`B&~�ٕA�}��W}j$��]�$���^��c������ק��_>�8������$�}5�����f��S992H_��P]�}�H�M?`;�w鶡�R�|h�x^y~<	f��?�wf�����gI/�+��TR���?���>jmZ�[�w�iϟQ�N���˲�SZ     