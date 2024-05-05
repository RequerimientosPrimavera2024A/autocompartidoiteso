Feature: Verificación/Autenticación en AutoCompartidoITESO

  Scenario: Iniciar sesión con credenciales válidas
    Given El usuario abre la aplicación AutoCompartidoITESO
    And El usuario accede a la pantalla de inicio de sesión
    When El usuario ingresa su nombre de usuario "ejemplo_usuario" y contraseña "contraseña_segura"
    And El usuario presiona el botón "Iniciar Sesión"
    Then El sistema autentica al usuario y le permite acceder a su cuenta

  Scenario: Iniciar sesión con credenciales inválidas
    Given El usuario abre la aplicación AutoCompartidoITESO
    And El usuario accede a la pantalla de inicio de sesión
    When El usuario ingresa un nombre de usuario incorrecto "usuario_incorrecto" y contraseña inválida "contraseña_invalida"
    And El usuario presiona el botón "Iniciar Sesión"
    Then El sistema muestra un mensaje de error indicando credenciales incorrectas

  Scenario: Restablecer contraseña olvidada
    Given El usuario abre la aplicación AutoCompartidoITESO
    And El usuario accede a la opción de restablecimiento de contraseña
    When El usuario sigue el enlace recibido por correo electrónico
    And El usuario ingresa una nueva contraseña "nueva_contraseña" y la confirma
    Then El sistema verifica y actualiza con éxito la nueva contraseña del usuario
