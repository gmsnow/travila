toc.dat                                                                                             0000600 0004000 0002000 00000024227 14667106621 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   5                    |            travel    16.3    16.3 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16421    travel    DATABASE     �   CREATE DATABASE travel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE travel;
                postgres    false         �            1259    16780    address    TABLE        CREATE TABLE public.address (
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
       public         heap    postgres    false         �            1259    16779    address_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_address_id_seq;
       public          postgres    false    224         �           0    0    address_address_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;
          public          postgres    false    223         �            1259    16766    city    TABLE     �   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city character varying(50),
    country_id smallint,
    last_update date
);
    DROP TABLE public.city;
       public         heap    postgres    false         �            1259    16765    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    220         �           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    219         �            1259    16773    country    TABLE     z   CREATE TABLE public.country (
    country_id integer NOT NULL,
    country character varying(50),
    last_update date
);
    DROP TABLE public.country;
       public         heap    postgres    false         �            1259    16772    country_country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.country_country_id_seq;
       public          postgres    false    222         �           0    0    country_country_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;
          public          postgres    false    221         �            1259    16440    tour    TABLE     �   CREATE TABLE public.tour (
    id integer NOT NULL,
    reviews character varying,
    place character varying,
    dayes character varying,
    price character varying
);
    DROP TABLE public.tour;
       public         heap    postgres    false         �            1259    16439    tour_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tour_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tour_id_seq;
       public          postgres    false    218         �           0    0    tour_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tour_id_seq OWNED BY public.tour.id;
          public          postgres    false    217         �            1259    16423    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(10),
    phone bigint,
    email character varying(20),
    hashedpass text,
    conformpass text
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    16422    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215         2           2604    16783    address address_id    DEFAULT     x   ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);
 A   ALTER TABLE public.address ALTER COLUMN address_id DROP DEFAULT;
       public          postgres    false    223    224    224         0           2604    16769    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    219    220    220         1           2604    16776    country country_id    DEFAULT     x   ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);
 A   ALTER TABLE public.country ALTER COLUMN country_id DROP DEFAULT;
       public          postgres    false    222    221    222         /           2604    16443    tour id    DEFAULT     b   ALTER TABLE ONLY public.tour ALTER COLUMN id SET DEFAULT nextval('public.tour_id_seq'::regclass);
 6   ALTER TABLE public.tour ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         .           2604    16426    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216         �          0    16780    address 
   TABLE DATA           t   COPY public.address (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM stdin;
    public          postgres    false    224       4821.dat �          0    16766    city 
   TABLE DATA           F   COPY public.city (city_id, city, country_id, last_update) FROM stdin;
    public          postgres    false    220       4817.dat �          0    16773    country 
   TABLE DATA           C   COPY public.country (country_id, country, last_update) FROM stdin;
    public          postgres    false    222       4819.dat �          0    16440    tour 
   TABLE DATA           @   COPY public.tour (id, reviews, place, dayes, price) FROM stdin;
    public          postgres    false    218       4815.dat �          0    16423    users 
   TABLE DATA           T   COPY public.users (id, username, phone, email, hashedpass, conformpass) FROM stdin;
    public          postgres    false    216       4813.dat �           0    0    address_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);
          public          postgres    false    223         �           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 1, false);
          public          postgres    false    219         �           0    0    country_country_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);
          public          postgres    false    221         �           0    0    tour_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tour_id_seq', 4, true);
          public          postgres    false    217         �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 24, true);
          public          postgres    false    215         <           2606    16785    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    224         8           2606    16771    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    220         :           2606    16778    country country_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    222         6           2606    16447    tour tour_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tour DROP CONSTRAINT tour_pkey;
       public            postgres    false    218         4           2606    16430    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216                                                                                                                                                                                                                                                                                                                                                                                 4821.dat                                                                                            0000600 0004000 0002000 00000120617 14667106621 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	47 MySakila Drive	\N	Alberta	300			2006-02-15
