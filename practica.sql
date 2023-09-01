create database practicadb;
use practicadb;

create table datos(
id int auto_increment primary key,
nombre varchar(50),
telefono varchar(50),
correo varchar(50)
);

insert datos(nombre, telefono,correo)
values('Juan Perez','557696171','juan.perez@gmail.com');

update datos set telefono='1152387'
where id=1 or correo='juan.perez@gmal.com';

select nombre,telefono,correo,id
from datos where id=1 or correo='juan.perez@gmail.com';
