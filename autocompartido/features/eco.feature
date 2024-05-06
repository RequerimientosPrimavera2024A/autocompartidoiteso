Feature: Como usuario de la aplicación Rides ITESO, quiero activar el Modo Ecológico para seleccionar vehículos eléctricos e híbridos y contribuir a la reducción de la huella de carbono.
    
    Scenario: En el que Joey, un usuario no registrado, intenta activar el Modo Ecológico
        Given: Joey accede a la función de Modo Ecológico en la aplicación
        When: Intenta activar el Modo Ecológico sin estar registrado o autenticado
        Then: La aplicación le solicita que se registre o inicie sesión primero

    Scenario: En el que Ross activa el Modo Ecológico y selecciona un vehículo eléctrico disponible
        Given: Ross está registrado y ha activado el Modo Ecológico
        When: Selecciona un vehículo eléctrico disponible para su ride
        Then: La aplicación muestra solo vehículos eléctricos e híbridos y confirma la reserva del vehículo seleccionado

    Scenario: En el que Phoebe activa el Modo Ecológico pero no hay vehículos disponibles
        Given: Phoebe está autenticada y activa el Modo Ecológico
        When: Busca un vehículo pero no hay eléctricos o híbridos disponibles
        Then: La aplicación informa que no hay disponibilidad y ofrece la opción de notificación cuando un vehículo esté disponible

    Scenario: En el que Monica desea desactivar el Modo Ecológico después de activarlo
        Given: Monica ha activado el Modo Ecológico para buscar un vehículo
        When: Decide desactivar el Modo Ecológico
        Then: La aplicación permite la desactivación y vuelve a mostrar todos los tipos de vehículos

    Scenario: En el que Chandler reserva un vehículo híbrido en Modo Ecológico y luego cancela la reserva
        Given: Chandler ha reservado un vehículo híbrido bajo el Modo Ecológico
        When: Decide cancelar la reserva
        Then: La aplicación procesa la cancelación y actualiza la disponibilidad del vehículo

    Scenario: En el que Rachel con Modo Ecológico activo cierra sesión y luego vuelve a entrar
        Given: Rachel activa el Modo Ecológico, luego cierra sesión
        When: Rachel vuelve a entrar en la aplicación
        Then: La aplicación recuerda la preferencia de Rachel y mantiene el Modo Ecológico activo o requiere su reactivación según la política del sistema

