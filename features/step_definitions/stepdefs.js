const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

let appState;
let routesList;
let selectedRouteDetails;
let userExperienceOptions;

Given('que el usuario está en la pantalla de inicio de la aplicación', function () {
  appState = 'inicio';
});

When('el usuario hace clic en el icono de la sección de rutas', function () {

});

Then('la sección de rutas se muestra de forma accesible', function () {

  assert.strictEqual(appState, 'rutas-accesibles');
});

