{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c87059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE Proveedores\
(\
  Codigo CHAR(n) NOT NULL,\
  Nombre CHAR(n) NOT NULL,\
  Direcci\'f3n CHAR(n) NOT NULL,\
  tel\'e9fono INT NOT NULL,\
  Web CHAR(n) NOT NULL,\
  PRIMARY KEY (Codigo)\
);\
\
CREATE TABLE Cliente\
(\
  C\'f3digo INT NOT NULL,\
  Nombre INT NOT NULL,\
  Ciudad INT NOT NULL,\
  Calle INT NOT NULL,\
  N\'ba INT NOT NULL,\
  Tel\'e9fono INT NOT NULL,\
  PRIMARY KEY (C\'f3digo)\
);\
\
CREATE TABLE Ventas\
(\
  ID CHAR(n) NOT NULL,\
  Fecha DATE NOT NULL,\
  Cliente CHAR(n) NOT NULL,\
  Descuento INT NOT NULL,\
  Monto CHAR(n) NOT NULL,\
  C\'f3digo INT NOT NULL,\
  PRIMARY KEY (ID),\
  FOREIGN KEY (C\'f3digo) REFERENCES Cliente(C\'f3digo)\
);\
\
CREATE TABLE Categoria\
(\
  ID INT NOT NULL,\
  Nombre INT NOT NULL,\
  Descripcion INT NOT NULL,\
  PRIMARY KEY (ID)\
);\
\
CREATE TABLE Productos\
(\
  Nombre_proveedor CHAR(n) NOT NULL,\
  Precio_actual INT NOT NULL,\
  Stock INT NOT NULL,\
  Id CHAR(n) NOT NULL,\
  Nombre CHAR(n) NOT NULL,\
  ID CHAR(n) NOT NULL,\
  Codigo CHAR(n) NOT NULL,\
  ID INT NOT NULL,\
  PRIMARY KEY (Id),\
  FOREIGN KEY (ID) REFERENCES Ventas(ID),\
  FOREIGN KEY (Codigo) REFERENCES Proveedores(Codigo),\
  FOREIGN KEY (ID) REFERENCES Categoria(ID)\
);}