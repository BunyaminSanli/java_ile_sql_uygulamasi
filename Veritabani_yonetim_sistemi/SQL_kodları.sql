PGDMP     *    0    
            x            dBase    12.2    12.2 8    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    24791    dBase    DATABASE     �   CREATE DATABASE "dBase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE "dBase";
                postgres    false            �            1259    24828    cookies    TABLE     &  CREATE TABLE public.cookies (
    bekleme_suresi bigint NOT NULL,
    kategori_tercih character varying(20) NOT NULL,
    urun_tercih character varying(20),
    marka_tercih character varying(20),
    satin_alimlar character varying(100)[],
    "kullanici_Id" character varying(10) NOT NULL
);
    DROP TABLE public.cookies;
       public         heap    postgres    false            �            1259    24841    fiyat_grafigi    TABLE     �   CREATE TABLE public.fiyat_grafigi (
    urun_ad character varying(30) NOT NULL,
    urun_fiyat character varying(10) NOT NULL,
    urun_tarih date,
    urun_id character varying(10),
    graf_id character varying(10) NOT NULL
);
 !   DROP TABLE public.fiyat_grafigi;
       public         heap    postgres    false            �            1259    24836    hesap    TABLE     �   CREATE TABLE public.hesap (
    hesap_no character varying(10) NOT NULL,
    kullanici_adi character varying(20) NOT NULL,
    sifre character varying(15) NOT NULL
);
    DROP TABLE public.hesap;
       public         heap    postgres    false            �            1259    24851    iade    TABLE     �   CREATE TABLE public.iade (
    siparis_no character varying(20) NOT NULL,
    iade_kodu character varying(20) NOT NULL,
    iade_tarih character varying(20)
);
    DROP TABLE public.iade;
       public         heap    postgres    false            �            1259    24815    kargo    TABLE     �   CREATE TABLE public.kargo (
    kargo_sirketi character varying(20),
    siparis_takip_no character varying(15) NOT NULL,
    siparis_suresi character varying(10)
);
    DROP TABLE public.kargo;
       public         heap    postgres    false            �            1259    24820    kategori    TABLE     �   CREATE TABLE public.kategori (
    kategori_id character varying(10) NOT NULL,
    kategori_ismi character varying(30) NOT NULL
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    24846    kisi    TABLE     �   CREATE TABLE public.kisi (
    kisi_id character varying(10) NOT NULL,
    kisi_turu character varying(10),
    adres character varying(10)
);
    DROP TABLE public.kisi;
       public         heap    postgres    false            �            1259    24823    marka    TABLE     z   CREATE TABLE public.marka (
    marka_id character varying(20) NOT NULL,
    marka_ismi character varying(30) NOT NULL
);
    DROP TABLE public.marka;
       public         heap    postgres    false            �            1259    24792    musteri    TABLE     �   CREATE TABLE public.musteri (
    "musteri_Id" character varying(10) NOT NULL,
    musteri_ad character varying(20) NOT NULL,
    musteri_telno character varying(11),
    musteri_adres character varying(30),
    musteri_yas character varying(3)
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            �            1259    24905    musteri_hizmetleri    TABLE       CREATE TABLE public.musteri_hizmetleri (
    calisan_id character varying(10) NOT NULL,
    musteri_id character varying(10) NOT NULL,
    urun_id character varying(10),
    sorun character varying(500) NOT NULL,
    calisan_ad character varying(20) NOT NULL,
    tarih date
);
 &   DROP TABLE public.musteri_hizmetleri;
       public         heap    postgres    false            �            1259    24797    satici    TABLE       CREATE TABLE public.satici (
    satici_ad character varying(15) NOT NULL,
    satici_telno character varying(11),
    satici_adres character varying(30),
    satici_puan double precision,
    iletisim_kisisi character varying,
    satici_id character varying(10)
);
    DROP TABLE public.satici;
       public         heap    postgres    false            �            1259    24923    sikayet    TABLE     �   CREATE TABLE public.sikayet (
    sikayet_no character varying(10) NOT NULL,
    musteri_no character varying(10) NOT NULL,
    urun_no character varying(10) NOT NULL,
    sikayet_metni character varying(500)
);
    DROP TABLE public.sikayet;
       public         heap    postgres    false            �            1259    24810    siparis    TABLE     �   CREATE TABLE public.siparis (
    siparis_no character varying(15) NOT NULL,
    siparis_adres character varying(50) NOT NULL,
    siparis_tarih date NOT NULL,
    urun_no character varying(10) NOT NULL
);
    DROP TABLE public.siparis;
       public         heap    postgres    false            �            1259    24805    urun    TABLE     �   CREATE TABLE public.urun (
    urun_id character varying(10) NOT NULL,
    urun_adi character varying(50) NOT NULL,
    urun_kategori character varying(20),
    urun_puan double precision,
    urun_stok boolean,
    urun_fiyat bigint
);
    DROP TABLE public.urun;
       public         heap    postgres    false            �            1259    24892    yorum    TABLE     �   CREATE TABLE public.yorum (
    yorum_id character varying(20) NOT NULL,
    urun_no character varying(10) NOT NULL,
    kullanici_id character varying(10) NOT NULL,
    yorum character varying(500) NOT NULL
);
    DROP TABLE public.yorum;
       public         heap    postgres    false            a          0    24828    cookies 
   TABLE DATA           |   COPY public.cookies (bekleme_suresi, kategori_tercih, urun_tercih, marka_tercih, satin_alimlar, "kullanici_Id") FROM stdin;
    public          postgres    false    209   UB       c          0    24841    fiyat_grafigi 
   TABLE DATA           Z   COPY public.fiyat_grafigi (urun_ad, urun_fiyat, urun_tarih, urun_id, graf_id) FROM stdin;
    public          postgres    false    211   rB       b          0    24836    hesap 
   TABLE DATA           ?   COPY public.hesap (hesap_no, kullanici_adi, sifre) FROM stdin;
    public          postgres    false    210   �B       e          0    24851    iade 
   TABLE DATA           A   COPY public.iade (siparis_no, iade_kodu, iade_tarih) FROM stdin;
    public          postgres    false    213   �B       ^          0    24815    kargo 
   TABLE DATA           P   COPY public.kargo (kargo_sirketi, siparis_takip_no, siparis_suresi) FROM stdin;
    public          postgres    false    206   �B       _          0    24820    kategori 
   TABLE DATA           >   COPY public.kategori (kategori_id, kategori_ismi) FROM stdin;
    public          postgres    false    207   �B       d          0    24846    kisi 
   TABLE DATA           9   COPY public.kisi (kisi_id, kisi_turu, adres) FROM stdin;
    public          postgres    false    212   C       `          0    24823    marka 
   TABLE DATA           5   COPY public.marka (marka_id, marka_ismi) FROM stdin;
    public          postgres    false    208    C       Z          0    24792    musteri 
   TABLE DATA           f   COPY public.musteri ("musteri_Id", musteri_ad, musteri_telno, musteri_adres, musteri_yas) FROM stdin;
    public          postgres    false    202   =C       g          0    24905    musteri_hizmetleri 
   TABLE DATA           g   COPY public.musteri_hizmetleri (calisan_id, musteri_id, urun_id, sorun, calisan_ad, tarih) FROM stdin;
    public          postgres    false    215   �C       [          0    24797    satici 
   TABLE DATA           p   COPY public.satici (satici_ad, satici_telno, satici_adres, satici_puan, iletisim_kisisi, satici_id) FROM stdin;
    public          postgres    false    203   �C       h          0    24923    sikayet 
   TABLE DATA           Q   COPY public.sikayet (sikayet_no, musteri_no, urun_no, sikayet_metni) FROM stdin;
    public          postgres    false    216   1D       ]          0    24810    siparis 
   TABLE DATA           T   COPY public.siparis (siparis_no, siparis_adres, siparis_tarih, urun_no) FROM stdin;
    public          postgres    false    205   ND       \          0    24805    urun 
   TABLE DATA           b   COPY public.urun (urun_id, urun_adi, urun_kategori, urun_puan, urun_stok, urun_fiyat) FROM stdin;
    public          postgres    false    204   kD       f          0    24892    yorum 
   TABLE DATA           G   COPY public.yorum (yorum_id, urun_no, kullanici_id, yorum) FROM stdin;
    public          postgres    false    214   �D       �
           2606    24886     fiyat_grafigi fiyat_grafigi_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fiyat_grafigi
    ADD CONSTRAINT fiyat_grafigi_pkey PRIMARY KEY (graf_id);
 J   ALTER TABLE ONLY public.fiyat_grafigi DROP CONSTRAINT fiyat_grafigi_pkey;
       public            postgres    false    211            �
           2606    24840    hesap hesap_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_pkey PRIMARY KEY (hesap_no);
 :   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_pkey;
       public            postgres    false    210            �
           2606    24819    kargo kargo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kargo
    ADD CONSTRAINT kargo_pkey PRIMARY KEY (siparis_takip_no);
 :   ALTER TABLE ONLY public.kargo DROP CONSTRAINT kargo_pkey;
       public            postgres    false    206            �
           2606    24952    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    207            �
           2606    24850    kisi kisi_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.kisi
    ADD CONSTRAINT kisi_pkey PRIMARY KEY (kisi_id);
 8   ALTER TABLE ONLY public.kisi DROP CONSTRAINT kisi_pkey;
       public            postgres    false    212            �
           2606    24827    marka marka_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.marka
    ADD CONSTRAINT marka_pkey PRIMARY KEY (marka_id);
 :   ALTER TABLE ONLY public.marka DROP CONSTRAINT marka_pkey;
       public            postgres    false    208            �
           2606    24912 *   musteri_hizmetleri musteri_hizmetleri_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.musteri_hizmetleri
    ADD CONSTRAINT musteri_hizmetleri_pkey PRIMARY KEY (calisan_id);
 T   ALTER TABLE ONLY public.musteri_hizmetleri DROP CONSTRAINT musteri_hizmetleri_pkey;
       public            postgres    false    215            �
           2606    24796    musteri musteri_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_pkey PRIMARY KEY ("musteri_Id");
 >   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_pkey;
       public            postgres    false    202            �
           2606    24930    sikayet sikayet_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sikayet
    ADD CONSTRAINT sikayet_pkey PRIMARY KEY (sikayet_no);
 >   ALTER TABLE ONLY public.sikayet DROP CONSTRAINT sikayet_pkey;
       public            postgres    false    216            �
           2606    24814    siparis siparis_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_pkey PRIMARY KEY (siparis_no);
 >   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_pkey;
       public            postgres    false    205            �
           2606    24809    urun urun_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.urun
    ADD CONSTRAINT urun_pkey PRIMARY KEY (urun_id);
 8   ALTER TABLE ONLY public.urun DROP CONSTRAINT urun_pkey;
       public            postgres    false    204            �
           2606    24899    yorum yorum_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_pkey PRIMARY KEY (yorum_id);
 :   ALTER TABLE ONLY public.yorum DROP CONSTRAINT yorum_pkey;
       public            postgres    false    214            �
           2606    24900    yorum kullanici_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT kullanici_id FOREIGN KEY (kullanici_id) REFERENCES public.musteri("musteri_Id");
 <   ALTER TABLE ONLY public.yorum DROP CONSTRAINT kullanici_id;
       public          postgres    false    214    2747    202            �
           2606    24941    cookies kullanici_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cookies
    ADD CONSTRAINT kullanici_id FOREIGN KEY ("kullanici_Id") REFERENCES public.musteri("musteri_Id") NOT VALID;
 >   ALTER TABLE ONLY public.cookies DROP CONSTRAINT kullanici_id;
       public          postgres    false    202    2747    209            �
           2606    24913    musteri_hizmetleri musteri_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.musteri_hizmetleri
    ADD CONSTRAINT musteri_id FOREIGN KEY (musteri_id) REFERENCES public.musteri("musteri_Id");
 G   ALTER TABLE ONLY public.musteri_hizmetleri DROP CONSTRAINT musteri_id;
       public          postgres    false    2747    202    215            �
           2606    24931    sikayet musteri_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.sikayet
    ADD CONSTRAINT musteri_no FOREIGN KEY (musteri_no) REFERENCES public.musteri("musteri_Id");
 <   ALTER TABLE ONLY public.sikayet DROP CONSTRAINT musteri_no;
       public          postgres    false    2747    216    202            �
           2606    24859    satici satici_id    FK CONSTRAINT        ALTER TABLE ONLY public.satici
    ADD CONSTRAINT satici_id FOREIGN KEY (satici_id) REFERENCES public.kisi(kisi_id) NOT VALID;
 :   ALTER TABLE ONLY public.satici DROP CONSTRAINT satici_id;
       public          postgres    false    212    2763    203            �
           2606    24854    iade siparis_no    FK CONSTRAINT     {   ALTER TABLE ONLY public.iade
    ADD CONSTRAINT siparis_no FOREIGN KEY (siparis_no) REFERENCES public.siparis(siparis_no);
 9   ALTER TABLE ONLY public.iade DROP CONSTRAINT siparis_no;
       public          postgres    false    205    213    2751            �
           2606    24887    fiyat_grafigi urun_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.fiyat_grafigi
    ADD CONSTRAINT urun_id FOREIGN KEY (urun_id) REFERENCES public.urun(urun_id) NOT VALID;
 ?   ALTER TABLE ONLY public.fiyat_grafigi DROP CONSTRAINT urun_id;
       public          postgres    false    2749    211    204            �
           2606    24918    musteri_hizmetleri urun_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.musteri_hizmetleri
    ADD CONSTRAINT urun_id FOREIGN KEY (urun_id) REFERENCES public.urun(urun_id);
 D   ALTER TABLE ONLY public.musteri_hizmetleri DROP CONSTRAINT urun_id;
       public          postgres    false    204    215    2749            �
           2606    24936    sikayet urun_no    FK CONSTRAINT     r   ALTER TABLE ONLY public.sikayet
    ADD CONSTRAINT urun_no FOREIGN KEY (urun_no) REFERENCES public.urun(urun_id);
 9   ALTER TABLE ONLY public.sikayet DROP CONSTRAINT urun_no;
       public          postgres    false    204    216    2749            �
           2606    24946    siparis urun_no    FK CONSTRAINT     |   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT urun_no FOREIGN KEY (urun_no) REFERENCES public.urun(urun_id) NOT VALID;
 9   ALTER TABLE ONLY public.siparis DROP CONSTRAINT urun_no;
       public          postgres    false    204    205    2749            a      x������ � �      c      x������ � �      b      x������ � �      e      x������ � �      ^      x������ � �      _      x������ � �      d      x������ � �      `      x������ � �      Z   h   x�351�05�J��K-P����M��4055��07153��,.I�K*��Q�NLy�o6Wr��rr&f䦖��[����X�[r�'e&)�U1��!W� ��"F      g      x������ � �      [   O   x�+I�������T�M,�N�40531���477��,.I�K*�Q(H�K���г��M��M-Q�<�1'7��3Ə+F��� P-�      h      x������ � �      ]      x������ � �      \      x������ � �      f      x������ � �     