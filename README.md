# 🛠️ Taller 2: Modelo de Información y Diagrama de Contexto

## 🎯 Objetivo

Modelar las entidades principales del dominio del cliente y los flujos de información entre actores y sistemas, mediante un modelo entidad-relación (ERD) y un diagrama de contexto de negocio.

---

## 📘 Guía paso a paso

Antes de empezar a modelar, revise la [**Guía Paso a Paso: Modelo de Información y Diagrama de Contexto**](clase/guia_paso_a_paso_modelo_informacion.md). Incluye la notación de ambos diagramas, la metodología de 4 pasos para cada uno, un ejemplo completo construido paso a paso sobre el caso de la Clínica Salud Viva (Paciente, Cita, Médico, Especialidad, Factura para el ERD; actores y sistemas para el contexto), y una comparación de errores comunes vs. modelo corregido para cada tipo de diagrama.

## 🏥 Caso base de referencia: Clínica Salud Viva

Durante este taller, todos los equipos trabajarán en clase con un caso base común antes de aplicarlo a su cliente real.

## 🧠 Contexto

La Clínica Salud Viva gestiona diversos flujos de información relacionados con pacientes, citas, médicos, facturación y servicios médicos. Estos datos están organizados en múltiples sistemas que deben interoperar entre sí, incluyendo un ERP clínico, una base de datos central de pacientes, y sistemas de terceros como aseguradoras. La correcta estructuración de las entidades de información y su contexto de operación es clave para lograr una arquitectura alineada con las necesidades clínicas, administrativas y regulatorias del sector salud.

**Descripción del caso:**
- Clínica Salud Viva ofrece servicios médicos presenciales y virtuales.
- El sistema permite a los pacientes agendar citas, los médicos gestionar su agenda, y el personal validar datos con aseguradoras.

**Elementos para modelar en clase:**
- **Entidades principales:** Paciente, Cita, Médico, Especialidad, Factura
- **Relaciones clave:** Un paciente puede tener muchas citas; cada cita se asocia a un médico y una especialidad.
- **Diagrama de contexto:** Incluye actores (paciente, médico, asistente), sistemas (ERP, agendamiento, notificador), y flujos de datos.

---

## 🧪 Parte 1: Trabajo en Clase

Durante la clase se espera que el equipo:

Siga la metodología de la [guía paso a paso](clase/guia_paso_a_paso_modelo_informacion.md) para construir ambos diagramas del caso base:

**ERD** — Identifique las entidades (Paciente, Cita, Médico, Especialidad, Factura), defina sus atributos y clave primaria, trace las relaciones con su verbo, y asigne la cardinalidad de cada una.

**Diagrama de contexto** — Identifique los actores externos (paciente, médico, asistente) y los sistemas internos (ERP, agendamiento, notificador), trace los flujos de información entre ellos y etiquete cada uno con lo que se intercambia.

- Use herramientas como draw.io o papel para registrar la idea inicial.
- Reciba retroalimentación del docente y registre avances en `clase/notas.md` (use la [plantilla de notas](plantillas/plantilla_notas.md)).

---

## 🧠 Parte 2: Aplicación al Cliente Real

Después de la clase, el equipo debe:

- Adaptar el modelo de información al dominio del cliente real asignado (**no puede ser el mismo dominio de la Clínica Salud Viva** — debe corresponder al negocio del cliente).
- Aplicar los mismos 4 pasos de cada metodología (ERD y diagrama de contexto) a ese dominio.
- Elaborar un modelo ER limpio en `entrega/modelo-final-er.drawio` y un diagrama de contexto ajustado en `entrega/diagrama-contexto-final.drawio`.
- Redactar el informe en `entrega/informe.md` usando la [plantilla de informe del taller](plantillas/plantilla_informe_taller.md); explicar las decisiones tomadas y las diferencias con el caso base.
- Complementar con una investigación sobre ERD y contexto en casos reales de la industria, y registrar las fuentes en `entrega/referencias.md` con la [plantilla de referencias](plantillas/plantilla_referencias.md).

---

## 📁 Estructura esperada del repositorio

```
taller-02-modelo-informacion/
├── README.md
├── clase/
│   ├── guia_paso_a_paso_modelo_informacion.md   # Notación, metodología y ejemplo guiado (ERD + Contexto)
│   ├── img/                                     # Diagramas de apoyo de la guía
│   ├── modelo-er-borrador.drawio
│   ├── contexto-borrador.drawio
│   └── notas.md                                 # Ver plantillas/plantilla_notas.md
├── entrega/
│   ├── modelo-final-er.drawio
│   ├── diagrama-contexto-final.drawio
│   ├── informe.md                               # Ver plantillas/plantilla_informe_taller.md
│   └── referencias.md                           # Ver plantillas/plantilla_referencias.md
└── plantillas/
    ├── plantilla_informe_taller.md
    ├── plantilla_notas.md
    └── plantilla_referencias.md
```

---

## ⚠️ Errores comunes

Antes de entregar, compare sus dos diagramas contra los errores más frecuentes (entidades sin atributos, relaciones N:N sin resolver, sistemas externos dibujados igual que los internos, flujos sin etiquetar) documentados en las secciones [A.4](clase/guia_paso_a_paso_modelo_informacion.md#a4-errores-comunes-en-el-erd) y [B.4](clase/guia_paso_a_paso_modelo_informacion.md#b4-errores-comunes-en-el-diagrama-de-contexto) de la guía paso a paso.

## 📤 Entregables

- Modelo ER final (`modelo-final-er.drawio`)
- Diagrama de contexto final (`diagrama-contexto-final.drawio`)
- Informe técnico (`informe.md`)
- Documento de investigación y referencias (`referencias.md`)

---

## 📊 Rúbrica de Evaluación

| Criterio                            | Excelente (5)                                                        | Aceptable (3) / Insuficiente (1–2)                        |
|-------------------------------------|-----------------------------------------------------------------------|------------------------------------------------------------|
| Modelo ER del caso base             | Diagrama coherente, con relaciones claras y alineado con el caso      | Relaciones poco claras o errores estructurales             |
| Diagrama de contexto funcional      | Conexiones correctas entre actores, sistemas y datos                  | Faltan actores clave o flujos mal definidos                |
| Aplicación al cliente real          | Buena adaptación con diferencias justificadas                         | No refleja el dominio real del cliente                     |
| Investigación complementaria        | Aplica teoría o ejemplos reales para enriquecer la entrega            | Pobremente documentada o sin conexión                      |

---

## ✅ Licencia

Este taller hace parte del curso de Arquitectura Empresarial - Universidad de La Sabana. Uso académico bajo licencia MIT.
