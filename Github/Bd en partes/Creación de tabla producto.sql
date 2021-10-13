create table if not exists Producto (
idproducto integer not null auto_increment,
tipo_producto varchar (100) not null,
es varchar (100) not null,
primary key (idproducto)
);

-- creación de tabla producto