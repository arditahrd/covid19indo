PGDMP         :        
        x            covid19malay    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    covid19malay    DATABASE     �   CREATE DATABASE covid19malay WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE covid19malay;
                postgres    false            �            1259    49178 	   data_indo    TABLE     �   CREATE TABLE public.data_indo (
    "ID" integer NOT NULL,
    "Province" character varying,
    "Positive" bigint,
    "Cured" bigint,
    "Death" bigint
);
    DROP TABLE public.data_indo;
       public         heap    postgres    false                      0    49178 	   data_indo 
   TABLE DATA           S   COPY public.data_indo ("ID", "Province", "Positive", "Cured", "Death") FROM stdin;
    public          postgres    false    206   �       �
           2606    49185    data_indo data_indo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_indo
    ADD CONSTRAINT data_indo_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.data_indo DROP CONSTRAINT data_indo_pkey;
       public            postgres    false    206                 x�]��n�@���S�	
���c� E�(��P��M!؂%ٰ%}��,9v�`,w��)��O��e!ɬ�<ve�Oe�s(�B.�DZe|Գ=lWOe_NC!�$8�)��Sy-�5�E�39� M,6�~����H�3�Hq�:z(�[=����q��a�w����D��g�n<� h IN"�ٱZ�~�{0'���)Fy]چ,�Y���q��؎x�p7�%���<sn�c1���������������9܂{��2��,�3t�ș'��!��M����4{��kEPw0T����R��}u�U+����Z������������ ��M��{N���c[��B"u�c��E,2P���t��l�I1�-�^�L����7��M3�Xe�ж�>7o5h%X���5��W�Ӏ�'x���յT���y��^?�;H<O"cJ7ߗa{�!R�g�t8@��4)�fØ�ۻ��`%"J��Ki���l��T]Qϧ�O	�n�|`3�V�c!��	����ti�=V:y
��3����     