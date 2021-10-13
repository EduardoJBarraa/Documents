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

-- Insertar cliente