/**
*
* @Name:	ngimu.cpp
* @Author:	Duro UAS
* @Version:	0.1.0
* @Description:	a C++ code that publishes imu data with the following topics: imu/sensors, imu/quaternion, imu/euler, imu/rotation_matrix, imu/linear_acceleration, imu/earth_acceleration, imu/magnitudes, imu/altitude, imu/temperature, and imu/humidity. The hardware used is NGIMU developed by the x-io Technologies Inc. The ROS package runs on Jetson TX1 (Ubuntu 16.04).
*
**/

//------------------------------------------------------------------------------
// Includes
/**
* Call the required libraries for the file to run.
* Osc99 and NgimuReceive are the libraries developed by the x-io technologies Inc.
**/
#include "Osc99/Osc99.h"
#include "NgimuReceive/NgimuReceive.h"

//#include "serial/serial.h"
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Header.h"
#include "serial_port.c"

#include <ngimu/NGIMUSensors.h>
#include <ngimu/NGIMUQuaternion.h>
#include <ngimu/NGIMUEuler.h>
#include <ngimu/NGIMURotationMatrix.h>
#include <ngimu/NGIMULinearAcceleration.h>
#include <ngimu/NGIMUEarthAcceleration.h>
#include <ngimu/NGIMUMagnitudes.h>
#include <ngimu/NGIMUAltitude.h>
#include <ngimu/NGIMUTemperature.h>
#include <ngimu/NGIMUHumidity.h>
#include <ngimu/NGIMUAuxserial.h>
#include <ngimu/NGIMUBattery.h>

#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <termios.h>

//------------------------------------------------------------------------------
// Variables
/*
* @port : the serial port for the NGIMU to use in Ubuntu 16.04
* @baudrate : the baudrate for the serial port connection
* @timeout : the timeout rate for the serial port connection
* @loopRate : the rate at which the ros::spin() spins in Hz
* @imu_<data type>_pub : the ROS publisher instances to publish different kinds of data from the device
*/
std::string port = "/dev/ttyACM0";
std::string frame_id = "map";
int baudrate = 115200;
int timeout = 1000;
int loopRate = 5000;

ros::Publisher imu_sensor_pub;
ros::Publisher imu_quaternion_pub;
ros::Publisher imu_euler_pub;
ros::Publisher imu_rotation_matrix_pub;
ros::Publisher imu_linear_accel_pub;
ros::Publisher imu_earth_accel_pub;
ros::Publisher imu_magnitudes_pub;
ros::Publisher imu_altitude_pub;
ros::Publisher imu_temperature_pub;
ros::Publisher imu_humidity_pub;
ros::Publisher imu_auxserial_pub;
ros::Publisher imu_battery_pub;
std_msgs::Header ngimu_header; 

//------------------------------------------------------------------------------
// Callback functions (Declaration)
/*
* the functions below are used as callback functions; they will be taken as parameters of the functions
* whose names start with NgimuReceiveSet- (the functions declared at the library NgimuReceive.h). 
*/
void ngimuReceiveErrorCallback(const char* const errorMessage);
void ngimuAuxserialCallback(const NgimuAuxserial ngimuAuxserial);
void ngimuSensorsCallback(const NgimuSensors ngimuSensors);
void ngimuQuaternionCallback(const NgimuQuaternion ngimuQuaternion);
void ngimuEulerCallback(const NgimuEuler ngimuEuler);
void ngimuRotationMatrixCallback(const NgimuRotationMatrix ngimuRotationMatrix);
void ngimuLinearAccelerationCallback(const NgimuLinearAcceleration ngimuLinearAcceleration);
void ngimuEarthAccelerationCallback(const NgimuEarthAcceleration ngimuEarthAcceleration);
void ngimuMagnitudesCallback(const NgimuMagnitudes ngimuMagnitudes);
void ngimuAltitudeCallback(const NgimuAltitude ngimuAltitude);
void ngimuTemperatureCallback(const NgimuTemperature ngimuTemperature);
void ngimuHumidityCallback(const NgimuHumidity ngimuHumidity);
void ngimuBatteryCallback(const NgimuBattery ngimuBattery);


