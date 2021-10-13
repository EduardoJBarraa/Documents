create table if not exists cliente (
idcliente integer not null auto_increment,
nombre varchar (20) not null,
apellido varchar (20) not null,
rut varchar (12) not null,
direccion varchar (100) not null,
telefono varchar (12) not null,
primary key (idcliente)
);

-- creación de tabla cliente