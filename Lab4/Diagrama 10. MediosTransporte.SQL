{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Medios_de_Transporte\
(\
  Cod_medios_de_transporte VARCHAR(n) NOT NULL,\
  N\'ba_ruedas INT NOT NULL,\
  PRIMARY KEY (Cod_medios_de_transporte)\
);\
\
CREATE TABLE Anfibio\
(\
  Cod_Vehiculo_Anfibio VARCHAR(n) NOT NULL,\
  Velocidad INT NOT NULL,\
  PRIMARY KEY (Cod_Vehiculo_Anfibio)\
);\
\
CREATE TABLE Aeroterrestre\
(\
  Cod_Vehiculo_Aereo VARCHAR(n) NOT NULL,\
  Velocidad INT NOT NULL,\
  PRIMARY KEY (Cod_Vehiculo_Aereo)\
);\
\
CREATE TABLE Terrestre\
(\
  Cod_medios_de_transporte VARCHAR(n) NOT NULL,\
  Cod_Vehiculo_Anfibio VARCHAR(n) NOT NULL,\
  Cod_Vehiculo_Aereo VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_medios_de_transporte) REFERENCES Medios_de_Transporte(Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_Vehiculo_Anfibio) REFERENCES Anfibio(Cod_Vehiculo_Anfibio),\
  FOREIGN KEY (Cod_Vehiculo_Aereo) REFERENCES Aeroterrestre(Cod_Vehiculo_Aereo)\
);\
\
CREATE TABLE A\'e9reo\
(\
  Cod_medios_de_transporte VARCHAR(n) NOT NULL,\
  Cod_Vehiculo_Aereo VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_medios_de_transporte) REFERENCES Medios_de_Transporte(Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_Vehiculo_Aereo) REFERENCES Aeroterrestre(Cod_Vehiculo_Aereo)\
);\
\
CREATE TABLE Acu\'e1tico\
(\
  Cod_medios_de_transporte VARCHAR(n) NOT NULL,\
  Cod_Vehiculo_Anfibio VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_medios_de_transporte) REFERENCES Medios_de_Transporte(Cod_medios_de_transporte),\
  FOREIGN KEY (Cod_Vehiculo_Anfibio) REFERENCES Anfibio(Cod_Vehiculo_Anfibio)\
);}