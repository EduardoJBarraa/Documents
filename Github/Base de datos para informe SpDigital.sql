create database if not exists SpDigital character set=utf8mb4 collate utf8mb4_spanish_ci;

use SpDigital;

-- creacion de las tablas

create table if not exists cliente (
idcliente integer not null auto_increment,
nombre varchar (20) not null,
apellido varchar (20) not null,
rut varchar (12) not null,
direccion varchar (100) not null,
telefono varchar (12) not null,
primary key (idcliente)
);

create table if not exists Producto (
idproducto integer not null auto_increment,
tipo_producto varchar (100) not null,
es varchar (100) not null,
primary key (idproducto)
);

create table if not exists Problema (
idproblema integer not null auto_increment,
idcliente integer not null,
idproducto integer not null,
descripcion varchar (100) not null,
primary key (idproblema),
foreign key (idcliente) references cliente (idcliente),
foreign key (idproducto) references producto (idproducto)
);

-- procederemos a ingresar los clientes

delimiter $$
create procedure sp_ingresarcliente (
in _nombre varchar (20),
in _apellido varchar (20),
in _rut varchar (12),
in _direccion varchar (100),
in _telefono varchar (12)
)

begin 
insert into cliente (nombre, apellido, rut, direccion, telefono) 
       values (_nombre, _apellido, _rut, _direccion, _telefono);
end $$

call sp_ingresarcliente ("Felipe","Rodriguez","20.038.752-2","Calle nico #182","+56998467352");

call sp_ingresarcliente ("Diego","Peralta","21.671.747-1","Calle patata #9812","+56997184528");

call sp_ingresarcliente ("Rodrigo","Kong","17.739.865-2","Calle carelmapu #1234","+56997066534");

call sp_ingresarcliente ("Sebastian","Matamala","21.003.124-k","Pasaje yoru #982","+56965454531");

call sp_ingresarcliente ("Carlos","Fuenzalida","20.523.821-3","Calle Lol #651","+56993872887");

call sp_ingresarcliente ("Luis","Rogel","21.039.804-k","Calle negrete #2121","+56993739973");

call sp_ingresarcliente ("Marcelo","Romero","19.789.672-4","Juan jimenez #8493","+56996495288");

call sp_ingresarcliente ("Juan","Lopez","13.011.025-k","arauco #7585","+56969040411");

call sp_ingresarcliente ("Luis","Coaquira","19.220.872-1","Salanbrit #823","+56946229351");

call sp_ingresarcliente ("Fabio","Lopez","17.132.591-4","Calle dylan #1002","+56911132462");

call sp_ingresarcliente ("Tomas","Turbado","21.038.501-1","calle pichilemu #1212","+56952689104");

select * from cliente;

delimiter $$
create procedure sp_ingresarproducto (
in _tipo_producto varchar (100),
in _es varchar (100)
)

begin
insert into producto (tipo_producto, es) values (_tipo_producto, _es);

end $$

call sp_ingresarproducto ("Tecnologico", "Celular");

call sp_ingresarproducto ("Tecnologico", "Computadora");

call sp_ingresarproducto ("Tecnologico", "Tablet");

call sp_ingresarproducto ("Tecnologico", "Iphone");

call sp_ingresarproducto ("Tecnologico", "Teclado");

call sp_ingresarproducto ("Tecnologico", "Mouse");

call sp_ingresarproducto ("Decoracion", "Luces");

call sp_ingresarproducto ("Decoracion", "Escritorio");

call sp_ingresarproducto ("Decoracion", "Repisa");

call sp_ingresarproducto ("Decoracion", "Silla gamer");

call sp_ingresarproducto ("Decoracion", "Cuadro gamer");

select * from producto

delimiter $$ 
create procedure sp_insertarproblema (
in _idproblema integer,
in _idcliente integer,
in _idproducto integer ,
in _descripcion varchar (100)
)

begin 
insert into problema (idproblema, idcliente, idproducto, descripcion) values (_idproblema, _idcliente, _idproducto, _descripcion);

end $$

call sp_insertarproblema (1,1,1,"malo");

call sp_insertarproblema (2,2,2,"no es el que quería");

call sp_insertarproblema (3,3,3, "malo");

call sp_insertarproblema (4,4,4,"malo");

call sp_insertarproblema (5,5,5,"no es el que quería");

call sp_insertarproblema (6,6,6,"no es el que quería");

call sp_insertarproblema (7,7,7,"nalo");

call sp_insertarproblema (8,8,8,"no es el que quería");

call sp_insertarproblema (9,9,9,"malo");
 
call sp_insertarproblema (10,10,10,"malo");

call sp_insertarproblema (11,11,11,"no es el que quería");


select * from problema


drop database SpDigital