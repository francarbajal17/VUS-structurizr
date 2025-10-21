# VÜS E-commerce

## Visión general
El sistema VÜS E-commerce es la plataforma web de venta de indumentaria de la marca VÜS. Permite a los usuarios navegar por catálogos de productos, registrarse, iniciar sesión, comprar productos, y ver sus pedidos.

## Contexto del negocio
• Marca VÜS con presencia online y física.
• Objetivo: ampliar canal online, ofrecer catálogo actualizado con imágenes de productos, escalabilidad ante picos de tráfico.
• Usuario objetivo: consumidor final de indumentaria, espera experiencia rápida, intuitiva, y disponibilidad 24×7.

## Arquitectura de alto nivel
El sistema está compuesto por:
- Frontend desarrollado en Angular (SPA).
- Backend en NodeJS + Express, expone API REST.
- Base de datos MongoDB (con Mongoose) para productos, usuarios, pedidos.
- Almacenamiento de imágenes en Google Cloud Storage (GCS) para productos.
Luego de iniciar sesión, el usuario envía solicitudes al backend, que accede a la base de datos y al almacenamiento de imágenes, tal como se muestra en el diagrama de contenedores.

## Decisiones arquitectónicas
Las decisiones clave están documentadas en los ADRs (Architecture Decision Records). Véase carpeta `decisions/` para Angular vs React, MongoDB+Mongoose, GCS, etc.

## Tecnologías & criterios de calidad
- Angular 20 / TypeScript para frontend.
- NodeJS 18 + Express para backend.
- MongoDB 6.x + Mongoose para ODM.
- Google Cloud Storage para activos multimedia.
**Criterios:**
  - Escalabilidad horizontal (uso de MongoDB, almacenamiento en la nube).
  - Mantenibilidad (estructura modular, código TypeScript).
  - Rendimiento (uso de CDN, almacenamiento externo de imágenes).
  - Seguridad (autenticación JWT, HTTPS, control de acceso a buckets).

## Dependencias externas
- Servicio de pago/ordenes externas (por definir).
- Google Cloud Platform para almacenamiento y posiblemente hosting.
- CRM o sistema de inventario físico (sincronización futura).

## Operaciones / despliegue
- Entornos: **dev**, **staging**, **prod**.
- Despliegue en contenedores (Docker) o Kubernetes (planificado).
- Backup de MongoDB diario, replicación geo-regional.
- Monitoreo con métricas de respuesta del API, tasa de errores, latencia de almacenamiento de objetos.

## Modelo C4 y diagramas
- System Context: usuarios, sistema VÜS E-commerce.
- Container: frontend, backend, base de datos, almacenamiento de imágenes.
- Component: en backend los módulos de controladores, servicios, modelos (Mongoose).
Los diagramas están disponibles en Structurizr Lite, o exportables en SVG/PNG.

## Contribuir / mantenimiento
- El repositorio contiene:
  - `workspace.dsl`: definición del modelo + vistas.
  - Carpeta `docs/`: documentación Markdown.
  - Carpeta `decisions/`: ADRs en Markdown.
- Para contribuir: editá la documentación o los diagramas, guardá, refrescá en Structurizr Lite y confirma que se visualiza correctamente.
- Las decisiones arquitectónicas deben documentarse creando un nuevo archivo ADR numerado secuencialmente en `decisions/`.

