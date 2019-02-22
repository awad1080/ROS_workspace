/**
 * @file NgimuReceive.h
 * @author Seb Madgwick
 * @brief Module for receiving messages from an NGIMU.
 */

#ifndef NGIMU_RECEIVE_H
#define NGIMU_RECEIVE_H

#ifdef __cplusplus
extern "C" {
#endif

//------------------------------------------------------------------------------
// Includes

#include "Osc99/Osc99.h"
#include <stdio.h>

//------------------------------------------------------------------------------
// Definitions

/**
 * @brief Timestamp and argument values for "/sensors" message.
 */
FILE *f;
typedef struct {
    OscTimeTag timestamp;
    float gyroscopeX;
    float gyroscopeY;
    float gyroscopeZ;
    float accelerometerX;
    float accelerometerY;
    float accelerometerZ;
    float magnetometerX;
    float magnetometerY;
    float magnetometerZ;
    float barometer;
} NgimuSensors;

/**
 * @brief Timestamp and argument values for "/magnitudes" message.
 */
typedef struct{
    OscTimeTag timestamp;
    float gyroscopeMagnitude;
    float accelerometerMagnitude;
    float magnetometerMagnitude;
} NgimuMagnitudes;

/**
 * @brief Timestamp and argument values for "/quaternion" message.
 */
typedef struct {
    OscTimeTag timestamp;
    float w;
    float x;
    float y;
    float z;
} NgimuQuaternion;

/**
 * @brief Timestamp and argument values for "/euler" message.
 */
typedef struct {
    OscTimeTag timestamp;
    float roll;
    float pitch;
    float yaw;
} NgimuEuler;


//**************************** CHANG LEE ****************************//  

/**
 * @brief Timestamp and argument values for "/matrix" message.
 */
typedef struct{
    OscTimeTag timestamp;
    float xx;
    float xy;
    float xz;
    float yx;
    float yy;
    float yz;
    float zx;
    float zy;
    float zz;
} NgimuRotationMatrix;

/**
 * @brief Timestamp and argument values for "/linear" message (acceleration).
 */
typedef struct {
    OscTimeTag timestamp;
    float x;
    float y;
    float z;
} NgimuLinearAcceleration;

/**
 * @brief Timestamp and argument values for "/earth" message (gravity-free acceleration).
 */
typedef struct {
    OscTimeTag timestamp;
    float x;
    float y;
    float z;
} NgimuEarthAcceleration;

/**
 * @brief Timestamp and argument values for "/altitude" message.
 */
typedef struct {
    OscTimeTag timestamp;
    float altitude;
} NgimuAltitude;

/**
 * @brief Timestamp and argument values for "/temperature" message (this is not the temperature of environment but the temperature of the device).
 */
typedef struct {
    OscTimeTag timestamp;
    float processor_Temp;
    float gyro_accel_Temp;
    //float barometer_Temp;
} NgimuTemperature;

/**
 * @brief Timestamp and argument values for "/humidity" message.
 */
typedef struct {
    OscTimeTag timestamp;
    float humidity;
} NgimuHumidity;

/**
 * @brief Timestamp and argument values for "/humidity" message.
 */
/*
typedef struct {
    OscTimeTag timestamp;
    char * rawData; // Data received through the auxiliary serial interface
    //char * dataWithCharacterPair; // Data received through the auxiliary serial interview with null bytes replaces with the character pair '/0'
} NgimuAuxserial;
*/
typedef struct {
	OscTimeTag timestamp;
	char message1[1024];
} NgimuAuxserial;

//**************************** CHANG LEE ****************************//

typedef struct {
    OscTimeTag timestamp;
    float batterylevel;
    float timetoempty;
    float voltage;
    float current;
    char state[32];
} NgimuBattery;

//------------------------------------------------------------------------------
// Function prototypes

void NgimuReceiveInitialise();
void NgimuReceiveSetReceiveErrorCallback(void (*newReceiveErrorCallback)(const char* const errorMessage));
void NgimuReceiveSetSensorsCallback(void (*newSensorsCallback)(const NgimuSensors ngimuSensors));
void NgimuReceiveSetQuaternionCallback(void (*newQuaternionCallback)(const NgimuQuaternion ngimuQuaternion));
void NgimuReceiveSetEulerCallback(void (*newEulerCallback)(const NgimuEuler ngimuEuler));

//**************************** CHANG LEE ****************************//
void NgimuReceiveSetRotationMatrixCallback(void (*newRotationMatrixCallback)(const NgimuRotationMatrix ngimuRotationMatrix));
void NgimuReceiveSetLinearAccelerationCallback(void (*newLinearAccelerationCallback)(const NgimuLinearAcceleration ngimuLinearAcceleration));
void NgimuReceiveSetEarthAccelerationCallback(void (*newEarthAccelerationCallback)(const NgimuEarthAcceleration ngimuEarthAcceleration));
void NgimuReceiveSetMagnitudesCallback(void (*newMagnitudesCallback)(const NgimuMagnitudes ngimuMagnitudes));
void NgimuReceiveSetAltitudeCallback(void (*newAltitudeCallback)(const NgimuAltitude ngimuAltitude));
void NgimuReceiveSetTemperatureCallback(void (*newTemperatureCallback)(const NgimuTemperature ngimuTemperature));
void NgimuReceiveSetHumidityCallback(void (*newHumidityCallback)(const NgimuHumidity ngimuHumidity));
void NgimuReceiveSetAuxserialCallback(void (*ngimuAuxserialCallback)(const NgimuAuxserial ngimuAuxserial));
//**************************** CHANG LEE ****************************//
void NgimuReceiveSetBatteryCallback(void (*newBatteryCallback)(const NgimuBattery ngimuBattery));

void NgimuReceiveProcessSerialByte(const char byte);
void NgimuReceiveProcessUdpPacket(const char * const source, const size_t sourceSize);

#ifdef __cplusplus
}
#endif

#endif

//------------------------------------------------------------------------------
// End of file