//------------------------------------------------------------------------------
// Main function
int main(int argc, char **argv)
{
	// initialize a ROS node named ngimu, a NodeHandle n, and the list of publishers
	ros::init(argc, argv, "ngimu");
	ros::NodeHandle n;

	imu_sensor_pub = n.advertise<ngimu::NGIMUSensors>("imu/sensors", 10000);
	imu_quaternion_pub = n.advertise<ngimu::NGIMUQuaternion>("imu/quaternion", 10000);
	imu_euler_pub = n.advertise<ngimu::NGIMUEuler>("imu/euler", 10000);
	imu_rotation_matrix_pub = n.advertise<ngimu::NGIMURotationMatrix>("imu/rotation_matrix", 10000);
	imu_linear_accel_pub = n.advertise<ngimu::NGIMULinearAcceleration>("imu/linear_acceleration", 10000);
	imu_earth_accel_pub = n.advertise<ngimu::NGIMUEarthAcceleration>("imu/earth_acceleration", 10000);
	imu_magnitudes_pub = n.advertise<ngimu::NGIMUMagnitudes>("imu/magnitudes", 10000);
	imu_altitude_pub = n.advertise<ngimu::NGIMUAltitude>("imu/altitude", 10000);
	imu_temperature_pub = n.advertise<ngimu::NGIMUTemperature>("imu/temperature", 10000);
	imu_humidity_pub = n.advertise<ngimu::NGIMUHumidity>("imu/humidity", 10000);
	imu_auxserial_pub = n.advertise<ngimu::NGIMUAuxserial>("imu/auxserial", 10000);
	imu_battery_pub = n.advertise<ngimu::NGIMUBattery>("imu/battery", 10000);
	ros::Rate loop_rate(loopRate);
	
	f = fopen("IMUdata.txt", "w");
	// call the NgimuReceiveInitialise() function from the library NgimuReceive to initialize NGIMU-related programs
	NgimuReceiveInitialise();

	// Assign the declared callback functions starting with ngimu- (e.g. ngimuSensorsCallback) to the callback functions declared in the library NgimuReceive.h
	NgimuReceiveSetReceiveErrorCallback(ngimuReceiveErrorCallback);
	NgimuReceiveSetAuxserialCallback(ngimuAuxserialCallback);
        NgimuReceiveSetSensorsCallback(ngimuSensorsCallback);
	NgimuReceiveSetQuaternionCallback(ngimuQuaternionCallback);
	NgimuReceiveSetEulerCallback(ngimuEulerCallback);
	NgimuReceiveSetRotationMatrixCallback(ngimuRotationMatrixCallback);
	NgimuReceiveSetLinearAccelerationCallback(ngimuLinearAccelerationCallback);
	NgimuReceiveSetEarthAccelerationCallback(ngimuEarthAccelerationCallback);
	NgimuReceiveSetMagnitudesCallback(ngimuMagnitudesCallback);
	NgimuReceiveSetAltitudeCallback(ngimuAltitudeCallback);
	NgimuReceiveSetTemperatureCallback(ngimuTemperatureCallback);
	NgimuReceiveSetHumidityCallback(ngimuHumidityCallback);
	NgimuReceiveSetBatteryCallback(ngimuBatteryCallback);		


	int fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY | O_SYNC);
	if (fd < 0) {
		printf ("Serial port cannot be opened");
	}
	else {
		printf("Serial port can be opened successfully");
	}
	set_interface_attribs(fd, B115200, 0);
	set_blocking(fd, 0);
	char buf[2] = {0};
	ngimu_header.frame_id = frame_id;
	while (ros::ok())
	{
		read(fd, buf, 1);
		ngimu_header.stamp = ros::Time().now();
		NgimuReceiveProcessSerialByte(buf[0]);
		//ROS_INFO("%c ", buf[0]);
		
		ros::spinOnce();
		loop_rate.sleep();
	} 

	return 0;
}



