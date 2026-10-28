-- Validación del modelo de información de la Clínica Salud Viva.
-- Bloque 1: el modelo debe poder responder las preguntas del negocio.
-- Bloque 2: la base de datos debe rechazar lo que el ERD dice que no puede pasar.

\echo ''
\echo '=== Bloque 1: preguntas del negocio ==='

\echo ''
\echo 'P1. ¿Qué citas tiene cada paciente, con qué médico y de qué especialidad?'
SELECT p.nombre AS paciente, c.fecha, m.nombre AS medico, e.nombre AS especialidad
FROM cita c
JOIN paciente p     ON p.cod_paciente     = c.cod_paciente
JOIN medico m       ON m.cod_medico       = c.cod_medico
JOIN especialidad e ON e.cod_especialidad = c.cod_especialidad
ORDER BY p.nombre, c.fecha;

\echo 'P2. ¿Cuánto ha facturado cada especialidad?'
SELECT e.nombre AS especialidad, COALESCE(SUM(f.valor), 0) AS total_facturado
FROM especialidad e
LEFT JOIN cita c    ON c.cod_especialidad = e.cod_especialidad
LEFT JOIN factura f ON f.cod_cita         = c.cod_cita
GROUP BY e.nombre
ORDER BY total_facturado DESC;

\echo 'P3. ¿Qué citas no han generado factura todavía?'
SELECT c.cod_cita, c.fecha, p.nombre AS paciente
FROM cita c
JOIN paciente p ON p.cod_paciente = c.cod_paciente
LEFT JOIN factura f ON f.cod_cita = c.cod_cita
WHERE f.cod_factura IS NULL;

\echo ''
\echo '=== Bloque 2: reglas del ERD (cada instrucción DEBE fallar con ERROR) ==='

\echo ''
\echo 'R1. Una cita no puede ser de un paciente que no existe (Paciente agenda Cita).'
INSERT INTO cita (cod_cita, fecha, cod_paciente, cod_medico, cod_especialidad)
VALUES (1999, '2026-08-06 08:00', 99, 10, 100);

\echo 'R2. Toda cita debe tener médico (Cita es con Médico, N:1).'
INSERT INTO cita (cod_cita, fecha, cod_paciente, cod_medico, cod_especialidad)
VALUES (1998, '2026-08-06 09:00', 2, NULL, 100);

\echo 'R3. Una cita genera exactamente una factura (1:1): la segunda debe ser rechazada.'
INSERT INTO factura (cod_factura, valor, cod_cita) VALUES (5999, 45000.00, 1000);

\echo 'R4. No se puede borrar un paciente que tiene citas registradas.'
DELETE FROM paciente WHERE cod_paciente = 1;

\echo ''
\echo 'Si las cuatro reglas mostraron ERROR, la base de datos hace cumplir el ERD.'