2	28 MySQL Boulevard	\N	QLD	576			2006-02-15
3	23 Workhaven Lane	\N	Alberta	300		14033335568	2006-02-15
4	1411 Lillydale Drive	\N	QLD	576		6172235589	2006-02-15
5	1913 Hanoi Way		Nagasaki	463	35200	28303384290	2006-02-15
6	1121 Loja Avenue		California	449	17886	838635286649	2006-02-15
7	692 Joliet Street		Attika	38	83579	448477190408	2006-02-15
8	1566 Inegl Manor		Mandalay	349	53561	705814003527	2006-02-15
9	53 Idfu Parkway		Nantou	361	42399	10655648674	2006-02-15
10	1795 Santiago de Compostela Way		Texas	295	18743	860452626434	2006-02-15
11	900 Santiago de Compostela Parkway		Central Serbia	280	93896	716571220373	2006-02-15
12	478 Joliet Way		Hamilton	200	77948	657282285970	2006-02-15
13	613 Korolev Drive		Masqat	329	45844	380657522649	2006-02-15
14	1531 Sal Drive		Esfahan	162	53628	648856936185	2006-02-15
15	1542 Tarlac Parkway		Kanagawa	440	1027	635297277345	2006-02-15
16	808 Bhopal Manor		Haryana	582	10672	465887807014	2006-02-15
17	270 Amroha Parkway		Osmaniye	384	29610	695479687538	2006-02-15
18	770 Bydgoszcz Avenue		California	120	16266	517338314235	2006-02-15
19	419 Iligan Lane		Madhya Pradesh	76	72878	990911107354	2006-02-15
20	360 Toulouse Parkway		England	495	54308	949312333307	2006-02-15
21	270 Toulon Boulevard		Kalmykia	156	81766	407752414682	2006-02-15
22	320 Brest Avenue		Kaduna	252	43331	747791594069	2006-02-15
23	1417 Lancaster Avenue		Northern Cape	267	72192	272572357893	2006-02-15
24	1688 Okara Way		Nothwest Border Prov	327	21954	144453869132	2006-02-15
25	262 A Corua (La Corua) Parkway		Dhaka	525	34418	892775750063	2006-02-15
26	28 Charlotte Amalie Street		Rabat-Sal-Zammour-Z	443	37551	161968374323	2006-02-15
27	1780 Hino Boulevard		Liepaja	303	7716	902731229323	2006-02-15
28	96 Tafuna Way		Crdoba	128	99865	934730187245	2006-02-15
29	934 San Felipe de Puerto Plata Street		Sind	472	99780	196495945706	2006-02-15
30	18 Duisburg Boulevard			121	58327	998009777982	2006-02-15
31	217 Botshabelo Place		Southern Mindanao	138	49521	665356572025	2006-02-15
32	1425 Shikarpur Manor		Bihar	346	65599	678220867005	2006-02-15
33	786 Aurora Avenue		Yamaguchi	474	65750	18461860151	2006-02-15
34	1668 Anpolis Street		Taipei	316	50199	525255540978	2006-02-15
35	33 Gorontalo Way		West Bengali	257	30348	745994947458	2006-02-15
36	176 Mandaluyong Place		Uttar Pradesh	239	65213	627705991774	2006-02-15
37	127 Purnea (Purnia) Manor		Piemonte	17	79388	911872220378	2006-02-15
38	61 Tama Street		Okayama	284	94065	708403338270	2006-02-15
39	391 Callao Drive		Midi-Pyrnes	544	34021	440512153169	2006-02-15
40	334 Munger (Monghyr) Lane		Markazi	31	38145	481183273622	2006-02-15
41	1440 Fukuyama Loop		Henan	362	47929	912257250465	2006-02-15
42	269 Cam Ranh Parkway		Chisinau	115	34689	489783829737	2006-02-15
43	306 Antofagasta Place		Esprito Santo	569	3989	378318851631	2006-02-15
44	671 Graz Street		Oriental	353	94399	680768868518	2006-02-15
45	42 Brindisi Place		Yerevan	586	16744	42384721397	2006-02-15
46	1632 Bislig Avenue		Nonthaburi	394	61117	471675840679	2006-02-15
47	1447 Imus Way		Tahiti	167	48942	539758313890	2006-02-15
48	1998 Halifax Drive		Lipetsk	308	76022	177727722820	2006-02-15
49	1718 Valencia Street		Antofagasta	27	37359	675292816413	2006-02-15
50	46 Pjatigorsk Lane		Moscow (City)	343	23616	262076994845	2006-02-15
51	686 Garland Manor		Cear	247	52535	69493378813	2006-02-15
52	909 Garland Manor		Tatarstan	367	69367	705800322606	2006-02-15
53	725 Isesaki Place		Mekka	237	74428	876295323994	2006-02-15
54	115 Hidalgo Parkway		Khartum	379	80168	307703950263	2006-02-15
55	1135 Izumisano Parkway		California	171	48150	171822533480	2006-02-15
56	939 Probolinggo Loop		Galicia	1	4166	680428310138	2006-02-15
57	17 Kabul Boulevard		Chiba	355	38594	697760867968	2006-02-15
58	1964 Allappuzha (Alleppey) Street		Yamaguchi	227	48980	920811325222	2006-02-15
59	1697 Kowloon and New Kowloon Loop		Moskova	49	57807	499352017190	2006-02-15
60	1668 Saint Louis Place		Tahiti	397	39072	347487831378	2006-02-15
61	943 Tokat Street		Vaduz	560	45428	889318963672	2006-02-15
62	1114 Liepaja Street		Sarawak	282	69226	212869228936	2006-02-15
63	1213 Ranchi Parkway		Karnataka	350	94352	800024380485	2006-02-15
64	81 Hodeida Way		Rajasthan	231	55561	250767749542	2006-02-15
65	915 Ponce Place		Basel-Stadt	56	83980	1395251317	2006-02-15
66	1717 Guadalajara Lane		Missouri	441	85505	914090181665	2006-02-15
67	1214 Hanoi Way		Nebraska	306	67055	491001136577	2006-02-15
68	1966 Amroha Avenue		Sichuan	139	70385	333489324603	2006-02-15
69	698 Otsu Street		Cayenne	105	71110	409983924481	2006-02-15
70	1150 Kimchon Manor		Skne ln	321	96109	663449333709	2006-02-15
71	1586 Guaruj Place		Hunan	579	5135	947233365992	2006-02-15
72	57 Arlington Manor		Madhya Pradesh	475	48960	990214419142	2006-02-15
73	1031 Daugavpils Parkway		Bchar	63	59025	107137400143	2006-02-15
74	1124 Buenaventura Drive		Mekka	13	6856	407733804223	2006-02-15
75	492 Cam Ranh Street		Eastern Visayas	61	50805	565018274456	2006-02-15
76	89 Allappuzha (Alleppey) Manor		National Capital Reg	517	75444	255800440636	2006-02-15
77	1947 Poos de Caldas Boulevard		Chiayi	114	60951	427454485876	2006-02-15
78	1206 Dos Quebradas Place		So Paulo	431	20207	241832790687	2006-02-15
79	1551 Rampur Lane		Changhwa	108	72394	251164340471	2006-02-15
80	602 Paarl Street		Pavlodar	402	98889	896314772871	2006-02-15
81	1692 Ede Loop		So Paulo	30	9223	918711376618	2006-02-15
82	936 Salzburg Lane		Uttar Pradesh	425	96709	875756771675	2006-02-15
83	586 Tete Way		Kanagawa	256	1079	18581624103	2006-02-15
84	1888 Kabul Drive		Oyo & Osun	217	20936	701457319790	2006-02-15
85	320 Baiyin Parkway		Mahajanga	319	37307	223664661973	2006-02-15
86	927 Baha Blanca Parkway		Krim	479	9495	821972242086	2006-02-15
87	929 Tallahassee Loop		Gauteng	497	74671	800716535041	2006-02-15
88	125 Citt del Vaticano Boulevard		Puebla	40	67912	48417642933	2006-02-15
89	1557 Ktahya Boulevard		England	88	88002	720998247660	2006-02-15
90	870 Ashqelon Loop		Songkhla	489	84931	135117278909	2006-02-15
91	1740 Portoviejo Avenue		Sucre	480	29932	198123170793	2006-02-15
92	1942 Ciparay Parkway		Cheju	113	82624	978987363654	2006-02-15
93	1926 El Alto Avenue		Buenos Aires	289	75543	846225459260	2006-02-15
94	1952 Chatsworth Drive		Guangdong	332	25958	991562402283	2006-02-15
95	1370 Le Mans Avenue		Brunei and Muara	53	52163	345679835036	2006-02-15
96	984 Effon-Alaiye Avenue		Gois	183	17119	132986892228	2006-02-15
97	832 Nakhon Sawan Manor		Inner Mongolia	592	49021	275595571388	2006-02-15
98	152 Kitwe Parkway		Caraga	82	53182	835433605312	2006-02-15
99	1697 Tanauan Lane		Punjab	399	22870	4764773857	2006-02-15
100	1308 Arecibo Way		Georgia	41	30695	6171054059	2006-02-15
101	1599 Plock Drive		Tete	534	71986	817248913162	2006-02-15
102	669 Firozabad Loop		Abu Dhabi	12	92265	412903167998	2006-02-15
103	588 Vila Velha Manor		Kyongsangbuk	268	51540	333339908719	2006-02-15
104	1913 Kamakura Place		Lipetsk	238	97287	942570536750	2006-02-15
105	733 Mandaluyong Place		Asir	2	77459	196568435814	2006-02-15
106	659 Vaduz Drive		Ha Darom	34	49708	709935135487	2006-02-15
107	1177 Jelets Way		Kwara & Kogi	220	3305	484292626944	2006-02-15
108	1386 Yangor Avenue		Provence-Alpes-Cte	543	80720	449216226468	2006-02-15
109	454 Nakhon Sawan Boulevard		Funafuti	173	76383	963887147572	2006-02-15
110	1867 San Juan Bautista Tuxtepec Avenue		Ivanovo	225	78311	547003310357	2006-02-15
111	1532 Dzerzinsk Way		Buenos Aires	334	9599	330838016880	2006-02-15
112	1002 Ahmadnagar Manor		Mxico	213	93026	371490777743	2006-02-15
113	682 Junan Way		North West	273	30418	622255216127	2006-02-15
114	804 Elista Drive		Hubei	159	61069	379804592943	2006-02-15
115	1378 Alvorada Avenue		Distrito Federal	102	75834	272234298332	2006-02-15
116	793 Cam Ranh Avenue		California	292	87057	824370924746	2006-02-15
117	1079 Tel Aviv-Jaffa Boulevard		Sucre	132	10885	358178933857	2006-02-15
118	442 Rae Bareli Place		Nordrhein-Westfalen	148	24321	886636413768	2006-02-15
119	1107 Nakhon Sawan Avenue		Mxico	365	75149	867546627903	2006-02-15
120	544 Malm Parkway		Central Java	403	63502	386759646229	2006-02-15
121	1967 Sincelejo Place		Gujarat	176	73644	577812616052	2006-02-15
122	333 Goinia Way		Texas	185	78625	909029256431	2006-02-15
123	1987 Coacalco de Berriozbal Loop		al-Qalyubiya	476	96065	787654415858	2006-02-15
124	241 Mosul Lane		Risaralda	147	76157	765345144779	2006-02-15
125	211 Chiayi Drive		Uttar Pradesh	164	58186	665993880048	2006-02-15
126	1175 Tanauan Way		Lima	305	64615	937222955822	2006-02-15
127	117 Boa Vista Way		Uttar Pradesh	566	6804	677976133614	2006-02-15
128	848 Tafuna Manor		Ktahya	281	45142	614935229095	2006-02-15
129	569 Baicheng Lane		Gauteng	85	60304	490211944645	2006-02-15
130	1666 Qomsheh Drive		So Paulo	410	66255	582835362905	2006-02-15
131	801 Hagonoy Drive		Smolensk	484	8439	237426099212	2006-02-15
132	1050 Garden Grove Avenue		Slaskie	236	4999	973047364353	2006-02-15
133	1854 Tieli Street		Shandong	302	15819	509492324775	2006-02-15
134	758 Junan Lane		Gois	190	82639	935448624185	2006-02-15
135	1752 So Leopoldo Parkway		Taka-Karpatia	345	14014	252265130067	2006-02-15
136	898 Belm Manor		Free State	87	49757	707169393853	2006-02-15
137	261 Saint Louis Way		Coahuila de Zaragoza	541	83401	321944036800	2006-02-15
138	765 Southampton Drive		al-Qalyubiya	421	4285	23712411567	2006-02-15
139	943 Johannesburg Avenue		Maharashtra	417	5892	90921003005	2006-02-15
140	788 Atinsk Street		Karnataka	211	81691	146497509724	2006-02-15
141	1749 Daxian Place		Gelderland	29	11044	963369996279	2006-02-15
142	1587 Sullana Lane		Inner Mongolia	207	85769	468060467018	2006-02-15
143	1029 Dzerzinsk Manor		Ynlin	542	57519	33173584456	2006-02-15
144	1666 Beni-Mellal Place		Tennessee	123	13377	9099941466	2006-02-15
145	928 Jaffna Loop		Hiroshima	172	93762	581852137991	2006-02-15
146	483 Ljubertsy Parkway		Scotland	149	60562	581174211853	2006-02-15
147	374 Bat Yam Boulevard		Kilis	266	97700	923261616249	2006-02-15
148	1027 Songkhla Manor		Minsk	340	30861	563660187896	2006-02-15
149	999 Sanaa Loop		Gauteng	491	3439	918032330119	2006-02-15
150	879 Newcastle Way		Michigan	499	90732	206841104594	2006-02-15
151	1337 Lincoln Parkway		Saitama	555	99457	597815221267	2006-02-15
152	1952 Pune Lane		Saint-Denis	442	92150	354615066969	2006-02-15
153	782 Mosul Street		Massachusetts	94	25545	885899703621	2006-02-15
154	781 Shimonoseki Drive		Michoacn de Ocampo	202	95444	632316273199	2006-02-15
155	1560 Jelets Boulevard		Shandong	291	77777	189446090264	2006-02-15
156	1963 Moscow Place		Assam	354	64863	761379480249	2006-02-15
157	456 Escobar Way		Jakarta Raya	232	36061	719202533520	2006-02-15
158	798 Cianjur Avenue		Shanxi	590	76990	499408708580	2006-02-15
159	185 Novi Sad Place		Bern	72	41778	904253967161	2006-02-15
160	1367 Yantai Manor		Ondo & Ekiti	381	21294	889538496300	2006-02-15
161	1386 Nakhon Sawan Boulevard		Pyongyang-si	420	53502	368899174225	2006-02-15
162	369 Papeete Way		North Carolina	187	66639	170117068815	2006-02-15
163	1440 Compton Place		North Austria	307	81037	931059836497	2006-02-15
164	1623 Baha Blanca Manor		Moskova	310	81511	149981248346	2006-02-15
165	97 Shimoga Avenue		Tel Aviv	533	44660	177167004331	2006-02-15
166	1740 Le Mans Loop		Pays de la Loire	297	22853	168476538960	2006-02-15
167	1287 Xiangfan Boulevard		Gifu	253	57844	819416131190	2006-02-15
168	842 Salzburg Lane		Adana	529	3313	697151428760	2006-02-15
169	154 Tallahassee Loop		Xinxiang	199	62250	935508855935	2006-02-15
170	710 San Felipe del Progreso Avenue		Lilongwe	304	76901	843801144113	2006-02-15
171	1540 Wroclaw Drive		Maharashtra	107	62686	182363341674	2006-02-15
172	475 Atinsk Way		Gansu	240	59571	201705577290	2006-02-15
173	1294 Firozabad Drive		Jiangxi	407	70618	161801569569	2006-02-15
174	1877 Ezhou Lane		Rajasthan	550	63337	264541743403	2006-02-15
175	316 Uruapan Street		Perak	223	58194	275788967899	2006-02-15
176	29 Pyongyang Loop		Batman	58	47753	734780743462	2006-02-15
177	1010 Klerksdorp Way		Steiermark	186	6802	493008546874	2006-02-15
178	1848 Salala Boulevard		Miranda	373	25220	48265851133	2006-02-15
179	431 Xiangtan Avenue		Kerala	18	4854	230250973122	2006-02-15
180	757 Rustenburg Avenue		Skikda	483	89668	506134035434	2006-02-15
181	146 Johannesburg Way		Tamaulipas	330	54132	953689007081	2006-02-15
182	1891 Rizhao Boulevard		So Paulo	456	47288	391065549876	2006-02-15
183	1089 Iwatsuki Avenue		Kirov	270	35109	866092335135	2006-02-15
184	1410 Benin City Parkway		Risaralda	405	29747	104150372603	2006-02-15
185	682 Garden Grove Place		Tennessee	333	67497	72136330362	2006-02-15
186	533 al-Ayn Boulevard		California	126	8862	662227486184	2006-02-15
187	1839 Szkesfehrvr Parkway		Gois	317	55709	947468818183	2006-02-15
188	741 Ambattur Manor		Noord-Brabant	438	43310	302590383819	2006-02-15
189	927 Barcelona Street		Chaharmahal va Bakht	467	65121	951486492670	2006-02-15
190	435 0 Way		West Bengali	195	74750	760171523969	2006-02-15
191	140 Chiayi Parkway		Sumy	506	38982	855863906434	2006-02-15
192	1166 Changhwa Street		Caraga	62	58852	650752094490	2006-02-15
193	891 Novi Sad Manor		Ontario	383	5379	247646995453	2006-02-15
194	605 Rio Claro Parkway		Tabora	513	49348	352469351088	2006-02-15
195	1077 San Felipe de Puerto Plata Place		Rostov-na-Donu	369	65387	812824036424	2006-02-15
196	9 San Miguel de Tucumn Manor		Uttar Pradesh	169	90845	956188728558	2006-02-15
197	447 Surakarta Loop		Nyanza	271	10428	940830176580	2006-02-15
198	345 Oshawa Boulevard		Tokyo-to	204	32114	104491201771	2006-02-15
199	1792 Valle de la Pascua Place		Nordrhein-Westfalen	477	15540	419419591240	2006-02-15
200	1074 Binzhou Manor		Baden-Wrttemberg	325	36490	331132568928	2006-02-15
201	817 Bradford Loop		Jiangsu	109	89459	264286442804	2006-02-15
202	955 Bamenda Way		Ondo & Ekiti	218	1545	768481779568	2006-02-15
203	1149 A Corua (La Corua) Boulevard		Haiphong	194	95824	470884141195	2006-02-15
204	387 Mwene-Ditu Drive		Ahal	35	8073	764477681869	2006-02-15
205	68 Molodetno Manor		Nordrhein-Westfalen	575	4662	146640639760	2006-02-15
206	642 Nador Drive		Maharashtra	77	3924	369050085652	2006-02-15
207	1688 Nador Lane		Sulawesi Utara	184	61613	652218196731	2006-02-15
208	1215 Pyongyang Parkway		Usak	557	25238	646237101779	2006-02-15
209	1679 Antofagasta Street		Alto Paran	122	86599	905903574913	2006-02-15
210	1304 s-Hertogenbosch Way		Santa Catarina	83	10925	90336226227	2006-02-15
211	850 Salala Loop		Kitaa	371	10800	403404780639	2006-02-15
212	624 Oshawa Boulevard		West Bengali	51	89959	49677664184	2006-02-15
213	43 Dadu Avenue		Rajasthan	74	4855	95666951770	2006-02-15
214	751 Lima Loop		Aden	7	99405	756460337785	2006-02-15
215	1333 Haldia Street		Jilin	174	82161	408304391718	2006-02-15
216	660 Jedda Boulevard		Washington	65	25053	168758068397	2006-02-15
217	1001 Miyakonojo Lane		Taizz	518	67924	584316724815	2006-02-15
218	226 Brest Manor		California	508	2299	785881412500	2006-02-15
219	1229 Valencia Parkway		Haskovo	498	99124	352679173732	2006-02-15
220	1201 Qomsheh Manor		Gois	28	21464	873492228462	2006-02-15
221	866 Shivapuri Manor		Uttar Pradesh	448	22474	778502731092	2006-02-15
222	1168 Najafabad Parkway		Kabol	251	40301	886649065861	2006-02-15
223	1244 Allappuzha (Alleppey) Place		Buenos Aires	567	20657	991802825778	2006-02-15
224	1842 Luzinia Boulevard		Zanzibar West	593	94420	706878974831	2006-02-15
225	1926 Gingoog Street		Sisilia	511	22824	469738825391	2006-02-15
226	810 Palghat (Palakkad) Boulevard		Jaroslavl	235	73431	516331171356	2006-02-15
227	1820 Maring Parkway		Punjab	324	88307	99760893676	2006-02-15
228	60 Poos de Caldas Street		Rajasthan	243	82338	963063788669	2006-02-15
229	1014 Loja Manor		Tamil Nadu	22	66851	460795526514	2006-02-15
230	201 Effon-Alaiye Way		Asuncin	37	64344	684192903087	2006-02-15
231	430 Alessandria Loop		Saarland	439	47446	669828224459	2006-02-15
232	754 Valencia Place		Phnom Penh	406	87911	594319417514	2006-02-15
233	356 Olomouc Manor		Gois	26	93323	22326410776	2006-02-15
234	1256 Bislig Boulevard		Botosani	86	50598	479007229460	2006-02-15
235	954 Kimchon Place		West Bengali	559	42420	541327526474	2006-02-15
236	885 Yingkou Manor		Kaduna	596	31390	588964509072	2006-02-15
237	1736 Cavite Place		Qina	216	98775	431770603551	2006-02-15
238	346 Skikda Parkway		Hawalli	233	90628	630424482919	2006-02-15
239	98 Stara Zagora Boulevard		Valle	96	76448	610173756082	2006-02-15
240	1479 Rustenburg Boulevard		Southern Tagalog	527	18727	727785483194	2006-02-15
241	647 A Corua (La Corua) Street		Chollanam	357	36971	792557457753	2006-02-15
242	1964 Gijn Manor		Karnataka	473	14408	918119601885	2006-02-15
243	47 Syktyvkar Lane		West Java	118	22236	63937119031	2006-02-15
244	1148 Saarbrcken Parkway		Fukushima	226	1921	137773001988	2006-02-15
245	1103 Bilbays Parkway		Hubei	578	87660	279979529227	2006-02-15
246	1246 Boksburg Parkway		Hebei	422	28349	890283544295	2006-02-15
247	1483 Pathankot Street		Tucumn	454	37288	686015532180	2006-02-15
248	582 Papeete Loop		Central Visayas	294	27722	569868543137	2006-02-15
249	300 Junan Street		Kyonggi	553	81314	890289150158	2006-02-15
250	829 Grand Prairie Way		Paran	328	6461	741070712873	2006-02-15
251	1473 Changhwa Parkway		Mxico	124	75933	266798132374	2006-02-15
252	1309 Weifang Street		Florida	520	57338	435785045362	2006-02-15
253	1760 Oshawa Manor		Tianjin	535	38140	56257502250	2006-02-15
254	786 Stara Zagora Way		Oyo & Osun	390	98332	716256596301	2006-02-15
255	1966 Tonghae Street		Anhalt Sachsen	198	36481	567359279425	2006-02-15
256	1497 Yuzhou Drive		England	312	3433	246810237916	2006-02-15
258	752 Ondo Loop		Miyazaki	338	32474	134673576619	2006-02-15
259	1338 Zalantun Lane		Minas Gerais	413	45403	840522972766	2006-02-15
260	127 Iwakuni Boulevard		Central Luzon	192	20777	987442542471	2006-02-15
261	51 Laredo Avenue		Sagaing	342	68146	884536620568	2006-02-15
262	771 Yaound Manor		Sofala	64	86768	245477603573	2006-02-15
263	532 Toulon Street		Santiago	460	69517	46871694740	2006-02-15
264	1027 Banjul Place		West Bengali	197	50390	538241037443	2006-02-15
265	1158 Mandi Bahauddin Parkway		Shanxi	136	98484	276555730211	2006-02-15
266	862 Xintai Lane		Cagayan Valley	548	30065	265153400632	2006-02-15
267	816 Cayenne Parkway		Manab	414	93629	282874611748	2006-02-15
268	1831 Nam Dinh Loop		National Capital Reg	323	51990	322888976727	2006-02-15
269	446 Kirovo-Tepetsk Lane		Osaka	203	19428	303967439816	2006-02-15
270	682 Halisahar Place		Severn Morava	378	20536	475553436330	2006-02-15
271	1587 Loja Manor		Salzburg	447	5410	621625204422	2006-02-15
272	1762 Paarl Parkway		Hunan	298	53928	192459639410	2006-02-15
273	1519 Ilorin Place		Kerala	395	49298	357445645426	2006-02-15
274	920 Kumbakonam Loop		California	446	75090	685010736240	2006-02-15
275	906 Goinia Way		Wielkopolskie	255	83565	701767622697	2006-02-15
276	1675 Xiangfan Manor		Tamil Nadu	283	11763	271149517630	2006-02-15
277	85 San Felipe de Puerto Plata Drive		Shandong	584	46063	170739645687	2006-02-15
278	144 South Hill Loop		Guanajuato	445	2012	45387294817	2006-02-15
279	1884 Shikarpur Avenue		Haryana	263	85548	959949395183	2006-02-15
280	1980 Kamjanets-Podilskyi Street		Illinois	404	89502	874337098891	2006-02-15
281	1944 Bamenda Way		Michigan	573	24645	75975221996	2006-02-15
282	556 Baybay Manor		Oyo & Osun	374	55802	363982224739	2006-02-15
283	457 Tongliao Loop		Bursa	222	56254	880756161823	2006-02-15
284	600 Bradford Street		East Azerbaidzan	514	96204	117592274996	2006-02-15
285	1006 Santa Brbara dOeste Manor		Ondo & Ekiti	389	36229	85059738746	2006-02-15
286	1308 Sumy Loop		Fujian	175	30657	583021225407	2006-02-15
287	1405 Chisinau Place		Ponce	411	8160	62781725285	2006-02-15
288	226 Halifax Street		Xinxiang	277	58492	790651020929	2006-02-15
289	1279 Udine Parkway		Edo & Delta	69	75860	195003555232	2006-02-15
290	1336 Benin City Drive		Shiga	386	46044	341242939532	2006-02-15
291	1155 Liaocheng Place		Oyo & Osun	152	22650	558236142492	2006-02-15
292	1993 Tabuk Lane		Tamil Nadu	522	64221	648482415405	2006-02-15
293	86 Higashiosaka Lane		Guanajuato	563	33768	957128697225	2006-02-15
294	1912 Allende Manor		Kowloon and New Kowl	279	58124	172262454487	2006-02-15
295	544 Tarsus Boulevard		Gurico	562	53145	892523334	2006-02-15
296	1936 Cuman Avenue		Virginia	433	61195	976798660411	2006-02-15
297	1192 Tongliao Street		Sharja	470	19065	350970907017	2006-02-15
298	44 Najafabad Way		Baskimaa	146	61391	96604821070	2006-02-15
299	32 Pudukkottai Lane		Ohio	140	38834	967274728547	2006-02-15
300	661 Chisinau Lane		Pietari	274	8856	816436065431	2006-02-15
301	951 Stara Zagora Manor		Punjab	400	98573	429925609431	2006-02-15
302	922 Vila Velha Loop		Maharashtra	9	4085	510737228015	2006-02-15
303	898 Jining Lane		Pohjois-Pohjanmaa	387	40070	161643343536	2006-02-15
304	1635 Kuwana Boulevard		Hiroshima	205	52137	710603868323	2006-02-15
305	41 El Alto Parkway		Maharashtra	398	56883	51917807050	2006-02-15
306	1883 Maikop Lane		Kaliningrad	254	68469	96110042435	2006-02-15
307	1908 Gaziantep Place		Liaoning	536	58979	108053751300	2006-02-15
308	687 Alessandria Parkway		Sanaa	455	57587	407218522294	2006-02-15
309	827 Yuncheng Drive		Callao	99	79047	504434452842	2006-02-15
310	913 Coacalco de Berriozbal Loop		Texas	33	42141	262088367001	2006-02-15
311	715 So Bernardo do Campo Lane		Kedah	507	84804	181179321332	2006-02-15
312	1354 Siegen Street		Rio de Janeiro	25	80184	573441801529	2006-02-15
313	1191 Sungai Petani Boulevard		Missouri	262	9668	983259819766	2006-02-15
314	1224 Huejutla de Reyes Boulevard		Lombardia	91	70923	806016930576	2006-02-15
315	543 Bergamo Avenue		Minas Gerais	215	59686	103602195112	2006-02-15
316	746 Joliet Lane		Kursk	286	94878	688485191923	2006-02-15
317	780 Kimberley Way		Tabuk	515	17032	824396883951	2006-02-15
318	1774 Yaound Place		Hubei	166	91400	613124286867	2006-02-15
319	1957 Yantai Lane		So Paulo	490	59255	704948322302	2006-02-15
320	1542 Lubumbashi Boulevard		Tel Aviv	57	62472	508800331065	2006-02-15
321	651 Pathankot Loop		Maharashtra	336	59811	139378397418	2006-02-15
322	1359 Zhoushan Parkway		Streymoyar	545	29763	46568045367	2006-02-15
323	1769 Iwaki Lane		Kujawsko-Pomorskie	97	25787	556100547674	2006-02-15
324	1145 Vilnius Manor		Mxico	451	73170	674805712553	2006-02-15
325	1892 Nabereznyje Telny Lane		Tutuila	516	28396	478229987054	2006-02-15
326	470 Boksburg Street		Central	81	97960	908029859266	2006-02-15
327	1427 A Corua (La Corua) Place		Buenos Aires	45	85799	972574862516	2006-02-15
328	479 San Felipe del Progreso Avenue		Morelos	130	54949	869051782691	2006-02-15
329	867 Benin City Avenue		Henan	591	78543	168884817145	2006-02-15
330	981 Kumbakonam Place		Distrito Federal	89	87611	829116184079	2006-02-15
331	1016 Iwakuni Street		St George	269	49833	961370847344	2006-02-15
332	663 Baha Blanca Parkway		Adana	5	33463	834418779292	2006-02-15
333	1860 Taguig Loop		West Java	119	59550	38158430589	2006-02-15
334	1816 Bydgoszcz Loop		Dhaka	234	64308	965273813662	2006-02-15
335	587 Benguela Manor		Illinois	42	91590	165450987037	2006-02-15
336	430 Kumbakonam Drive		Santa F	457	28814	105470691550	2006-02-15
337	1838 Tabriz Lane		Dhaka	143	1195	38988715447	2006-02-15
338	431 Szkesfehrvr Avenue		Baki	48	57828	119501405123	2006-02-15
339	503 Sogamoso Loop		Sumqayit	505	49812	834626715837	2006-02-15
340	507 Smolensk Loop		Sousse	492	22971	80303246192	2006-02-15
341	1920 Weifang Avenue		Uttar Pradesh	427	15643	869507847714	2006-02-15
342	124 al-Manama Way		Hiroshima	382	52368	647899404952	2006-02-15
343	1443 Mardan Street		Western Cape	392	31483	231383037471	2006-02-15
344	1909 Benguela Lane		Henan	581	19913	624138001031	2006-02-15
345	68 Ponce Parkway		Hanoi	201	85926	870635127812	2006-02-15
346	1217 Konotop Avenue		Gelderland	151	504	718917251754	2006-02-15
347	1293 Nam Dinh Way		Roraima	84	71583	697656479977	2006-02-15
348	785 Vaduz Street		Baja California	335	36170	895616862749	2006-02-15
349	1516 Escobar Drive		Tongatapu	370	46069	64536069371	2006-02-15
350	1628 Nagareyama Lane		Central	453	60079	20064292617	2006-02-15
351	1157 Nyeri Loop		Adygea	320	56380	262744791493	2006-02-15
352	1673 Tangail Drive		Daugavpils	137	26857	627924259271	2006-02-15
353	381 Kabul Way		Taipei	209	87272	55477302294	2006-02-15
354	953 Hodeida Street		Southern Tagalog	221	18841	53912826864	2006-02-15
355	469 Nakhon Sawan Street		Tuvassia	531	58866	689199636560	2006-02-15
356	1378 Beira Loop		Krasnojarsk	597	40792	840957664136	2006-02-15
357	1641 Changhwa Place		Nord-Ouest	52	37636	256546485220	2006-02-15
358	1698 Southport Loop		Hidalgo	393	49009	754358349853	2006-02-15
359	519 Nyeri Manor		So Paulo	461	37650	764680915323	2006-02-15
360	619 Hunuco Avenue		Shimane	331	81508	142596392389	2006-02-15
361	45 Aparecida de Goinia Place		Madhya Pradesh	464	7431	650496654258	2006-02-15
362	482 Kowloon and New Kowloon Manor		Bratislava	90	97056	738968474939	2006-02-15
363	604 Bern Place		Jharkhand	429	5373	620719383725	2006-02-15
364	1623 Kingstown Drive		Buenos Aires	20	91299	296394569728	2006-02-15
365	1009 Zanzibar Lane		Arecibo	32	64875	102396298916	2006-02-15
366	114 Jalib al-Shuyukh Manor		Centre	585	60440	845378657301	2006-02-15
367	1163 London Parkway		Par	66	6066	675120358494	2006-02-15
368	1658 Jastrzebie-Zdrj Loop		Central	372	96584	568367775448	2006-02-15
369	817 Laredo Avenue		Jalisco	188	77449	151249681135	2006-02-15
370	1565 Tangail Manor		Okinawa	377	45750	634445428822	2006-02-15
371	1912 Emeishan Drive		Balikesir	50	33050	99883471275	2006-02-15
372	230 Urawa Drive		Andhra Pradesh	8	2738	166898395731	2006-02-15
373	1922 Miraj Way		Esfahan	356	13203	320471479776	2006-02-15
374	433 Florencia Street		Chihuahua	250	91330	561729882725	2006-02-15
375	1049 Matamoros Parkway		Karnataka	191	69640	960505250340	2006-02-15
376	1061 Ede Avenue		Southern Tagalog	98	57810	333390595558	2006-02-15
377	154 Oshawa Manor		East Java	415	72771	440365973660	2006-02-15
378	1191 Tandil Drive		Southern Tagalog	523	6362	45554316010	2006-02-15
379	1133 Rizhao Avenue		Pernambuco	572	2800	600264533987	2006-02-15
380	1519 Santiago de los Caballeros Loop		East Kasai	348	22025	409315295763	2006-02-15
381	1618 Olomouc Manor		Kurgan	285	26385	96846695220	2006-02-15
382	220 Hidalgo Drive		Kermanshah	265	45298	342720754566	2006-02-15
383	686 Donostia-San Sebastin Lane		Guangdong	471	97390	71857599858	2006-02-15
384	97 Mogiljov Lane		Gujarat	73	89294	924815207181	2006-02-15
385	1642 Charlotte Amalie Drive		Slaskie	549	75442	821476736117	2006-02-15
386	1368 Maracabo Boulevard			493	32716	934352415130	2006-02-15
387	401 Sucre Boulevard		New Hampshire	322	25007	486395999608	2006-02-15
388	368 Hunuco Boulevard		Namibe	360	17165	106439158941	2006-02-15
389	500 Lincoln Parkway		Jiangsu	210	95509	550306965159	2006-02-15
390	102 Chapra Drive		Ibaragi	521	14073	776031833752	2006-02-15
391	1793 Meixian Place		Hmelnytskyi	258	33535	619966287415	2006-02-15
392	514 Ife Way		Shaba	315	69973	900235712074	2006-02-15
393	717 Changzhou Lane		Southern Tagalog	104	21615	426255288071	2006-02-15
394	753 Ilorin Avenue		Sichuan	157	3656	464511145118	2006-02-15
395	1337 Mit Ghamr Avenue		Nakhon Sawan	358	29810	175283210378	2006-02-15
396	767 Pyongyang Drive		Osaka	229	83536	667736124769	2006-02-15
397	614 Pak Kret Street		Addis Abeba	6	27796	47808359842	2006-02-15
398	954 Lapu-Lapu Way		Moskova	278	8816	737229003916	2006-02-15
399	331 Bydgoszcz Parkway		Asturia	181	966	537374465982	2006-02-15
400	1152 Citrus Heights Manor		al-Qadarif	15	5239	765957414528	2006-02-15
401	168 Cianjur Manor		Saitama	228	73824	679095087143	2006-02-15
402	616 Hagonoy Avenue		Krasnojarsk	39	46043	604177838256	2006-02-15
403	1190 0 Place		Rio Grande do Sul	44	10417	841876514789	2006-02-15
404	734 Bchar Place		Punjab	375	30586	280578750435	2006-02-15
405	530 Lausanne Lane		Texas	135	11067	775235029633	2006-02-15
406	454 Patiala Lane		Fukushima	276	13496	794553031307	2006-02-15
407	1346 Mysore Drive		Bretagne	92	61507	516647474029	2006-02-15
408	990 Etawah Loop		Tamil Nadu	564	79940	206169448769	2006-02-15
409	1266 Laredo Parkway		Saitama	380	7664	1483365694	2006-02-15
410	88 Nagaon Manor		Buenos Aires	524	86868	779461480495	2006-02-15
411	264 Bhimavaram Manor		St Thomas	111	54749	302526949177	2006-02-15
412	1639 Saarbrcken Drive		North West	437	9827	328494873422	2006-02-15
413	692 Amroha Drive		Northern	230	35575	359478883004	2006-02-15
414	1936 Lapu-Lapu Parkway		Bauchi & Gombe	141	7122	653436985797	2006-02-15
415	432 Garden Grove Street		Ontario	430	65630	615964523510	2006-02-15
416	1445 Carmen Parkway		West Java	117	70809	598912394463	2006-02-15
417	791 Salinas Street		Punjab	208	40509	129953030512	2006-02-15
418	126 Acua Parkway		West Bengali	71	58888	480039662421	2006-02-15
419	397 Sunnyvale Avenue		Guanajuato	19	55566	680851640676	2006-02-15
420	992 Klerksdorp Loop		Utrecht	23	33711	855290087237	2006-02-15
421	966 Arecibo Loop		Sind	134	94018	15273765306	2006-02-15
422	289 Santo Andr Manor		al-Sharqiya	16	72410	214976066017	2006-02-15
423	437 Chungho Drive		Puerto Plata	450	59489	491271355190	2006-02-15
424	1948 Bayugan Parkway		Bihar	264	60622	987306329957	2006-02-15
425	1866 al-Qatif Avenue		California	155	89420	546793516940	2006-02-15
426	1661 Abha Drive		Tamil Nadu	416	14400	270456873752	2006-02-15
427	1557 Cape Coral Parkway		Hubei	293	46875	368284120423	2006-02-15
428	1727 Matamoros Place		Sawhaj	465	78813	129673677866	2006-02-15
429	1269 Botosani Manor		Guangdong	468	47394	736517327853	2006-02-15
430	355 Vitria de Santo Anto Way		Oaxaca	452	81758	548003849552	2006-02-15
431	1596 Acua Parkway		Jharkhand	418	70425	157133457169	2006-02-15
432	259 Ipoh Drive		So Paulo	189	64964	419009857119	2006-02-15
433	1823 Hoshiarpur Lane		Komi	510	33191	307133768620	2006-02-15
434	1404 Taguig Drive		Okayama	547	87212	572068624538	2006-02-15
435	740 Udaipur Lane		Nizni Novgorod	150	33505	497288595103	2006-02-15
436	287 Cuautla Boulevard		Chuquisaca	501	72736	82619513349	2006-02-15
437	1766 Almirante Brown Street		KwaZulu-Natal	364	63104	617567598243	2006-02-15
438	596 Huixquilucan Place		Nampula	351	65892	342709348083	2006-02-15
439	1351 Aparecida de Goinia Parkway		Northern Mindanao	391	41775	959834530529	2006-02-15
440	722 Bradford Lane		Shandong	249	90920	746251338300	2006-02-15
441	983 Santa F Way		British Colombia	565	47472	145720452260	2006-02-15
442	1245 Ibirit Way		La Romana	290	40926	331888642162	2006-02-15
443	1836 Korla Parkway		Copperbelt	272	55405	689681677428	2006-02-15
444	231 Kaliningrad Place		Lombardia	70	57833	575081026569	2006-02-15
445	495 Bhimavaram Lane		Maharashtra	144	3	82088937724	2006-02-15
446	1924 Shimonoseki Drive		Batna	59	52625	406784385440	2006-02-15
447	105 Dzerzinsk Manor		Inner Mongolia	540	48570	240776414296	2006-02-15
448	614 Denizli Parkway		Rio Grande do Sul	486	29444	876491807547	2006-02-15
449	1289 Belm Boulevard		Tartumaa	530	88306	237368926031	2006-02-15
450	203 Tambaram Street		Buenos Aires	161	73942	411549550611	2006-02-15
451	1704 Tambaram Manor		West Bengali	554	2834	39463554936	2006-02-15
452	207 Cuernavaca Loop		Tatarstan	352	52671	782900030287	2006-02-15
453	319 Springs Loop		Baijeri	160	99552	72524459905	2006-02-15
454	956 Nam Dinh Manor		Kerman	481	21872	474047727727	2006-02-15
455	1947 Paarl Way		Central Java	509	23636	834061016202	2006-02-15
456	814 Simferopol Loop		Sinaloa	154	48745	524567129902	2006-02-15
457	535 Ahmadnagar Manor		Abu Dhabi	3	41136	985109775584	2006-02-15
458	138 Caracas Boulevard		Zulia	326	16790	974433019532	2006-02-15
459	251 Florencia Drive		Michoacn de Ocampo	556	16119	118011831565	2006-02-15
460	659 Gatineau Boulevard		La Paz	153	28587	205524798287	2006-02-15
461	1889 Valparai Way		Ziguinchor	600	75559	670370974122	2006-02-15
462	1485 Bratislava Place		Illinois	435	83183	924663855568	2006-02-15
463	935 Aden Boulevard		Central Java	532	64709	335052544020	2006-02-15
464	76 Kermanshah Manor		Esfahan	423	23343	762361821578	2006-02-15
465	734 Tanshui Avenue		Caquet	170	70664	366776723320	2006-02-15
466	118 Jaffna Loop		Northern Mindanao	182	10447	325526730021	2006-02-15
467	1621 Tongliao Avenue		Irkutsk	558	22173	209342540247	2006-02-15
468	1844 Usak Avenue		Nova Scotia	196	84461	164414772677	2006-02-15
469	1872 Toulon Loop		OHiggins	428	7939	928809465153	2006-02-15
470	1088 Ibirit Place		Jalisco	595	88502	49084281333	2006-02-15
471	1322 Mosul Parkway		Shandong	145	95400	268053970382	2006-02-15
472	1447 Chatsworth Place		Chihuahua	129	41545	769370126331	2006-02-15
473	1257 Guadalajara Street		Karnataka	78	33599	195337700615	2006-02-15
474	1469 Plock Lane		Galicia	388	95835	622884741180	2006-02-15
475	434 Ourense (Orense) Manor		Hodeida	206	14122	562370137426	2006-02-15
476	270 Tambaram Parkway		Gauteng	244	9668	248446668735	2006-02-15
477	1786 Salinas Place		Nam Ha	359	66546	206060652238	2006-02-15
478	1078 Stara Zagora Drive		Aceh	301	69221	932992626595	2006-02-15
479	1854 Okara Boulevard		Drenthe	158	42123	131912793873	2006-02-15
480	421 Yaound Street		Sumy	385	11363	726875628268	2006-02-15
481	1153 Allende Way		Qubec	179	20336	856872225376	2006-02-15
482	808 Naala-Porto Parkway		England	500	41060	553452430707	2006-02-15
483	632 Usolje-Sibirskoje Parkway		Ha Darom	36	73085	667648979883	2006-02-15
484	98 Pyongyang Boulevard		Ohio	11	88749	191958435142	2006-02-15
485	984 Novoterkassk Loop		Gaziantep	180	28165	435118527255	2006-02-15
486	64 Korla Street		Mwanza	347	25145	510383179153	2006-02-15
487	1785 So Bernardo do Campo Street		Veracruz	125	71182	684529463244	2006-02-15
488	698 Jelets Boulevard		Denizli	142	2596	975185523021	2006-02-15
489	1297 Alvorada Parkway		Ningxia	587	11839	508348602835	2006-02-15
490	1909 Dayton Avenue		Guangdong	469	88513	702955450528	2006-02-15
491	1789 Saint-Denis Parkway		Coahuila de Zaragoza	4	8268	936806643983	2006-02-15
492	185 Mannheim Lane		Stavropol	408	23661	589377568313	2006-02-15
493	184 Mandaluyong Street		Baja California Sur	288	94239	488425406814	2006-02-15
494	591 Sungai Petani Drive		Okayama	376	46400	37247325001	2006-02-15
495	656 Matamoros Drive		Boyac	487	19489	17305839123	2006-02-15
496	775 ostka Drive		al-Daqahliya	337	22358	171973024401	2006-02-15
497	1013 Tabuk Boulevard		West Bengali	261	96203	158399646978	2006-02-15
498	319 Plock Parkway		Istanbul	504	26101	854259976812	2006-02-15
499	1954 Kowloon and New Kowloon Way		Chimborazo	434	63667	898559280434	2006-02-15
500	362 Rajkot Lane		Gansu	47	98030	962020153680	2006-02-15
501	1060 Tandil Lane		Shandong	432	72349	211256301880	2006-02-15
502	1515 Korla Way		England	589	57197	959467760895	2006-02-15
503	1416 San Juan Bautista Tuxtepec Avenue		Zufar	444	50592	144206758053	2006-02-15
504	1 Valle de Santiago Avenue		Apulia	93	86208	465897838272	2006-02-15
505	519 Brescia Parkway		East Java	318	69504	793996678771	2006-02-15
506	414 Mandaluyong Street		Lubelskie	314	16370	52709222667	2006-02-15
507	1197 Sokoto Boulevard		West Bengali	478	87687	868602816371	2006-02-15
508	496 Celaya Drive		Nagano	552	90797	759586584889	2006-02-15
509	786 Matsue Way		Illinois	245	37469	111177206479	2006-02-15
510	48 Maracabo Place		Central Luzon	519	1570	82671830126	2006-02-15
511	1152 al-Qatif Lane		Kalimantan Barat	412	44816	131370665218	2006-02-15
512	1269 Ipoh Avenue		Eskisehir	163	54674	402630109080	2006-02-15
513	758 Korolev Parkway		Andhra Pradesh	568	75474	441628280920	2006-02-15
514	1747 Rustenburg Place		Bihar	110	51369	442673923363	2006-02-15
515	886 Tonghae Place		Volgograd	259	19450	711928348157	2006-02-15
516	1574 Goinia Boulevard		Heilongjiang	502	39529	59634255214	2006-02-15
517	548 Uruapan Street		Ontario	312	35653	879347453467	2006-02-15
519	962 Tama Loop			583	65952	282667506728	2006-02-15
520	1778 Gijn Manor		Hubei	594	35156	288910576761	2006-02-15
521	568 Dhule (Dhulia) Loop		Coquimbo	127	92568	602101369463	2006-02-15
522	1768 Udine Loop		Battambang	60	32347	448876499197	2006-02-15
523	608 Birgunj Parkway		Taipei	116	400	627425618482	2006-02-15
524	680 A Corua (La Corua) Manor		Sivas	482	49806	158326114853	2006-02-15
525	1949 Sanya Street		Gumma	224	61244	132100972047	2006-02-15
526	617 Klerksdorp Place		Khanh Hoa	366	94707	574973479129	2006-02-15
527	1993 0 Loop		Liaoning	588	41214	25865528181	2006-02-15
528	1176 Southend-on-Sea Manor		Southern Tagalog	458	81651	236679267178	2006-02-15
529	600 Purnea (Purnia) Avenue		Nghe An	571	18043	638409958875	2006-02-15
530	1003 Qinhuangdao Street		West Java	419	25972	35533115997	2006-02-15
531	1986 Sivas Place		Friuli-Venezia Giuli	551	95775	182059202712	2006-02-15
532	1427 Tabuk Place		Florida	101	31342	214756839122	2006-02-15
533	556 Asuncin Way		Mogiljov	339	35364	338244023543	2006-02-15
534	486 Ondo Parkway		Benguela	67	35202	105882218332	2006-02-15
535	635 Brest Manor		Andhra Pradesh	75	40899	80593242951	2006-02-15
536	166 Jinchang Street		Buenos Aires	165	86760	717566026669	2006-02-15
537	958 Sagamihara Lane		Mie	287	88408	427274926505	2006-02-15
538	1817 Livorno Way		Khanh Hoa	100	79401	478380208348	2006-02-15
539	1332 Gaziantep Lane		Shandong	80	22813	383353187467	2006-02-15
540	949 Allende Lane		Uttar Pradesh	24	67521	122981120653	2006-02-15
541	195 Ilorin Street		Chari-Baguirmi	363	49250	8912935608	2006-02-15
542	193 Bhusawal Place		Kang-won	539	9750	745267607502	2006-02-15
543	43 Vilnius Manor		Colorado	42	79814	484500282381	2006-02-15
544	183 Haiphong Street		Jilin	46	69953	488600270038	2006-02-15
545	163 Augusta-Richmond County Loop		Carabobo	561	33030	754579047924	2006-02-15
546	191 Jos Azueta Parkway		Ruse	436	13629	932156667696	2006-02-15
547	379 Lublin Parkway		Toscana	309	74568	921960450089	2006-02-15
548	1658 Cuman Loop		Sumatera Selatan	396	51309	784907335610	2006-02-15
549	454 Qinhuangdao Drive		Tadla-Azilal	68	25866	786270036240	2006-02-15
550	1715 Okayama Street		So Paulo	485	55676	169352919175	2006-02-15
551	182 Nukualofa Drive		Sumy	275	15414	426346224043	2006-02-15
552	390 Wroclaw Way		Hainan	462	5753	357593328658	2006-02-15
553	1421 Quilmes Lane		Ishikawa	260	19151	135407755975	2006-02-15
554	947 Trshavn Place		Central Luzon	528	841	50898428626	2006-02-15
555	1764 Jalib al-Shuyukh Parkway		Galicia	459	77642	84794532510	2006-02-15
556	346 Cam Ranh Avenue		Zhejiang	599	39976	978430786151	2006-02-15
557	1407 Pachuca de Soto Place		Rio Grande do Sul	21	26284	380077794770	2006-02-15
558	904 Clarksville Drive		Zhejiang	193	52234	955349440539	2006-02-15
559	1917 Kumbakonam Parkway		Vojvodina	368	11892	698182547686	2006-02-15
560	1447 Imus Place		Gujarat	426	12905	62127829280	2006-02-15
561	1497 Fengshan Drive		KwaZulu-Natal	112	63022	368738360376	2006-02-15
562	869 Shikarpur Way		England	496	57380	590764256785	2006-02-15
563	1059 Yuncheng Avenue		Vilna	570	47498	107092893983	2006-02-15
564	505 Madiun Boulevard		Dolnoslaskie	577	97271	970638808606	2006-02-15
565	1741 Hoshiarpur Boulevard		al-Sharqiya	79	22372	855066328617	2006-02-15
566	1229 Varanasi (Benares) Manor		Buenos Aires	43	40195	817740355461	2006-02-15
567	1894 Boa Vista Way		Texas	178	77464	239357986667	2006-02-15
568	1342 Sharja Way		Sokoto & Kebbi & Zam	488	93655	946114054231	2006-02-15
569	1342 Abha Boulevard		Bukarest	95	10714	997453607116	2006-02-15
570	415 Pune Avenue		Shandong	580	44274	203202500108	2006-02-15
571	1746 Faaa Way		Huanuco	214	32515	863080561151	2006-02-15
572	539 Hami Way		Tokat	538	52196	525518075499	2006-02-15
573	1407 Surakarta Manor		Moskova	466	33224	324346485054	2006-02-15
574	502 Mandi Bahauddin Parkway		Anzotegui	55	15992	618156722572	2006-02-15
575	1052 Pathankot Avenue		Sichuan	299	77397	128499386727	2006-02-15
576	1351 Sousse Lane		Coahuila de Zaragoza	341	37815	203804046132	2006-02-15
577	1501 Pangkal Pinang Avenue		Mazowieckie	409	943	770864062795	2006-02-15
578	1405 Hagonoy Avenue		Slaskie	133	86587	867287719310	2006-02-15
579	521 San Juan Bautista Tuxtepec Place		Qaraghandy	598	95093	844018348565	2006-02-15
580	923 Tangail Boulevard		Tokyo-to	10	33384	315528269898	2006-02-15
581	186 Skikda Lane		Morelos	131	89422	14465669789	2006-02-15
582	1568 Celaya Parkway		Kaohsiung	168	34750	278669994384	2006-02-15
583	1489 Kakamigahara Lane		Taipei	526	98883	29341849811	2006-02-15
584	1819 Alessandria Loop		Campeche	103	53829	377633994405	2006-02-15
585	1208 Tama Loop		Ninawa	344	73605	954786054144	2006-02-15
586	951 Springs Lane		Central Mindanao	219	96115	165164761435	2006-02-15
587	760 Miyakonojo Drive		Guerrero	246	64682	294449058179	2006-02-15
588	966 Asuncin Way		Hidalgo	212	62703	995527378381	2006-02-15
589	1584 Ljubertsy Lane		England	494	22954	285710089439	2006-02-15
590	247 Jining Parkway		Banjul	54	53446	170115379190	2006-02-15
591	773 Dallas Manor		Buenos Aires	424	12664	914466027044	2006-02-15
592	1923 Stara Zagora Lane		Nantou	546	95179	182178609211	2006-02-15
593	1402 Zanzibar Boulevard		Guanajuato	106	71102	387448063440	2006-02-15
594	1464 Kursk Parkway		Shandong	574	17381	338758048786	2006-02-15
595	1074 Sanaa Parkway		Loja	311	22474	154124128457	2006-02-15
596	1759 Niznekamsk Avenue		al-Manama	14	39414	864392582257	2006-02-15
597	32 Liaocheng Way		Minas Gerais	248	1944	410877354933	2006-02-15
598	42 Fontana Avenue		Fejr	512	14684	437829801725	2006-02-15
599	1895 Zhezqazghan Drive		California	177	36693	137809746111	2006-02-15
600	1837 Kaduna Parkway		Inner Mongolia	241	82580	640843562301	2006-02-15
601	844 Bucuresti Place		Liaoning	242	36603	935952366111	2006-02-15
602	1101 Bucuresti Boulevard		West Greece	401	97661	199514580428	2006-02-15
603	1103 Quilmes Boulevard		Piura	503	52137	644021380889	2006-02-15
604	1331 Usak Boulevard		Vaud	296	61960	145308717464	2006-02-15
605	1325 Fukuyama Street		Heilongjiang	537	27107	288241215394	2006-02-15
\.


                                                                                                                 4817.dat                                                                                            0000600 0004000 0002000 00000037752 14667106621 0014304 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	A Corua (La Corua)	87	2006-02-15
