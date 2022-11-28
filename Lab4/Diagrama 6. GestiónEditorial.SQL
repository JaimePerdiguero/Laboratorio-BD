{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Empleados\
(\
  DNI CHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  PRIMARY KEY (DNI)\
);\
\
CREATE TABLE Periodistas\
(\
  DNI CHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  PRIMARY KEY (DNI)\
);\
\
CREATE TABLE Sucursal\
(\
  Domicilio CHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  Codigo_sucursal CHAR(n) NOT NULL,\
  DNI CHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_sucursal),\
  FOREIGN KEY (DNI) REFERENCES Empleados(DNI)\
);\
\
CREATE TABLE Revistas\
(\
  T\'edtulo CHAR(n) NOT NULL,\
  N\'ba_de_registro INT NOT NULL,\
  Periodicidad INT NOT NULL,\
  Tipo CHAR(n) NOT NULL,\
  Codigo_sucursal CHAR(n) NOT NULL,\
  PRIMARY KEY (N\'ba_de_registro),\
  FOREIGN KEY (Codigo_sucursal) REFERENCES Sucursal(Codigo_sucursal)\
);\
\
CREATE TABLE Escriben\
(\
  DNI CHAR(n) NOT NULL,\
  N\'ba_de_registro INT NOT NULL,\
  PRIMARY KEY (DNI),\
  FOREIGN KEY (DNI) REFERENCES Periodistas(DNI),\
  FOREIGN KEY (N\'ba_de_registro) REFERENCES Revistas(N\'ba_de_registro)\
);}