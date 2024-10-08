Create database pedidos24_1
use pedidos24_1

Create table cliente(
Cod_cliente int not null primary key, 
nombre char(25),
direccion char(30), 
telefono char(15));

create table empleado(
Cod_empleado int not null primary key, 
nombre_emp char(25),
apellido_emp char(25));

create table producto(
Cod_producto int not null primary key,
descripcion char(25),
precio int not null);

create table pedido(
Num_pedido int not null primary key,
Fecha_pedido date,
Hora_pedido time, 
Fecha_entrega date, 
Cod_cliente int not null, index(Cod_cliente),
foreign key(Cod_cliente) references cliente(Cod_cliente),
cod_empleado int not null, index(cod_empleado),
foreign key(cod_empleado) references empleado(cod_empleado));

create table detalle_pedido(
Num_pedido int not null, 
Cod_producto int not null, 
primary key(num_pedido, cod_producto),
index(num_pedido),
foreign key(Num_pedido) references pedido(Num_pedido),
index(cod_producto),
foreign key(cod_producto) references producto(cod_producto),
cantidad int not null);

show tables

describe empleado

alter table empleado add sexo char(1);
alter table empleado add sueldo dec(8,2);
alter table empleado modify column sexo char(1) after sueldo;

describe producto

alter table producto add existencia int;

select * from cliente

insert into cliente values
(2030,'Omar','7c.  2-40 z.11', '46589232'),
(2031, 'Carlos', '6a. 7-22 z.12', '43251672');

select * from empleado

insert into empleado values
(123,'Luis ','Larlos','3700.00','m'),
(124,'Karla', 'Aguilar', '4700.00', 'f');

select * from producto

insert into producto values
(14082020, 'computadora','4750.00',8),
(15082020,'impresora','1100.00',14),
(16082020,'escaner','700.50',2);

select * from pedido

insert into pedido values
(1,'2020-08-13','10:15','2020-08-14',2030,123),
(2, '2020-08-14','12:10','2020-08-16',2030,124);




insert into detalle_pedido values
(1,14082020,1),
(2,15082020,2),
(2,16082020,1);

update cliente
set telefono = '24238020'
where cod_cliente = '2030';

delete from detalle_pedido
where cod_producto = '16082020';








