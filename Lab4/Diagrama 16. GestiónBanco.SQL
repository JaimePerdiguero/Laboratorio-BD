{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Banco\
(\
  Cod_banco INT NOT NULL,\
  PRIMARY KEY (Cod_banco)\
);\
\
CREATE TABLE Sucursales\
(\
  Nombre VARCHAR(n) NOT NULL,\
  Ciudad INT NOT NULL,\
  Cod_banco INT NOT NULL,\
  PRIMARY KEY (Nombre),\
  FOREIGN KEY (Cod_banco) REFERENCES Banco(Cod_banco)\
);\
\
CREATE TABLE Activos\
(\
  Cod_activos VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Cod_banco INT NOT NULL,\
  PRIMARY KEY (Cod_activos),\
  FOREIGN KEY (Nombre) REFERENCES Sucursales(Nombre),\
  FOREIGN KEY (Cod_banco) REFERENCES Banco(Cod_banco)\
);\
\
CREATE TABLE Empleados\
(\
  Id_empleado VARCHAR(n) NOT NULL,\
  telefono INT NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
   INT NOT NULL,\
  Id_empleado VARCHAR(n) NOT NULL,\
  Antig\'fcedad_ VARCHAR(n) NOT NULL,\
  dia_ INT NOT NULL,\
  mes INT NOT NULL,\
  a\'f1o INT NOT NULL,\
  Cod_banco INT NOT NULL,\
  PRIMARY KEY (Id_empleado),\
  FOREIGN KEY (Cod_banco) REFERENCES Banco(Cod_banco)\
);\
\
CREATE TABLE Cuentas\
(\
  Apellido_1 VARCHAR(n) NOT NULL,\
  Apellido_2 VARCHAR(n) NOT NULL,\
  N\'famero_de_cuenta VARCHAR(n) NOT NULL,\
  Saldo FLOAT NOT NULL,\
  Dia INT NOT NULL,\
  Mes INT NOT NULL,\
  A\'f1o INT NOT NULL,\
  Cod_banco INT NOT NULL,\
  PRIMARY KEY (N\'famero_de_cuenta),\
  FOREIGN KEY (Cod_banco) REFERENCES Banco(Cod_banco)\
);\
\
CREATE TABLE Cuentas_corrientes\
(\
  Interes INT NOT NULL,\
  N\'famero_de_cuenta VARCHAR(n) NOT NULL,\
  PRIMARY KEY (N\'famero_de_cuenta),\
  FOREIGN KEY (N\'famero_de_cuenta) REFERENCES Cuentas(N\'famero_de_cuenta)\
);\
\
CREATE TABLE Cuentas_ahorro\
(\
  Descubierto INT NOT NULL,\
  N\'famero_de_cuenta VARCHAR(n) NOT NULL,\
  PRIMARY KEY (N\'famero_de_cuenta),\
  FOREIGN KEY (N\'famero_de_cuenta) REFERENCES Cuentas(N\'famero_de_cuenta)\
);\
\
CREATE TABLE Banquero_particular\
(\
  Cod_banquero INT NOT NULL,\
  PRIMARY KEY (Cod_banquero)\
);\
\
CREATE TABLE Responsable_de_prestamos\
(\
  Cod_banquero INT NOT NULL,\
  PRIMARY KEY (Cod_banquero),\
  FOREIGN KEY (Cod_banquero) REFERENCES Banquero_particular(Cod_banquero)\
);\
\
CREATE TABLE Banquero_personal\
(\
  Cod_banquero INT NOT NULL,\
  PRIMARY KEY (Cod_banquero),\
  FOREIGN KEY (Cod_banquero) REFERENCES Banquero_particular(Cod_banquero)\
);\
\
CREATE TABLE Clientes\
(\
  Id-Cliente VARCHAR(n) NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Calle VARCHAR(n) NOT NULL,\
  Ciudad VARCHAR(n) NOT NULL,\
  Cod_banco INT NOT NULL,\
  Cod_banquero INT NOT NULL,\
  PRIMARY KEY (Id-Cliente),\
  FOREIGN KEY (Cod_banco) REFERENCES Banco(Cod_banco),\
  FOREIGN KEY (Cod_banquero) REFERENCES Banquero_particular(Cod_banquero)\
);\
\
CREATE TABLE Prestamos\
(\
  Numero INT NOT NULL,\
  Importe FLOAT NOT NULL,\
  N\'famero_de_pagos INT NOT NULL,\
  Nombre VARCHAR(n) NOT NULL,\
  Id-Cliente VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Numero),\
  FOREIGN KEY (Nombre) REFERENCES Sucursales(Nombre),\
  FOREIGN KEY (Id-Cliente) REFERENCES Clientes(Id-Cliente)\
);\
\
CREATE TABLE Pagos\
(\
  N\'famero_de_pago VARCHAR(n) NOT NULL,\
  Mes INT NOT NULL,\
  Dia INT NOT NULL,\
  A\'f1o INT NOT NULL,\
  Importe FLOAT NOT NULL,\
  Numero INT NOT NULL,\
  PRIMARY KEY (N\'famero_de_pago),\
  FOREIGN KEY (Numero) REFERENCES Prestamos(Numero)\
);\
\
CREATE TABLE Asocian\
(\
  Id-Cliente VARCHAR(n) NOT NULL,\
  N\'famero_de_cuenta VARCHAR(n) NOT NULL,\
  PRIMARY KEY (Id-Cliente, N\'famero_de_cuenta),\
  FOREIGN KEY (Id-Cliente) REFERENCES Clientes(Id-Cliente),\
  FOREIGN KEY (N\'famero_de_cuenta) REFERENCES Cuentas(N\'famero_de_cuenta)\
);}