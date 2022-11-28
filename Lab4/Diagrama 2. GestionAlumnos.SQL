{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Alumno\
(\
  Numero_Matricula CHAR(n) NOT NULL,\
  FechaNacimiento DATE NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  Apellidos CHAR(n) NOT NULL,\
  Nombre CHAR(n) NOT NULL,\
  PRIMARY KEY (Numero_Matricula)\
);\
\
CREATE TABLE Profesor\
(\
  ID CHAR(n) NOT NULL,\
  NIF CHAR(n) NOT NULL,\
  Especialidad CHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  PRIMARY KEY (NIF)\
);\
\
CREATE TABLE Asignatura\
(\
  C\'f3digo_Asignatura CHAR(n) NOT NULL,\
  Nombre_Asignatura CHAR(n) NOT NULL,\
  NIF CHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo_Asignatura),\
  FOREIGN KEY (NIF) REFERENCES Profesor(NIF)\
);\
\
CREATE TABLE Matricularse\
(\
  Numero_Matricula CHAR(n) NOT NULL,\
  C\'f3digo_Asignatura CHAR(n) NOT NULL,\
  PRIMARY KEY (Numero_Matricula, C\'f3digo_Asignatura),\
  FOREIGN KEY (Numero_Matricula) REFERENCES Alumno(Numero_Matricula),\
  FOREIGN KEY (C\'f3digo_Asignatura) REFERENCES Asignatura(C\'f3digo_Asignatura)\
);}