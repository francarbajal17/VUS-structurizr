workspace "VUS E-commerce" "Arquitectura general del sistema web de VÜS" {

    !identifiers hierarchical

    model {
        user = person "Usuario" "Cliente que navega el sitio y realiza compras online."

        vus = softwareSystem "VÜS E-commerce" "Sistema de venta online de indumentaria desarrollado por VÜS." {

            web = container "Frontend Angular" "Interfaz web SPA que muestra los productos, permite registrarse, iniciar sesión y comprar." "Angular / TypeScript"
            api = container "Backend NodeJS + Express" "API REST que maneja la lógica de negocio y expone endpoints para el frontend." "NodeJS / Express" {
                !adrs decisions/api-adrs
            }
            db = container "MongoDB" "Base de datos NoSQL que almacena los productos, usuarios y pedidos." "MongoDB + Mongoose"
            gcs = container "Google Cloud Storage" "Almacén de imágenes de productos (bucket en Google Cloud Platform)." "GCS"

            user -> web "Navega el sitio y realiza operaciones (compras, registro, login)"
            web -> api "Envía solicitudes HTTP (REST API)"
            api -> db "Lee y escribe datos de productos, usuarios y pedidos"
            api -> gcs "Obtiene URLs o sube imágenes de productos"
            db -> gcs "Guarda referencias a imágenes (URLs) de productos"
        }
    }

    views {
        systemContext vus contexto_sistema {
            title "Contexto del sistema"
            include user
            include vus
            autolayout lr
        }

        container vus vista_contenedores {
            title "Vista de contenedores"
            include user
            include *
            autolayout lr
        }

        styles {
            element "Person" {
                shape person
                background #168F5D
                color #ffffff
            }
            element "Software System" {
                background #1EBA79
                color #ffffff
            }
            element "Container" {
                background #24D99A
                color #000000
            }
            element "Database" {
                shape cylinder
                background #1E90FF
                color #ffffff
            }
        }
    }

    configuration {
        scope softwaresystem
    }

    !adrs decisions

    !docs docs

}