2	Abha	82	2006-02-15
3	Abu Dhabi	101	2006-02-15
4	Acua	60	2006-02-15
5	Adana	97	2006-02-15
6	Addis Abeba	31	2006-02-15
7	Aden	107	2006-02-15
8	Adoni	44	2006-02-15
9	Ahmadnagar	44	2006-02-15
10	Akishima	50	2006-02-15
11	Akron	103	2006-02-15
12	al-Ayn	101	2006-02-15
13	al-Hawiya	82	2006-02-15
14	al-Manama	11	2006-02-15
15	al-Qadarif	89	2006-02-15
16	al-Qatif	82	2006-02-15
17	Alessandria	49	2006-02-15
18	Allappuzha (Alleppey)	44	2006-02-15
19	Allende	60	2006-02-15
20	Almirante Brown	6	2006-02-15
21	Alvorada	15	2006-02-15
22	Ambattur	44	2006-02-15
23	Amersfoort	67	2006-02-15
24	Amroha	44	2006-02-15
25	Angra dos Reis	15	2006-02-15
26	Anpolis	15	2006-02-15
27	Antofagasta	22	2006-02-15
28	Aparecida de Goinia	15	2006-02-15
29	Apeldoorn	67	2006-02-15
30	Araatuba	15	2006-02-15
31	Arak	46	2006-02-15
32	Arecibo	77	2006-02-15
33	Arlington	103	2006-02-15
34	Ashdod	48	2006-02-15
35	Ashgabat	98	2006-02-15
36	Ashqelon	48	2006-02-15
37	Asuncin	73	2006-02-15
38	Athenai	39	2006-02-15
39	Atinsk	80	2006-02-15
40	Atlixco	60	2006-02-15
41	Augusta-Richmond County	103	2006-02-15
42	Aurora	103	2006-02-15
43	Avellaneda	6	2006-02-15
44	Bag	15	2006-02-15
45	Baha Blanca	6	2006-02-15
46	Baicheng	23	2006-02-15
47	Baiyin	23	2006-02-15
48	Baku	10	2006-02-15
49	Balaiha	80	2006-02-15
50	Balikesir	97	2006-02-15
51	Balurghat	44	2006-02-15
52	Bamenda	19	2006-02-15
53	Bandar Seri Begawan	16	2006-02-15
54	Banjul	37	2006-02-15
55	Barcelona	104	2006-02-15
56	Basel	91	2006-02-15
57	Bat Yam	48	2006-02-15
58	Batman	97	2006-02-15
59	Batna	2	2006-02-15
60	Battambang	18	2006-02-15
61	Baybay	75	2006-02-15
62	Bayugan	75	2006-02-15
63	Bchar	2	2006-02-15
64	Beira	63	2006-02-15
65	Bellevue	103	2006-02-15
66	Belm	15	2006-02-15
67	Benguela	4	2006-02-15
68	Beni-Mellal	62	2006-02-15
69	Benin City	69	2006-02-15
70	Bergamo	49	2006-02-15
71	Berhampore (Baharampur)	44	2006-02-15
72	Bern	91	2006-02-15
73	Bhavnagar	44	2006-02-15
74	Bhilwara	44	2006-02-15
75	Bhimavaram	44	2006-02-15
76	Bhopal	44	2006-02-15
77	Bhusawal	44	2006-02-15
78	Bijapur	44	2006-02-15
79	Bilbays	29	2006-02-15
80	Binzhou	23	2006-02-15
81	Birgunj	66	2006-02-15
82	Bislig	75	2006-02-15
83	Blumenau	15	2006-02-15
84	Boa Vista	15	2006-02-15
85	Boksburg	85	2006-02-15
86	Botosani	78	2006-02-15
87	Botshabelo	85	2006-02-15
88	Bradford	102	2006-02-15
89	Braslia	15	2006-02-15
90	Bratislava	84	2006-02-15
91	Brescia	49	2006-02-15
92	Brest	34	2006-02-15
93	Brindisi	49	2006-02-15
94	Brockton	103	2006-02-15
95	Bucuresti	78	2006-02-15
96	Buenaventura	24	2006-02-15
97	Bydgoszcz	76	2006-02-15
98	Cabuyao	75	2006-02-15
99	Callao	74	2006-02-15
100	Cam Ranh	105	2006-02-15
101	Cape Coral	103	2006-02-15
102	Caracas	104	2006-02-15
103	Carmen	60	2006-02-15
104	Cavite	75	2006-02-15
105	Cayenne	35	2006-02-15
106	Celaya	60	2006-02-15
107	Chandrapur	44	2006-02-15
108	Changhwa	92	2006-02-15
109	Changzhou	23	2006-02-15
110	Chapra	44	2006-02-15
111	Charlotte Amalie	106	2006-02-15
112	Chatsworth	85	2006-02-15
113	Cheju	86	2006-02-15
114	Chiayi	92	2006-02-15
115	Chisinau	61	2006-02-15
116	Chungho	92	2006-02-15
117	Cianjur	45	2006-02-15
118	Ciomas	45	2006-02-15
119	Ciparay	45	2006-02-15
120	Citrus Heights	103	2006-02-15
121	Citt del Vaticano	41	2006-02-15
122	Ciudad del Este	73	2006-02-15
123	Clarksville	103	2006-02-15
124	Coacalco de Berriozbal	60	2006-02-15
125	Coatzacoalcos	60	2006-02-15
126	Compton	103	2006-02-15
127	Coquimbo	22	2006-02-15
128	Crdoba	6	2006-02-15
129	Cuauhtmoc	60	2006-02-15
130	Cuautla	60	2006-02-15
131	Cuernavaca	60	2006-02-15
132	Cuman	104	2006-02-15
133	Czestochowa	76	2006-02-15
134	Dadu	72	2006-02-15
135	Dallas	103	2006-02-15
136	Datong	23	2006-02-15
137	Daugavpils	54	2006-02-15
138	Davao	75	2006-02-15
139	Daxian	23	2006-02-15
140	Dayton	103	2006-02-15
141	Deba Habe	69	2006-02-15
142	Denizli	97	2006-02-15
143	Dhaka	12	2006-02-15
144	Dhule (Dhulia)	44	2006-02-15
145	Dongying	23	2006-02-15
146	Donostia-San Sebastin	87	2006-02-15
147	Dos Quebradas	24	2006-02-15
148	Duisburg	38	2006-02-15
149	Dundee	102	2006-02-15
150	Dzerzinsk	80	2006-02-15
151	Ede	67	2006-02-15
152	Effon-Alaiye	69	2006-02-15
153	El Alto	14	2006-02-15
154	El Fuerte	60	2006-02-15
155	El Monte	103	2006-02-15
156	Elista	80	2006-02-15
157	Emeishan	23	2006-02-15
158	Emmen	67	2006-02-15
159	Enshi	23	2006-02-15
160	Erlangen	38	2006-02-15
161	Escobar	6	2006-02-15
162	Esfahan	46	2006-02-15
163	Eskisehir	97	2006-02-15
164	Etawah	44	2006-02-15
165	Ezeiza	6	2006-02-15
166	Ezhou	23	2006-02-15
167	Faaa	36	2006-02-15
168	Fengshan	92	2006-02-15
169	Firozabad	44	2006-02-15
170	Florencia	24	2006-02-15
171	Fontana	103	2006-02-15
172	Fukuyama	50	2006-02-15
173	Funafuti	99	2006-02-15
174	Fuyu	23	2006-02-15
175	Fuzhou	23	2006-02-15
176	Gandhinagar	44	2006-02-15
177	Garden Grove	103	2006-02-15
178	Garland	103	2006-02-15
179	Gatineau	20	2006-02-15
180	Gaziantep	97	2006-02-15
181	Gijn	87	2006-02-15
182	Gingoog	75	2006-02-15
183	Goinia	15	2006-02-15
184	Gorontalo	45	2006-02-15
185	Grand Prairie	103	2006-02-15
186	Graz	9	2006-02-15
187	Greensboro	103	2006-02-15
188	Guadalajara	60	2006-02-15
189	Guaruj	15	2006-02-15
190	guas Lindas de Gois	15	2006-02-15
191	Gulbarga	44	2006-02-15
192	Hagonoy	75	2006-02-15
193	Haining	23	2006-02-15
194	Haiphong	105	2006-02-15
195	Haldia	44	2006-02-15
196	Halifax	20	2006-02-15
197	Halisahar	44	2006-02-15
198	Halle/Saale	38	2006-02-15
199	Hami	23	2006-02-15
200	Hamilton	68	2006-02-15
201	Hanoi	105	2006-02-15
202	Hidalgo	60	2006-02-15
203	Higashiosaka	50	2006-02-15
204	Hino	50	2006-02-15
205	Hiroshima	50	2006-02-15
206	Hodeida	107	2006-02-15
207	Hohhot	23	2006-02-15
208	Hoshiarpur	44	2006-02-15
209	Hsichuh	92	2006-02-15
210	Huaian	23	2006-02-15
211	Hubli-Dharwad	44	2006-02-15
212	Huejutla de Reyes	60	2006-02-15
213	Huixquilucan	60	2006-02-15
214	Hunuco	74	2006-02-15
215	Ibirit	15	2006-02-15
216	Idfu	29	2006-02-15
217	Ife	69	2006-02-15
218	Ikerre	69	2006-02-15
219	Iligan	75	2006-02-15
220	Ilorin	69	2006-02-15
221	Imus	75	2006-02-15
222	Inegl	97	2006-02-15
223	Ipoh	59	2006-02-15
224	Isesaki	50	2006-02-15
225	Ivanovo	80	2006-02-15
226	Iwaki	50	2006-02-15
227	Iwakuni	50	2006-02-15
228	Iwatsuki	50	2006-02-15
229	Izumisano	50	2006-02-15
230	Jaffna	88	2006-02-15
231	Jaipur	44	2006-02-15
232	Jakarta	45	2006-02-15
233	Jalib al-Shuyukh	53	2006-02-15
234	Jamalpur	12	2006-02-15
235	Jaroslavl	80	2006-02-15
236	Jastrzebie-Zdrj	76	2006-02-15
237	Jedda	82	2006-02-15
238	Jelets	80	2006-02-15
239	Jhansi	44	2006-02-15
240	Jinchang	23	2006-02-15
241	Jining	23	2006-02-15
242	Jinzhou	23	2006-02-15
243	Jodhpur	44	2006-02-15
244	Johannesburg	85	2006-02-15
245	Joliet	103	2006-02-15
246	Jos Azueta	60	2006-02-15
247	Juazeiro do Norte	15	2006-02-15
248	Juiz de Fora	15	2006-02-15
249	Junan	23	2006-02-15
250	Jurez	60	2006-02-15
251	Kabul	1	2006-02-15
252	Kaduna	69	2006-02-15
253	Kakamigahara	50	2006-02-15
254	Kaliningrad	80	2006-02-15
255	Kalisz	76	2006-02-15
256	Kamakura	50	2006-02-15
257	Kamarhati	44	2006-02-15
258	Kamjanets-Podilskyi	100	2006-02-15
259	Kamyin	80	2006-02-15
260	Kanazawa	50	2006-02-15
261	Kanchrapara	44	2006-02-15
262	Kansas City	103	2006-02-15
263	Karnal	44	2006-02-15
264	Katihar	44	2006-02-15
265	Kermanshah	46	2006-02-15
266	Kilis	97	2006-02-15
267	Kimberley	85	2006-02-15
268	Kimchon	86	2006-02-15
269	Kingstown	81	2006-02-15
270	Kirovo-Tepetsk	80	2006-02-15
271	Kisumu	52	2006-02-15
272	Kitwe	109	2006-02-15
273	Klerksdorp	85	2006-02-15
274	Kolpino	80	2006-02-15
275	Konotop	100	2006-02-15
276	Koriyama	50	2006-02-15
277	Korla	23	2006-02-15
278	Korolev	80	2006-02-15
279	Kowloon and New Kowloon	42	2006-02-15
280	Kragujevac	108	2006-02-15
281	Ktahya	97	2006-02-15
282	Kuching	59	2006-02-15
283	Kumbakonam	44	2006-02-15
284	Kurashiki	50	2006-02-15
285	Kurgan	80	2006-02-15
286	Kursk	80	2006-02-15
287	Kuwana	50	2006-02-15
288	La Paz	60	2006-02-15
289	La Plata	6	2006-02-15
290	La Romana	27	2006-02-15
291	Laiwu	23	2006-02-15
292	Lancaster	103	2006-02-15
293	Laohekou	23	2006-02-15
294	Lapu-Lapu	75	2006-02-15
295	Laredo	103	2006-02-15
296	Lausanne	91	2006-02-15
297	Le Mans	34	2006-02-15
298	Lengshuijiang	23	2006-02-15
299	Leshan	23	2006-02-15
300	Lethbridge	20	2006-02-15
301	Lhokseumawe	45	2006-02-15
302	Liaocheng	23	2006-02-15
303	Liepaja	54	2006-02-15
304	Lilongwe	58	2006-02-15
305	Lima	74	2006-02-15
306	Lincoln	103	2006-02-15
307	Linz	9	2006-02-15
308	Lipetsk	80	2006-02-15
309	Livorno	49	2006-02-15
310	Ljubertsy	80	2006-02-15
311	Loja	28	2006-02-15
312	London	102	2006-02-15
313	London	20	2006-02-15
314	Lublin	76	2006-02-15
315	Lubumbashi	25	2006-02-15
316	Lungtan	92	2006-02-15
317	Luzinia	15	2006-02-15
318	Madiun	45	2006-02-15
319	Mahajanga	57	2006-02-15
320	Maikop	80	2006-02-15
321	Malm	90	2006-02-15
322	Manchester	103	2006-02-15
323	Mandaluyong	75	2006-02-15
324	Mandi Bahauddin	72	2006-02-15
325	Mannheim	38	2006-02-15
326	Maracabo	104	2006-02-15
327	Mardan	72	2006-02-15
328	Maring	15	2006-02-15
329	Masqat	71	2006-02-15
330	Matamoros	60	2006-02-15
331	Matsue	50	2006-02-15
332	Meixian	23	2006-02-15
333	Memphis	103	2006-02-15
334	Merlo	6	2006-02-15
335	Mexicali	60	2006-02-15
336	Miraj	44	2006-02-15
337	Mit Ghamr	29	2006-02-15
338	Miyakonojo	50	2006-02-15
339	Mogiljov	13	2006-02-15
340	Molodetno	13	2006-02-15
341	Monclova	60	2006-02-15
342	Monywa	64	2006-02-15
343	Moscow	80	2006-02-15
344	Mosul	47	2006-02-15
345	Mukateve	100	2006-02-15
346	Munger (Monghyr)	44	2006-02-15
347	Mwanza	93	2006-02-15
348	Mwene-Ditu	25	2006-02-15
349	Myingyan	64	2006-02-15
350	Mysore	44	2006-02-15
351	Naala-Porto	63	2006-02-15
352	Nabereznyje Telny	80	2006-02-15
353	Nador	62	2006-02-15
354	Nagaon	44	2006-02-15
355	Nagareyama	50	2006-02-15
356	Najafabad	46	2006-02-15
357	Naju	86	2006-02-15
358	Nakhon Sawan	94	2006-02-15
359	Nam Dinh	105	2006-02-15
360	Namibe	4	2006-02-15
361	Nantou	92	2006-02-15
362	Nanyang	23	2006-02-15
363	NDjamna	21	2006-02-15
364	Newcastle	85	2006-02-15
365	Nezahualcyotl	60	2006-02-15
366	Nha Trang	105	2006-02-15
367	Niznekamsk	80	2006-02-15
368	Novi Sad	108	2006-02-15
369	Novoterkassk	80	2006-02-15
370	Nukualofa	95	2006-02-15
371	Nuuk	40	2006-02-15
372	Nyeri	52	2006-02-15
373	Ocumare del Tuy	104	2006-02-15
374	Ogbomosho	69	2006-02-15
375	Okara	72	2006-02-15
376	Okayama	50	2006-02-15
377	Okinawa	50	2006-02-15
378	Olomouc	26	2006-02-15
379	Omdurman	89	2006-02-15
380	Omiya	50	2006-02-15
381	Ondo	69	2006-02-15
382	Onomichi	50	2006-02-15
383	Oshawa	20	2006-02-15
384	Osmaniye	97	2006-02-15
385	ostka	100	2006-02-15
386	Otsu	50	2006-02-15
387	Oulu	33	2006-02-15
388	Ourense (Orense)	87	2006-02-15
389	Owo	69	2006-02-15
390	Oyo	69	2006-02-15
391	Ozamis	75	2006-02-15
392	Paarl	85	2006-02-15
393	Pachuca de Soto	60	2006-02-15
394	Pak Kret	94	2006-02-15
395	Palghat (Palakkad)	44	2006-02-15
396	Pangkal Pinang	45	2006-02-15
397	Papeete	36	2006-02-15
398	Parbhani	44	2006-02-15
399	Pathankot	44	2006-02-15
400	Patiala	44	2006-02-15
401	Patras	39	2006-02-15
402	Pavlodar	51	2006-02-15
403	Pemalang	45	2006-02-15
404	Peoria	103	2006-02-15
405	Pereira	24	2006-02-15
406	Phnom Penh	18	2006-02-15
407	Pingxiang	23	2006-02-15
408	Pjatigorsk	80	2006-02-15
409	Plock	76	2006-02-15
410	Po	15	2006-02-15
411	Ponce	77	2006-02-15
412	Pontianak	45	2006-02-15
413	Poos de Caldas	15	2006-02-15
414	Portoviejo	28	2006-02-15
415	Probolinggo	45	2006-02-15
416	Pudukkottai	44	2006-02-15
417	Pune	44	2006-02-15
418	Purnea (Purnia)	44	2006-02-15
419	Purwakarta	45	2006-02-15
420	Pyongyang	70	2006-02-15
421	Qalyub	29	2006-02-15
422	Qinhuangdao	23	2006-02-15
423	Qomsheh	46	2006-02-15
424	Quilmes	6	2006-02-15
425	Rae Bareli	44	2006-02-15
426	Rajkot	44	2006-02-15
427	Rampur	44	2006-02-15
428	Rancagua	22	2006-02-15
429	Ranchi	44	2006-02-15
430	Richmond Hill	20	2006-02-15
431	Rio Claro	15	2006-02-15
432	Rizhao	23	2006-02-15
433	Roanoke	103	2006-02-15
434	Robamba	28	2006-02-15
435	Rockford	103	2006-02-15
436	Ruse	17	2006-02-15
437	Rustenburg	85	2006-02-15
438	s-Hertogenbosch	67	2006-02-15
439	Saarbrcken	38	2006-02-15
440	Sagamihara	50	2006-02-15
441	Saint Louis	103	2006-02-15
442	Saint-Denis	79	2006-02-15
443	Sal	62	2006-02-15
444	Salala	71	2006-02-15
445	Salamanca	60	2006-02-15
446	Salinas	103	2006-02-15
447	Salzburg	9	2006-02-15
448	Sambhal	44	2006-02-15
449	San Bernardino	103	2006-02-15
450	San Felipe de Puerto Plata	27	2006-02-15
451	San Felipe del Progreso	60	2006-02-15
452	San Juan Bautista Tuxtepec	60	2006-02-15
453	San Lorenzo	73	2006-02-15
454	San Miguel de Tucumn	6	2006-02-15
455	Sanaa	107	2006-02-15
456	Santa Brbara dOeste	15	2006-02-15
457	Santa F	6	2006-02-15
458	Santa Rosa	75	2006-02-15
459	Santiago de Compostela	87	2006-02-15
460	Santiago de los Caballeros	27	2006-02-15
461	Santo Andr	15	2006-02-15
462	Sanya	23	2006-02-15
463	Sasebo	50	2006-02-15
464	Satna	44	2006-02-15
465	Sawhaj	29	2006-02-15
466	Serpuhov	80	2006-02-15
467	Shahr-e Kord	46	2006-02-15
468	Shanwei	23	2006-02-15
469	Shaoguan	23	2006-02-15
470	Sharja	101	2006-02-15
471	Shenzhen	23	2006-02-15
472	Shikarpur	72	2006-02-15
473	Shimoga	44	2006-02-15
474	Shimonoseki	50	2006-02-15
475	Shivapuri	44	2006-02-15
476	Shubra al-Khayma	29	2006-02-15
477	Siegen	38	2006-02-15
478	Siliguri (Shiliguri)	44	2006-02-15
479	Simferopol	100	2006-02-15
480	Sincelejo	24	2006-02-15
481	Sirjan	46	2006-02-15
482	Sivas	97	2006-02-15
483	Skikda	2	2006-02-15
484	Smolensk	80	2006-02-15
485	So Bernardo do Campo	15	2006-02-15
486	So Leopoldo	15	2006-02-15
487	Sogamoso	24	2006-02-15
488	Sokoto	69	2006-02-15
489	Songkhla	94	2006-02-15
490	Sorocaba	15	2006-02-15
491	Soshanguve	85	2006-02-15
492	Sousse	96	2006-02-15
493	South Hill	5	2006-02-15
494	Southampton	102	2006-02-15
495	Southend-on-Sea	102	2006-02-15
496	Southport	102	2006-02-15
497	Springs	85	2006-02-15
498	Stara Zagora	17	2006-02-15
499	Sterling Heights	103	2006-02-15
500	Stockport	102	2006-02-15
501	Sucre	14	2006-02-15
502	Suihua	23	2006-02-15
503	Sullana	74	2006-02-15
504	Sultanbeyli	97	2006-02-15
505	Sumqayit	10	2006-02-15
506	Sumy	100	2006-02-15
507	Sungai Petani	59	2006-02-15
508	Sunnyvale	103	2006-02-15
509	Surakarta	45	2006-02-15
510	Syktyvkar	80	2006-02-15
511	Syrakusa	49	2006-02-15
512	Szkesfehrvr	43	2006-02-15
513	Tabora	93	2006-02-15
514	Tabriz	46	2006-02-15
515	Tabuk	82	2006-02-15
516	Tafuna	3	2006-02-15
517	Taguig	75	2006-02-15
518	Taizz	107	2006-02-15
519	Talavera	75	2006-02-15
520	Tallahassee	103	2006-02-15
521	Tama	50	2006-02-15
522	Tambaram	44	2006-02-15
523	Tanauan	75	2006-02-15
524	Tandil	6	2006-02-15
525	Tangail	12	2006-02-15
526	Tanshui	92	2006-02-15
527	Tanza	75	2006-02-15
528	Tarlac	75	2006-02-15
529	Tarsus	97	2006-02-15
530	Tartu	30	2006-02-15
531	Teboksary	80	2006-02-15
532	Tegal	45	2006-02-15
533	Tel Aviv-Jaffa	48	2006-02-15
534	Tete	63	2006-02-15
535	Tianjin	23	2006-02-15
536	Tiefa	23	2006-02-15
537	Tieli	23	2006-02-15
538	Tokat	97	2006-02-15
539	Tonghae	86	2006-02-15
540	Tongliao	23	2006-02-15
541	Torren	60	2006-02-15
542	Touliu	92	2006-02-15
543	Toulon	34	2006-02-15
544	Toulouse	34	2006-02-15
545	Trshavn	32	2006-02-15
546	Tsaotun	92	2006-02-15
547	Tsuyama	50	2006-02-15
548	Tuguegarao	75	2006-02-15
549	Tychy	76	2006-02-15
550	Udaipur	44	2006-02-15
551	Udine	49	2006-02-15
552	Ueda	50	2006-02-15
553	Uijongbu	86	2006-02-15
554	Uluberia	44	2006-02-15
555	Urawa	50	2006-02-15
556	Uruapan	60	2006-02-15
557	Usak	97	2006-02-15
558	Usolje-Sibirskoje	80	2006-02-15
559	Uttarpara-Kotrung	44	2006-02-15
560	Vaduz	55	2006-02-15
561	Valencia	104	2006-02-15
562	Valle de la Pascua	104	2006-02-15
563	Valle de Santiago	60	2006-02-15
564	Valparai	44	2006-02-15
565	Vancouver	20	2006-02-15
566	Varanasi (Benares)	44	2006-02-15
567	Vicente Lpez	6	2006-02-15
568	Vijayawada	44	2006-02-15
569	Vila Velha	15	2006-02-15
570	Vilnius	56	2006-02-15
571	Vinh	105	2006-02-15
572	Vitria de Santo Anto	15	2006-02-15
573	Warren	103	2006-02-15
574	Weifang	23	2006-02-15
575	Witten	38	2006-02-15
576	Woodridge	8	2006-02-15
577	Wroclaw	76	2006-02-15
578	Xiangfan	23	2006-02-15
579	Xiangtan	23	2006-02-15
580	Xintai	23	2006-02-15
581	Xinxiang	23	2006-02-15
582	Yamuna Nagar	44	2006-02-15
583	Yangor	65	2006-02-15
584	Yantai	23	2006-02-15
585	Yaound	19	2006-02-15
586	Yerevan	7	2006-02-15
587	Yinchuan	23	2006-02-15
588	Yingkou	23	2006-02-15
589	York	102	2006-02-15
590	Yuncheng	23	2006-02-15
591	Yuzhou	23	2006-02-15
592	Zalantun	23	2006-02-15
593	Zanzibar	93	2006-02-15
594	Zaoyang	23	2006-02-15
595	Zapopan	60	2006-02-15
596	Zaria	69	2006-02-15
597	Zeleznogorsk	80	2006-02-15
598	Zhezqazghan	51	2006-02-15
599	Zhoushan	23	2006-02-15
600	Ziguinchor	83	2006-02-15
\.


                      4819.dat                                                                                            0000600 0004000 0002000 00000005067 14667106621 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Afghanistan	2006-02-15
