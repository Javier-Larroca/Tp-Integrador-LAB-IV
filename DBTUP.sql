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
 
 INSERT INTO ALUMNOS VALUES(1, 'elmerr.vasquez@gmail.com', 'Elmer', 'Vasquez', '38.749.844', 16854975, '23-07-1995', 1, 1, '1168987456', 'Superi 3356', 1);
 INSERT INTO ALUMNOS VALUES(2, 'benito.diaz@gmail.com', 'Benito', 'Diaz', '41.759.884', 65432132, '15-06-1995', 2, 3, '1189654321', 'Nuñez 6589', 1);
 INSERT INTO ALUMNOS VALUES(3, 'david.gonzales@gmail.com', 'David', 'Gonzales', '37.569.852', 66552285, '08-10-1993', 3, 1, '1164895212', 'Larralde 3583', 1);
 INSERT INTO ALUMNOS VALUES(4, 'noelia.marquez@gmail.com', 'Noelia', 'Marquez', '37.885.997', 22134681, '15-02-1997', 4, 5, '1179854631', 'Juncal 2259', 1);
 INSERT INTO ALUMNOS VALUES(5, 'mariana.martinez@gmail.com', 'Mariana', 'Martinez', '41.665.321', 3215648, '15-06-1997', 5, 4, '1146879211', 'Honduras 1135', 1);
 INSERT INTO ALUMNOS VALUES(6, 'diego.pugliese@gmail.com', 'Diego', 'Pugliese', '38.998.265', 32154685, '22-10-1995', 6, 2, '1154226879', 'Arribeños 4652', 1);
 INSERT INTO ALUMNOS VALUES(7, 'noelia.yrigaray@gmail.com', 'Noelia', 'Yrigaray', '35.648.222', 54569872, '22-11-1990', 7, 8, '1133115549', 'San martin 2256', 1);
 INSERT INTO ALUMNOS VALUES(8, 'damian.ferreira@gmail.com', 'Damian', 'Ferreira', '36.221.879', 21694487, '30-12-1991', 8, 9, '1143568279', 'Paraná 3399', 1);
 INSERT INTO ALUMNOS VALUES(9, 'luis.rodriguez@gmail.com', 'Luis', 'Rodriguez', '30.654.155', 14569828, '30-11-1985', 9, 9, '1188568279', 'Ramón castro 5586', 1);
 INSERT INTO ALUMNOS VALUES(10, 'juan.fernandez@gmail.com', 'Juan', 'Fernandez', '45.879.111', 13358755, '01-02-2001', 9, 9, '1198521648', 'Pelliza 333', 1);
 INSERT INTO ALUMNOS VALUES(11, 'soledad.rico@gmail.com', 'Soledad', 'Rico', '46.546.887', 33246788, '02-03-2002', 6, 2, '1164985238', 'Quintana 251', 1);
 INSERT INTO ALUMNOS VALUES(12, 'soledad.rodriguez@gmail.com', 'Soledad', 'Rodriguez', '42.135.879', 22794613, '02-04-1998', 7, 2, '1197856346', 'Maipú 450', 1);
 INSERT INTO ALUMNOS VALUES(13, 'nicolas.malaroda@gmail.com', 'Nicolas', 'Malaroda', '43.135.123', 45963158, '10-09-1999', 10, 9, '1135469879', 'Balbín 6847', 1);
 INSERT INTO ALUMNOS VALUES(14, 'gabriel.hernandez@gmail.com', 'Gabriel', 'Hernandez', '41.587.124', 47896238, '07-07-1996', 12, 11, '1177985462', 'Ruiz Huidobro 1125', 1);
 INSERT INTO ALUMNOS VALUES(15, 'florencia.pug@gmail.com', 'Florencia', 'Pug', '46.257.214', 13547982, '04-09-2002', 13, 11, '1198745132', 'Pinto 120', 1);

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
 

 