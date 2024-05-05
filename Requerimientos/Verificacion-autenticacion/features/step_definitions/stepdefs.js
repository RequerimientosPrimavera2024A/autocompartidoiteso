const { Given, When, Then } = require('cucumber');

Given('El usuario abre la aplicación AutoCompartidoITESO', function () {
  // Implementación de apertura de la aplicación
});

Given('El usuario accede a la pantalla de inicio de sesión', function () {
  // Implementación de acceso a la pantalla de inicio de sesión
});

When('El usuario ingresa su nombre de usuario {string} y contraseña {string}', function (username, password) {
  // Implementación de ingreso de credenciales
});

When('El usuario presiona el botón {string}', function (button) {
  // Implementación de presionar botón
});

Then('El sistema autentica al usuario y le permite acceder a su cuenta', function () {
  // Implementación de autenticación exitosa
});

Then('El sistema muestra un mensaje de error indicando credenciales incorrectas', function () {
  // Implementación de mensaje de error por credenciales incorrectas
});

Given('El usuario accede a la opción de restablecimiento de contraseña', function () {
  // Implementación de acceso a opción de restablecimiento de contraseña
});

When('El usuario sigue el enlace recibido por correo electrónico', function () {
  // Implementación de seguir enlace de restablecimiento
});

When('El usuario ingresa una nueva contraseña {string} y la confirma', function (newPassword) {
  // Implementación de ingreso y confirmación de nueva contraseña
});

Then('El sistema verifica y actualiza con éxito la nueva contraseña del usuario', function () {
  // Implementación de verificación y actualización exitosa de contraseña
});