//------------------------------------------------------------------------------
// Callback functions (Implementation)

/**
* @brief	initializes callback function to display error message
* @parameter
*		- errorMessage			the error message to be displayed
*/
void ngimuReceiveErrorCallback(const char* const errorMessage) {
	ROS_INFO("Error Message Callback: %s", errorMessage);
}


// Implement the callback functions whose names start with ngimu-.  
/*
* @brief	initializes callback function to get data of type NgimuSensors, use it to initialize ngimu::NGIMUSensors data, and 
*		publish the ngimu::NGIMUSensors data using the publisher instance imu_sensor_pub. This function is called each time a 
*		"/sensors" message is received.
* @parameter			
*		- ngimuSensors			the NgimuSensors instance declared in NgimuReceive.h
*/

void ngimuSensorsCallback(const NgimuSensors ngimuSensors) {
	ngimu::NGIMUSensors sensors;
	sensors.gyroscopeX = ngimuSensors.gyroscopeX;
	sensors.gyroscopeY = ngimuSensors.gyroscopeY;
	sensors.gyroscopeZ = ngimuSensors.gyroscopeZ;
	sensors.accelerometerX = ngimuSensors.accelerometerX;
	sensors.accelerometerY = ngimuSensors.accelerometerY;
	sensors.accelerometerZ = ngimuSensors.accelerometerZ;
	sensors.magnetometerX = ngimuSensors.magnetometerX;
	sensors.magnetometerY = ngimuSensors.magnetometerY;
	sensors.magnetometerZ = ngimuSensors.magnetometerZ;
	sensors.barometer = ngimuSensors.barometer;
	sensors.header = ngimu_header;
	imu_sensor_pub.publish(sensors);
	
	
}

/**
* @brief	initializes callback function to get data of type NgimuQuaternion, use it to initialize ngimu::NGIMUQuaternion data, 
*		and publish the ngimu::NGIMUQuaternion data using the publisher instance imu_quaternion_pub. This function is called 
*		each time a "/quaternion" message is received.
* @parameter
*		- ngimuQuaternion		the NgimuQuaternion instance declared in NgimuReceive.h
*/

void ngimuQuaternionCallback(const NgimuQuaternion ngimuQuaternion) {
	ngimu::NGIMUQuaternion quaternion;
	quaternion.w = ngimuQuaternion.w;
	quaternion.x = ngimuQuaternion.x;
	quaternion.y = ngimuQuaternion.y;
	quaternion.z = ngimuQuaternion.z;
	quaternion.header = ngimu_header;
	imu_quaternion_pub.publish(quaternion);
	

}

/**
* @brief	initializes callback function to get data of type NgimuEuler, use it to initialize ngimu::NGIMUEuler data, and publish 
*		the ngimu::NGIMUEuler data using the publisher instance imu_euler_pub. This function is called each time a "/euler" 
*		message is received.
* @parameter
*		- ngimuEuler			the NgimuEuler instance declared in NgimuReceive.h
*/

void ngimuEulerCallback(const NgimuEuler ngimuEuler) {
	
	ngimu::NGIMUEuler euler;
	euler.roll = ngimuEuler.roll;
	euler.pitch = ngimuEuler.pitch;
	euler.yaw = ngimuEuler.yaw;
	euler.header = ngimu_header;
	imu_euler_pub.publish(euler);
	
	// Print in ROS
	ROS_INFO(" /euler, ");
	ROS_INFO("Euler Roll: %f, ", ngimuEuler.roll);
	ROS_INFO("Euler Pitch: %f, ", ngimuEuler.pitch);
	ROS_INFO("Euler Yaw: %f, ", ngimuEuler.yaw);
}

