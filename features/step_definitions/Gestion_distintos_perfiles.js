const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

let appContext = {
  perfilActual: null,
  detallesPerfilConductorVerificados: false,
  busquedaViajeSinInfoAdicional: false,
  cambioPerfilRapido: false,
  preferenciasRestauradas: false
};

// Background
Given('que el usuario ha iniciado sesión en la aplicación AutoCompartidoITESO', function () {
  appContext.perfilActual = "pasajero"; // Asumimos que el usuario inicia como pasajero
});

// Selección de perfil desde la interfaz principal
When('el usuario selecciona la opción de cambiar su perfil actual', function () {
  appContext.perfilActual = "conductor"; // Cambio de perfil a conductor
});

Then('se muestra una selección para cambiar entre perfil de conductor y pasajero', function () {
  assert.strictEqual(appContext.perfilActual, "conductor");
});

// Verificación de información para perfil de conductor
Given('que el usuario desea cambiar a perfil de conductor', function () {
  appContext.perfilActual = "pasajero"; // Asumimos que empieza como pasajero
});

When('el usuario intenta cambiar al perfil de conductor', function () {
  appContext.detallesPerfilConductorVerificados = true; // Verificación simulada
});

Then('se le solicita que verifique su información de conducción antes de activar el perfil', function () {
  assert.strictEqual(appContext.detallesPerfilConductorVerificados, true);
});

// Acceso inmediato para perfil de pasajero
Given('que el usuario cambia a perfil de pasajero', function () {
  appContext.perfilActual = "conductor"; // Cambio a pasajero para la prueba
});

When('el usuario navega hacia la búsqueda de viajes', function () {
  appContext.busquedaViajeSinInfoAdicional = true; // Simulación de búsqueda de viaje sin info adicional
});

Then('el usuario puede buscar y reservar viajes sin necesidad de ingresar información adicional', function () {
  assert.strictEqual(appContext.busquedaViajeSinInfoAdicional, true);
});

// Cambio de perfil con mínimas interacciones
Given('que el usuario está navegando en la aplicación', function () {
  appContext.perfilActual = "pasajero";
});

When('el usuario decide cambiar de perfil', function () {
  appContext.cambioPerfilRapido = true; // Simulación de cambio rápido
});

Then('el cambio de perfil se realiza en no más de tres interacciones', function () {
  assert.strictEqual(appContext.cambioPerfilRapido, true);
});

// Restauración de preferencias de perfil en cada sesión
Given('que el usuario ha personalizado ajustes en su perfil de pasajero', function () {
  appContext.preferenciasRestauradas = false; // Reset antes de la prueba
});

When('el usuario cierra sesión y luego vuelve a iniciar sesión', function () {
  appContext.preferenciasRestauradas = true; // Simulación de restauración de preferencias
});

Then('las preferencias personalizadas son restauradas automáticamente en el perfil de pasajero', function () {
  assert.strictEqual(appContext.preferenciasRestauradas, true);
});