2	Algeria	2006-02-15
3	American Samoa	2006-02-15
4	Angola	2006-02-15
5	Anguilla	2006-02-15
6	Argentina	2006-02-15
7	Armenia	2006-02-15
8	Australia	2006-02-15
9	Austria	2006-02-15
10	Azerbaijan	2006-02-15
11	Bahrain	2006-02-15
12	Bangladesh	2006-02-15
13	Belarus	2006-02-15
14	Bolivia	2006-02-15
15	Brazil	2006-02-15
16	Brunei	2006-02-15
17	Bulgaria	2006-02-15
18	Cambodia	2006-02-15
19	Cameroon	2006-02-15
20	Canada	2006-02-15
21	Chad	2006-02-15
22	Chile	2006-02-15
23	China	2006-02-15
24	Colombia	2006-02-15
25	Congo, The Democratic Republic of the	2006-02-15
26	Czech Republic	2006-02-15
27	Dominican Republic	2006-02-15
28	Ecuador	2006-02-15
29	Egypt	2006-02-15
30	Estonia	2006-02-15
31	Ethiopia	2006-02-15
32	Faroe Islands	2006-02-15
33	Finland	2006-02-15
34	France	2006-02-15
35	French Guiana	2006-02-15
36	French Polynesia	2006-02-15
37	Gambia	2006-02-15
38	Germany	2006-02-15
39	Greece	2006-02-15
40	Greenland	2006-02-15
41	Holy See (Vatican City State)	2006-02-15
42	Hong Kong	2006-02-15
43	Hungary	2006-02-15
44	India	2006-02-15
45	Indonesia	2006-02-15
46	Iran	2006-02-15
47	Iraq	2006-02-15
48	Israel	2006-02-15
49	Italy	2006-02-15
50	Japan	2006-02-15
51	Kazakstan	2006-02-15
52	Kenya	2006-02-15
53	Kuwait	2006-02-15
54	Latvia	2006-02-15
55	Liechtenstein	2006-02-15
56	Lithuania	2006-02-15
57	Madagascar	2006-02-15
58	Malawi	2006-02-15
59	Malaysia	2006-02-15
60	Mexico	2006-02-15
61	Moldova	2006-02-15
62	Morocco	2006-02-15
63	Mozambique	2006-02-15
64	Myanmar	2006-02-15
65	Nauru	2006-02-15
66	Nepal	2006-02-15
67	Netherlands	2006-02-15
68	New Zealand	2006-02-15
69	Nigeria	2006-02-15
70	North Korea	2006-02-15
71	Oman	2006-02-15
72	Pakistan	2006-02-15
73	Paraguay	2006-02-15
74	Peru	2006-02-15
75	Philippines	2006-02-15
76	Poland	2006-02-15
77	Puerto Rico	2006-02-15
78	Romania	2006-02-15
79	Runion	2006-02-15
80	Russian Federation	2006-02-15
81	Saint Vincent and the Grenadines	2006-02-15
82	Saudi Arabia	2006-02-15
83	Senegal	2006-02-15
84	Slovakia	2006-02-15
85	South Africa	2006-02-15
86	South Korea	2006-02-15
87	Spain	2006-02-15
88	Sri Lanka	2006-02-15
89	Sudan	2006-02-15
90	Sweden	2006-02-15
91	Switzerland	2006-02-15
92	Taiwan	2006-02-15
93	Tanzania	2006-02-15
94	Thailand	2006-02-15
95	Tonga	2006-02-15
96	Tunisia	2006-02-15
97	Turkey	2006-02-15
98	Turkmenistan	2006-02-15
99	Tuvalu	2006-02-15
100	Ukraine	2006-02-15
101	United Arab Emirates	2006-02-15
102	United Kingdom	2006-02-15
103	United States	2006-02-15
104	Venezuela	2006-02-15
105	Vietnam	2006-02-15
106	Virgin Islands, U.S.	2006-02-15
107	Yemen	2006-02-15
108	Yugoslavia	2006-02-15
109	Zambia	2006-02-15
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         4815.dat                                                                                            0000600 0004000 0002000 00000000545 14667106621 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Exceptional	California Sunset/Twilight Boat Cruise	7 days 6 nights - Small group	$35.62 / person
2	4.96 (672 reviews)	magic mountin	2 days 3 nights - Family	 $48.25 / person
3	4.96 (672 reviews	singapore	 3 days 3 nights - Company	$17.32 / person
4	4.96 (672 reviews)	Grand Canyon Horseshoe Bend 2 days	 7 days 6 nights - Small group	$15.63 / person
\.


                                                                                                                                                           4813.dat                                                                                            0000600 0004000 0002000 00000002104 14667106621 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        18	asdasd	123123	snows@gmail.com	$2b$11$B1dtfykAB3mlw06DB4ESruqchiXYXAIn1Rk/laL1UC/dxYRzPxTTK	$2b$11$B1dtfykAB3mlw06DB4ESruqchiXYXAIn1Rk/laL1UC/dxYRzPxTTK
19	asds	77717123	snows@gmail.com	$2b$11$RAM1H5GJ39XVfPO8cdXpYuFg.uT.eBW9iL3u7xfuTNGRwPqsDAe4q	$2b$11$RAM1H5GJ39XVfPO8cdXpYuFg.uT.eBW9iL3u7xfuTNGRwPqsDAe4q
20	hitham	777296855	snows@gmail.com	$2b$11$wAktmGg.LVSTSldfNal31OkqZIoUxUS6VVJvaDH6Mmo0iX.LsB2be	$2b$11$wAktmGg.LVSTSldfNal31OkqZIoUxUS6VVJvaDH6Mmo0iX.LsB2be
21	gmsnw	123123123	snows@gmail.com	$2b$11$XgUOd2IzCSdsbgLU2GFYG.qtLyXD7UXkeLxOe0FQ2oTwlqriIxJN2	$2b$11$XgUOd2IzCSdsbgLU2GFYG.qtLyXD7UXkeLxOe0FQ2oTwlqriIxJN2
22	aymen	666	snows@gmail.com	$2b$11$Bx/BKudMcM6EsHmZp93/2.JiLHRM6eUNCoRuCbckrhjOaYZlepqsy	$2b$11$Bx/BKudMcM6EsHmZp93/2.JiLHRM6eUNCoRuCbckrhjOaYZlepqsy
23	aymen	123123213	snows@gmail.com	$2b$11$tbTF.AZM46JCue/XA2F8kulc9tpJKLPXJHtUtEYA6d1BQGcxf8TVa	$2b$11$tbTF.AZM46JCue/XA2F8kulc9tpJKLPXJHtUtEYA6d1BQGcxf8TVa
24	aymen	123123	snows@gmail.com	$2b$11$JVLmxUggjkshEnUZmd9F3OVIUL/yWO6/MNPWGqdkaEsVtNNP0zZuS	$2b$11$JVLmxUggjkshEnUZmd9F3OVIUL/yWO6/MNPWGqdkaEsVtNNP0zZuS
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000021305 14667106621 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

DROP DATABASE travel;
--
-- Name: travel; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE travel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE travel OWNER TO postgres;

\connect travel

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
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    address character varying(50),
    address2 character varying(50),
    district character varying(30),
    city_id smallint,
    postal_code character varying(10),
    phone character varying(20),
    last_update date
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.address_address_id_seq OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    city character varying(50),
    country_id smallint,
    last_update date
);


