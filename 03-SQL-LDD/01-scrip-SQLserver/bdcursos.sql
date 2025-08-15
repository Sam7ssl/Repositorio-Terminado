-- Tabla Curso
CREATE TABLE Curso (
    id_curso INT PRIMARY KEY,
    nombre NVARCHAR2(100) NOT NULL,
    codigo NCHAR(10) NOT NULL
);

-- Tabla Estudiante
CREATE TABLE Estudiante (
    id_estudiante INT PRIMARY KEY,
    nombre NVARCHAR2(100) NOT NULL,
    correo NVARCHAR2(100)
);

-- Tabla Inscripcion (relación muchos a muchos)
CREATE TABLE Inscripcion (
    id_inscripcion INT PRIMARY KEY,
    id_curso INT,
    id_estudiante INT,
    fecha_inscripcion DATE DEFAULT SYSDATE,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante)
);
select * from inscripcion;



-- Insertar cursos
INSERT INTO Curso VALUES (1, 'Base de Datos', 'BD101');
INSERT INTO Curso VALUES (2, 'Programación', 'PR102');

-- Insertar estudiantes
INSERT INTO Estudiante VALUES (1, 'Carlos', 'carlitos@email.com');
INSERT INTO Estudiante VALUES (2, 'Juan', 'iguana@email.com');

-- Inscripciones
INSERT INTO Inscripcion VALUES (1, 1, 1, SYSDATE);
INSERT INTO Inscripcion VALUES (2, 2, 1, SYSDATE);
INSERT INTO Inscripcion VALUES (3, 2, 2, SYSDATE);
