# ADR: Uso de Angular frente a React
Date: 2025-09-01
## Status
Accepted

**Context**:
Se eval­uaron diferentes frameworks para construir la interfaz web de nuestro e-commerce. Las opciones contempladas fueron Angular, React y Vue.js. Buscábamos un framework robusto con ecosistema completo (formularios, routing, SSR) y mantenible por un equipo creciente.

**Decision Drivers**:
- Ecosistema TypeScript unificado
- Soporte corporativo sólido
- Necesidad de arquitectura escalable basada en componentes

**Considered Alternatives**:
- React
- Vue.js

**Decision**:
Se selecciona Angular como framework principal para el frontend.

**Rationale**:
Angular ofrece una arquitectura más estructurada con inyección de dependencias, módulos claros, soporte nativo para routing y validación de formularios. Esto reduce la necesidad de múltiples librerías externas, favorece la mantenibilidad a largo plazo y mejora la coherencia del equipo.
**Ventajas**: mayor consistencia, buen soporte, reducción de “glue-code”.
**Desventajas**: curva de aprendizaje más alta, mayor “peso” inicial, menos flexibilidad que React en algunos casos.

**Consequences**:
- Desarrollo inicial puede ser más lento debido a la curva de aprendizaje.
- Mejora de la mantenibilidad y escalabilidad del frontend.
- Cierta sobrecarga si el proyecto se queda muy pequeño o simple.

**Related Decisions**:
(ninguna en este momento)
