# ADR: Uso de MongoDB con Mongoose para la capa de persistencia

Date: 2025-09-01
## Status
Accepted

**Context**:
El sistema de e-commerce necesita almacenar productos, usuarios, pedidos y variantes de productos. Se espera que la estructura de los ítems evolucione (por ejemplo, nuevos campos en productos) y que la carga crezca horizontalmente.

**Decision Drivers**:
- Flexibilidad del modelo de datos
- Escalabilidad horizontal
- Integración natural con NodeJS

**Considered Alternatives**:
- PostgreSQL
- MySQL

**Decision**:
Adoptar MongoDB como base de datos NoSQL, utilizando Mongoose como ODM (Object Data Modeling) para facilitar la definición de esquemas, validaciones y consulta desde NodeJS.

**Rationale**:
Mongoose proporciona una capa intuitiva sobre MongoDB permitiendo definir esquemas dinámicos sin perder control. La combinación con NodeJS (JavaScript/TypeScript) resulta fluida, con intercambio de JSON de extremo a extremo. Se gana velocidad de desarrollo y capacidad de adaptación.
**Ventajas**: modelo de datos flexible, rápido onboarding, escalabilidad horizontal.
**Desventajas**: no hay relaciones tan estrictas como en SQL, las consultas complejas pueden requerir agregaciones adicionales, menos familiar para equipos acostumbrados a SQL.

**Consequences**:
- Flexibilidad y velocidad de desarrollo aumentadas.
- Menor rigidez en integridad referencial (se debe prestar atención al diseño).
- En casos muy complejos de relaciones, puede requerir mayor esfuerzo de consulta.

**Related Decisions**:
(ninguna en este momento)
