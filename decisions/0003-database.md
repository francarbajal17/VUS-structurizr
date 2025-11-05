# ADR 0003 - Elección de la base de datos
## Status
Accepted

Date: 2023-10-20

**Context:** Se evaluaron diferentes sistemas de gestión de bases de datos para almacenar la información del proyecto, considerando criterios como flexibilidad del modelo de datos, escalabilidad, facilidad de integración con Node.js y costos de mantenimiento.

**Considered Alternatives:**
- PostgreSQL
- MySQL

**Decision:** Se selecciona MongoDB como base de datos principal, debido a su modelo de documentos flexible, su compatibilidad nativa con JavaScript/JSON y su excelente integración con el ecosistema de Node.js mediante Mongoose.
 
**Consequences:** Al ser una base de datos NoSQL, requiere definir cuidadosamente los esquemas y relaciones para evitar redundancias, pero ofrece una alta escalabilidad, consultas eficientes y una integración fluida con la aplicación backend.