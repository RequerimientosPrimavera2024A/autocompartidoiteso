const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

let appContext = {
  usuarioActual: null,
  conductorActual: null,
  llamadaIniciada: false,
  mensajeEnviado: false,
  notificacionRecibida: false,
  informacionVisible: false,
  historialGuardado: false,
};

Given('que el usuario ha solicitado un viaje en la aplicación de ridesharing', function () {
  appContext.usuarioActual = "usuario";
  // Simular la solicitud de un viaje en la aplicación
});

When('el usuario inicia una llamada telefónica al conductor', function () {
  appContext.llamadaIniciada = true;
  // Simular la acción de iniciar una llamada telefónica al conductor
});

When('el usuario envía un mensaje de texto al conductor', function () {
  appContext.mensajeEnviado = true;
  // Simular la acción de enviar un mensaje de texto al conductor
});

When('el usuario recibe una llamada entrante del conductor', function () {
  appContext.notificacionRecibida = true;
  // Simular la acción de recibir una llamada entrante del conductor
});

When('el usuario visualiza los detalles del conductor', function () {
  appContext.informacionVisible = true;
  // Simular la acción de visualizar los detalles del conductor
});

When('el usuario guarda el historial de comunicación', function () {
  appContext.historialGuardado = true;
  // Simular la acción de guardar el historial de comunicación
});

Then('el usuario debería estar en una llamada con el conductor para coordinar el punto de encuentro', function () {
  assert.strictEqual(appContext.llamadaIniciada, true);
  // Verificar que se haya iniciado la llamada telefónica
});

Then('el usuario debería ver que el mensaje fue enviado satisfactoriamente al conductor', function () {
  assert.strictEqual(appContext.mensajeEnviado, true);
  // Verificar que el mensaje de texto haya sido enviado
});

Then('el usuario debería recibir una notificación sobre la llamada entrante', function () {
  assert.strictEqual(appContext.notificacionRecibida, true);
  // Verificar que se haya recibido la notificación sobre la llamada entrante
});

Then('el usuario debería ver la información de contacto del conductor, como el número de teléfono', function () {
  assert.strictEqual(appContext.informacionVisible, true);
  // Verificar que la información de contacto del conductor sea visible
});

Then('el usuario debería poder acceder al historial de comunicación para futuras referencias', function () {
  assert.strictEqual(appContext.historialGuardado, true);
  // Verificar que el historial de comunicación haya sido guardado correctamente
});
