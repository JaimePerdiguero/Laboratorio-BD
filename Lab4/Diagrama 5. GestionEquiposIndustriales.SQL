{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Cliente\
(\
  NIF VARCHAR(9) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Direcci\'f3n VARCHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  Fecha_de_Compra DATE NOT NULL,\
  PRIMARY KEY (NIF)\
);\
\
CREATE TABLE Empresa\
(\
  CodEmpresa VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (CodEmpresa)\
);\
\
CREATE TABLE Equipo_Industrial\
(\
  C\'f3digo VARCHAR(n) NOT NULL,\
  N\'ba_trabajadores INT NOT NULL,\
  NIF VARCHAR(9) NOT NULL,\
  PRIMARY KEY (C\'f3digo),\
  FOREIGN KEY (NIF) REFERENCES Cliente(NIF)\
);\
\
CREATE TABLE Instalador\
(\
  NIF VARCHAR(9) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Direcci\'f3n VARCHAR(n) NOT NULL,\
  Telefono INT NOT NULL,\
  Numero_de_dormitorios_montados INT NOT NULL,\
  Fecha DATE NOT NULL,\
  Hora INT NOT NULL,\
  Fecha DATE NOT NULL,\
  Hora INT NOT NULL,\
  C\'f3digo VARCHAR(n) NOT NULL,\
  CodEmpresa VARCHAR(n) NOT NULL,\
  PRIMARY KEY (NIF),\
  FOREIGN KEY (C\'f3digo) REFERENCES Equipo_Industrial(C\'f3digo),\
  FOREIGN KEY (CodEmpresa) REFERENCES Empresa(CodEmpresa)\
);\
\
CREATE TABLE Dormitorio\
(\
  CodDormitorio VARCHAR(n) NOT NULL,\
  M2 INT NOT NULL,\
  NIF VARCHAR(9) NOT NULL,\
  PRIMARY KEY (CodDormitorio),\
  FOREIGN KEY (NIF) REFERENCES Instalador(NIF)\
);}