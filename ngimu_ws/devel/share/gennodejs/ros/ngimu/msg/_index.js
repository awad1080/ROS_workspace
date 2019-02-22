
"use strict";

let NGIMUBattery = require('./NGIMUBattery.js');
let NGIMUTemperature = require('./NGIMUTemperature.js');
let NGIMUMagnitudes = require('./NGIMUMagnitudes.js');
let NGIMUSensors = require('./NGIMUSensors.js');
let NGIMULinearAcceleration = require('./NGIMULinearAcceleration.js');
let NGIMUEuler = require('./NGIMUEuler.js');
let NGIMUQuaternion = require('./NGIMUQuaternion.js');
let NGIMUEarthAcceleration = require('./NGIMUEarthAcceleration.js');
let NGIMURotationMatrix = require('./NGIMURotationMatrix.js');
let NGIMUHumidity = require('./NGIMUHumidity.js');
let NGIMUAltitude = require('./NGIMUAltitude.js');
let NGIMUAuxserial = require('./NGIMUAuxserial.js');

module.exports = {
  NGIMUBattery: NGIMUBattery,
  NGIMUTemperature: NGIMUTemperature,
  NGIMUMagnitudes: NGIMUMagnitudes,
  NGIMUSensors: NGIMUSensors,
  NGIMULinearAcceleration: NGIMULinearAcceleration,
  NGIMUEuler: NGIMUEuler,
  NGIMUQuaternion: NGIMUQuaternion,
  NGIMUEarthAcceleration: NGIMUEarthAcceleration,
  NGIMURotationMatrix: NGIMURotationMatrix,
  NGIMUHumidity: NGIMUHumidity,
  NGIMUAltitude: NGIMUAltitude,
  NGIMUAuxserial: NGIMUAuxserial,
};
