-- Datos de prueba de la Clínica Salud Viva.
-- Son pocos registros a propósito: basta con que cada relación del ERD tenga ejemplos.

INSERT INTO paciente (cod_paciente, nombre) VALUES
    (1, 'Ana Torres'),
    (2, 'Luis Gómez'),
    (3, 'Marta Ruiz');

INSERT INTO medico (cod_medico, nombre) VALUES
    (10, 'Dra. Patricia León'),
    (11, 'Dr. Andrés Mora');

INSERT INTO especialidad (cod_especialidad, nombre) VALUES
    (100, 'Medicina General'),
    (101, 'Pediatría'),
    (102, 'Dermatología');

INSERT INTO cita (cod_cita, fecha, cod_paciente, cod_medico, cod_especialidad) VALUES
    (1000, '2026-08-03 08:00', 1, 10, 100),
    (1001, '2026-08-03 09:00', 1, 11, 102),
    (1002, '2026-08-04 10:30', 2, 10, 101),
    (1003, '2026-08-05 14:00', 3, 11, 100);

INSERT INTO factura (cod_factura, valor, cod_cita) VALUES
    (5000,  45000.00, 1000),
    (5001, 120000.00, 1001),
    (5002,  60000.00, 1002);
