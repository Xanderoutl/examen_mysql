CREATE table empleados(
id_empleados int primary key.
cedula int.
nombre varchar(100)
apellido varchar(50)
cargo varchar(50)


);

CREATE table empleados vacacionales(
id_empleados_vacacionales int primary key
id_empleados int,
id vacacionales int,
foreign key (id_empleado)REFERENCES (empleados)


    
)

CREATE table medicos(
    id_medicos int primary key, 
    cedula_medico varchar(50),
    nombre_medico varchar(100),
    apellido_medico varchar(50),
    especialidad_medico varchar(100),
    tipo_medico varchar(100),
    dia_semana varchar int,
    hora_ini_consulta int,
    hora_fin_consultar int,



    
);
CREATE table sustituciones(
    id_sustituto int,
    id_medico int,
    fecha_ini int,
    fecha_fin int,
    foreign key (id_medico) REFERENCES (medicos)

);
CREATE table pacientes(
    id_pacientes primary key,
    cedula_pacientes int,
    nombre_paciente varchar(50),
    apellido_paciente varchar(100),
    fecha_nacim varchar(100),
    telefono varchar(100),
    id_asignado int,
    foreign key (id_medico) REFERENCES(medicos)

)
CREATE table vacaciones_medicos(
id_medicos_vacacionales int primary key
id_medico int,
id vacacionales int,
foreign key (id_medico)REFERENCES (medicos)
)
