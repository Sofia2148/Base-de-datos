IF EXISTS(SELECT * FROM master.dbo.sysdatabases WHERE name ='supermercado')
BEGIN 
  USE master
  DROP DATABASE supermercado
END
CREATE DATABASE supermercado
GO 
USE supermercado
GO

--CREAR CADA UNA DE LAS TABLAS--
CREATE TABLE Empleado
(id_empleado INT IDENTITY (1,1) NOT NULL,
id_municipio INT NOT NULL,
id_cargo INT NOT NULL,
id_factura INT NOT NULL,
Nombre_empledo NVARCHAR(20) NOT NULL,
Apaterno NVARCHAR(20),
Ameterno NVARCHAR(20),
Fecha_naci DATE NOT NULL,
Sexo NVARCHAR(10),
Telefono NVARCHAR(20) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Contrato
(id_contrato INT IDENTITY (1,1) NOT NULL,
Salario INT NOT NULL,
Fecha_contrato DATE NOT NULL,
Tipo_contrato NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Contrato_Empleado
(id_contraemple INT IDENTITY (1,1) NOT NULL,
id_empleado INT NOT NULL,
id_contrato INT NOT NULL,
Fecha_inicio DATE NOT NULL,
Fecha_termino DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Puesto 
(id_puesto INT IDENTITY (1,1) NOT NULL,
nombre_puesto NVARCHAR(30)NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Puesto_empleado
(id_puestoempleado INT IDENTITY (1,1) NOT NULL,
id_empleado INT NOT NULL,
id_puesto INT NOT NULL,
Fecha_otorga DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Departamento
(id_departamento INT IDENTITY (1,1) NOT NULL,
id_area INT NOT NULL,
Nombre_departamento NVARCHAR(30)NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Departamento_empleado
(id_depaemple INT IDENTITY (1,1) NOT NULL,
id_departamento INT NOT NULL,
id_empleado INT NOT NULL,
Fecha_inicio DATE NOT NULL,
Fecha_fin DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Área
(id_area INT IDENTITY (1,1) NOT NULL,
Nombre_Area NVARCHAR(20) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1'
)

CREATE TABLE Cargo_laboral
(id_cargo INT IDENTITY (1,1) NOT NULL,
Nombre_empleadoacargo NVARCHAR(30) NOT  NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Horario
(id_horario INT IDENTITY (1,1) NOT NULL,
Hora_entrada TIME NOT NULL,
Hora_salida TIME NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Horario_empleado
(id_horaemple INT IDENTITY (1,1) NOT NULL,
id_empleado INT NOT NULL,
id_horario INT NOT NULL,
Hora_entrada TIME NOT NULL,
Hora_salida TIME  NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Municipio
(id_municipio INT IDENTITY (1,1) NOT NULL,
id_estado INT NOT NULL,
Nombre_municipio NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Estado
(id_estado INT IDENTITY (1,1) NOT NULL,
id_pais INT NOT NULL,
Nombre_estado NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Factura
(id_factura INT IDENTITY (1,1) NOT NULL,
id_ventas INT NOT NULL,
Fecha_factura DATETIME NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Ventas
(id_ventas INT IDENTITY (1,1) NOT NULL,
id_tipoventa INT NOT NULL,
id_cliente INT NOT NULL,
Fecha DATE NOT NULL,
Monto_final INT NOT NULL,
Ahorro INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Tipo_venta
(id_tipoventa INT IDENTITY (1,1) NOT NULL,
Descripcion NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Cliente
(id_cliente INT IDENTITY (1,1) NOT NULL,
id_usuario INT,
Telefono NVARCHAR(20) NOT NULL,
Sexo NVARCHAR(10),
Nombre_cliente NVARCHAR(20) NOT NULL,
Apaterno NVARCHAR(20),
Amaterno NVARCHAR(20),
Fecha_naci DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE  Usuario
(id_usuario INT IDENTITY (1,1) NOT NULL,
Nombre_usuario NVARCHAR(30) NOT NULL,
Nombre_persona NVARCHAR(30) NOT NULL,
Apaterno NVARCHAR(20),
Amaterno NVARCHAR(20),
Sexo NVARCHAR(10),
Contraseña NVARCHAR(20) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Sucursal_usuario
(id_sucurusua INT IDENTITY (1,1) NOT NULL,
id_sucursal INT NOT NULL,
id_usuario INT NOT NULL,
Fecha_ultimopedido DATETIME NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Sucursal_Cliente
(id_sucurclie INT IDENTITY (1,1) NOT NULL,
id_sucursal INT NOT NULL,
id_cliente INT NOT NULL,
Fecha_ultimacompra DATETIME NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Producto
(id_producto INT IDENTITY (1,1) NOT NULL,
id_provedor INT NOT NULL,
id_categoria INT NOT NULL,
Nombre NVARCHAR(30) NOT NULL,
Precio INT NOT NULL,
Codigo_barras INT NOT NULL,
cantidad_disponible INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Producto_Ventas
(id_producventa INT IDENTITY (1,1) NOT NULL,
id_ventas INT NOT NULL,
id_producto INT NOT NULL,
Precio INT NOT NULL,
Descuento INT NOT NULL,
Cantidad INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Categoría
(id_categoria INT IDENTITY (1,1) NOT NULL,
Nombre NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Proveedores
(id_provedor INT IDENTITY (1,1) NOT NULL,
id_marca INT NOT NULL,
Nombre_empresa NVARCHAR(30) NOT NULL,
Nombre_titular NVARCHAR(30) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE  Marca
(id_marca INT IDENTITY (1,1) NOT NULL,
Nombre_marca NVARCHAR(20) NOT NULL,
Clave_referencia NVARCHAR(20) NOT NULL,
Fecha_creacion DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Catalogo
(id_catalogo INT IDENTITY (1,1) NOT NULL,
Precio INT NOT NULL,
Fecha_inicio DATE NOT NULL,
Fecha_fin DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Producto_Catalogo
(id_producata INT IDENTITY (1,1) NOT NULL,
id_producto INT NOT NULL,
id_catalogo INT NOT NULL,
Descuento INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Inventario
(id_inventario INT IDENTITY (1,1) NOT NULL,
No_bodega INT NOT NULL,
Cantidad_producto INT NOT NULL,
No_sucursal INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE  Inventario_Producto
(id_inveprodu INT IDENTITY (1,1) NOT NULL,
id_inventario INT NOT NULL,
id_producto INT NOT NULL,
Cantidad INT NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Sucursal
(id_sucursal INT IDENTITY (1,1) NOT NULL,
id_inventario INT NOT NULL,
id_municipio INT NOT NULL,
Nombre_sucursal NVARCHAR(30) NOT NULL,
Calle NVARCHAR(20) NOT NULL,
Codigo_postal INT NOT NULL,
Numero INT NOT NULL,
Representante_provedor NVARCHAR(30) NOT NULL,
Telefono NVARCHAR(20) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Sucursal_catalogo
(id_sucurcata INT IDENTITY (1,1) NOT NULL,
id_sucursal INT NOT NULL,
id_catalogo INT NOT NULL,
Fecha_fin DATE NOT NULL,
Fecha_inicio DATE  NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE Sucursal_Empleado
(id_sucuremplea INT IDENTITY (1,1) NOT NULL,
id_empleado INT NOT NULL,
id_sucursal INT NOT NULL,
Fechaultimo_pago DATE NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

CREATE TABLE País
(id_pais INT IDENTITY (1,1) NOT NULL,
Nombre NVARCHAR(20) NOT NULL,
Quien_creo INT DEFAULT NULL,
Cuandocreo DATETIME DEFAULT NULL,
Quienmodifico INT DEFAULT NULL,
Cuandomodifico DATETIME DEFAULT NULL,
estatus INT NOT NULL DEFAULT '1')

--LLAVES PRIMARIAS--
ALTER TABLE Empleado ADD CONSTRAINT pk_idempleado PRIMARY KEY (id_empleado)
ALTER TABLE Contrato ADD CONSTRAINT pk_idcontrato PRIMARY KEY (id_contrato)
ALTER TABLE Contrato_Empleado  ADD CONSTRAINT pk_idcontraemple PRIMARY KEY (id_contraemple)
ALTER TABLE Puesto ADD CONSTRAINT pk_idpuesto PRIMARY KEY (id_puesto)
ALTER TABLE Puesto_empleado ADD CONSTRAINT pk_idpuestoempleado PRIMARY KEY (id_puestoempleado)
ALTER TABLE Departamento ADD CONSTRAINT pk_iddepartamento PRIMARY KEY (id_departamento)
ALTER TABLE Departamento_empleado  ADD CONSTRAINT pk_iddepaemple PRIMARY KEY (id_depaemple)
ALTER TABLE Área ADD CONSTRAINT pk_idarea PRIMARY KEY (id_area)
ALTER TABLE Cargo_laboral  ADD CONSTRAINT pk_idcargo PRIMARY KEY (id_cargo)
ALTER TABLE Horario ADD CONSTRAINT pk_idhorario PRIMARY KEY (id_horario)
ALTER TABLE Horario_empleado  ADD CONSTRAINT pk_idhoraemple PRIMARY KEY (id_horaemple)
ALTER TABLE Municipio ADD CONSTRAINT pk_idmunicipio PRIMARY KEY (id_municipio)
ALTER TABLE Estado ADD CONSTRAINT pk_idestado PRIMARY KEY (id_estado)
ALTER TABLE Factura ADD CONSTRAINT pk_idfactura PRIMARY KEY (id_factura)
ALTER TABLE Ventas ADD CONSTRAINT pk_idventas PRIMARY KEY (id_ventas)
ALTER TABLE Tipo_venta ADD CONSTRAINT pk_idtipoventa PRIMARY KEY (id_tipoventa)
ALTER TABLE Cliente ADD CONSTRAINT pk_idcliente PRIMARY KEY (id_cliente)
ALTER TABLE Usuario ADD CONSTRAINT pk_idusuario PRIMARY KEY (id_usuario)
ALTER TABLE Sucursal_usuario ADD CONSTRAINT pk_idsucurusua PRIMARY KEY (id_sucurusua)
ALTER TABLE Sucursal_Cliente ADD CONSTRAINT pk_idsucurclie PRIMARY KEY (id_sucurclie)
ALTER TABLE Producto ADD CONSTRAINT pk_idproducto PRIMARY KEY (id_producto)
ALTER TABLE Producto_Ventas ADD CONSTRAINT pk_idproducventa PRIMARY KEY (id_producventa)
ALTER TABLE Categoría ADD CONSTRAINT pk_idcategoria PRIMARY KEY (id_categoria)
ALTER TABLE Proveedores ADD CONSTRAINT pk_idprovedor PRIMARY KEY (id_provedor)
ALTER TABLE Marca ADD CONSTRAINT pk_idmarca PRIMARY KEY (id_marca)
ALTER TABLE Catalogo ADD CONSTRAINT pk_idcatalogo PRIMARY KEY (id_catalogo)
ALTER TABLE Producto_Catalogo ADD CONSTRAINT pk_idproducata PRIMARY KEY (id_producata)
ALTER TABLE Inventario ADD CONSTRAINT pk_idinventario PRIMARY KEY (id_inventario)
ALTER TABLE Inventario_Producto ADD CONSTRAINT pk_idinveprodu PRIMARY KEY (id_inveprodu)
ALTER TABLE Sucursal ADD CONSTRAINT pk_idsucursal PRIMARY KEY (id_sucursal)
ALTER TABLE Sucursal_catalogo ADD CONSTRAINT pk_idsucurcata PRIMARY KEY (id_sucurcata)
ALTER TABLE Sucursal_Empleado ADD CONSTRAINT pk_idsucuremplea PRIMARY KEY (id_sucuremplea)
ALTER TABLE País ADD CONSTRAINT pk_idpais PRIMARY KEY (id_pais)

--LLAVES FORANEAS--
ALTER TABLE Empleado ADD CONSTRAINT fk_idmunicipio FOREIGN KEY (id_municipio) REFERENCES Municipio(id_municipio)
ALTER TABLE Empleado ADD CONSTRAINT fk_idcargo FOREIGN KEY (id_cargo) REFERENCES Cargo_laboral (id_cargo)
ALTER TABLE Empleado ADD CONSTRAINT fk_idfactura FOREIGN KEY (id_factura) REFERENCES Factura(id_factura)
ALTER TABLE Contrato_Empleado ADD CONSTRAINT fk_idempleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
ALTER TABLE Contrato_Empleado ADD CONSTRAINT fk_idcontrato FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
ALTER TABLE Puesto_empleado ADD CONSTRAINT fk_idempleado1 FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
ALTER TABLE Puesto_empleado ADD CONSTRAINT fk_idpuesto FOREIGN KEY (id_puesto) REFERENCES Puesto(id_puesto)
ALTER TABLE Departamento ADD CONSTRAINT fk_idarea FOREIGN KEY (id_area) REFERENCES Área(id_area)
ALTER TABLE Departamento_empleado  ADD CONSTRAINT fk_idempleado2 FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
ALTER TABLE Departamento_empleado  ADD CONSTRAINT fk_iddepartamento FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
ALTER TABLE Horario_empleado ADD CONSTRAINT fk_idempleado3 FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
ALTER TABLE Horario_empleado ADD CONSTRAINT fk_idhorario FOREIGN KEY (id_horario) REFERENCES Horario(id_horario)
ALTER TABLE Municipio ADD CONSTRAINT fk_idestado FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
ALTER TABLE Estado ADD CONSTRAINT fk_idpais FOREIGN KEY (id_pais) REFERENCES País(id_pais)
ALTER TABLE Factura ADD CONSTRAINT fk_idventas FOREIGN KEY (id_ventas) REFERENCES Ventas(id_ventas)
ALTER TABLE Ventas ADD CONSTRAINT fk_idtipoventa FOREIGN KEY (id_tipoventa) REFERENCES Tipo_venta (id_tipoventa)
ALTER TABLE Ventas ADD CONSTRAINT fk_idcliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
ALTER TABLE Cliente ADD CONSTRAINT fk_idusuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
ALTER TABLE Sucursal_usuario ADD CONSTRAINT fk_idusuario1 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
ALTER TABLE Sucursal_usuario ADD CONSTRAINT fk_idsucursal FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal)
ALTER TABLE Sucursal_Cliente ADD CONSTRAINT fk_idsucursal1 FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal) 
ALTER TABLE Sucursal_Cliente ADD CONSTRAINT fk_idcliente1 FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
ALTER TABLE Producto ADD CONSTRAINT fk_idprovedor FOREIGN KEY (id_provedor) REFERENCES Proveedores(id_provedor)
ALTER TABLE Producto ADD CONSTRAINT fk_idcategoria FOREIGN KEY (id_categoria) REFERENCES Categoría(id_categoria)
ALTER TABLE Producto_Ventas ADD CONSTRAINT fk_idventas1 FOREIGN KEY (id_ventas) REFERENCES Ventas(id_ventas) 
ALTER TABLE Producto_Ventas ADD CONSTRAINT fk_idproducto FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
ALTER TABLE Proveedores ADD CONSTRAINT fk_idmarca FOREIGN KEY (id_marca) REFERENCES Marca(id_marca)
ALTER TABLE Producto_Catalogo ADD CONSTRAINT fk_idproducto1 FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
ALTER TABLE Producto_Catalogo ADD CONSTRAINT fk_idcatalogo FOREIGN KEY (id_catalogo) REFERENCES Catalogo(id_catalogo)
ALTER TABLE Inventario_Producto ADD CONSTRAINT fk_idproducto2 FOREIGN KEY (id_producto) REFERENCES Producto(id_producto) 
ALTER TABLE Inventario_Producto ADD CONSTRAINT fk_idinventario FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario)
ALTER TABLE Sucursal ADD CONSTRAINT fk_idinventario1 FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario)
ALTER TABLE Sucursal ADD CONSTRAINT fk_idmunicipio1 FOREIGN KEY (id_municipio) REFERENCES Municipio(id_municipio) 
ALTER TABLE Sucursal_catalogo ADD CONSTRAINT fk_idsucursal2 FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal)
ALTER TABLE Sucursal_catalogo ADD CONSTRAINT fk_idcatalogo1 FOREIGN KEY (id_catalogo) REFERENCES Catalogo(id_catalogo)
ALTER TABLE Sucursal_Empleado ADD CONSTRAINT fk_idempleado4 FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
ALTER TABLE Sucursal_Empleado ADD CONSTRAINT fk_idsucursal3 FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal) 

-------10 Trigger-------
GO 
CREATE TRIGGER MENSAJE
ON Área
AFTER INSERT
AS
PRINT ('SE AGREGO EL AREA DE FORMA CORRECTA')
GO

	---En este triger se manda un mensaje cuando se le hace un insert a la tabla Area

GO 
CREATE TRIGGER ACTULIZAR_DEPARTAMENTOS
ON Departamento
AFTER UPDATE
AS
SELECT * FROM Departamento
GO

	----En este triger se trae a llamr a toda la tabla cuando se actualiza un dato en la tabla Departameneto

GO 
CREATE TRIGGER TABLA_PRODUCTO
ON Producto
AFTER INSERT
AS
PRINT ('EL PRODUCTO SE AGREGO CON EXITO')
SELECT * FROM Producto
GO

	----En este triger se manda un mensaje cuando se inserta un valor a la tabla producto

GO 
CREATE TRIGGER EMPLEADO_INSERT
ON Empleado
AFTER INSERT
AS 
SELECT * FROM Empleado
GO

	----En este triger se manda a llamar a toda la tabla Empleado despues de inertar un valor

GO 
CREATE TRIGGER CLIETE_BORRAR
ON Cliente
AFTER DELETE
AS
PRINT ('EL CLIENTE SE BORRO')
GO

	----En este triger se manda un mensaje cuando de borra un dato de la tabla cliente

GO 
CREATE TRIGGER USUARIO_INSERTAR
ON Usuario
AFTER INSERT
AS 
SELECT * FROM Usuario
GO

	----En este triger se manda a llamar a la tabla usuario despues de hacer un insert

GO 
CREATE TRIGGER PV_INSERTAR
ON Producto_Ventas
AFTER INSERT
AS
PRINT('SE INSERTO CORRECTAMENTE')
GO

	----En este triger se manda un mensaje cuando se inserta un valor en la tabla Producto_Ventas

GO 
CREATE TRIGGER FACTURA_INSERTAR
ON Factura
AFTER INSERT
AS
SELECT * FROM Factura
GO

	---En este triger se manda a llamar a la tabla factura despues de insertar un valor en dicha tabla

GO 
CREATE TRIGGER SUCURSAL_NUEVA
ON Sucursal
AFTER INSERT
AS
SELECT * FROM Sucursal
GO
	
	---En este triger se manda a llamar a la tabla sucursal despues de insertar un valor en dicha tabla

GO 
CREATE TRIGGER TIPOVENTA_INSERTAR
ON Tipo_venta
AFTER INSERT
AS
PRINT ('SE AGREGO UN NUEVO TIPO DE VENTA')
GO

	---En este triger se manda un menasaje despues de insertar un valor en la tabla Tipo_venta


--INSERTAR VALORES --
INSERT INTO Contrato (Salario, Fecha_contrato, Tipo_contrato) VALUES (3500,'20210911', '6 MESES'), (4000,'20210810', '5 MESES'),
(25000,'20210911', '6 MESES'), (5000,'20211130', '1 AÑO'), (35000,'20210722', '6 MESES'), (20000,'20211230', '18 MESES'),
(10000,'20210810', '5 MESES'), (25000,'20211001', '2 AÑOS'), (5500,'20201230', '3 MESES'), (3000,'20220722', '3 MESES')

INSERT INTO Puesto (nombre_puesto)  VALUES ('JEFE'),('GERENTE'),('EMPLEADO'),('CONSERGUE'),('SECRETARIO'),
('CAJEROS'),('CERILLITOS'),('ACOMODADOR'),('SUPERVISOR'),('DIRECTIVOS')

INSERT INTO Área (Nombre_Area) VALUES ('SALCHICHONERIA'),('PANADERIA'),('VERDURAS'),('PESCADOS Y MARISCOS'),('JUGUETERIA'),
('CAJAS'),('REFRIGERADORES'),('FARMACIA'),('LIMPIEZA'),('TECNOLOGIA')

INSERT INTO Cargo_laboral (Nombre_empleadoacargo) VALUES ('JUAN PEREZ'),('ALFREDO RODRIGUEZ'),('CARLOS PEREZ'),('DAVID HERRERA'),
('Adolfo Castro'),('AILIN PEREZ'),('MANUEL FUENTES'),('XIMENA RODRIGUEZ'),('MARCO CASTRO'),('NORBERTO DIAZ')

INSERT INTO Horario (Hora_entrada, Hora_salida) VALUES ('8:00:00','16:00:00'),('7:00:00','15:00:00'),('9:00:00','17:00:00'),
('10:00:00','18:00:00'),('12:00:00','20:00:00'),('13:00:00','21:00:00'),('6:00:00','14:00:00'),('11:00:00','19:00:00'),
('15:00:00','23:00:00'),('14:00:00','22:00:00')

INSERT INTO Tipo_venta (Descripcion) VALUES ('EN LINEA'),('EN FISICO'),('PICK UP'),('INDIRECTA'),('PERSONAL'),
('TELEFONO'),('REDES SOCIALES'),('INTERNET'),('TRANSICIONAL'),('DIRECTA')

INSERT INTO Usuario (Nombre_usuario, Nombre_persona, Apaterno, Amaterno, Sexo, Contraseña)
VALUES ('MARCOSP','MARCOS','PEREZ',NULL,'HOMBRE','MAPE2003'),('DANIELM','DANIEL','MENDEZ','PEREZ','HOMBRE','DAMEPE234'),
('HECTORCR','HECTOR','CASTRO','RODRIGUEZ','TRNGENERO','HECARO567'),('IRMA12','IRMA','MUÑOS','FARIAS','MUJER','IRMA890U'),
('SOFIA123','SOFIA','LOPEZ',NULL,'BINARIO','SOFIALO98'),('REYNA76E','REYNA','ESQUIVEL','MUÑOS','NO BINRIO','REYNA89IU'),
('CARLO34','CARLOS','GONZALES','RODRIGUEZ',NULL,'SOYUNMACHO'),('MARGARITO98J','MARGARITO','FUENTES',NULL,'NOBINARIO','BBC'),
('VICTOR76Y','VICTOR','GASCON','GALLARDO','TRSNSBESTI','SOYUNALINDACHICA'),('LUIS65TG','LUIS','JUAREZ',NULL,'MUJER','MEGUSTAMECANO')

INSERT INTO Categoría (Nombre) VALUES ('ABARROTES'),('VERDURAS'),('LACTEOS'),('LIMPIEZA'),('AUTOMOVILISTICOS'),('ACEO  PERSONAL'),
('COSMETIOS'),('FARMACIA'),('ROPA'),('CEREALES Y GALLETAS')

INSERT INTO Marca (Nombre_marca, Clave_referencia, Fecha_creacion) VALUES ('BIMBO','OKI89TR-09','20000313'),
('MARINELA','HUYT67-87','19901201'),('BARCEL','FRTYH65-87','19800815'),('COCA-COLA','COL98-97','19990312'),
('PEPSI','HUJY6-43','19700825'),('CAPERUCITA','NHUYJ56-32','20011130'),
('JUMEX','FGTH569-87','19900228'), ('LALA','VFEDS13-29','18990420'),('ALPURA','JUNI976-00','19900121'),
('PURINA','UUNU34-23','19970619'),('MAC','LOKU78-90','19991013')

INSERT INTO Catalogo (Precio, Fecha_inicio, Fecha_fin) VALUES (0,'20221202','20230101'),(0,'20221102','20221201'),
(0,'20220902','20221001'),(0,'20220702','20220801'),(0,'20230302','20220401'),(0,'20230102','20230201'),(0,'20220802','20220901'),
(0,'20220602','20220701'),(0,'20230202','20230301'),(0,'20221002','20221101')

INSERT INTO Inventario (No_bodega, Cantidad_producto, No_sucursal) VALUES (34,400,21),(23,340,70),(12,500,54),(25,450,36),
(53,600,76),(37,220,89),(98,550,23),(87,650,76),(78,120,67),(56,345,34)

INSERT INTO País (Nombre) VALUES ('MÉXICO'),('ESTADOS UNIDOS'),('EL SALVADOR'),('CANADA'),('HONDURAS'),('REINO UNIDO'),
('COSTA RICA'),('ARENTINA'),('CHINA'),('PPUERTO RICO')

--INSEETAR VALORES CON 2 ID--
INSERT INTO Departamento (id_area, Nombre_departamento) VALUES (3,'DIRECCION GENERAL'),(6,'ALMACEN'),(4,'LOGISTICA'),
(9,'PRODUCCION'),(7,'MARKETING'),(8,'COMERCIAL'),(10,'CONTABILIDAD'),(5,'FINANZAS'),(2,'RECURSOS HUMANOS'),(1,'ADMINISTRACION')

INSERT INTO Estado (id_pais, Nombre_estado) VALUES (1,'COAHUILA'),(4,'TORONTO'),(2,'WASHINGTON'),(3,'SAN MARCOS'),
(5,'TEGUCIGALPA'),(1,'CIUDAD DE MEXICO'),(2,'TEXAS'),(3,'SAN SALVADOR'),(1,'QUINTANA R0O'),(4,'OTAWA')

INSERT INTO Municipio (id_estado, Nombre_municipio) VALUES (6,'MIGUEL HIDALGO'),(2,'MONTREAL'),(4,'SAN GERONIMO'),(5,'TEPIC'),(7,'NUEVO LAREDO'),
(3,'CHIGAO'),(8,'SACRAMENTO'),(10,'VANCUVER'),(1,'SAAN BUENAAVENTURA'),(9,'CANCUN')

INSERT INTO Cliente (id_usuario, Telefono, Sexo, Nombre_cliente, Apaterno, Amaterno, Fecha_naci) VALUES
(2,'9276198634','HOMBRE','DANIEL','MENDEZ','PEREZ','20011009'),(9,9826519856,'TRANBESTI','VICTOR','GASCO','GALLARDO','20030708'),
(NULL,5789109823,'MUJER','FERNANDA','COLIN','MENDEZ','20030412'),(3,8665129876,'TRANS','HECTOR','CASTRO','RORIGUEZ','20020707'),
(5,5532673325,'NOBINARIO','SOFIA','LOPEZ',NULL,'20030803'),(1,5534761987,'HOMBRE','MARCOS','PEREZ',NULL,'20000809'),
(10,9837619837,'MUEJR','LUIS','JAUREZ',NULL,'19991001'),(NULL,284767309,NULL,'JAIME','GOMEZ','MARTINEZ','20001011'),
(NULL,5678120987,'MUJER','CARLA','MENEZ','MARTINEZ','19901212'),(NULL,7687123459,'TRANS','MIRELLA','IBARRA','ALVARES','19801201')

INSERT INTO Proveedores (id_marca, Nombre_empresa, Nombre_titular) VALUES (4,'COCA-COLA','SMITE CALVIN'),
(2,'MARINELA INC.','PEPE LOPEZ'),(5,'PEPSI INC.','MILLER JANE'),(10,'PURINA INC.','PACO HERRERA'),
(7,'JUMEZ INC.','EUGENIO LOPEZ'),(9,'ALPURA INC.','ALESANDRA ROSALDO'),(8,'LALA INC.','PEDRITO CAMACHO'),
(3 ,'BARCEL INC.','ALFREDO GONZALES'),(6,'CAPERUCITA INC.','ISABEL FLORES'),(1,'BIMBO INC.','JUAN FARIAS'),
(11,'MAC INC.','LOLITA CORTEZ')


INSERT INTO Ventas (id_tipoventa, id_cliente, Fecha, Monto_final, Ahorro) VALUES (1,1,'20221129',2000,500),(1,6,'20221130',1500,200),
(2,7,'20221201',2000,0),(2,3,'20221030',500,10),(2,2,'20221128',150,25),(1,8,'20221130',1000,33),(3,9,'20221230',1500,150),
(3,4,'20221125',100,20),(1,10,'20221201',3000,200),(3,5,'20221129',3500,100)

INSERT INTO Factura (id_ventas, Fecha_factura) VALUES  (8,'20221125'),(5,'20221128'),(1,'20221129'),(2,'20221130'),
(10,'20221129'),(6,'20221130'),(4,'20221030'),(3,'20221201'),(9,'20221201'),(7,'20221230')

INSERT INTO Producto (id_provedor, id_categoria, Nombre, Precio, Codigo_barras, cantidad_disponible) VALUES 
(10,1,'PAN INTEGRAL',54,123456,100),(5,1,'JUMEZ DE MANGO',30,654297,50),(1,1,'COCA LIGHT',30,871345,60),
(6,3,'ALPURA ENTERA',50,983471,30),(3,1,'PEPSI',25,951784,40),(2,1,'GANSITO',15,986174,55),(7,3,'CREMA',30,98712,25),
(2,1,'CHCORROLES',10,986134,5),(8,1,'CHIPS',40,875186,7),(10,1,'PAN BLANCO',50,873451,84)

INSERT INTO Producto_Ventas (id_ventas, id_producto, Precio, Descuento, Cantidad) VALUES (1,3,30,1,4),(10,1,54,6,2),(2,5,25,5,1),
(7,6,15,10,2),(4,10,50,25,3),(3,8,10,2,1),(6,4,50,5,2),(5,9,40,38,3),(8,7,30,10,5),(9,2,30,10,1)

INSERT INTO Producto_Catalogo (id_producto, id_catalogo, Descuento) VALUES (3,5,100),(4,7,10),(6,3,150),(8,4,200),(10,6,50),
(9,8,11),(7,9,70),(5,2,29),(2,1,43),(1,10,78)

INSERT INTO Inventario_Producto (id_inventario, id_producto, Cantidad) VALUES (1,5,100),(6,3,350),(4,2,550),(5,10,50),(9,7,70),
(10,9,236),(3,8,1000),(8,1,245),(7,6,300),(2,4,200)

INSERT INTO Sucursal (id_inventario, id_municipio, Nombre_sucursal, Calle, Codigo_postal, Numero, Representante_provedor, Telefono)
VALUES (2,1,'WALMART','ZAROGOZA',25500,13,'ADOLFO MUÑOS','56-89-10-45-78'),
(3,4,'BODEGA AURRERA','CLAVEL',02800,123,'JESUS ALVARES','23-98-65-17-09'),
(6,5,'SAM´S CLUB','COCOTEROS',34560,657,'FRANCISCO LOPEZ','89-13-5-78-23'),
(1,3,'WALMART','FRAMBUESA',28745,12,'MANUEL JFUENTES','55-43-67-89-87'),
(5,6,'SAM´S CLUB','MOCLOVIO',12895,986,'JUAN HERRERA','98-76-21-12-09'),
(8,2,'BODEGA AURRERA','COAHUILA',28976,128,'DAVID CASTRO','18-09-67-09-10'),
(7,7,'BODEGA AURRERA','INSERGUENTES',12876,1234,'MARCO PERES','29-98-56-49-13'),
(4,9,'SAM´S CLUB','NUEVO LEON',90939,43,'NORBERTO MUÑOS','16-45-25-98-11'),
(10,8,'BODEGA AURRER','FRANCISCO I. MADERO',09747,986,'CARLOS MENDEZ','12-98-78-45-13'),
(9,10,'WALMART','JAUREZ',98256,348,'JIMENA CASTRO','55-16-82-26-74')

INSERT INTO Sucursal_catalogo (id_sucursal, id_catalogo, Fecha_fin, Fecha_inicio) VALUES (2,1,'20230101','20221202'),
(1,7,'20220901','20220802'),(8,3,'20221001','20220902'),(4,9,'20230301','20230202'),(10,5,'20220401','20230302'),
(6,10,'20221101','20221002'),(7,2,'20221201','20221102'),(3,8,'20220701','20220602'),(9,4,'20220801','20220702'),
(5,6,'20230201','20230102')

INSERT INTO Empleado (id_municipio, id_cargo, id_factura, Nombre_empledo, Apaterno, Ameterno, Fecha_naci, Sexo, Telefono) VALUES
(2,3,1,'EMMA','QUIÑONES',NULL,'20000109','MUJER','23-45-32-56-45'),
(4,1,10,'LUCIA','CASTELLANOS','PEREZ','19970127','MUJER','87-75-36-21-42'),
(10,2,5,'ALVARO','ALVARES','IBARRA','19990430','HOMBRE','12-67-43-56-98'),
(3,10,6,'KIMA','GUADINA','LOPEZ','18141209','NOBINARIO','56-87-14-65-12'),
(7,9,2,'ANA','GUTIERREZ','CASTRO','19901231','MUJER','23-56-78-23-78'),
(9,6,9,'KIMBELY','OCHOA','HERRERA','19451012','MUJER','98-45-65-73-23'),
(6,8,7,'HANNAH','LOPEZ','RODRIGUEZ','19980101','NOBINARIO','45-96-13-45-69'),
(1,5,4,'FERNANDA','HERNANDES','HERRERA','19451111','HOMBRE','13-54-23-12-54'),
(7,4,8,'LUCAS','HERRERA',NULL,'19800811','TRANS','15-67-24-63-89'),
(5,7,3,'FERNANDO','GARZA','MUÑOS','19881220','HOMBRE','54-23-65-32-12')

INSERT INTO Contrato_Empleado (id_empleado, id_contrato, Fecha_inicio, Fecha_termino) VALUES 
(10,4,'20211130','20221130'),(9,6,'20211230','20230630'),(8,7,'20210810','20220110'),(7,3,'20210911','20220311'),
(4,2,'20210810','20220110'),(2,5,'20210722','20211222'),(1,10,'20220722','20221022'),(3,9,'20201230','20210330'),
(5,1,'20210911','20220311'),(6,8,'20211001','20231001')

INSERT INTO Puesto_empleado (id_empleado, id_puesto, Fecha_otorga) VALUES (4,1,'20221109'),(9,2,'20221103'),
(1,3,'20221203'),(5,7,'20221130'),(6,10,'20221201'),(10,9,'20220427'),(3,5,'20220520'),(7,6,'20221010'),
(8,8,'20221008'),(2,4,'20220305')

INSERT INTO Departamento_empleado (id_departamento, id_empleado ,Fecha_inicio, Fecha_fin) VALUES
(5,10,'20210109','20220109'),(3,7,'20220810','20230810'),(2,1,'20220719','20221219'),
(4,8,'20221201','20230801'),(6,2,'20221110','20231110'),(1,5,'20211209','20221209'),
(10,4,'20220809','20230509'),(8,9,'20220906','20230406'),(7,6,'20210824','20221124'),
(9,3,'20221004','20230404')

INSERT INTO Horario_empleado (id_empleado, id_horario, Hora_entrada, Hora_salida) VALUES
(4,1,'08:00:00','16:00:00'),(6,2,'07:00:00','15:00:00'),(3,7,'06:00:00','14:00:00'),(8,9,'15:00:00','23:00:00'),
(2,4,'10:00:00','18:00:00'),(9,3,'09:00:00','17:00:00'),(5,6,'13:00:00','21:00:00'),(10,8,'11:00:00','19:00:00'),
(1,10,'14:00:00','22:00:00'),(7,5,'12:00:00','20:00:00')

INSERT INTO Sucursal_usuario (id_sucursal, id_usuario, Fecha_ultimopedido) VALUES
(4,10,'20221203'),(8,9,'20221130'),(9,5,'20221205'),(2,3,'20221031'),(3,6,'20221111'),
(10,1,'20220909'),(5,8,'20221001'),(1,7,'20221129'),(6,4,'20220810'),(7,2,'20221112')

INSERT INTO Sucursal_Cliente (id_sucursal, id_cliente, Fecha_ultimacompra) VALUES
(2,3,'20221209'),(7,1,'20210909'),(4,7,'20221019'),(8,6,'20220426'),(5,10,'20220827'),
(10,2,'20220629'),(3,5,'20220302'),(9,4,'20221203'),(1,8,'20221201'),(6,9,'20211230')

INSERT INTO Sucursal_Empleado (id_empleado, id_sucursal, Fechaultimo_pago) VALUES
(9,1,'20221215'),(2,10,'20221130'),(3,7,'20221115'),(7,3,'20221215'),(5,4,'20221115'),
(1,9,'20221130'),(10,8,'20221115'),(8,2,'20221130'),(4,6,'20221215'),(6,5,'20221115')

--ELIMINAR 10 REGITROS POR  DELETE--
DELETE Contrato_Empleado WHERE id_empleado=2
DELETE Puesto_empleado WHERE id_puesto=10
DELETE Horario_empleado WHERE id_horario=5
DELETE Tipo_venta WHERE id_tipoventa=4
DELETE Producto_Ventas WHERE id_ventas=2
DELETE Inventario_Producto WHERE id_inventario=7
DELETE Producto_Catalogo WHERE id_producto=9
DELETE Sucursal_catalogo WHERE id_sucursal=6
DELETE Tipo_venta WHERE id_tipoventa=8
DELETE Sucursal_Empleado WHERE id_empleado=9

--ACTUALIZAR 10 REGISTROS POR UPDATE--
UPDATE Sucursal SET Calle='BENITO JUARES' WHERE Calle='CLAVEL'
UPDATE Cliente SET Sexo='TRANS' WHERE Sexo='TRANBESTI'
UPDATE Producto SET Precio=35 WHERE id_producto=3
UPDATE Empleado SET Ameterno='FLORES' WHERE id_empleado=9
UPDATE Contrato SET Salario=5000 WHERE id_contrato=3
UPDATE Proveedores SET Nombre_empresa='JUMEX INC.' WHERE id_provedor=5
UPDATE Usuario SET Amaterno='HERRERA' WHERE id_usuario=1
UPDATE País SET Nombre='PUERTO RICO' WHERE id_pais=10
UPDATE Ventas SET Monto_final=1400 WHERE id_ventas=4
UPDATE Inventario SET No_sucursal=60 WHERE id_inventario=6

--3 SELECT WHERE--
SELECT * FROM Departamento WHERE id_area=2
	---El motivo de esta consulta es para saber todos los datos de la tabla departamento que tanga el idarea 2
SELECT * FROM Ventas WHERE Monto_final >= 1500
	---El motivo de esta consulta es para saber todos los datos de la tabla ventas que su monto final sea mayor o
	---igual a 1500
SELECT * FROM Tipo_venta WHERE id_tipoventa<4
	---El motivo de esta consulta es para saber todos los datos de la tabla tipo_venta que su id sea menor a 4


--3 SELLECT IN--
SELECT * FROM Catalogo WHERE id_catalogo IN (1,9)
	---El motivo de esta consulta es para saber todos los datos de la tabla catalogo que tengan el id_catalogo 1 o 9
SELECT * FROM Contrato_Empleado WHERE Fecha_inicio IN ('2021-11-30','2020-12-30')
	---El motivo de esta consulta es para saber todos los datos de la tabla de Contrato_Empleado que tenga la 
	---Fecha_inicio 2021-11-30 o 2020-12-30
SELECT * FROM Factura WHERE id_ventas IN (5,8)
	---El motivo de esta consulta es para saber todos los datos de la tabla factura que tengan el id_venta 5 o 8

--3 SELECT BETWEEN--
SELECT * FROM Municipio WHERE id_municipio BETWEEN 5 AND 9
	---El motivo de esta consulta es para saber todos los datos de la tabla de Municipio que tengan el id_municipio
	---entre el 5 y 9
SELECT * FROM Producto WHERE Precio BETWEEN 40 AND 60
	---El motivo de esta consulta es para saber todos los datos de la tabla de productos que tengan un precio entre
	---los 40 y 60
SELECT * FROM Producto_Ventas WHERE Descuento BETWEEN 10 AND 50
	---El motivo de esta consulta es para saber todos los datos de la tabla de Producto_Ventas que tengan un descuento
	---entre los 10 y 50


--1 SELECT LIBRE--
SELECT id_area,Nombre_departamento FROM Departamento
	---El motivo  de esta conulta es para traer a llamar las columnas id_area y Nombre_departamento de la tabla 
	---Departamento


-------4 Consultas con 2 tablas-------
SELECT (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO, PE.Fecha_otorga
FROM Empleado E INNER JOIN Puesto_empleado PE ON PE.id_empleado=E.id_empleado
	---El motivo de la cunsulta es para poder saber el nombre compleato del empleado
	---y la fecha en que se le otrorgo el  puesto o a dicho empleado.

SELECT E.Nombre_empledo, CE.Fecha_inicio
FROM Empleado E INNER JOIN Contrato_Empleado CE ON CE.id_empleado=E.id_empleado
	---El motivo de la cunsulta es para poder saber el nombre compleato del empleado
	---y la fecha en la que incia el contrato o a dicho empleado.

SELECT (E.Nombre_empledo+''+E.Apaterno) NOMBRE_COMPLETO, M.Nombre_municipio
FROM Municipio M INNER JOIN Empleado E ON M.id_municipio=E.id_municipio
	---El motivo de la cuosulta es para poder saber el nombre completo del empleado
	---y de que municipio es dicho empleado

SELECT P.Nombre, E.Nombre_estado
FROM ESTADO E INNER JOIN País P ON P.id_pais=E.id_pais
	---El motivo de esta consulta es para poder saber el nombre país y que estado tiene 
	---dicho pais.


-------4 Consultas con 3 tablas-------
SELECT E.Nombre_empledo, DE.Fecha_inicio, DE.Fecha_fin, D.Nombre_departamento
FROM Departamento D INNER JOIN Departamento_empleado DE ON DE.id_departamento=D.id_departamento
INNER JOIN Empleado E ON DE.id_empleado=E.id_empleado
	---El motivo de esta consulta es para saber en que departamento(el nombre del departamento)
	--tabaja un empleado (el nombre del empleado) asi como la fecha de incio y de fin en dicho puesto

SELECT P.Nombre, P.Precio, PV.Descuento, V.Fecha
FROM Producto P INNER JOIN Producto_Ventas PV ON PV.id_producto=P.id_producto
INNER JOIN Ventas V ON PV.id_ventas=V.id_ventas
	---El motivo de dicha conulta es para saber el nombre del producto el precio de dicho producto
	--el descuento que  tiene el producto y la fecha en que se relizo la venta

SELECT P.Nombre, INP.Cantidad, I.No_bodega
FROM Inventario I INNER JOIN Inventario_Producto INP ON INP.id_inventario=I.id_inventario
INNER JOIN Producto P ON P.id_producto=INP.id_producto
	---El motico de esta consulta es para saber el nombre del producto la cantidad  que hay de este
	---y el numero  de sucursal que tiene dicha cantidad del producto

SELECT S.Nombre_sucursal, SE.Fechaultimo_pago, (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO
FROM Sucursal S INNER JOIN Sucursal_Empleado SE ON SE.id_sucursal=S.id_sucursal
INNER JOIN Empleado E ON E.id_empleado=SE.id_empleado
	---El moticvo de eata consulta es para  saber cual es nombre completo del empleadao a el nombre
	---de la sucrsal en la que  trabja y la ultima fecha en la cual le pgaron

-------4 SELECT CON 4 TABLAS-------
SELECT EM.Nombre_empledo, M.Nombre_municipio, E.Nombre_estado, P.Nombre
FROM País P INNER JOIN Estado E ON E.id_pais=P.id_pais
INNER JOIN Municipio M ON M.id_estado=E.id_estado
INNER JOIN Empleado EM ON EM.id_municipio=M.id_municipio
	---El motivo de esta consulta es para saber  el numbre del empleado, asi como el nombre del municipio 
	---de donde es dicho empleado,el nombre del estado en donde de se encuentra dicho municipio y el pais
	---en donde esta el estado.

SELECT PR.Nombre_empresa, P.Nombre, INP.Cantidad, I.No_sucursal
FROM Proveedores PR INNER JOIN Producto P ON PR.id_provedor=P.id_provedor
INNER JOIN Inventario_Producto INP ON INP.id_producto=P.id_producto
INNER JOIN Inventario I ON I.id_inventario=INP.id_inventario
	---El  motivo de esta  consulta es para aber el nombre de la empres(proveedor) que reparte un producto
	---(el nombre), el numero de sucursal y que cantidad de ese producto tiene.

SELECT F.Fecha_factura, V.Monto_final, PV.Descuento, P.Nombre
FROM Factura F INNER JOIN Ventas V ON V.id_ventas=F.id_ventas
INNER JOIN Producto_Ventas PV ON PV.id_ventas=V.id_ventas
INNER JOIN Producto P ON P.id_producto=PV.id_producto
	---El motivo de esta consulta es para saber el nombre del producto , cuanto despcuento tiene dicho producto
	---la monto final de dinero que se tuvo que pagar el dia que se compro ese producto y el dia que se realizo
	---la factura

SELECT (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO, DE.Fecha_inicio, D.Nombre_departamento, A.Nombre_Area
FROM Área A INNER JOIN Departamento D ON D.id_area=A.id_area
INNER JOIN Departamento_empleado DE ON DE.id_departamento=D.id_departamento
INNER JOIN Empleado E ON E.id_empleado=DE.id_empleado
	---El motivo de esta consulta es parasaber el nombre completo del empleado el nobre departamento y area en el 
	---cual trabaja asi como la fecha en la cual inicio a trabajar en dicho departamento.


-------4 Consultas con 5 tablas-------
SELECT E.Nombre_empledo, P.nombre_puesto, PE.Fecha_otorga, C.Tipo_contrato, CE.Fecha_inicio
FROM PUESTO  P INNER JOIN Puesto_empleado PE ON PE.id_puesto=P.id_puesto
INNER JOIN Empleado E ON E.id_empleado=PE.id_empleado
INNER JOIN Contrato_Empleado CE ON CE.id_empleado=E.id_empleado
INNER JOIN Contrato C ON C.id_contrato=CE.id_contrato
	---El  motivo e sta consulta es para saber el nombre del empleado, el puesto en el que se encuenta y la fecha
	---en la que se le otorgo sicho puesto, tambien el tipo de contrato que tiene ya sea de 6, 3 ,24 , etc meses y
	---la fecha en la que incia dicho contrato.

SELECT P.Nombre, I.No_sucursal, INP.Cantidad, PV.Descuento, V.Monto_final
FROM Inventario I INNER JOIN Inventario_Producto INP ON INP.id_inventario=I.id_inventario
INNER JOIN Producto P ON P.id_producto=INP.id_producto
INNER JOIN Producto_Ventas PV ON PV.id_producto=P.id_producto
INNER JOIN Ventas V ON V.id_ventas=PV.id_ventas
	---El motivo de esta  consulata es paa saber el ombre del producto cual es la cantidad que se tienen en un
	---numero de sucursal, asi mismo saber cual es el descuento que  tiene ese producto y cual es monto final
	---de dinero que se pago en total el dia que se compro ese producto.

SELECT P.Nombre, C.Fecha_inicio FECH_INICIO_CATA, C.Fecha_fin FECH_FIN_CATA, PC.Descuento, S.Nombre_sucursal, 
CA.Fecha_inicio FECHA_INICIO_SU, CA.Fecha_fin FECHA_FIN_SU
FROM Sucursal S INNER JOIN  Sucursal_catalogo CA ON CA.id_catalogo=S.id_sucursal
INNER JOIN Catalogo C ON C.id_catalogo=CA.id_catalogo
INNER JOIN Producto_Catalogo PC ON PC.id_catalogo=C.id_catalogo
INNER JOIN Producto P ON P.id_producto=PC.id_producto
	---El motivo de esta consulta es para saber el nobredell producto, la fehca de inicio y fin del catalogo, el  
	---el nombre de la sucursal, la fecha de inicio y de fin del catalogo que tiene la sucursal, el descuento que
	---tiene el producto  dentro del catalogo.

SELECT C.Nombre_cliente, P.Nombre, PV.Descuento, V.Monto_final, TV.Descripcion
FROM Producto P INNER JOIN Producto_Ventas PV ON PV.id_producto=P.id_producto
INNER JOIN Ventas V ON PV.id_ventas=V.id_ventas
INNER JOIN Tipo_venta TV ON TV.id_tipoventa=V.id_tipoventa
INNER JOIN Cliente C ON V.id_cliente=C.id_cliente
	---El motivo de esta consulta es para saber el nombre del cliente, el nombre del producto asi como el descuento,
	---el monto final que se pago el dia que se compro dicho produto y por ultimo el tipo de venta, es decir, si fue
	---venta en linea, en la sucral, por pick up, etc.


-------4 Consultas con 6 tablas-------
SELECT (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO, A.Nombre_Area, D.Nombre_departamento, DE.Fecha_inicio,
C.Fecha_contrato, CE.Fecha_inicio
FROM Área A INNER JOIN Departamento D ON D.id_area=A.id_area
INNER JOIN Departamento_empleado DE ON DE.id_departamento=D.id_departamento
INNER JOIN Empleado E ON E.id_empleado=DE.id_empleado
INNER JOIN Contrato_Empleado CE ON CE.id_empleado=E.id_empleado
INNER JOIN Contrato C ON C.id_contrato=CE.id_contrato
	---El motivo de esta consulta es para saber el nombre completo del empleado, el nombre del area y departameto
	---en el cual trabaja, la fecha de inicio de trabjo en el departamento, la fecha de incio del contrato del 
	---empleado y la fecha de contrato.

SELECT TP.Descripcion, V.Monto_final, C.Nombre_cliente, SC.Fecha_ultimacompra, S.Nombre_sucursal, M.Nombre_municipio
FROM Tipo_venta TP INNER JOIN Ventas V ON TP.id_tipoventa=V.id_tipoventa
INNER JOIN Cliente C ON V.id_cliente=C.id_cliente
INNER JOIN Sucursal_Cliente SC ON SC.id_cliente=C.id_cliente
INNER JOIN Sucursal S ON S.id_sucursal=SC.id_sucursal
INNER JOIN Municipio M ON M.id_municipio=S.id_municipio
	---El motivo de esta consulta es para saber le nombre del cliente, ele nombre de la sucursal en la que compra
	---la fecha de l ultima vez que compro en dicha sucursal y el nombre del minicipio en el que se encuentra dicha
	---sucursal, asi como el monto final que pago en su visita a esa sucursal y el tipo de venta fue(en linea,
	---sucrusal, pick up)

SELECT C.Nombre, P.Nombre, INP.Cantidad, I.No_sucursal, PV.Precio, V.Ahorro
FROM Categoría C INNER JOIN Producto P ON P.id_categoria=C.id_categoria
INNER JOIN Inventario_Producto INP ON INP.id_producto=P.id_producto
INNER JOIN Inventario I ON INP.id_inventario=I.id_inventario
INNER JOIN Producto_Ventas PV ON PV.id_producto=P.id_producto
INNER JOIN VENTAS V ON V.id_ventas=PV.id_ventas
	---El motivo esta consulta es para saber el nombre del producto a el nombre de la categoria a la que  pertenece
	---dicho product, la cantidad del producto que se tiene y a que sucursal (numero) tiene esa cantidad, el precio
	---al cual se vendio el producto y cuanto se ahorro en total de su compra de ese dia.

SELECT P.Nombre, PC.Descuento, C.Fecha_inicio INICIO_CATA, C.Fecha_fin FIN_CATA, SC.Fecha_fin FIN_SURSAL,
SC.Fecha_inicio INICIO_SUCRSAL, S.Nombre_sucursal, M.Nombre_municipio
FROM Producto P INNER JOIN Producto_Catalogo PC ON PC.id_producto=P.id_producto
INNER JOIN Catalogo C ON C.id_catalogo=PC.id_catalogo
INNER JOIN Sucursal_catalogo SC ON SC.id_catalogo=C.id_catalogo
INNER JOIN Sucursal S ON S.id_sucursal=S.id_sucursal
INNER JOIN Municipio M ON M.id_municipio=S.id_municipio
	---El motivo de esta consulta es para saber el nombre del producto, las fechas de inicio y de fin del catalogo
	---en el catalogo, cuanto tiene de descuento tiene ese producto dentro del catalogo, el nombre de la sucursal, 
	---el nombre del municipio en el cual esta ubicado la sucursal, y por ultimo las fechas de inicio y de fin del
	---catalogo en la sucursal.


-------5 Consultas de agrupación-------
SELECT TP.Descripcion, MIN(V.Ahorro)
FROM Tipo_venta TP INNER JOIN Ventas V ON V.id_tipoventa=TP.id_tipoventa
GROUP BY TP.Descripcion
	---El motivo de esta consulta es para saber el tipo de venta que tiene el menor ahorro de las ventas,
	---agrupados por el nombre del tipo de venta

SELECT COUNT(C.Nombre) CATEGORIA_PERTENECE, P.Nombre
FROM Producto P INNER JOIN Categoría C ON C.id_categoria=P.id_categoria
GROUP BY P.Nombre
	---El motivo de esta consulta es para contar la cantidad de categorias en la que esta un producto,
	---agrupado por el nombre del producto.

SELECT P.Precio, COUNT (P.Nombre) PRODUCTOS_CANTIDAD
FROM Producto P
GROUP BY  P.Precio
	---El motivo de esta consulta es para saber la cantidad de productos que tiene un mismo precio, agrupado por
	---el precio.

SELECT V.Fecha, COUNT (V.Fecha) CANTIDAD_COMPRAS
FROM Ventas V
GROUP BY V.Fecha
	---El motivo de esta consulta es para saber la cantidad de fechas que hay en la base de datos en la tabla ventas
	---agrupado por fechas.

SELECT COUNT(Salario)CANTIDAD_SALARIOS, Salario
FROM Contrato
GROUP BY Salario
	---El motivo de esta consulta es para saber la cantidad de salarios que hay en la base de datos en la tabla
	---contrato agrupado por salario


-------10 Vistas-------
GO
CREATE VIEW EMPLEADO_FECHAPUETO 
AS
SELECT (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO, PE.Fecha_otorga
FROM Empleado E INNER JOIN Puesto_empleado PE ON PE.id_empleado=E.id_empleado
GO

SELECT * FROM EMPLEADO_FECHAPUETO 
GO
SELECT NOMBRE_COMPLETO FROM EMPLEADO_FECHAPUETO 
GO

	---El motivo de esta vista es para poder saber el nombre compleato del empleado
	---y la fecha en que se le otrorgo el  puesto o a dicho empleado.

CREATE VIEW EMPLEADO_NOMDEPART_NOMAREA
AS
SELECT (E.Nombre_empledo + ' ' + E.Apaterno) NOMBRE_COMPLETO, DE.Fecha_inicio, D.Nombre_departamento, A.Nombre_Area
FROM Área A INNER JOIN Departamento D ON D.id_area=A.id_area
INNER JOIN Departamento_empleado DE ON DE.id_departamento=D.id_departamento
INNER JOIN Empleado E ON E.id_empleado=DE.id_empleado
GO

SELECT * FROM EMPLEADO_NOMDEPART_NOMAREA
GO
SELECT Fecha_inicio FROM EMPLEADO_NOMDEPART_NOMAREA
GO

	---El motivo de esta vista es parasaber el nombre completo del empleado el nobre departamento y area en el 
	---cual trabaja asi como la fecha en la cual inicio a trabajar en dicho departamento.

CREATE VIEW EMPLEADO_MUNI_ESTADO_PAIS
AS
SELECT EM.Nombre_empledo, M.Nombre_municipio, E.Nombre_estado, P.Nombre
FROM País P INNER JOIN Estado E ON E.id_pais=P.id_pais
INNER JOIN Municipio M ON M.id_estado=E.id_estado
INNER JOIN Empleado EM ON EM.id_municipio=M.id_municipio
GO

SELECT * FROM EMPLEADO_MUNI_ESTADO_PAIS
GO
SELECT Nombre_estado FROM EMPLEADO_MUNI_ESTADO_PAIS
GO

	---El motivo de  esta vista es para saber  el numbre del empleado, asi como el nombre del municipio 
	---de donde es dicho empleado,el nombre del estado en donde de se encuentra dicho municipio y el pais
	---en donde esta el estado.

CREATE VIEW EMPLEADO_PUESTO_CONTRATO
AS
SELECT E.Nombre_empledo, P.nombre_puesto, PE.Fecha_otorga, C.Tipo_contrato, CE.Fecha_inicio
FROM PUESTO  P INNER JOIN Puesto_empleado PE ON PE.id_puesto=P.id_puesto
INNER JOIN Empleado E ON E.id_empleado=PE.id_empleado
INNER JOIN Contrato_Empleado CE ON CE.id_empleado=E.id_empleado
INNER JOIN Contrato C ON C.id_contrato=CE.id_contrato
GO

SELECT * FROM EMPLEADO_PUESTO_CONTRATO
GO
SELECT Fecha_otorga FROM EMPLEADO_PUESTO_CONTRATO
GO

	---El  motivo de  esta vista es para saber el nombre del empleado, el puesto en el que se encuenta y la fecha
	---en la que se le otorgo sicho puesto, tambien el tipo de contrato que tiene ya sea de 6, 3 ,24 , etc meses y
	---la fecha en la que incia dicho contrato.

CREATE VIEW PUESTO_CATALOGO_SUURSAL
AS
SELECT P.Nombre, C.Fecha_inicio FECH_INICIO_CATA, C.Fecha_fin FECH_FIN_CATA, PC.Descuento, S.Nombre_sucursal, 
CA.Fecha_inicio FECHA_INICIO_SU, CA.Fecha_fin FECHA_FIN_SU
FROM Sucursal S INNER JOIN  Sucursal_catalogo CA ON CA.id_catalogo=S.id_sucursal
INNER JOIN Catalogo C ON C.id_catalogo=CA.id_catalogo
INNER JOIN Producto_Catalogo PC ON PC.id_catalogo=C.id_catalogo
INNER JOIN Producto P ON P.id_producto=PC.id_producto
GO

SELECT * FROM PUESTO_CATALOGO_SUURSAL
GO
SELECT Nombre_sucursal FROM PUESTO_CATALOGO_SUURSAL
GO

	---El motivo de  esta vista es para saber el nobredell producto, la fehca de inicio y fin del catalogo, el  
	---el nombre de la sucursal, la fecha de inicio y de fin del catalogo que tiene la sucursal, el descuento que
	---tiene el producto  dentro del catalogo.

CREATE VIEW EMPLEADO_MUNICIPIO
AS
SELECT (E.Nombre_empledo+''+E.Apaterno) NOMBRE_COMPLETO, M.Nombre_municipio
FROM Municipio M INNER JOIN Empleado E ON M.id_municipio=E.id_municipio
GO

SELECT * FROM EMPLEADO_MUNICIPIO
GO
SELECT NOMBRE_COMPLETO FROM EMPLEADO_MUNICIPIO
GO

	---El motivo de esta vista es para poder saber el nombre completo del empleado
	---y de que municipio es dicho empleado

CREATE VIEW CANTIDADPRODUCTOS_PRECIO
AS
SELECT P.Precio, COUNT (P.Nombre) PRODUCTOS_CANTIDAD
FROM Producto P
GROUP BY  P.Precio
GO

SELECT * FROM CANTIDADPRODUCTOS_PRECIO
GO
SELECT Precio FROM CANTIDADPRODUCTOS_PRECIO
GO

	---El motivo de  esta vista es para saber la cantidad de productos que tiene un mismo precio, agrupado por
	---el precio.

CREATE VIEW PRODUCTO_INVENTARIO2
AS
SELECT P.Nombre, INP.Cantidad AS CANTIDAD_INP, I.No_bodega
FROM Inventario I INNER JOIN Inventario_Producto INP ON INP.id_inventario=I.id_inventario
INNER JOIN Producto P ON P.id_producto=INP.id_producto
GO

SELECT * FROM PRODUCTO_INVENTARIO2
GO
SELECT No_bodega FROM PRODUCTO_INVENTARIO2 --ORDER BY No_bodega
GO
SELECT CANTIDAD_INP FROM PRODUCTO_INVENTARIO2
GO

	---El motico de  esta vista es para saber el nombre del producto la cantidad  que hay de este
	---y el numero  de sucursal que tiene dicha cantidad del producto


CREATE VIEW FACTURA_VENTA_PRODUCTO
AS
SELECT F.Fecha_factura, V.Monto_final, PV.Descuento, P.Nombre
FROM Factura F INNER JOIN Ventas V ON V.id_ventas=F.id_ventas
INNER JOIN Producto_Ventas PV ON PV.id_ventas=V.id_ventas
INNER JOIN Producto P ON P.id_producto=PV.id_producto	
GO

SELECT * FROM FACTURA_VENTA_PRODUCTO
GO
SELECT Monto_final FROM FACTURA_VENTA_PRODUCTO
GO

	---El motivo de  esta vista es para saber el nombre del producto , cuanto despcuento tiene dicho producto
	---la monto final de dinero que se tuvo que pagar el dia que se compro ese producto y el dia que se realizo
	---la factura

CREATE VIEW CANTIDAD_SALARIO
AS
SELECT COUNT(Salario)CANTIDAD_SALARIOS, Salario
FROM Contrato
GROUP BY Salario
GO

SELECT * FROM CANTIDAD_SALARIO
GO
SELECT Salario FROM CANTIDAD_SALARIO
GO

	---El motivo de  esta vista es para saber la cantidad de salarios que hay en la base de datos en la tabla
	---contrato agrupado por salario


--------5 subconsultas-------
SELECT (Nombre_empledo + ' ' + Apaterno) NOMBRE_COMPLETO FROM Empleado WHERE
id_empleado=(SELECT id_empleado FROM Puesto_empleado WHERE Fecha_otorga='2022-04-27')
	---El motivo de la subcunsulta es para poder saber el nombre completo del empleado
	---al que se le  otrorgo una fecha especifica en un puesto.


SELECT Nombre_empledo FROM Empleado WHERE id_empleado=(SELECT id_departamento FROM Departamento 
WHERE Nombre_departamento= 'ALMACEN')
	---El motivo de esta subconsulta es para saber los nombres de los empleados que trabaja en el departamento
	---de ALMACEN

SELECT Nombre_estado FROM Estado where id_estado=(SELECT id_pais FROM País WHERE Nombre='MÉXICO')
	---El motivo de esta subconsulta es para saber el nombre de los estados que tiene como pais  MEXICO

SELECT Nombre FROM Producto WHERE id_producto=(SELECT id_ventas FROM Ventas WHERE Ahorro=10)
	---El motivo de esta subconsulta es para saber el nombre del producto que tiene como ahorro 10 pesos

SELECT Nombre_empledo FROM Empleado WHERE id_empleado=(SELECT id_empleado FROM Contrato_Empleado
WHERE Fecha_inicio='2021-12-30')
	---El motivo de esta subconsulta es para saber los nombres de los empleados que tiene como fecha  de inicio 
	--de contrato 2021-12-30	


-------SELECT-------
SELECT * FROM Área
SELECT * FROM Cargo_laboral
SELECT * FROM Catalogo
SELECT * FROM Categoría
SELECT * FROM Cliente
SELECT * FROM Contrato
SELECT * FROM Contrato_Empleado
SELECT * FROM Departamento
SELECT * FROM Departamento_empleado
SELECT * FROM Empleado
SELECT * FROM Estado
SELECT * FROM Factura
SELECT * FROM Horario
SELECT * FROM Horario_empleado
SELECT * FROM Inventario
SELECT * FROM Inventario_Producto
SELECT * FROM Marca
SELECT * FROM Municipio
SELECT * FROM País
SELECT * FROM Producto
SELECT * FROM Producto_Catalogo
SELECT * FROM Producto_Ventas
SELECT * FROM Proveedores
SELECT * FROM Puesto
SELECT * FROM Puesto_empleado
SELECT * FROM Sucursal
SELECT * FROM Sucursal_catalogo
SELECT * FROM Sucursal_Cliente
SELECT * FROM Sucursal_Empleado
SELECT * FROM Sucursal_usuario
SELECT * FROM Tipo_venta
SELECT * FROM Usuario
SELECT * FROM Ventas