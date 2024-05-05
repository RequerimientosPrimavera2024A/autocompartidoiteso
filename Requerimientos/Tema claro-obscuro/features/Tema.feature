Feature: Foto de Perfil en AutoCompartidoITESO

  Scenario: Tomar una nueva foto desde la cámara
    Given El usuario accede a la opción de editar perfil en la aplicación
    When El usuario elige tomar una nueva foto utilizando la cámara de su dispositivo
    Then La aplicación guarda la nueva foto como foto de perfil del usuario

  Scenario: Seleccionar una foto existente desde la galería
    Given El usuario accede a la opción de editar perfil en la aplicación
    When El usuario selecciona una foto existente desde la galería de imágenes de su dispositivo
    Then La aplicación guarda la foto seleccionada como foto de perfil del usuario
