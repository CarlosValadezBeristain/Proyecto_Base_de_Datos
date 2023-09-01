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




