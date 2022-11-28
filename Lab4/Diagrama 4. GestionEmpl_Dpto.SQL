{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Departamento\
(\
  C\'f3digo CHAR(n) NOT NULL,\
  Localizaci\'f3n CHAR(n) NOT NULL,\
  PRIMARY KEY (C\'f3digo)\
);\
\
CREATE TABLE Empleado\
(\
  Id_e CHAR(n) NOT NULL,\
  DNI CHAR(n) NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  Salario FLOAT NOT NULL,\
  C\'f3digo CHAR(n) NOT NULL,\
  ser_jefe_Id_e CHAR(n) NOT NULL,\
  PRIMARY KEY (Id_e),\
  FOREIGN KEY (C\'f3digo) REFERENCES Departamento(C\'f3digo),\
  FOREIGN KEY (ser_jefe_Id_e) REFERENCES Empleado(Id_e)\
);}