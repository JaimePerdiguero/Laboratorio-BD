{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Motorizaciones\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  Fabricante VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones)\
);\
\
CREATE TABLE Gasolina\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones),\
  FOREIGN KEY (Cod_Motorizaciones) REFERENCES Motorizaciones(Cod_Motorizaciones)\
);\
\
CREATE TABLE El\'e9trico\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones),\
  FOREIGN KEY (Cod_Motorizaciones) REFERENCES Motorizaciones(Cod_Motorizaciones)\
);\
\
CREATE TABLE Diesel\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones),\
  FOREIGN KEY (Cod_Motorizaciones) REFERENCES Motorizaciones(Cod_Motorizaciones)\
);\
\
CREATE TABLE Gas\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones),\
  FOREIGN KEY (Cod_Motorizaciones) REFERENCES Motorizaciones(Cod_Motorizaciones)\
);\
\
CREATE TABLE Hidr\'f3geno\
(\
  Cod_Motorizaciones VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_Motorizaciones),\
  FOREIGN KEY (Cod_Motorizaciones) REFERENCES Motorizaciones(Cod_Motorizaciones)\
);}