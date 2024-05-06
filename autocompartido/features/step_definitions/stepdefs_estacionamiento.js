const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

// Scenario: En el que Joey, que no está autenticado, intenta reservar un espacio
Given('Joey accede a la función de reserva de aparcamiento en la aplicación', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('Intenta seleccionar un espacio de aparcamiento sin iniciar sesión', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación le muestra un mensaje para que inicie sesión antes de continuar', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

// Scenario: En el que Ross intenta reservar un espacio sin confirmar la presencia de dos pasajeros
Given('Ross está autenticado y en la pantalla de reserva de aparcamiento', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('Selecciona la opción de reservar sin confirmar dos pasajeros en su coche', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación le pide que confirme la presencia de al menos dos pasajeros antes de proceder', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

// Scenario: En el que Chandler selecciona un espacio ya ocupado
Given('Chandler, ya con dos pasajeros confirmados, busca un espacio para aparcar', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('Selecciona un espacio que aparece en el mapa sin darse cuenta de que está ocupado', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación le informa que el espacio está ocupado y le muestra alternativas disponibles', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

// Scenario: En el que Monica confirma dos pasajeros y reserva con éxito un espacio disponible
Given('Monica está autenticada y ha confirmado que lleva dos pasajeros', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('Selecciona un espacio disponible y lo reserva', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación confirma la reserva y actualiza el estado del espacio a "ocupado"', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

// Scenario: En el que Phoebe desea cancelar una reserva existente
Given('Phoebe ha reservado un espacio de aparcamiento pero necesita cancelarlo', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('Accede a su reserva actual y selecciona la opción de cancelación', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación cancela la reserva y actualiza el estado del espacio a "disponible"', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

// Scenario: En el que Rachel activa el modo de espera debido a la falta de espacios disponibles
Given('Rachel está autenticada y busca un espacio de aparcamiento', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

When('No hay espacios disponibles en el momento que ella busca', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});

Then('La aplicación le informa de la falta de disponibilidad y ofrece la opción de inscribirse en una lista de espera', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});
