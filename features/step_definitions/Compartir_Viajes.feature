Feature: Compartir Viajes en AutoCompartidoITESO
  Como usuario de AutoCompartidoITESO,
  Quiero poder compartir viajes con otros usuarios,
  Para reducir costos y fomentar un ambiente colaborativo dentro del campus.

  Background:
    Given que el usuario ha iniciado sesión en la aplicación AutoCompartidoITESO

  Scenario: Publicar un viaje disponible para compartir
    Given que el usuario planea conducir desde "Residencias Estudiantiles" hasta "Edificio de Ingeniería"
    When el usuario publica el viaje con tres asientos disponibles a las 2 PM
    Then otros usuarios deberían poder ver y solicitar unirse al viaje

  Scenario: Búsqueda y solicitud para unirse a un viaje compartido
    Given que el usuario busca un viaje que coincida con su ruta deseada hacia "Edificio de Ciencias"
    When encuentra un viaje compartido disponible y envía una solicitud para unirse
    Then el conductor del viaje debería recibir la solicitud del usuario para unirse al viaje

  Scenario: Confirmación de participación por el conductor
    Given que un conductor ha recibido una solicitud de pasajero para compartir viaje
    When el conductor revisa la solicitud y decide aceptarla
    Then el usuario que solicitó unirse debería recibir una confirmación de aceptación

  Scenario: División automática de costos del viaje
    Given que el usuario se ha unido a un viaje compartido desde "Puerta del Norte" hasta "Puerta del Sur"
    When el viaje se completa
    Then el sistema debe calcular y dividir automáticamente el costo del viaje entre el conductor y los pasajeros

  Scenario: Notificaciones de confirmación para unirse a viajes
    Given que el usuario ha enviado una solicitud para unirse a un viaje compartido
    When el conductor acepta la solicitud
    Then el usuario debería recibir una notificación confirmando que ha sido añadido al viaje
