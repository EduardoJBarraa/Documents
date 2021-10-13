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

-- Insertar problema