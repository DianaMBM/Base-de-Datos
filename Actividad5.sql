Create database prestamo_cañoneras
use prestamo_cañoneras

Create table Proveedor(
Codigoproveedor int not null primary key,
Proveedor char(25),
Direccion char(25),
Personadecontacto char(25),
Telefono int);

create table Departamento(
Codigodepartamento int not null primary key,
departamento char(25));

create table Empleado(
Codigoempleado int not null primary key, 
Empleado char(25),
Codigodepartamento int not null, index(Codigodepartamento),
foreign key(Codigodepartamento) references Departamento(Codigodepartamento));


Create table Cañonera(
CodigoCañonera int not null primary key, 
Fechadeingreso date,
Marca char(25),
Modelo char(25),
Nodeserie int, 
Fechacompra date, 
Añogarantia int, 
Nofactura int, 
Monto dec(8,2),
Codigoproveedor int not null, index(Codigoproveedor),
foreign key(Codigoproveedor) references Proveedor(Codigoproveedor));

create table Prestamo(
CodigoCañonera int not null,
Codigoempleado int not null,
FechaEntrega date not null, 
HoraEntrega time not null,
primary key(CodigoCañonera, Codigoempleado, FechaEntrega, HoraEntrega),
index(CodigoCañonera),
foreign key(CodigoCañonera) references Cañonera(CodigoCañonera),
index (Codigoempleado),
foreign key(Codigoempleado) references Empleado(Codigoempleado));

show tables

select * from proveedor
insert into proveedor values
(113, 'Techno Vibes', '5 ave. 2-45 zona 5','Daniel Perez', 45869528),
(114, 'Bonto', '10 calle 3-02 zona 12', 'Isaac Pellecer', 42322625);


select * from departamento
insert into departamento values
(21, 'Recursos humanos'),
(22, 'Informática');


select * from empleado
insert into empleado values
(12, 'Raúl Rojas', 21),
(13, 'Sofía Llarena', 22);

select * from cañonera
insert into cañonera values
(1111, '2024-02-01','LG', '230-k', 151213, '2023-03-10', 2, 748547, 2500.00, 113),
(1112, '2024-11-10','Samsung', '220-d', 148572, '2022-02-02', 3, 748533, 3000.00, 114);

select * from prestamo
insert into prestamo values
(1111, 12, '2024-04-02', '10:00'),
(1112, 13, '2024-01-02', '13:00');

update proveedor
set personadecontacto = 'Luca Pérez'
where Codigoproveedor = 113;

update empleado
set empleado = 'Raúl Platero'
where Codigoempleado = 12;

delete from prestamo
where codigocañonera = '1111';

delete from empleado
where codigoempleado = '12';