/**
* @brief	initializes callback function to get data of type NgimuRotationMatrix, use it to initialize ngimu::NGIMURotationMatrix *		data, and publish the ngimu::NGIMURotationMatrix data using the publisher instance imu_rotation_matrix_pub. This 
*		function is called each time a "/matrix" message is received.
* @parameter	
*		- ngimuRotationMatrix		the NgimuRotationMatrix instance declared in NgimuReceive.h
*/

void ngimuRotationMatrixCallback(const NgimuRotationMatrix ngimuRotationMatrix){
	ngimu::NGIMURotationMatrix matrix;
	matrix.xx = ngimuRotationMatrix.xx;
	matrix.xy = ngimuRotationMatrix.xy;
	matrix.xz = ngimuRotationMatrix.xz;
	matrix.yx = ngimuRotationMatrix.yx;
	matrix.yy = ngimuRotationMatrix.yy;
	matrix.yz = ngimuRotationMatrix.yz;
	matrix.zx = ngimuRotationMatrix.zx;
	matrix.zy = ngimuRotationMatrix.zy;
	matrix.zz = ngimuRotationMatrix.zz;
	matrix.header = ngimu_header;
	imu_rotation_matrix_pub.publish(matrix);
}

/**
* @brief	initializes callback function to get data of type NgimuLinearAcceleration, use it to initialize 
*		ngimu::NGIMULinearAcceleration data, and publish the ngimu::NGIMULinearAcceleration data using the publisher instance *		imu_linear_accel_pub. This function is called each time a "/linear" message is received.
* @parameter
*		- ngimuLinearAcceleration	the NgimuLinearAcceleration instance declared in NgimuReceive.h
*/

void ngimuLinearAccelerationCallback(const NgimuLinearAcceleration ngimuLinearAcceleration){
	ngimu::NGIMULinearAcceleration linear_accel;
	linear_accel.x = ngimuLinearAcceleration.x;
	linear_accel.y = ngimuLinearAcceleration.y;
	linear_accel.z = ngimuLinearAcceleration.z;
	linear_accel.header = ngimu_header;
	imu_linear_accel_pub.publish(linear_accel);
}

/**
* @brief	initializes callback function to get data of type NgimuEarthAcceleration, use it to initialize 
*		ngimu::NGIMUEarthAcceleration data, and publish the ngimu::NGIMUEarthAcceleration data using the publisher instance 
*		imu_earth_accel_pub. This function is called each time a "/earth" message is received.
* @parameter
*		- ngimuEarthAcceleration	the NgimuEarthAcceleration instance declared in NgimuReceive.h
*/

void ngimuEarthAccelerationCallback(const NgimuEarthAcceleration ngimuEarthAcceleration){
	ngimu::NGIMUEarthAcceleration earth_accel;
	earth_accel.x = ngimuEarthAcceleration.x;
	earth_accel.y = ngimuEarthAcceleration.y;
	earth_accel.z = ngimuEarthAcceleration.z;
	earth_accel.header = ngimu_header;
	imu_earth_accel_pub.publish(earth_accel);
	
}

/**
* @brief	initializes callback function to get data of type NgimuMagnitudes, use it to initialize ngimu::NGIMUMagnitudes data, 
*		and publish the ngimu::NGIMUMagnitudes data using the publisher instance imu_magnitudes_pub. This function is called 
*		each time a "/magnitudes" message is received.
* @parameter
*		- ngimuMagnitudes		the NgimuMagnitudes instance declared in NgimuReceive.h
*/

void ngimuMagnitudesCallback(const NgimuMagnitudes ngimuMagnitudes){
	ngimu::NGIMUMagnitudes magnitudes;
	magnitudes.mag_gyroscope = ngimuMagnitudes.gyroscopeMagnitude;
	magnitudes.mag_accelerometer = ngimuMagnitudes.accelerometerMagnitude;
	magnitudes.mag_magnetometer = ngimuMagnitudes.magnetometerMagnitude;
	magnitudes.header = ngimu_header;
	imu_magnitudes_pub.publish(magnitudes);
}

