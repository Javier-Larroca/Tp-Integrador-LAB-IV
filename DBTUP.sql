create schema DBTUP;

use DBTUP;

create table materias
(
	Id int primary key not null AUTO_INCREMENT,
    Descripcion varchar(64) not null
);

 insert into materias (Descripcion) values ('Programación I');
 insert into materias (Descripcion) values ('Programación II');
 insert into materias (Descripcion) values ('Programación III');
 insert into materias (Descripcion) values ('Laboratorio I');
 insert into materias (Descripcion) values ('Laboratorio II');
 insert into materias (Descripcion) values ('Laboratorio III');
 insert into materias (Descripcion) values ('Laboratorio IV');
 insert into materias (Descripcion) values ('Ingles I');
 insert into materias (Descripcion) values ('Ingles II');
 insert into materias (Descripcion) values ('Estadística');
 insert into materias (Descripcion) values ('SPD');
 insert into materias (Descripcion) values ('ARSO');
 insert into materias (Descripcion) values ('Legislación');
 insert into materias (Descripcion) values ('Base de Datos');
 insert into materias (Descripcion) values ('Metodologia');
 
 create table localidades
(
	Id int primary key not null AUTO_INCREMENT,
    Descripcion varchar(64) not null
);

 insert into localidades (Descripcion) values ('General Pacheco');
 insert into localidades (Descripcion) values ('Tortuguitas');
 insert into localidades (Descripcion) values ('Coronel Pringles');
 insert into localidades (Descripcion) values ('Virreyes');
 insert into localidades (Descripcion) values ('San Fernando');
 insert into localidades (Descripcion) values ('Benavidez');
 insert into localidades (Descripcion) values ('Manuel Alberti');
 insert into localidades (Descripcion) values ('Delviso');
 insert into localidades (Descripcion) values ('Escobar');
 insert into localidades (Descripcion) values ('Maschwitz');
 insert into localidades (Descripcion) values ('San Miguel');
 insert into localidades (Descripcion) values ('Jose Clemente Paz');
 insert into localidades (Descripcion) values ('Villa Rosa');
 insert into localidades (Descripcion) values ('Vicente Lopez');
 insert into localidades (Descripcion) values ('Olivos');
 
  create table provincias
(
	Id int primary key not null AUTO_INCREMENT,
    Descripcion varchar(64) not null
);

 insert into provincias (Descripcion) values ('Buenos Aires');
 insert into provincias (Descripcion) values ('Entre Rios');
 insert into provincias (Descripcion) values ('Santa Fe');
 insert into provincias (Descripcion) values ('La Pampa');
 insert into provincias (Descripcion) values ('Córdoba');
 insert into provincias (Descripcion) values ('San Luis');
 insert into provincias (Descripcion) values ('San Juan');
 insert into provincias (Descripcion) values ('Chaco');
 insert into provincias (Descripcion) values ('Santiago del Estero');
 insert into provincias (Descripcion) values ('Corrientes');
 insert into provincias (Descripcion) values ('Misiones');
 insert into provincias (Descripcion) values ('Tucumán');
 insert into provincias (Descripcion) values ('Formosa');
 insert into provincias (Descripcion) values ('La Rioja');
 insert into provincias (Descripcion) values ('Catamarca');
 
   create table nacionalidades
(
	Id int primary key not null AUTO_INCREMENT,
    Descripcion varchar(64) not null
);

 insert into nacionalidades (Descripcion) values ('Argentina');
 insert into nacionalidades (Descripcion) values ('Brasil');
 insert into nacionalidades (Descripcion) values ('Paraguay');
 insert into nacionalidades (Descripcion) values ('Chile');
 insert into nacionalidades (Descripcion) values ('Uruguay');
 insert into nacionalidades (Descripcion) values ('Venezuela');
 insert into nacionalidades (Descripcion) values ('Bolivia');
 insert into nacionalidades (Descripcion) values ('Perú');
 insert into nacionalidades (Descripcion) values ('Colombia');
 insert into nacionalidades (Descripcion) values ('Ecuador');
 insert into nacionalidades (Descripcion) values ('México');
 insert into nacionalidades (Descripcion) values ('Panamá');
 insert into nacionalidades (Descripcion) values ('Honduras');
 insert into nacionalidades (Descripcion) values ('Costa Rica');
 insert into nacionalidades (Descripcion) values ('Puerto Rico');
 
    create table tiposUsuario
(
	Id int primary key not null AUTO_INCREMENT,
    Descripcion varchar(64) not null
);

 insert into tiposUsuario (Descripcion) values ('Administrador');
 insert into tiposUsuario (Descripcion) values ('Docente');
 
create table usuarios
(
	Id int primary key not null AUTO_INCREMENT,
    Mail varchar(100) not null,
    Contrasena varchar(20) not null,
    Tipo int not null,
    FOREIGN KEY(Tipo) REFERENCES tiposUsuario(Id)
);

 insert into usuarios (Mail,Contrasena,Tipo) values ('admin@admin.com','admin',1);
 
 create table docentes
 (
	Id int primary key not null,
    Nombre varchar(64) not null,
    Apellido varchar(64) not null,
    Dni varchar(10) not null,
    Legajo int not null,
    FechaNac varchar(10) not null,
    IdLocalidad int not null,
    IdNacionalidad int not null,
    Telefono varchar(20) not null,
    Direccion varchar(250) not null,
    
    FOREIGN KEY(IdNacionalidad) REFERENCES nacionalidades(Id),
    FOREIGN KEY(IdLocalidad) REFERENCES localidades(Id),
    FOREIGN KEY(Id) REFERENCES usuarios(Id)
    
 );
 
  create table alumnos
 (
	Id int primary key not null,
    Mail varchar(100) not null,
    Nombre varchar(64) not null,
    Apellido varchar(64) not null,
    Dni varchar(10) not null,
    Legajo int not null,
    FechaNac varchar(10) not null,
    IdProvincia int not null,
    IdNacionalidad int not null,
    Telefono varchar(20) not null,
    Direccion varchar(250) not null,
    
    FOREIGN KEY(IdProvincia) REFERENCES provincias(Id),
    FOREIGN KEY(IdNacionalidad) REFERENCES nacionalidades(Id)
    
 );
 
   create table cursos
 (
	Id int primary key not null,
    IdMateria int not null,
    Semestre int not null,
    Anio int not null,
    IdDocente int not null,
    
    FOREIGN KEY(IdMateria) REFERENCES materias(Id),
    FOREIGN KEY(IdDocente) REFERENCES docentes(Id)
    
 );
 
    create table alumnosXcurso
 (
	IdCurso int not null,
    IdAlumno int not null,
    
    FOREIGN KEY(IdCurso) REFERENCES cursos(Id),
    FOREIGN KEY(IdAlumno) REFERENCES alumnos(Id),
    primary key(IdCurso,IdAlumno)
    
 );
 

 