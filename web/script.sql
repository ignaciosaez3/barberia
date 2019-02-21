create table departamento(codigo int primary key,
                          nombre varchar(30));

create table trabajador(rut varchar(10) primary key,
                        nombre varchar(30),
                        codigo_depto int);--fk
alter table trabajador
add foreign key(codigo_depto)
references departamento(codigo);

insert into departamento values (1, 'FINANZAS');
insert into departamento values (2, 'MARKETING');
insert into departamento values (3, 'RRHH');

insert into trabajador values ('111-1','DANIELA ROJAS', 1);
insert into trabajador values ('111-2','FELIPE CACERES', 3);
insert into trabajador values ('111-3','ALICIA FUENTES', 2);