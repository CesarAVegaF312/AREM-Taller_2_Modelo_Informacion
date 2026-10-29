-- Modelo de información de la Clínica Salud Viva (caso base del Taller 2)
-- Traducción directa del ERD de la guía: cada entidad es una tabla,
-- cada clave primaria es un PRIMARY KEY y cada relación es una FOREIGN KEY.
-- La cardinalidad del ERD se vuelve una regla que la base de datos hace cumplir.

CREATE TABLE paciente (
    cod_paciente      INTEGER      PRIMARY KEY,
    nombre            VARCHAR(100) NOT NULL
);

CREATE TABLE medico (
    cod_medico        INTEGER      PRIMARY KEY,
    nombre            VARCHAR(100) NOT NULL
);

CREATE TABLE especialidad (
    cod_especialidad  INTEGER      PRIMARY KEY,
    nombre            VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE cita (
    cod_cita          INTEGER      PRIMARY KEY,
    fecha             TIMESTAMP    NOT NULL,
    -- Paciente agenda Cita (1:N): muchas citas pueden apuntar al mismo paciente.
    cod_paciente      INTEGER      NOT NULL REFERENCES paciente (cod_paciente),
    -- Cita es con Médico (N:1): NOT NULL obliga a que toda cita tenga médico.
    cod_medico        INTEGER      NOT NULL REFERENCES medico (cod_medico),
    -- Cita es de Especialidad (N:1).
    cod_especialidad  INTEGER      NOT NULL REFERENCES especialidad (cod_especialidad)
);

CREATE TABLE factura (
    cod_factura       INTEGER       PRIMARY KEY,
    valor             NUMERIC(12,2) NOT NULL CHECK (valor >= 0),
    -- Cita genera Factura (1:1): UNIQUE impide que una cita tenga dos facturas.
    cod_cita          INTEGER       NOT NULL UNIQUE REFERENCES cita (cod_cita)
);
