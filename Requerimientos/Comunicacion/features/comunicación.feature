Feature: Comunicación con Conductores en la Aplicación de Ridesharing
  Como usuario de la aplicación de ridesharing
  Quiero poder comunicarme con los conductores a través de llamadas o mensajes dentro de la aplicación
  Para coordinar detalles del viaje, como el punto de encuentro, de manera rápida y sencilla

  Scenario: Iniciar una llamada telefónica al conductor
    Given que el usuario ha solicitado un viaje en la aplicación de ridesharing
    When el usuario inicia una llamada telefónica al conductor
    Then el usuario debería estar en una llamada con el conductor para coordinar el punto de encuentro

  Scenario: Enviar un mensaje de texto al conductor
    Given que el usuario ha solicitado un viaje en la aplicación de ridesharing
    When el usuario envía un mensaje de texto al conductor
    Then el usuario debería ver que el mensaje fue enviado satisfactoriamente al conductor

  Scenario: Recibir notificación sobre llamada entrante
    Given que el usuario está en la aplicación de ridesharing
    When el usuario recibe una llamada entrante del conductor
    Then el usuario debería recibir una notificación sobre la llamada entrante

  Scenario: Información de contacto del conductor visible antes de aceptar el viaje
    Given que el usuario ha solicitado un viaje en la aplicación de ridesharing
    When el usuario visualiza los detalles del conductor
    Then el usuario debería ver la información de contacto del conductor, como el número de teléfono

  Scenario: Guardar historial de comunicación con el conductor
    Given que el usuario ha tenido comunicación con el conductor durante un viaje
    When el usuario guarda el historial de comunicación
    Then el usuario debería poder acceder al historial de comunicación para futuras referencias
