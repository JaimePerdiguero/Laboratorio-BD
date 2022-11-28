{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Registro\
(\
  Cod_registro VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_registro)\
);\
\
CREATE TABLE Algoritmo\
(\
  C\'f3digo_Algoritmo VARCHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_Algoritmo)\
);\
\
CREATE TABLE Criptomoneda\
(\
  Codigo_Criptomoneda VARCHAR(n) NOT NULL,\
  C\'f3digo_Algoritmo VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_Criptomoneda),\
  FOREIGN KEY (C\'f3digo_Algoritmo) REFERENCES Algoritmo(C\'f3digo_Algoritmo)\
);\
\
CREATE TABLE Wallet\
(\
  Clave_P\'fablica VARCHAR(n) NOT NULL,\
  Clave_Privada VARCHAR(n) NOT NULL,\
  Cod_registro VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Clave_P\'fablica),\
  FOREIGN KEY (Cod_registro) REFERENCES Registro(Cod_registro)\
);\
\
CREATE TABLE Propietario\
(\
  NIF VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Clave_P\'fablica VARCHAR(n) NOT NULL,\
  Codigo_Criptomoneda VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Clave_P\'fablica),\
  FOREIGN KEY (Clave_P\'fablica) REFERENCES Wallet(Clave_P\'fablica),\
  FOREIGN KEY (Codigo_Criptomoneda) REFERENCES Criptomoneda(Codigo_Criptomoneda),\
  UNIQUE (NIF)\
);\
\
CREATE TABLE Usuario\
(\
  Cod_usuario VARCHAR(n) NOT NULL,\
  Clave_P\'fablica VARCHAR(n) NOT NULL,\
  Cod_registro VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Clave_P\'fablica),\
  FOREIGN KEY (Clave_P\'fablica) REFERENCES Wallet(Clave_P\'fablica),\
  FOREIGN KEY (Cod_registro) REFERENCES Registro(Cod_registro),\
  UNIQUE (Cod_usuario)\
);\
\
CREATE TABLE Transacciones_Digitales\
(\
  Cod_Transacci\'f3n VARCHAR(n) NOT NULL,\
  C\'f3digo_Algoritmo VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Transacci\'f3n),\
  FOREIGN KEY (C\'f3digo_Algoritmo) REFERENCES Algoritmo(C\'f3digo_Algoritmo)\
);\
\
CREATE TABLE Ingresos\
(\
  Cod_Transacci\'f3n VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Transacci\'f3n),\
  FOREIGN KEY (Cod_Transacci\'f3n) REFERENCES Transacciones_Digitales(Cod_Transacci\'f3n)\
);\
\
CREATE TABLE Intercambios\
(\
  Cod_Transacci\'f3n VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Transacci\'f3n),\
  FOREIGN KEY (Cod_Transacci\'f3n) REFERENCES Transacciones_Digitales(Cod_Transacci\'f3n)\
);\
\
CREATE TABLE Pagos\
(\
  Cod_Transacci\'f3n VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Transacci\'f3n),\
  FOREIGN KEY (Cod_Transacci\'f3n) REFERENCES Transacciones_Digitales(Cod_Transacci\'f3n)\
);}