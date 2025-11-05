# ADR 0002 - Elección del framework backend
## Status
Accepted

Date: 2023-10-20

**Context:** Se evaluaron distintas tecnologías y frameworks para implementar el backend del proyecto, considerando aspectos como rendimiento, escalabilidad, compatibilidad con la base de datos y facilidad de integración con el frontend.

**Considered Alternatives:**
- Django (Python)
- Spring Boot (Java)

**Decision:** Se selecciona Node.js con Express como framework backend, dado su modelo asíncrono y orientado a eventos, su amplio ecosistema de paquetes NPM y su excelente integración con aplicaciones web modernas basadas en JavaScript.
 
**Consequences:** Requiere una configuración inicial más detallada y una correcta gestión de asincronía, pero permite un desarrollo ágil, reutilización de código entre frontend y backend, y una arquitectura más ligera y escalable.