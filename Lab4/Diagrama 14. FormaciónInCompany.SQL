{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Curso\
(\
  C\'f3digo_de_curso VARCHAR(n) NOT NULL,\
  Denominacion VARCHAR(n) NOT NULL,\
  Descripci\'f3n VARCHAR(n) NOT NULL,\
  N\'ba_horas INT NOT NULL,\
  Coste FLOAT NOT NULL,\
  PRIMARY KEY (C\'f3digo_de_curso)\
);\
\
CREATE TABLE Prerrequisito\
(\
  Contenido VARCHAR(n) NOT NULL,\
  C\'f3digo_de_curso VARCHAR(n),\
  PRIMARY KEY (Contenido),\
  FOREIGN KEY (C\'f3digo_de_curso) REFERENCES Curso(C\'f3digo_de_curso)\
);\
\
CREATE TABLE Profesor\
(\
  NIF VARCHAR(n) NOT NULL,\
  Fecha_Nacimiento DATE NOT NULL,\
  Nacionalidad VARCHAR(n) NOT NULL,\
  Sexo VARCHAR(n) NOT NULL,\
  N\'ba_de_hijos INT NOT NULL,\
  Salario FLOAT NOT NULL,\
  Acreditaci\'f3n VARCHAR(n) NOT NULL,\
  PRIMARY KEY (NIF)\
);\
\
CREATE TABLE Alumnos\
(\
  NIF VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  C\'f3digo_de_curso VARCHAR(n) NOT NULL,\
  PRIMARY KEY (NIF),\
  FOREIGN KEY (C\'f3digo_de_curso) REFERENCES Curso(C\'f3digo_de_curso)\
);\
\
CREATE TABLE Recomendaci\'f3n\
(\
  Contenido VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Contenido),\
  FOREIGN KEY (Contenido) REFERENCES Prerrequisito(Contenido)\
);\
\
CREATE TABLE Obligatorio\
(\
  Contenido VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Contenido),\
  FOREIGN KEY (Contenido) REFERENCES Prerrequisito(Contenido)\
);\
\
CREATE TABLE Edici\'f3n\
(\
  Lugar VARCHAR(n) NOT NULL,\
  Fecha DATE NOT NULL,\
  Formato VARCHAR(n) NOT NULL,\
  Horario VARCHAR(n) NOT NULL,\
  Numero_de_horas INT NOT NULL,\
  Cod_edici\'f3n VARCHAR(n) NOT NULL,\
  C\'f3digo_de_curso VARCHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_de_curso),\
  FOREIGN KEY (C\'f3digo_de_curso) REFERENCES Curso(C\'f3digo_de_curso),\
  UNIQUE (Cod_edici\'f3n)\
);\
\
CREATE TABLE Imparte\
(\
  C\'f3digo_de_curso VARCHAR(n) NOT NULL,\
  NIF VARCHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_de_curso, NIF),\
  FOREIGN KEY (C\'f3digo_de_curso) REFERENCES Curso(C\'f3digo_de_curso),\
  FOREIGN KEY (NIF) REFERENCES Profesor(NIF)\
);}