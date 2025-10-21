# ADR: Uso de Google Cloud Storage (GCS) para almacenamiento de imágenes de productos

Date: 2025-09-01
## Status
Accepted

**Context**:
El e-commerce requiere un servicio para almacenar imágenes de productos que puedan ser servidas eficientemente, con buena latencia para Uruguay/Sudamérica, escalabilidad y coste bajo en inicio. Se evaluaron alternativas: AWS S3, Cloudinary, Firebase Storage.

**Decision Drivers**:
- Costo reducido para almacenar gran cantidad de imágenes
- Disponibilidad global y buen rendimiento desde región
- Integración con SDKs de NodeJS y Angular

**Considered Alternatives**:
- AWS S3
- Cloudinary
- Firebase Storage

**Decision**:
Utilizar Google Cloud Storage (GCS) para almacenar las imágenes de productos en un bucket con control de acceso y generación de URLs públicas temporales desde el backend.

**Rationale**:
GCS ofrece capa gratuita hasta ~20 GB/mes (varía según región) y buena latencia desde Sudamérica, con SDKs oficiales que facilitan la integración. Se reduce el coste inicial y se acelera la puesta en marcha.
**Ventajas**: coste de entrada bajo, confianza en infraestructura de Google, buena latencia regional, integración simple.
**Desventajas**: dependencia de proveedor, posible escalado de coste con mayor tráfico, menor variedad de funcionalidades especializadas vs servicios especializados.

**Consequences**:
- Implementación más rápida y coste inicial bajo.
- Al crecer el tráfico o volumen de almacenamiento puede incrementarse el coste y requerir revisión de proveedor.
- Depende de la disponibilidad del servicio de Google Cloud (aunque es alta) y de los acuerdos de nivel de servicio.

**Related Decisions**:
(ninguna en este momento)
