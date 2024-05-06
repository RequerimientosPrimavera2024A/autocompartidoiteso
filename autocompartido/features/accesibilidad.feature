Feature: Como usuario con necesidades especiales, quiero activar el modo de accesibilidad en la aplicación para mejorar mi experiencia de navegación y uso.

    Scenario: En el que Phoebe con problemas de visión activa el modo de accesibilidad
        Given: Phoebe con problemas de visión accede a la aplicación
        When: Activa el modo de accesibilidad desde el menú principal
        Then: La aplicación ajusta inmediatamente el contraste y el tamaño del texto para mejorar su visibilidad

    Scenario: En el que Joey activa el modo de accesibilidad en una página específica de la aplicación
        Given: Joey está viendo su perfil en la aplicación
        When: Activa el modo de accesibilidad desde la página de perfil
        Then: La aplicación aplica las configuraciones de accesibilidad sin redirigirlo a otra página

    Scenario: En el que Chandler intenta activar el modo de accesibilidad pero no recibe confirmación
        Given: Chandler está en la aplicación y activa el modo de accesibilidad
        When: Espera la confirmación de activación
        Then: No recibe ninguna confirmación y considera esto como un fallo del sistema que necesita atención

    Scenario: En el que Monica activa el modo de accesibilidad y luego navega a otra sección de la aplicación
        Given: Monica activa el modo de accesibilidad en la sección de eventos
        When: Navega a la sección de mensajes
        Then: Las configuraciones de accesibilidad se mantienen consistentes en todas las interfaces

    Scenario: En el que Ross desactiva el modo de accesibilidad
        Given: Ross tiene activado el modo de accesibilidad
        When: Decide desactivar el modo de accesibilidad desde la configuración
        Then: La aplicación confirma la desactivación y revierte a la configuración estándar de interfaz

    Scenario: En el que Rachel con necesidades auditivas activa opciones de accesibilidad relevantes
        Given: Rachel está utilizando la aplicación para ver videos
        When: Activa las opciones de accesibilidad para necesidades auditivas
        Then: La aplicación ofrece soporte visual adicional y subtítulos en videos y alertas sonoras

