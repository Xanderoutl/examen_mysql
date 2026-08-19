INSERT INTO empleados (id_empleados, cedula, nombre, apellido, cargo) VALUES
(1, 1001234567, 'Laura',    'Gomez',     'Recepcionista'),
(2, 1002345678, 'Carlos',   'Ramirez',   'Administrador'),
(3, 1003456789, 'Mariana',  'Torres',    'Enfermera'),
(4, 1004567890, 'Andres',   'Lopez',     'Contador'),
(5, 1005678901, 'Sofia',    'Martinez',  'Recursos Humanos'),
(6, 1006789012, 'Julian',   'Perez',     'Auxiliar de farmacia'),
(7, 1007890123, 'Camila',   'Rojas',     'Enfermera'),
(8, 1008901234, 'Diego',    'Sanchez',   'Seguridad');

INSERT INTO medicos (id_medicos, cedula_medico, nombre_medico, apellido_medico, especialidad_medico, tipo_medico, dia_semana, hora_ini_consulta, hora_fin_consulta) VALUES
(1, '3001112233', 'Fernando',  'Castro',    'Cardiologia',    'Especialista', 'Lunes',     8,  12),
(2, '3002223344', 'Patricia',  'Villamizar','Pediatria',      'Especialista', 'Martes',    9,  13),
(3, '3003334455', 'Ricardo',   'Mendoza',   'Medicina General','General',     'Miercoles', 7,  11),
(4, '3004445566', 'Alejandra', 'Nino',      'Dermatologia',   'Especialista', 'Jueves',    14, 18),
(5, '3005556677', 'Oscar',     'Duarte',    'Ortopedia',      'Especialista', 'Viernes',   8,  12),
(6, '3006667788', 'Gloria',    'Pacheco',   'Ginecologia',    'Especialista', 'Lunes',     13, 17),
(7, '3007778899', 'Manuel',    'Rueda',     'Medicina General','General',     'Martes',    7,  11),
(8, '3008889900', 'Diana',     'Suarez',    'Neurologia',     'Especialista', 'Miercoles', 9,  13),
(9, '3009990011', 'Jorge',     'Estevez',   'Cardiologia',    'Especialista', 'Jueves',    8,  12),
(10,'3000001122', 'Natalia',   'Camargo',   'Pediatria',      'Especialista', 'Viernes',   14, 18);

INSERT INTO pacientes (id_pacientes, cedula_pacientes, nombre_paciente, apellido_paciente, fecha_nacim, telefono, id_asignado) VALUES
(1,  1101112233, 'Valentina', 'Ortiz',     '1990-05-14', '3111234567', 1),
(2,  1102223344, 'Santiago',  'Guerrero',  '1985-11-02', '3122345678', 1),
(3,  1103334455, 'Isabella',  'Fajardo',   '2015-03-22', '3133456789', 2),
(4,  1104445566, 'Mateo',     'Delgado',   '2018-07-09', '3144567890', 2),
(5,  1105556677, 'Camilo',    'Herrera',   '1975-01-30', '3155678901', 3),
(6,  1106667788, 'Daniela',   'Cardenas',  '1998-09-17', '3166789012', 4),
(7,  1107778899, 'Sebastian', 'Bautista',  '1960-12-05', '3177890123', 5),
(8,  1108889900, 'Paula',     'Rincon',    '1993-04-25', '3188901234', 6),
(9,  1109990011, 'Nicolas',   'Prada',     '1988-08-19', '3199012345', 7),
(10, 1100001122, 'Juliana',   'Osorio',    '1970-02-11', '3200123456', 8),
(11, 1111112233, 'Esteban',   'Villar',    '2001-06-28', '3211234567', 9),
(12, 1112223344, 'Manuela',   'Cifuentes', '1995-10-13', '3222345678', 10),
(13, 1113334455, 'Tomas',     'Solano',    '1982-03-07', '3233456789', 3),
(14, 1114445566, 'Gabriela',  'Nieto',     '2010-12-19', '3244567890', 2),
(15, 1115556677, 'Felipe',    'Aguilar',   '1965-07-01', '3255678901', 1);

INSERT INTO sustituciones (id_sustituto, id_medico, fecha_ini, fecha_fin) VALUES
(2, 1, '2026-08-10', '2026-08-14'),
(4, 3, '2026-08-17', '2026-08-19'),
(6, 5, '2026-09-01', '2026-09-05'),
(1, 9, '2026-09-08', '2026-09-10'),
(7, 3, '2026-09-15', '2026-09-16'),
(10,2, '2026-10-01', '2026-10-03'),
(8, 6, '2026-10-05', '2026-10-07');

INSERT INTO empleados_vacacionales (id_empleados_vacacionales, id_empleados, id_vacacionales) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 104),
(5, 5, 105),
(6, 6, 106),
(7, 7, 107),
(8, 1, 108);

INSERT INTO vacaciones_medicos (id_medicos_vacacionales, id_medico, id_vacacionales) VALUES
(1, 1, 201),
(2, 3, 202),
(3, 5, 203),
(4, 6, 204),
(5, 9, 205),
(6, 2, 206),
(7, 8, 207);