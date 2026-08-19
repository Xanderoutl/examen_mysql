
CREATE TABLE empleados (
    id_empleados INT PRIMARY KEY,
    cedula INT,
    nombre VARCHAR(100),
    apellido VARCHAR(50),
    cargo VARCHAR(50)
);
 
CREATE TABLE empleados_vacacionales (
    id_empleados_vacacionales INT PRIMARY KEY,
    id_empleados INT,
    id_vacacionales INT,
    FOREIGN KEY (id_empleados) REFERENCES empleados(id_empleados)
);
 
CREATE TABLE medicos (
    id_medicos INT PRIMARY KEY,
    cedula_medico VARCHAR(50),
    nombre_medico VARCHAR(100),
    apellido_medico VARCHAR(50),
    especialidad_medico VARCHAR(100),
    tipo_medico VARCHAR(100),
    dia_semana VARCHAR(20),
    hora_ini_consulta INT,
    hora_fin_consulta INT
);
 
CREATE TABLE sustituciones (
    id_sustituto INT PRIMARY KEY,
    id_medico INT,
    fecha_ini DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medicos)
);
 
CREATE TABLE pacientes (
    id_pacientes INT PRIMARY KEY,
    cedula_pacientes INT,
    nombre_paciente VARCHAR(50),
    apellido_paciente VARCHAR(100),
    fecha_nacim VARCHAR(100),
    telefono VARCHAR(100),
    id_asignado INT,
    FOREIGN KEY (id_asignado) REFERENCES medicos(id_medicos)
);
 
CREATE TABLE vacaciones_medicos (
    id_medicos_vacacionales INT PRIMARY KEY,
    id_medico INT,
    id_vacacionales INT,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medicos)
);