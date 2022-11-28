{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Municipio\
(\
  _Cod_municipio CHAR(n) NOT NULL,\
  Denominaci\'f3n CHAR(n) NOT NULL,\
  coordenadas_GPS CHAR(n) NOT NULL,\
  PRIMARY KEY (_Cod_municipio)\
);\
\
CREATE TABLE Persona\
(\
  NIF CHAR(n) NOT NULL,\
  Nombre CHAR(n) NOT NULL,\
  Apellido_1 CHAR(n) NOT NULL,\
  Apellido_2 CHAR(n) NOT NULL,\
  Fecha_nacimiento DATE NOT NULL,\
  Sexo CHAR(n) NOT NULL,\
  Cod_catastral CHAR(n) NOT NULL,\
  _Cod_municipio CHAR(n) NOT NULL,\
  Ser_cabeza_de_familia_NIF CHAR(n) NOT NULL,\
  PRIMARY KEY (NIF),\
  FOREIGN KEY (Cod_catastral) REFERENCES Vivienda(Cod_catastral),\
  FOREIGN KEY (_Cod_municipio) REFERENCES Municipio(_Cod_municipio),\
  FOREIGN KEY (Ser_cabeza_de_familia_NIF) REFERENCES Persona(NIF)\
);\
\
CREATE TABLE Vivienda\
(\
  Cod_catastral CHAR(n) NOT NULL,\
  M^2 INT NOT NULL,\
  Num_habitaciones INT NOT NULL,\
  Cos_postal INT NOT NULL,\
  Piso INT NOT NULL,\
  Puerta CHAR(n) NOT NULL,\
  Portal INT NOT NULL,\
  Calle CHAR(n) NOT NULL,\
  Orientaci\'f3n CHAR(n) NOT NULL,\
  Cod_registral INT NOT NULL,\
  NIF CHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_catastral),\
  FOREIGN KEY (NIF) REFERENCES Persona(NIF)\
);\
\
CREATE TABLE Persona_Nacionalidad\
(\
  Nacionalidad INT NOT NULL,\
  NIF CHAR(n) NOT NULL,\
  PRIMARY KEY (Nacionalidad, NIF),\
  FOREIGN KEY (NIF) REFERENCES Persona(NIF)\
);}