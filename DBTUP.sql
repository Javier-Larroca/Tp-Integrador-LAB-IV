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
    Mail varchar(100) not null unique,
    Contrasena varchar(20) not null,
    Tipo int not null,
    FOREIGN KEY(Tipo) REFERENCES tiposUsuario(Id)
);

/* Administradores */
insert into usuarios (Mail,Contrasena,Tipo) values ('admin@admin.com','admin',1);
insert into usuarios (Mail,Contrasena,Tipo) values ('root@root.com','root',1);
/* Docentes */
insert into usuarios (Mail,Contrasena,Tipo) values ('Laura@Radetich.com','LauraRadetich',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Agustina@Gonzalez.com','AgustinaGonzalez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Antonella@Rodriguez.com','AntonellaRodriguez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Martina@Fernandez.com','MartinaFernandez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Joaquín@Lopez.com','JoaquínLopez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Leonardo@Diaz.com','LeonardoDiaz',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Luciano@Martinez.com','LucianoMartinez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Cecilia@Pérez.com','CeciliaPérez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Delfina@Romero.com','DelfinaRomero',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Florencia@Sánchez.com','FlorenciaSánchez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Olivia@García.com','OliviaGarcía',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Belén@Sosa.com','BelénSosa',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Valentino@Torres.com','ValentinoTorres',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Martín@Alvarez.com','MartínAlvarez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Carolina@Glere.com','CarolinaGlere',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Esteban@Quito.com','Esteban Quito',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Suana@Alvarez.com','SusanaAlvarez',2);
insert into usuarios (Mail,Contrasena,Tipo) values ('Abrahan@Ramírez.com','AbrahanRamírez',2);
 
 create table docentes
 (
	Id int primary key not null,
    Nombre varchar(64) not null,
    Apellido varchar(64) not null,
    Dni varchar(10) not null unique,
    Legajo int not null unique,
    FechaNac varchar(10) not null,
    IdLocalidad int not null,
    IdNacionalidad int not null,
    Telefono varchar(20) not null,
    Direccion varchar(250) not null,
    Estado bit not null default True,
    
    FOREIGN KEY(IdNacionalidad) REFERENCES nacionalidades(Id),
    FOREIGN KEY(IdLocalidad) REFERENCES localidades(Id),
    FOREIGN KEY(Id) REFERENCES usuarios(Id)
    
 );
 
insert into docentes (id,Nombre,Apellido,Dni,Legajo,FechaNac,IdLocalidad,IdNacionalidad,Telefono,Direccion) 
values
(3, 'Laura','Radetich', '12391', '1239', '10-02-1989', 2, 1, '0303456', 'Corrientes 456'),
(4, 'Agustina','Gonzalez', '45682', '4568', '09-01-1984', 1, 2, '01145682', 'Rawson 123'),
(5, 'Antonella','Rodriguez', '78973', '7897', '22-03-1994', 3, 5, '01178973', 'Boedo 789'),
(6, 'Martina','Fernandez', '74164', '7416', '15-04-1996', 5, 4, '01174164', 'Alvear 987'),
(7, 'Joaquín','Lopez', '85255', '8525', '7-05-1980', 5, 15, '01185255', 'San Martin 963'),
(8, 'Leonardo','Diaz', '96346', '9634', '13-06-1987', 6, 13, '01196346', 'Flesia 7410'),
(9, 'ALuciano','Martinez', '36937', '3693', '25-07-1989', 7, 12, '01136937', 'Belgrano 852'),
(10, 'Cecilia','Pérez', '25828', '2582', '27-08-1990', 8, 11, '01125828', 'Moreno 654'),
(11, 'Delfina','Romero', '14719', '1471', '28-09-1984', 9, 10, '01114719', 'Garay 486'),
(12, 'Florencia','Sánchez', '32191', '3219', '19-10-1993', 10, 9, '01132191', 'Sarmiento 153'),
(13, 'Olivia','García', '65482', '6548', '02-11-1992', 11, 8, '01165482', 'Suarez 759'),
(14, 'Belén','Sosa', '98773', '9877', '04-12-1979', 12, 7, '01198773', 'Medina 953'),
(15, 'Valentino','Torres', '95164', '9516', '22-01-1984', 13, 6, '01195164', 'Francia 751'),
(16, 'Martín','Alvarez', '75355', '7535', '17-02-1987', 14, 5, '01175355', 'Rivadavia 684'),
(17, 'Carolina','Glere', '62446', '6244', '21-03-1995', 15, 4, '01162446', 'Avellaneda 351'),
(18, 'Esteban','Quito', '75937', '7593', '17-04-1997', 1, 2, '01175937', 'Colon 957'),
(19, 'Suana','Alvarez', '15328', '1532', '04-05-1982', 2, 3, '01115328', 'España 1532'),
(20, 'Abrahan','Ramírez', '75119', '7511', '19-12-1983', 3, 1, '01175119', 'Roca 1593');
 
  create table alumnos
 (
	Id int primary key not null AUTO_INCREMENT,
    Mail varchar(100) not null,
    Nombre varchar(64) not null,
    Apellido varchar(64) not null,
    Dni varchar(10) not null unique,
    Legajo int not null unique,
    FechaNac varchar(10) not null,
    IdProvincia int not null,
    IdNacionalidad int not null,
    Telefono varchar(20) not null,
    Direccion varchar(250) not null,
    Estado bit not null default True,
    
    FOREIGN KEY(IdProvincia) REFERENCES provincias(Id),
    FOREIGN KEY(IdNacionalidad) REFERENCES nacionalidades(Id)
    
 );
 
   create table cursos
 (
	Id int primary key not null AUTO_INCREMENT,
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
    Parcial1 int null,
    Parcial2 int null,
    Recuperatorio1 int null,
    Recuperatorio2 int null,
    Estado bit null,
    
    FOREIGN KEY(IdCurso) REFERENCES cursos(Id),
    FOREIGN KEY(IdAlumno) REFERENCES alumnos(Id),
    primary key(IdCurso,IdAlumno)
    
 );
 

 