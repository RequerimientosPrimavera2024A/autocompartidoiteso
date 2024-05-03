Feature: Gestión de Distintos Perfiles en AutoCompartidoITESO
  Como usuario de AutoCompartidoITESO,
  Quiero poder gestionar distintos perfiles de usuario (conductor o pasajero),
  Para adaptar mi uso de la aplicación según mis necesidades de transporte diarias.

  Background:
    Given que el usuario ha iniciado sesión en la aplicación AutoCompartidoITESO

  Scenario: Selección de perfil desde la interfaz principal
    Given que el usuario está en la pantalla de inicio de la aplicación
    When el usuario selecciona la opción de cambiar su perfil actual
    Then se muestra una selección para cambiar entre perfil de conductor y pasajero

  Scenario: Verificación de información para perfil de conductor
    Given que el usuario desea cambiar a perfil de conductor
    When el usuario intenta cambiar al perfil de conductor
    Then se le solicita que verifique su información de conducción antes de activar el perfil

  Scenario: Acceso inmediato para perfil de pasajero
    Given que el usuario cambia a perfil de pasajero
    When el usuario navega hacia la búsqueda de viajes
    Then el usuario puede buscar y reservar viajes sin necesidad de ingresar información adicional

  Scenario: Cambio de perfil con mínimas interacciones
    Given que el usuario está navegando en la aplicación
    When el usuario decide cambiar de perfil
    Then el cambio de perfil se realiza en no más de tres interacciones

  Scenario: Restauración de preferencias de perfil en cada sesión
    Given que el usuario ha personalizado ajustes en su perfil de pasajero
    When el usuario cierra sesión y luego vuelve a iniciar sesión
    Then las preferencias personalizadas son restauradas automáticamente en el perfil de pasajero
