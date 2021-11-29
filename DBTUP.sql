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
(3, 'Laura','Radetich', '38123918', '1239', '1989-02-10', 2, 1, '0303456', 'Corrientes 456'),
(4, 'Agustina','Gonzalez', '36456827', '4568', '1984-01-09', 1, 2, '01145682', 'Rawson 123'),
(5, 'Antonella','Rodriguez', '40789736', '7897', '1994-03-22', 3, 5, '01178973', 'Boedo 789'),
(6, 'Martina','Fernandez', '41741645', '7416', '1996-04-15', 5, 4, '01174164', 'Alvear 987'),
(7, 'Joaquín','Lopez', '37852554', '8525', '1980-05-07', 5, 15, '01185255', 'San Martin 963'),
(8, 'Leonardo','Diaz', '42963463', '9634', '1987-06-13', 6, 13, '01196346', 'Flesia 7410'),
(9, 'ALuciano','Martinez', '43369372', '3693', '1989-07-25', 7, 12, '01136937', 'Belgrano 852'),
(10, 'Cecilia','Pérez', '39258281', '2582', '1990-08-27', 8, 11, '01125828', 'Moreno 654'),
(11, 'Delfina','Romero', '45147190', '1471', '28-09-1984', 9, 10, '01114719', 'Garay 486'),
(12, 'Florencia','Sánchez', '44321910', '3219', '1993-10-19', 10, 9, '01132191', 'Sarmiento 153'),
(13, 'Olivia','García', '35654821', '6548', '1992-11-02', 11, 8, '01165482', 'Suarez 759'),
(14, 'Belén','Sosa', '36987732', '9877', '1979-12-04', 12, 7, '01198773', 'Medina 953'),
(15, 'Valentino','Torres', '33951643', '9516', '1984-01-22', 13, 6, '01195164', 'Francia 751'),
(16, 'Martín','Alvarez', '40753554', '7535', '1987-02-17', 14, 5, '01175355', 'Rivadavia 684'),
(17, 'Carolina','Glere', '41624465', '6244', '1995-03-21', 15, 4, '01162446', 'Avellaneda 351'),
(18, 'Esteban','Quito', '39759376', '7593', '1997-17-04', 1, 2, '01175937', 'Colon 957'),
(19, 'Suana','Alvarez', '42153287', '1532', '1982-05-04', 2, 3, '01115328', 'España 1532'),
(20, 'Abrahan','Ramírez', '38751198', '7511', '1983-12-19', 3, 1, '01175119', 'Roca 1593');
 
  create table alumnos
 (
	Id int primary key not null AUTO_INCREMENT,
    Mail varchar(100) not null unique,
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
 
 INSERT INTO ALUMNOS VALUES(1, 'elmerr.vasquez@gmail.com', 'Elmer', 'Vasquez', '38749844', 16854975, '1995-07-23', 1, 1, '1168987456', 'Superi 3356', 1);
 INSERT INTO ALUMNOS VALUES(2, 'benito.diaz@gmail.com', 'Benito', 'Diaz', '41759884', 65432132, '1995-06-15', 2, 3, '1189654321', 'Nuñez 6589', 1);
 INSERT INTO ALUMNOS VALUES(3, 'david.gonzales@gmail.com', 'David', 'Gonzales', '37569852', 66552285, '1993-08-10', 3, 1, '1164895212', 'Larralde 3583', 1);
 INSERT INTO ALUMNOS VALUES(4, 'noelia.marquez@gmail.com', 'Noelia', 'Marquez', '37885997', 22134681, '1997-02-15', 4, 5, '1179854631', 'Juncal 2259', 1);
 INSERT INTO ALUMNOS VALUES(5, 'mariana.martinez@gmail.com', 'Mariana', 'Martinez', '41665321', 3215648, '1997-06-15', 5, 4, '1146879211', 'Honduras 1135', 1);
 INSERT INTO ALUMNOS VALUES(6, 'diego.pugliese@gmail.com', 'Diego', 'Pugliese', '38998265', 32154685, '1995-10-22', 6, 2, '1154226879', 'Arribeños 4652', 1);
 INSERT INTO ALUMNOS VALUES(7, 'noelia.yrigaray@gmail.com', 'Noelia', 'Yrigaray', '35648222', 54569872, '1990-11-22', 7, 8, '1133115549', 'San martin 2256', 1);
 INSERT INTO ALUMNOS VALUES(8, 'damian.ferreira@gmail.com', 'Damian', 'Ferreira', '36221879', 21694487, '1991-12-30', 8, 9, '1143568279', 'Paraná 3399', 1);
 INSERT INTO ALUMNOS VALUES(9, 'luis.rodriguez@gmail.com', 'Luis', 'Rodriguez', '30654155', 14569828, '1985-11-30', 9, 9, '1188568279', 'Ramón castro 5586', 1);
 INSERT INTO ALUMNOS VALUES(10, 'juan.fernandez@gmail.com', 'Juan', 'Fernandez', '45879111', 13358755, '2001-01-02', 9, 9, '1198521648', 'Pelliza 333', 1);
 INSERT INTO ALUMNOS VALUES(11, 'soledad.rico@gmail.com', 'Soledad', 'Rico', '46546887', 33246788, '2002-02-03', 6, 2, '1164985238', 'Quintana 251', 1);
 INSERT INTO ALUMNOS VALUES(12, 'soledad.rodriguez@gmail.com', 'Soledad', 'Rodriguez', '42135879', 22794613, '1998-02-04', 7, 2, '1197856346', 'Maipú 450', 1);
 INSERT INTO ALUMNOS VALUES(13, 'nicolas.malaroda@gmail.com', 'Nicolas', 'Malaroda', '43135123', 45963158, '1999-10-09', 10, 9, '1135469879', 'Balbín 6847', 1);
 INSERT INTO ALUMNOS VALUES(14, 'gabriel.hernandez@gmail.com', 'Gabriel', 'Hernandez', '41587124', 47896238, '1996-07-07', 12, 11, '1177985462', 'Ruiz Huidobro 1125', 1);
 INSERT INTO ALUMNOS VALUES(15, 'florencia.pug@gmail.com', 'Florencia', 'Pug', '46257214', 13547982, '2002-04-09', 13, 11, '1198745132', 'Pinto 120', 1);

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
 
 INSERT INTO CURSOS VALUES(1 , 1, 1, 2020, 3);
 INSERT INTO CURSOS VALUES(2 , 2, 2, 2020, 4);
 INSERT INTO CURSOS VALUES(3 , 3, 1, 2021, 5);
 INSERT INTO CURSOS VALUES(4 , 4, 1, 2020, 6);
 INSERT INTO CURSOS VALUES(5 , 5, 2, 2020, 7);
 INSERT INTO CURSOS VALUES(6 , 6, 1, 2021, 8);
 INSERT INTO CURSOS VALUES(7 , 7, 2, 2021, 9);
 INSERT INTO CURSOS VALUES(8 , 8, 1, 2020, 10);
 INSERT INTO CURSOS VALUES(9 , 9, 2, 2020, 11);
 INSERT INTO CURSOS VALUES(10 , 10, 2, 2020, 12);
 INSERT INTO CURSOS VALUES(11 , 11, 1, 2020, 13); 
 INSERT INTO CURSOS VALUES(12 , 12, 2, 2020, 14);
 INSERT INTO CURSOS VALUES(13 , 13, 1, 2021, 15);
 INSERT INTO CURSOS VALUES(14 , 14, 2, 2021, 16);
 INSERT INTO CURSOS VALUES(15 , 15, 2, 2021, 17);
 INSERT INTO CURSOS VALUES(16 , 1, 1, 2020, 4);
 INSERT INTO CURSOS VALUES(17 , 2, 2, 2020, 5);
 INSERT INTO CURSOS VALUES(18 , 3, 1, 2021, 6);
 INSERT INTO CURSOS VALUES(19 , 4, 1, 2020, 7);
 INSERT INTO CURSOS VALUES(20 , 5, 2, 2020, 8);
 INSERT INTO CURSOS VALUES(21 , 6, 1, 2021, 9);
 INSERT INTO CURSOS VALUES(22 , 7, 2, 2021, 10);
 INSERT INTO CURSOS VALUES(23 , 8, 1, 2020, 11);
 INSERT INTO CURSOS VALUES(24 , 9, 2, 2020, 12);
 INSERT INTO CURSOS VALUES(25 , 10, 2, 2020, 13);
 INSERT INTO CURSOS VALUES(26 , 11, 1, 2020, 14); 
 INSERT INTO CURSOS VALUES(27 , 12, 2, 2020, 15);
 INSERT INTO CURSOS VALUES(28 , 13, 1, 2021, 16);
 INSERT INTO CURSOS VALUES(29 , 14, 2, 2021, 17);
 INSERT INTO CURSOS VALUES(30 , 15, 2, 2021, 18);
 INSERT INTO CURSOS VALUES(31 , 1, 1, 2020, 5);
 INSERT INTO CURSOS VALUES(32 , 2, 2, 2020, 6);
 INSERT INTO CURSOS VALUES(33 , 3, 1, 2021, 7);
 INSERT INTO CURSOS VALUES(34 , 4, 1, 2020, 8);
 INSERT INTO CURSOS VALUES(35 , 5, 2, 2020, 9);
 INSERT INTO CURSOS VALUES(36 , 6, 1, 2021, 10);
 INSERT INTO CURSOS VALUES(37 , 7, 2, 2021, 11);
 INSERT INTO CURSOS VALUES(38 , 8, 1, 2020, 12);
 INSERT INTO CURSOS VALUES(39 , 9, 2, 2020, 13);
 INSERT INTO CURSOS VALUES(40 , 10, 2, 2020, 14);
 INSERT INTO CURSOS VALUES(41 , 11, 1, 2020, 15); 
 INSERT INTO CURSOS VALUES(42 , 12, 2, 2020, 16);
 INSERT INTO CURSOS VALUES(43 , 13, 1, 2021, 17);
 INSERT INTO CURSOS VALUES(44 , 14, 2, 2021, 18);
 INSERT INTO CURSOS VALUES(45 , 15, 2, 2021, 19);
 INSERT INTO CURSOS VALUES(46 , 1, 1, 2020, 6);
 INSERT INTO CURSOS VALUES(47 , 2, 2, 2020, 7);
 INSERT INTO CURSOS VALUES(48 , 3, 1, 2021, 8);
 INSERT INTO CURSOS VALUES(49 , 4, 1, 2020, 9);
 INSERT INTO CURSOS VALUES(50 , 5, 2, 2020, 10);
 INSERT INTO CURSOS VALUES(51 , 6, 1, 2021, 11);
 INSERT INTO CURSOS VALUES(52 , 7, 2, 2021, 12);
 INSERT INTO CURSOS VALUES(53 , 8, 1, 2020, 13);
 INSERT INTO CURSOS VALUES(54 , 9, 2, 2020, 14);
 INSERT INTO CURSOS VALUES(55 , 10, 2, 2020, 15);
 INSERT INTO CURSOS VALUES(56 , 11, 1, 2020, 16); 
 INSERT INTO CURSOS VALUES(57 , 12, 2, 2020, 17);
 INSERT INTO CURSOS VALUES(58 , 13, 1, 2021, 18);
 INSERT INTO CURSOS VALUES(59 , 14, 2, 2021, 19);
 INSERT INTO CURSOS VALUES(60 , 15, 2, 2021, 20);
 
 
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
 
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 1,  5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 2,  6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 3,  7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 4,  8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 5,  9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 6,  10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 7,  1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 8,  2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 9,  3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 10, 4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 11, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 12, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 13, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 14, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(1, 15, 9);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 1, 1,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 3,3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 4, 4,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 5, 5,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 6, 6,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 7, 7,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 8, 8,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 9, 9,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 10, 10,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 11, 9,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 12, 8,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 14, 7,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(2, 15, 6,9);  
  
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 1, 1,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 3, 3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 4, 4,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 5, 5,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 6, 6,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 7, 7,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 8, 8,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 9, 9,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 10, 10,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 11, 9,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 12, 8,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 14, 7,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(3, 15, 6,9);  

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 1, 1,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 3, 3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 4, 4,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 5, 5,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 6, 6,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 7, 7,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 8, 8,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 9, 9,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 10, 10,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 11, 9,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 12, 8,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 14, 7,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(4, 15, 6,9);  

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 1, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 2, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 3, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 4, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 5, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 6, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 7, 1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 8, 2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 9, 3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 10, 4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 11, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 12, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 13, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 14, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(5, 15, 9);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 1, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 2, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 3, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 4, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 5, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 6, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 7, 1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 8, 2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 9, 3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 10, 4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 11, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 12, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 13, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 14, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(6, 15, 9);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 1, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 2, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 3, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 4, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 5, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 6, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 7, 1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 8, 2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 9, 3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 10, 4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 11, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 12, 6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 13, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 14, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(7, 15, 9);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 1, 1,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 2, 2,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 3, 3,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 4, 4,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 5, 10,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 6, 6,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 7, 7,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 8, 8,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 9, 9,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 10, 10,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 11, 1,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 12, 3,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 14, 5,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(8, 15, 6,5); 

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 1, 1,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 3, 3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 4, 3,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 5, 10,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 6, 8,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 7, 7,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 8, 6,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 9, 1,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 10, 2,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 11, 3,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 12, 10,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 13, 10,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 14, 10,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(9, 15, 9,9); 

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 1, 10,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 2, 10,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 3, 9,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 4, 9,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 5, 7,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 6, 8,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 7, 7,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 8, 8,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 9, 9,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 10, 6,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 11, 5,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 12, 7,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 13, 3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 14, 8,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(10, 15, 2,9); 
  
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 1, 5,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 3, 3,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 4, 4,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 5, 10,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 6, 7,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 7, 7,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 8, 8,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 9, 9,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 10, 10,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 11, 4,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 12, 5,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 14, 8,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(11, 15, 6,6);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 1, 10,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 2, 10,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 3, 10,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 4, 10,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 5, 8,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 6, 6,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 7, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 8, 8,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 9, 9,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 10, 10,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 11, 9,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 12, 7,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 13, 8,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 14, 5,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(12, 15, 6,9);  

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 1, 1,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 2, 2,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 3, 3,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 4, 4,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 5, 5,9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 6, 6,10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 7, 7,1);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 8, 8,2);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 9, 9,3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 10, 10,4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 11, 9,5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 12, 8,6);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 13, 7,7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 14, 7,8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1,Parcial2)VALUES(13, 15, 8,7); 

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 1, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 2, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 3, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 4, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 5, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 6, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 7, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 8, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 9, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 10, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 11, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 12, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 13, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 14, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(14, 15, 9);

INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 1, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 2, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 3, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 4, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 5, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 6, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 7, 3);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 8, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 9, 8);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 10, 7);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 11, 4);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 12, 10);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 13, 9);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 14, 5);
INSERT INTO alumnosXcurso (IdCurso,IdAlumno,Parcial1)VALUES(15, 15, 9);  
  
  
  
  
  
  
  
 

 