ALTER TABLE public.city OWNER TO postgres;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.city_city_id_seq OWNER TO postgres;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country character varying(50),
    last_update date
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.country_country_id_seq OWNER TO postgres;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: tour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tour (
    id integer NOT NULL,
    reviews character varying,
    place character varying,
    dayes character varying,
    price character varying
);


ALTER TABLE public.tour OWNER TO postgres;

--
-- Name: tour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tour_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tour_id_seq OWNER TO postgres;

--
-- Name: tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tour_id_seq OWNED BY public.tour.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(10),
    phone bigint,
    email character varying(20),
    hashedpass text,
    conformpass text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: tour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tour ALTER COLUMN id SET DEFAULT nextval('public.tour_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM stdin;
\.
COPY public.address (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM '$$PATH$$/4821.dat';

--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (city_id, city, country_id, last_update) FROM stdin;
\.
COPY public.city (city_id, city, country_id, last_update) FROM '$$PATH$$/4817.dat';

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (country_id, country, last_update) FROM stdin;
\.
COPY public.country (country_id, country, last_update) FROM '$$PATH$$/4819.dat';

--
-- Data for Name: tour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tour (id, reviews, place, dayes, price) FROM stdin;
\.
COPY public.tour (id, reviews, place, dayes, price) FROM '$$PATH$$/4815.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, phone, email, hashedpass, conformpass) FROM stdin;
\.
COPY public.users (id, username, phone, email, hashedpass, conformpass) FROM '$$PATH$$/4813.dat';

--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_city_id_seq', 1, false);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);


--
-- Name: tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tour_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 24, true);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: tour tour_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           