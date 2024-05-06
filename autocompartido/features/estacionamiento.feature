Feature: Como un conductor en la aplicación AutoCompartidoITESO, quiero reservar un espacio de aparcamiento para garantizar que tengo un lugar cuando llegue al campus con pasajeros.

    Scenario: En el que Joey, que no está autenticado, intenta reservar un espacio
        Given: Joey accede a la función de reserva de aparcamiento en la aplicación
        When: Intenta seleccionar un espacio de aparcamiento sin iniciar sesión
        Then: La aplicación le muestra un mensaje para que inicie sesión antes de continuar

    Scenario: En el que Ross intenta reservar un espacio sin confirmar la presencia de dos pasajeros
        Given: Ross está autenticado y en la pantalla de reserva de aparcamiento
        When: Selecciona la opción de reservar sin confirmar dos pasajeros en su coche
        Then: La aplicación le pide que confirme la presencia de al menos dos pasajeros antes de proceder

    Scenario: En el que Chandler selecciona un espacio ya ocupado
        Given: Chandler, ya con dos pasajeros confirmados, busca un espacio para aparcar
        When: Selecciona un espacio que aparece en el mapa sin darse cuenta de que está ocupado
        Then: La aplicación le informa que el espacio está ocupado y le muestra alternativas disponibles

    Scenario: En el que Monica confirma dos pasajeros y reserva con éxito un espacio disponible
        Given: Monica está autenticada y ha confirmado que lleva dos pasajeros
        When: Selecciona un espacio disponible y lo reserva
        Then: La aplicación confirma la reserva y actualiza el estado del espacio a "ocupado"

    Scenario: En el que Phoebe desea cancelar una reserva existente
        Given: Phoebe ha reservado un espacio de aparcamiento pero necesita cancelarlo
        When: Accede a su reserva actual y selecciona la opción de cancelación
        Then: La aplicación cancela la reserva y actualiza el estado del espacio a "disponible"

    Scenario: En el que Rachel activa el modo de espera debido a la falta de espacios disponibles
        Given: Rachel está autenticada y busca un espacio de aparcamiento
        When: No hay espacios disponibles en el momento que ella busca
        Then: La aplicación le informa de la falta de disponibilidad y ofrece la opción de inscribirse en una lista de espera
