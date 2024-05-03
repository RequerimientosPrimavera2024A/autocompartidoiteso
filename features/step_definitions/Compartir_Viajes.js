const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

let appContext = {
  viaje: {
    origen: "",
    destino: "",
    asientosDisponibles: 0,
    horaSalida: "",
    viajesDisponibles: [],
    solicitudUnirse: false,
    confirmacionConductor: false,
    costoDividido: false,
    notificacionConfirmacion: false
  }
};

// Background
Given('que el usuario ha iniciado sesión en la aplicación AutoCompartidoITESO', function () {
  // Simular el inicio de sesión del usuario
});

// Publicar un viaje disponible para compartir
Given('que el usuario planea conducir desde {string} hasta {string}', function (origen, destino) {
  appContext.viaje.origen = origen;
  appContext.viaje.destino = destino;
});

When('el usuario publica el viaje con {int} asientos disponibles a las {string}', function (asientos, hora) {
  appContext.viaje.asientosDisponibles = asientos;
  appContext.viaje.horaSalida = hora;
  appContext.viaje.viajesDisponibles.push({ origen: appContext.viaje.origen, destino: appContext.viaje.destino, asientos: asientos, hora: hora });
});

Then('otros usuarios deberían poder ver y solicitar unirse al viaje', function () {
  assert(appContext.viaje.viajesDisponibles.length > 0);
});

// Búsqueda y solicitud para unirse a un viaje compartido
Given('que el usuario busca un viaje que coincida con su ruta deseada hacia {string}', function (destino) {
  appContext.viaje.destino = destino;
});

When('encuentra un viaje compartido disponible y envía una solicitud para unirse', function () {
  appContext.viaje.solicitudUnirse = true;
});

Then('el conductor del viaje debería recibir la solicitud del usuario para unirse al viaje', function () {
  assert.strictEqual(appContext.viaje.solicitudUnirse, true);
});

// Confirmación de participación por el conductor
Given('que un conductor ha recibido una solicitud de pasajero para compartir viaje', function () {
  appContext.viaje.solicitudUnirse = true;
});

When('el conductor revisa la solicitud y decide aceptarla', function () {
  appContext.viaje.confirmacionConductor = true;
});

Then('el usuario que solicitó unirse debería recibir una confirmación de aceptación', function () {
  assert.strictEqual(appContext.viaje.confirmacionConductor, true);
});

// División automática de costos del viaje
Given('que el usuario se ha unido a un viaje compartido desde {string} hasta {string}', function (origen, destino) {
  appContext.viaje.origen = origen;
  appContext.viaje.destino = destino;
});

When('el viaje se completa', function () {
  appContext.viaje.costoDividido = true;
});

Then('el sistema debe calcular y dividir automáticamente el costo del viaje entre el conductor y los pasajeros', function () {
  assert.strictEqual(appContext.viaje.costoDividido, true);
});

// Notificaciones de confirmación para unirse a viajes
Given('que el usuario ha enviado una solicitud para unirse a un viaje compartido', function () {
  appContext.viaje.solicitudUnirse = true;
});

When('el conductor acepta la solicitud', function () {
  appContext.viaje.notificacionConfirmacion = true;
});

Then('el usuario debería recibir una notificación confirmando que ha sido añadido al viaje', function () {
  assert.strictEqual(appContext.viaje.notificacionConfirmacion, true);
});
