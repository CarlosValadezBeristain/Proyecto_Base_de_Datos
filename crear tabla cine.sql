create database cine2;
use cine2;

create table usuario(
		id_usuario int auto_increment primary key,
        nombre varchar(50),
        apellido varchar(50),
        correo varchar(50),
        contraseña varchar(50)
);

create table peliculas(
	id_pelicula int auto_increment primary key,
	titulo varchar(50),
    id_director int,
    duracion varchar(50)
    
    
);

create table director(
	id_director int auto_increment primary key,
    nombre_director varchar(50),
    apellido_director varchar(50)
);

create table historial_reproduccion(
	id_historia int auto_increment primary key,
    id_usuario int,
    id_pelicula int,
    minutos_reproducidos varchar(50) 
);

create table usuario_membresia(
	id_um int auto_increment primary key,
    id_membresia int,
    id_usuario int,
    fecha_registro varchar(50)
);

create table tipo_membresia(
	id_membresia int auto_increment primary key,
    descripcion varchar(50),
    costo_mensual varchar(50)
);

use cine2;
insert into usuario (id_usuario,nombre,apellido,correo,contraseña)
values (01,'Julio','Ramirez','hweg@gmail.com','123456');

insert into usuario (id_usuario,nombre,apellido,correo,contraseña)
values (02,'Bryan','Flores','skidoo@gmail.com','12345');

insert into usuario (id_usuario,nombre,apellido,correo,contraseña)
values (03,'Carlos','Valadez','charly@gmail.com','123456');


insert into director (id_director,nombre_director,apellido_director)
values (1,'Juan','Perez');

insert into director (id_director,nombre_director,apellido_director)
values (2,'Guillermo','Del Toro');

insert into director (id_director,nombre_director,apellido_director)
values (3,'Tim','Burton');


insert into peliculas (id_pelicula,titulo,id_director,duracion)
values (11,'Spirit',1,'1:10:00');

insert into peliculas (id_pelicula,titulo,id_director,duracion)
values (12,'Hellboy',2,'2:02:00');

insert into peliculas (id_pelicula,titulo,id_director,duracion)
values (13,'El cadaver de la novia ',3,'1:17:00');


insert into tipo_membresia (id_membresia,descripcion,costo_mensual)
values (21,'Oro',200);

insert into tipo_membresia (id_membresia,descripcion,costo_mensual)
values (22,'Platino',400);

insert into tipo_membresia (id_membresia,descripcion,costo_mensual)
values (23,'Diamante',800);


insert into historial_reproduccion (id_historia,id_usuario,id_pelicula,minutos_reproducidos)
values (31,01,11,'59:00');

insert into historial_reproduccion (id_historia,id_usuario,id_pelicula,minutos_reproducidos)
values (32,02,12,'30:00');

insert into historial_reproduccion (id_historia,id_usuario,id_pelicula,minutos_reproducidos)
values (33,03,13,'1:10:08');


insert into usuario_membresia (id_um,id_membresia,id_usuario,fecha_registro)
values (41,21,01,'15/03/2000');

insert into usuario_membresia (id_um,id_membresia,id_usuario,fecha_registro)
values (42,22,02,'28/02/2007');

insert into usuario_membresia (id_um,id_membresia,id_usuario,fecha_registro)
values (43,23,03,'01/01/2015');

use cine2;
Select a.nombre, a.correo,b.minutos_reproducidos, c.titulo from usuario as a 
inner join historial_reproduccion as b on a.id_usuario=b.id_usuario
inner join peliculas as c on c.id_pelicula=b.id_pelicula


Select a.id_pelicula, a.titulo,b.nombre_director from peliculas as a 
inner join director as b on a.id_director=b.id_director


Select a.id_usuario, a.nombre, a.apellido, a.correo, b.fecha_registro, c.descripcion from usuario as a
inner join usuario_membresia as b on a.id_usuario=b.id_usuario
inner join tipo_membresia as c on c.id_membresia=b.id_membresia

Select a.id_usuario, a.nombre,a.apellido,c.titulo,d.fecha_registro,e.descripcion from usuario as a 
inner join historial_reproduccion as b on a.id_usuario=b.id_usuario
inner join peliculas as c on c.id_pelicula=b.id_pelicula
inner join usuario_membresia as d on d.id_usuario=a.id_usuario
inner join tipo_membresia as e on e.id_membresia=d.id_membresia

