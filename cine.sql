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