/**
* @brief	initializes callback function to get data of type NgimuAltitude, use it to initialize ngimu::NGIMUAltitude data, and 
*		publish the ngimu::NGIMUAltitude data using the publisher instance imu_altitude_pub. This function is called each time 
*		a "/altitude" message is received.
* @parameter
*		- ngimuAltitude			the NgimuAltitude instance declared in NgimuReceive.h
*/

void ngimuAltitudeCallback(const NgimuAltitude ngimuAltitude){
	ngimu::NGIMUAltitude altitude;
	altitude.altitude = ngimuAltitude.altitude;
	altitude.header = ngimu_header;
	imu_altitude_pub.publish(altitude);
}

/**
* @brief	initializes callback function to get data of type NgimuTemperature, use it to initialize ngimu::NGIMUTemperature data, 
*		and publish the ngimu::NGIMUTemperature data using the publisher instance imu_temperature_pub. This function is called 
*		each time a "/temperature" message is received.
* @parameter
*		- ngimuTemperature		the NgimuTemperature instance declared in NgimuReceive.h
*/

void ngimuTemperatureCallback(const NgimuTemperature ngimuTemperature){

	ngimu::NGIMUTemperature temperature;
	temperature.temp_processor = ngimuTemperature.processor_Temp;
	temperature.temp_gyro_accel = ngimuTemperature.gyro_accel_Temp;
	//temperature.temp_barometer = ngimuTemperature.barometer_Temp;
	temperature.header = ngimu_header;
	imu_temperature_pub.publish(temperature);

}


/**
* @brief	initializes callback function to get data of type NgimuHumidity, use it to initialize ngimu::NGIMUHumidity data, and 
*		publish the ngimu::NGIMUHumidity data using the publisher instance imu_humidity_pub. This function is called each time 
*		a "/humidity" message is received.
* @parameter
*		- ngimuHumidity			the NgimuHumidity instance declared in NgimuReceive.h
*/

void ngimuHumidityCallback(const NgimuHumidity ngimuHumidity){
	ngimu::NGIMUHumidity humidity;
	humidity.humidity = ngimuHumidity.humidity;
	humidity.header = ngimu_header;
	imu_humidity_pub.publish(humidity);
	
}


/**
* @brief	initializes callback function to get data of type NgimuAuxserial, use it to initialize ngimu::NGIMUGPS data, and 
*		publish the ngimu::NGIMUGPS data using the publisher instance imu_gps_pub. This function is called each time 
*		a "/auxserial" message is received.
* @parameter
*		- ngimuauxserial		the NgimuAuxserial instance declared in NgimuReceive.h
*/

void ngimuAuxserialCallback(const NgimuAuxserial ngimuAuxserial) {
	/*
	ngimu::NGIMUGPS gps;
	std::string gps_data(ngimuauxserial.rawData);
	if (gps_data.find("$GPGLL")==0){
		ROS_INFO("GPS DATA : %s", ngimuauxserial.rawData);
	}
	
	// ******************* write code ******************* //
	gps.header = ngimu_header;
	imu_gps_pub.publish(gps);
	// Store data in a file
	fprintf(f, "GPS DATA: %s", ngimuauxserial.rawData);
	// Print data in ROS
	ROS_INFO("GPS DATA: %s", ngimuauxserial.rawData);
	*/
	ngimu::NGIMUAuxserial auxserial;
  	auxserial.message1 = *ngimuAuxserial.message1;
	auxserial.header = ngimu_header;
	imu_auxserial_pub.publish(auxserial);
  	

}

// This function is called each time a "/battery" message is received

void ngimuBatteryCallback(const NgimuBattery ngimuBattery) {
	ngimu::NGIMUBattery battery;
	battery.batterylevel = ngimuBattery.batterylevel;
	battery.timetoempty = ngimuBattery.timetoempty;
	battery.voltage = ngimuBattery.voltage;
	battery.current = ngimuBattery.current;
	battery.state = *ngimuBattery.state;
	battery.header = ngimu_header;
	imu_battery_pub.publish(battery);
	
}
