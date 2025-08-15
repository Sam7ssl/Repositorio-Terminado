--Crear bd
CREATE DATABASE bdmorgan;
GO

USE bdmorgan;
GO

CREATE TABLE empleado(
	idEmpleado int not null identity(1,1),
	Nombre varchar(50) not null,
	Apellido1 varchar(20) not null,
	Apellido2 varchar(20),
	edad int not null,
	estatus char(1) not null default 'A',
	IdDepto int not null,
);
GO

--CREAR TABLA DEPARTAMENTO
CREATE TABLE Departamentos(
	IdDepto int not null identity(1,1),
	NombreDepto varchar(20) not null,
	IdEmpleado int not null,
	CONSTRAINT pk_depto
	Primary key (IdDepto)
);
GO

ALTER TABLE Empleado
ADD jef int;
GO

--Restricciones
ALTER TABLE empleado
ADD CONSTRAINT pk_empleado
PRIMARY KEY (IdEmpleado)
GO

ALTER TABLE Empleado
ADD CONSTRAINT chk_edad
check(Edad between 18 and 60)
GO

ALTER TABLE Empleado
ADD CONSTRAINT fk_Empleado_EmplJefe
FOREIGN KEY (jef)
REFERENCES Empleado(IdEmpleado)