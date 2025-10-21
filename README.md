# VÜS – Arquitectura con Structurizr Lite

Este repositorio documenta la arquitectura del sistema VÜS E-commerce, modelada con **Structurizr Lite** siguiendo el enfoque *Architecture as Code*.

---

## Visión general del sistema

**VÜS** es una marca de indumentaria que busca consolidar su presencia online mediante una plataforma moderna, escalable y visualmente cuidada.  
El sistema combina un **frontend Angular** con un **backend NodeJS + Express**, utilizando **MongoDB (con Mongoose)** para la persistencia y **Google Cloud Storage (GCS)** para alojar las imágenes de los productos.  
Todo el proyecto busca mantener una arquitectura limpia, modular y fácilmente extensible, adoptando buenas prácticas tanto de diseño como de despliegue.

### Objetivos del sistema
- Ofrecer una experiencia fluida, intuitiva y visualmente atractiva.
- Mantener independencia entre los componentes de frontend, backend y almacenamiento.

---

## Arquitectura y tecnologías principales

| Capa | Tecnología | Descripción |
|------|-------------|-------------|
| **Frontend** | Angular 20 / TypeScript | Aplicación SPA moderna, con SSR y diseño responsive. |
| **Backend** | NodeJS 18 + Express | API REST que gestiona lógica de negocio, usuarios y pedidos. |
| **Persistencia** | MongoDB + Mongoose | Base de datos NoSQL con esquemas flexibles y alto rendimiento. |
| **Almacenamiento** | Google Cloud Storage (GCS) | Hosting de imágenes y archivos multimedia de productos. |
| **Infraestructura** | Vercel / Google Cloud | Despliegue y hosting en la nube, integrando CI/CD. |

---

## Modelado con Structurizr Lite

Este repositorio utiliza **Structurizr Lite** para representar la arquitectura mediante el modelo **C4** y sus vistas.

### Diagramas incluidos
- **System Context View** → muestra la interacción del usuario con el sistema VÜS.  
- **Container View** → representa los contenedores principales: frontend, backend, base de datos y almacenamiento.  
- **Component View** *(en desarrollo)* → describe la estructura interna del backend (controladores, servicios, modelos).