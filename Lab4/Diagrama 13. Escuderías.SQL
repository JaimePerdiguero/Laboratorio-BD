{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Motor\
(\
  Cod_motor VARCHAR(n) NOT NULL,\
  Consumo INT NOT NULL,\
  Autonomia INT NOT NULL,\
  PRIMARY KEY (Cod_motor)\
);\
\
CREATE TABLE H\'edbrido\
(\
  Cod_motor VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_motor),\
  FOREIGN KEY (Cod_motor) REFERENCES Motor(Cod_motor)\
);\
\
CREATE TABLE T\'e9rmico\
(\
  Cod_motor VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_motor),\
  FOREIGN KEY (Cod_motor) REFERENCES Motor(Cod_motor)\
);\
\
CREATE TABLE El\'e9ctrico\
(\
  Cod_motor VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_motor),\
  FOREIGN KEY (Cod_motor) REFERENCES Motor(Cod_motor)\
);\
\
CREATE TABLE Fabricante\
(\
  Cod_fabricante VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_fabricante)\
);\
\
CREATE TABLE Escuder\'eda\
(\
  Cod_escuderia VARCHAR(n) NOT NULL,\
  Productora VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_escuderia)\
);\
\
CREATE TABLE Fabricar\
(\
  Cod_fabricante VARCHAR(n) NOT NULL,\
  Cod_motor VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_fabricante, Cod_motor),\
  FOREIGN KEY (Cod_fabricante) REFERENCES Fabricante(Cod_fabricante),\
  FOREIGN KEY (Cod_motor) REFERENCES Motor(Cod_motor)\
);\
\
CREATE TABLE Coche\
(\
  Cod_coche VARCHAR(n) NOT NULL,\
  Modelo VARCHAR(n) NOT NULL,\
  Cod_escuderia VARCHAR(n) NOT NULL,\
  Cod_motor VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_coche),\
  FOREIGN KEY (Cod_escuderia) REFERENCES Escuder\'eda(Cod_escuderia),\
  FOREIGN KEY (Cod_motor) REFERENCES Motor(Cod_motor)\
);\
\
CREATE TABLE Fabricar\
(\
  Cod_fabricante VARCHAR(n) NOT NULL,\
  Cod_coche VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_fabricante, Cod_coche),\
  FOREIGN KEY (Cod_fabricante) REFERENCES Fabricante(Cod_fabricante),\
  FOREIGN KEY (Cod_coche) REFERENCES Coche(Cod_coche)\
);}