{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Documentos_Administrativos\
(\
  C\'f3digo_Documentos.A VARCHAR(n) NOT NULL,\
  N\'ba_paginas INT NOT NULL,\
  PRIMARY KEY (C\'f3digo_Documentos.A)\
);\
\
CREATE TABLE Pago\
(\
  C\'f3digo_Pago VARCHAR(n) NOT NULL,\
  Importe INT NOT NULL,\
  PRIMARY KEY (C\'f3digo_Pago)\
);\
\
CREATE TABLE Grado\
(\
  C\'f3digo_de_Grado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_de_Grado)\
);\
\
CREATE TABLE Curso\
(\
  Cod_curso VARCHAR(n) NOT NULL,\
  C\'f3digo_de_Grado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_curso),\
  FOREIGN KEY (C\'f3digo_de_Grado) REFERENCES Grado(C\'f3digo_de_Grado)\
);\
\
CREATE TABLE Matr\'edcula\
(\
  Codigo_de_matr\'edcula VARCHAR(n) NOT NULL,\
  N\'ba_asignaturas INT NOT NULL,\
  C\'f3digo_Pago VARCHAR(n) NOT NULL,\
  Cod_curso VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_de_matr\'edcula),\
  FOREIGN KEY (C\'f3digo_Pago) REFERENCES Pago(C\'f3digo_Pago),\
  FOREIGN KEY (Cod_curso) REFERENCES Curso(Cod_curso)\
);\
\
CREATE TABLE Alumno\
(\
  NIF VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  C\'f3digo_Documentos.A VARCHAR(n) NOT NULL,\
  Codigo_de_matr\'edcula VARCHAR(n) NOT NULL,\
  PRIMARY KEY (NIF),\
  FOREIGN KEY (C\'f3digo_Documentos.A) REFERENCES Documentos_Administrativos(C\'f3digo_Documentos.A),\
  FOREIGN KEY (Codigo_de_matr\'edcula) REFERENCES Matr\'edcula(Codigo_de_matr\'edcula)\
);\
\
CREATE TABLE Tarjeta_Identidad\
(\
  Codigo_Tarjeta VARCHAR(m) NOT NULL,\
  Caducidad DATE NOT NULL,\
  NIF VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_Tarjeta),\
  FOREIGN KEY (NIF) REFERENCES Alumno(NIF)\
);}