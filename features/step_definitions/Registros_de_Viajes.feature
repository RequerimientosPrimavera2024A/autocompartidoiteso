Feature: Registro de Viajes en AutoCompartidoITESO
  Como usuario de AutoCompartidoITESO,
  Quiero que todos mis viajes sean registrados automáticamente,
  Para mantener un historial detallado y gestionar mis gastos de transporte eficientemente.

  Background:
    Given que el usuario ha iniciado sesión en la aplicación AutoCompartidoITESO

  Scenario: Registro automático al completar el viaje
    Given que el usuario ha completado un viaje desde "Facultad de Arte" hasta "Biblioteca Central"
    When el viaje concluye
    Then el sistema debe registrar automáticamente los detalles del viaje

  Scenario: Acceder y exportar el historial de viajes
    Given que el usuario desea revisar su historial de transporte del mes pasado
    When él accede a la sección de historial de viajes
    Then debería poder exportar este historial en formato PDF

  Scenario: Información detallada de cada viaje en el registro
    Given que el usuario consulta el historial de un viaje específico
    When el usuario selecciona un viaje para ver detalles
    Then el sistema muestra la fecha, hora de inicio y finalización, duración, distancia, ruta y costo del viaje seleccionado

  Scenario: Exportación de datos de viajes
    Given que el usuario necesita enviar su historial de viajes para un informe de gastos
    When el usuario elige exportar su historial de viajes
    Then el sistema debería permitirle exportar los datos en formato Excel

  Scenario: Calificación y comentarios post-viaje
    Given que el usuario ha completado un viaje en AutoCompartidoITESO
    When el sistema le pide que califique el viaje y deje comentarios
    Then el usuario debería poder ingresar su calificación y comentarios sobre el viaje en la aplicación
