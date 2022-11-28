{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Conflicto_\
(\
  Nombre VARCHAR(n) NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  Num_pa\'edses_ INT NOT NULL,\
  PRIMARY KEY (Cod_conflicto)\
);\
\
CREATE TABLE Pa\'edses_\
(\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Nombre)\
);\
\
CREATE TABLE Muertos/heridos\
(\
  Num_muertos INT NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Num_muertos),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto)\
);\
\
CREATE TABLE Econ\'f3micos\
(\
  Materias_primas_disputadas INT NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto)\
);\
\
CREATE TABLE Religiosos\
(\
  Numero_religiones_afectadas INT NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto)\
);\
\
CREATE TABLE Raciales\
(\
  Etnias_enfrentadas INT NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto)\
);\
\
CREATE TABLE Territoriales\
(\
  Numero_regiones_afectadas INT NOT NULL,\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto)\
);\
\
CREATE TABLE Grupos_armados\
(\
  Fecha_incorporaci\'f3n DATE NOT NULL,\
  Fecha_salida DATE NOT NULL,\
  C\'f3digo_armado VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_armado)\
);\
\
CREATE TABLE Organizaciones_mediadoras\
(\
  Fecha_incorporaci\'f3n DATE NOT NULL,\
  Fecha_salida DATE NOT NULL,\
  Nombre_Organizaci\'f3n_ VARCHAR(n) NOT NULL,\
  Gubernamental CHAR(2) NOT NULL,\
  No_gubernamental_ CHAR(2) NOT NULL,\
  internacional CHAR(2) NOT NULL,\
  Personas_desplegadas INT NOT NULL,\
  Medica CHAR(2) NOT NULL,\
  Diplomatica CHAR(2) NOT NULL,\
  Presencial CHAR(2) NOT NULL,\
  Dialoga CHAR(2) NOT NULL,\
  PRIMARY KEY (Nombre_Organizaci\'f3n_)\
);\
\
CREATE TABLE Divisi\'f3n\
(\
  Barcos INT NOT NULL,\
  Hombres INT NOT NULL,\
  Aviones INT NOT NULL,\
  Tanques INT NOT NULL,\
  Bajas INT NOT NULL,\
  Cod_division VARCHAR(n) NOT NULL,\
  C\'f3digo_armado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_division),\
  FOREIGN KEY (C\'f3digo_armado) REFERENCES Grupos_armados(C\'f3digo_armado)\
);\
\
CREATE TABLE Lider_pol\'edtico\
(\
  Nombre VARCHAR(n) NOT NULL,\
  Cod_grupo_armado VARCHAR(n) NOT NULL,\
  Apoyos INT NOT NULL,\
  Dialoga CHAR(2) NOT NULL,\
  C\'f3digo_armado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Nombre),\
  FOREIGN KEY (C\'f3digo_armado) REFERENCES Grupos_armados(C\'f3digo_armado)\
);\
\
CREATE TABLE Traficantes_de_armas\
(\
  Nombre VARCHAR(n) NOT NULL,\
  N\'famero_de_sumistro INT NOT NULL,\
  PRIMARY KEY (Nombre)\
);\
\
CREATE TABLE Jefes_militares\
(\
  Cod_militar VARCHAR(n) NOT NULL,\
  rango VARCHAR(n) NOT NULL,\
  Nombre_Jefe VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_militar),\
  FOREIGN KEY (Nombre) REFERENCES Lider_pol\'edtico(Nombre)\
);\
\
CREATE TABLE Afecta\
(\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto, Nombre),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto),\
  FOREIGN KEY (Nombre) REFERENCES Pa\'edses_(Nombre)\
);\
\
CREATE TABLE Intervienen_\
(\
  Cod_conflicto VARCHAR(n) NOT NULL,\
  C\'f3digo_armado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_conflicto, C\'f3digo_armado),\
  FOREIGN KEY (Cod_conflicto) REFERENCES Conflicto_(Cod_conflicto),\
  FOREIGN KEY (C\'f3digo_armado) REFERENCES Grupos_armados(C\'f3digo_armado)\
);\
\
CREATE TABLE Dialoga\
(\
  Nombre VARCHAR(n) NOT NULL,\
  Nombre_Organizaci\'f3n_ VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Nombre, Nombre_Organizaci\'f3n_),\
  FOREIGN KEY (Nombre) REFERENCES Lider_pol\'edtico(Nombre),\
  FOREIGN KEY (Nombre_Organizaci\'f3n_) REFERENCES Organizaciones_mediadoras(Nombre_Organizaci\'f3n_)\
);\
\
CREATE TABLE _Armas\
(\
  Nombre VARCHAR(n) NOT NULL,\
  Indicador_capacidad INT NOT NULL,\
  Cod_armas VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_armas),\
  FOREIGN KEY (Nombre) REFERENCES Traficantes_de_armas(Nombre)\
);\
\
CREATE TABLE Suministran\
(\
  N\'famero_total INT NOT NULL,\
  Cod_armas VARCHAR(n) NOT NULL,\
  C\'f3digo_armado VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Cod_armas, C\'f3digo_armado),\
  FOREIGN KEY (Cod_armas) REFERENCES _Armas(Cod_armas),\
  FOREIGN KEY (C\'f3digo_armado) REFERENCES Grupos_armados(C\'f3digo_armado)\
);}