create table if not exists Problema (
idproblema integer not null auto_increment,
idcliente integer not null,
idproducto integer not null,
descripcion varchar (100) not null,
primary key (idproblema),
foreign key (idcliente) references cliente (idcliente),
foreign key (idproducto) references producto (idproducto)
);

-- creación de tabla problema