Feature: Gestión Intuitiva y Eficiente de Rutas
  Como usuario de la aplicación de rutas, quiero tener acceso fácil y actualizado a las rutas y sus detalles para planificar mis viajes de manera eficiente y disfrutar de una experiencia de usuario mejorada.

  Background:
    Given que el usuario ha iniciado sesión en la aplicación de rutas

  Scenario: Acceso fácil a la sección de rutas
    Given que el usuario está en la pantalla de inicio de la aplicación
    When el usuario hace clic en el icono de la sección de rutas
    Then la sección de rutas se muestra de forma accesible

  Scenario: Presentación clara de todas las rutas disponibles
    Given que el usuario está viendo la lista de rutas disponibles
    When el usuario navega por la lista de rutas
    Then todas las rutas se muestran en una lista ordenada alfabéticamente con detalles como nombres, puntos de inicio y de destino final

  Scenario: Actualización constante de la información de las rutas
    Given que el usuario accede a los detalles de una ruta específica
    When la frecuencia y horarios de la ruta son actualizados por el sistema
    Then el usuario ve la información actualizada en tiempo real

  Scenario: Funcionalidades adicionales para una experiencia mejorada
    Given que el usuario desea una experiencia de usuario personalizada
    When explora las opciones de filtrado y detalles adicionales de una ruta específica
    Then se le presentan opciones de filtrado y detalles como paradas, puntos de interés y ubicación en tiempo real del vehículo
