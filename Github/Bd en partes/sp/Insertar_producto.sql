delimiter $$
create procedure sp_ingresarproducto (
in _tipo_producto varchar (100),
in _es varchar (100)
)

begin
insert into producto (tipo_producto, es) values (_tipo_producto, _es);

end $$

-- Insertar producto