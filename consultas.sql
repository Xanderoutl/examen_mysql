SELECT p.nombre_paciente, p.apellido_paciente, m.nombre_medico, m.apellido_medico, m.especialidad_medico
FROM pacientes p
JOIN medicos m ON p.id_asignado = m.id_medicos;

SELECT m.nombre_medico, m.apellido_medico, COUNT(p.id_pacientes) AS total_pacientes
FROM medicos m
LEFT JOIN pacientes p ON p.id_asignado = m.id_medicos
GROUP BY m.id_medicos, m.nombre_medico, m.apellido_medico
ORDER BY total_pacientes DESC;

SELECT especialidad_medico, COUNT(*) AS cantidad_medicos
FROM medicos
GROUP BY especialidad_medico
ORDER BY cantidad_medicos DESC;

SELECT nombre_medico, apellido_medico, especialidad_medico, hora_ini_consulta, hora_fin_consulta
FROM medicos
WHERE dia_semana = 'Lunes';

SELECT s.fecha_ini, s.fecha_fin,
       sub.nombre_medico AS sustituto, sub.apellido_medico AS apellido_sustituto,
       ori.nombre_medico AS medico_sustituido, ori.apellido_medico AS apellido_sustituido
FROM sustituciones s
JOIN medicos sub ON s.id_sustituto = sub.id_medicos
JOIN medicos ori ON s.id_medico = ori.id_medicos
ORDER BY s.fecha_ini;

SELECT m.nombre_medico, m.apellido_medico, COUNT(*) AS veces_sustituido
FROM sustituciones s
JOIN medicos m ON s.id_medico = m.id_medicos
GROUP BY m.id_medicos, m.nombre_medico, m.apellido_medico
HAVING COUNT(*) > 1;

SELECT sub.nombre_medico AS sustituto, ori.nombre_medico AS sustituido, s.fecha_ini, s.fecha_fin
FROM sustituciones s
JOIN medicos sub ON s.id_sustituto = sub.id_medicos
JOIN medicos ori ON s.id_medico = ori.id_medicos
WHERE '2026-09-02' BETWEEN s.fecha_ini AND s.fecha_fin;

SELECT e.nombre, e.apellido, e.cargo, ev.id_vacacionales
FROM empleados e
JOIN empleados_vacacionales ev ON e.id_empleados = ev.id_empleados
ORDER BY e.nombre;

SELECT e.nombre, e.apellido, COUNT(*) AS periodos_vacaciones
FROM empleados e
JOIN empleados_vacacionales ev ON e.id_empleados = ev.id_empleados
GROUP BY e.id_empleados, e.nombre, e.apellido
HAVING COUNT(*) > 1;

SELECT m.nombre_medico, m.apellido_medico, m.especialidad_medico, vm.id_vacacionales
FROM medicos m
JOIN vacaciones_medicos vm ON m.id_medicos = vm.id_medico;

SELECT nombre_paciente, apellido_paciente, fecha_nacim, telefono
FROM pacientes
WHERE fecha_nacim < '1990-01-01'
ORDER BY fecha_nacim;

SELECT nombre_paciente, apellido_paciente, fecha_nacim
FROM pacientes
WHERE fecha_nacim > '2008-01-01';

SELECT cargo, COUNT(*) AS total
FROM empleados
GROUP BY cargo
ORDER BY total DESC;

SELECT m.nombre_medico, m.apellido_medico
FROM medicos m
LEFT JOIN pacientes p ON p.id_asignado = m.id_medicos
WHERE p.id_pacientes IS NULL;

SELECT sub.nombre_medico, sub.apellido_medico, COUNT(*) AS sustituciones_realizadas
FROM sustituciones s
JOIN medicos sub ON s.id_sustituto = sub.id_medicos
GROUP BY sub.id_medicos, sub.nombre_medico, sub.apellido_medico
ORDER BY sustituciones_realizadas DESC;
