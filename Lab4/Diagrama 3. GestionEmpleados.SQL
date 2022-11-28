{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Regi\'f3n\
(\
  Nombre_de_Regi\'f3n VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Nombre_de_Regi\'f3n)\
);\
\
CREATE TABLE Localidad\
(\
  Codigo_de_localidad VARCHAR(n) NOT NULL,\
  Nombre_Localidad VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_de_localidad)\
);\
\
CREATE TABLE Empleado\
(\
  DNI VARCHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  Salario INT NOT NULL,\
  Codigo_de_localidad VARCHAR(n) NOT NULL,\
  PRIMARY KEY (DNI),\
  FOREIGN KEY (Codigo_de_localidad) REFERENCES Localidad(Codigo_de_localidad)\
);\
\
CREATE TABLE Provincia\
(\
  Codigo_Provincial VARCHAR(n) NOT NULL,\
  Nombre_Provincia VARCHAR(n) NOT NULL,\
  Nombre_de_Regi\'f3n VARCHAR(n) NOT NULL,\
  Codigo_de_localidad VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo_Provincial),\
  FOREIGN KEY (Nombre_de_Regi\'f3n) REFERENCES Regi\'f3n(Nombre_de_Regi\'f3n),\
  FOREIGN KEY (Codigo_de_localidad) REFERENCES Localidad(Codigo_de_localidad)\
);}