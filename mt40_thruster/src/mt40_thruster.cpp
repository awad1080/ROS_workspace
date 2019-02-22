/**
 * @Name			mt40_thruster.cpp	
 * @Author			Duro UAS
 * @Version			0.1.0
 * @Copyright		maxon motor ag 2014
 * @Description		A C++ code that interfaces with the MT40 thruster. Basically the code does the following:
 * 						1. It subscribes to the topic 'joy'; it uses the value located in the first index of the axes in the 'joy' message
 * 						2. It converts that axes value into actual speed
 * 						3. It uses the speed to actuate the thruster.
**/


//----------------------------------------------------------------------
// Includes
#include <iostream>
#include "ros/ros.h"
#include "sensor_msgs/Joy.h"
#include <Definitions.h>
#include <string.h>
#include <sstream>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <list>
#include <math.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/times.h>
#include <sys/time.h>

typedef void* HANDLE;
typedef int BOOL;

using namespace std;

//----------------------------------------------------------------------
// Variables
void* g_pKeyHandle = 0;
unsigned short g_usNodeId = 1;
string g_deviceName;
string g_protocolStackName;
string g_interfaceName;
string g_portName;
int g_baudrate = 0;
int close_epos;

double base_speed = 600.00; // The minimum speed for the thruster to move with
double max_speed = 10000.00; // The maximu speed for the thruster

const string g_programName = "MT40 thruster";

#ifndef MMC_SUCCESS
	#define MMC_SUCCESS 0
#endif

#ifndef MMC_FAILED
	#define MMC_FAILED 1
#endif

#ifndef MMC_MAX_LOG_MSG_SIZE
	#define MMC_MAX_LOG_MSG_SIZE 512
#endif

//----------------------------------------------------------------------
// Function Declaration
void  LogError(string functionName, int p_lResult, unsigned int p_ulErrorCode);
void  LogInfo(string message);
void  PrintUsage();
void  PrintSettings();
int   OpenEPOS4(unsigned int* p_pErrorCode);
int   CloseEPOS4(unsigned int* p_pErrorCode);
void  SetDefaultParameters();
int   ParseArguments(int argc, char** argv);
int   Run(unsigned int* p_pErrorCode);

void PrintUsage()
{
	ROS_INFO("Usage: HelloEposCmd -h -n 1 -d deviceName -s protocolStackName -i interfaceName -p portName -b baudrate");
}

void LogError(string functionName, int p_lResult, unsigned int p_ulErrorCode)
{
	cerr << g_programName << ": " << functionName << " failed (result=" << p_lResult << ", errorCode=0x" << std::hex << p_ulErrorCode << ")"<< endl;
}

void LogInfo(string message)
{
	//ROS_INFO(message);
	cout << message << endl;
}

void SeparatorLine()
{
	const int lineLength = 60;
	for(int i=0; i<lineLength; i++)
	{
		cout << "-";
	}
	cout << endl;
}

void PrintSettings()
{
	stringstream msg;

	msg << "default settings:" << endl;
	msg << "node id             = " << g_usNodeId << endl;
	msg << "device name         = '" << g_deviceName << "'" << endl;
	msg << "protocal stack name = '" << g_protocolStackName << "'" << endl;
	msg << "interface name      = '" << g_interfaceName << "'" << endl;
	msg << "port name           = '" << g_portName << "'"<< endl;
	msg << "baudrate            = " << g_baudrate;

	LogInfo(msg.str());

}

void SetDefaultParameters()
{
	//USB
	g_usNodeId = 1;
	g_deviceName = "EPOS4"; //EPOS version
	g_protocolStackName = "MAXON SERIAL V2"; //MAXON_RS232
	g_interfaceName = "USB"; //RS232
	g_portName = "USB0";
	g_baudrate = 1000000; //115200
}

int OpenEPOS4(unsigned int* p_pErrorCode)
{
	int lResult = MMC_FAILED;

	char* pDeviceName = new char[255];
	char* pProtocolStackName = new char[255];
	char* pInterfaceName = new char[255];
	char* pPortName = new char[255];

	strcpy(pDeviceName, g_deviceName.c_str());
	strcpy(pProtocolStackName, g_protocolStackName.c_str());
	strcpy(pInterfaceName, g_interfaceName.c_str());
	strcpy(pPortName, g_portName.c_str());

	LogInfo("Opening Communication with EPOS-4...");

	g_pKeyHandle = VCS_OpenDevice(pDeviceName, pProtocolStackName, pInterfaceName, pPortName, p_pErrorCode);

	if(g_pKeyHandle!=0 && *p_pErrorCode == 0)
	{
		unsigned int lBaudrate = 0;
		unsigned int lTimeout = 0;

		if(VCS_GetProtocolStackSettings(g_pKeyHandle, &lBaudrate, &lTimeout, p_pErrorCode)!=0)
		{
			if(VCS_SetProtocolStackSettings(g_pKeyHandle, g_baudrate, lTimeout, p_pErrorCode)!=0)
			{
				if(VCS_GetProtocolStackSettings(g_pKeyHandle, &lBaudrate, &lTimeout, p_pErrorCode)!=0)
				{
					if(g_baudrate==(int)lBaudrate)
					{
						lResult = MMC_SUCCESS;
					}
				}
			}
		}
	}
	else
	{
		g_pKeyHandle = 0;
	}

	delete []pDeviceName;
	delete []pProtocolStackName;
	delete []pInterfaceName;
	delete []pPortName;
	return lResult;
}

int CloseEPOS4(unsigned int* p_pErrorCode)
{
	int lResult = MMC_FAILED;

	*p_pErrorCode = 0;

	LogInfo("Close device");

	if(VCS_CloseDevice(g_pKeyHandle, p_pErrorCode)!=0 && *p_pErrorCode == 0)
	{
		lResult = MMC_SUCCESS;
	}

	return lResult;
}

int ParseArguments(int argc, char** argv)
{
	int lOption;
	int lResult = MMC_SUCCESS;

	// Shut GetOpt error messages down (return '?'):
	opterr = 0;
	// Retrieve the options:
	while ( (lOption = getopt(argc, argv, ":hd:s:i:p:b:n:")) != -1 )
	{
		switch ( lOption ) {
			case 'h':
				PrintUsage();
				lResult = 1;
				break;
			case 'd':
				g_deviceName = optarg;
				break;
			case 's':
				g_protocolStackName = optarg;
				break;
			case 'i':
				g_interfaceName = optarg;
				break;
			case 'p':
				g_portName = optarg;
				break;
			case 'b':
				g_baudrate = atoi(optarg);
				break;
			case 'n':
				g_usNodeId = (unsigned short)atoi(optarg);
				break;
			case '?':  // unknown option...
				stringstream msg;
				msg << "Unknown option: '" << char(optopt) << "'!";
				LogInfo(msg.str());
				lResult = MMC_FAILED;
				break;
		}
	}

	return lResult;
}

bool RunMT40(HANDLE p_DeviceHandle, unsigned short p_usNodeId, unsigned int & p_rlErrorCode, long targetvelocity)
{
	int lResult = MMC_SUCCESS;

	if(VCS_ActivateProfileVelocityMode(p_DeviceHandle, p_usNodeId, &p_rlErrorCode) == 0)
	{
		LogError("VCS_ActivateProfileVelocityMode", lResult, p_rlErrorCode);
		lResult = MMC_FAILED;
	}
	else
	{
		ROS_INFO("target velocity = %d", &targetvelocity);
		VCS_MoveWithVelocity(p_DeviceHandle, p_usNodeId, targetvelocity, &p_rlErrorCode);lResult = MMC_SUCCESS;
	}
	return lResult;
}

bool StopMT40(HANDLE p_DeviceHandle, unsigned short p_usNodeId, unsigned int & p_rlErrorCode)
{
	int lResult;
	VCS_HaltVelocityMovement(p_DeviceHandle,p_usNodeId,&p_rlErrorCode);
	lResult = MMC_FAILED;
	return lResult;
}

int PrepareEPOS4(unsigned int* p_pErrorCode)
{
	int lResult = MMC_SUCCESS;
	BOOL oIsFault = 0;
	if(VCS_GetFaultState(g_pKeyHandle, g_usNodeId, &oIsFault, p_pErrorCode ) == 0)
	{
		LogError("VCS_GetFaultState", lResult, *p_pErrorCode);
		lResult = MMC_FAILED;
	}

	if(lResult==0)
	{
		if(oIsFault)
		{
			stringstream msg;
			msg << "clear fault, node = '" << g_usNodeId << "'";
			LogInfo(msg.str());

			if(VCS_ClearFault(g_pKeyHandle, g_usNodeId, p_pErrorCode) == 0)
			{
				LogError("VCS_ClearFault", lResult, *p_pErrorCode);
				lResult = MMC_FAILED;
			}
		}

		if(lResult==0)
		{
			BOOL oIsEnabled = 0;

			if(VCS_GetEnableState(g_pKeyHandle, g_usNodeId, &oIsEnabled, p_pErrorCode) == 0)
			{
				LogError("VCS_GetEnableState", lResult, *p_pErrorCode);
				lResult = MMC_FAILED;
			}

			if(lResult==0)
			{
				if(!oIsEnabled)
				{
					if(VCS_SetEnableState(g_pKeyHandle, g_usNodeId, p_pErrorCode) == 0)
					{
						LogError("VCS_SetEnableState", lResult, *p_pErrorCode);
						lResult = MMC_FAILED;
					}
				}
			}
		}
	}
	return lResult;
}

int Run(unsigned int* p_pErrorCode, double rpm)
{
	int lResult = MMC_SUCCESS;
	unsigned int lErrorCode = 0;
	if(rpm == 0.0){
		lResult = StopMT40(g_pKeyHandle, g_usNodeId, lErrorCode);
		//lResult = CloseEPOS4(p_pErrorCode);
	}
	else{
		lResult = RunMT40(g_pKeyHandle,g_usNodeId,lErrorCode,rpm);
	}
	return lResult;
}

int Initialization(int argc, char** argv)
{
	int lResult = MMC_FAILED;
	unsigned int ulErrorCode = 0;
	SetDefaultParameters();
	if((lResult = ParseArguments(argc, argv))!=MMC_SUCCESS)
	{
		LogError("Unable to parse arguments", lResult, ulErrorCode);
	}

	PrintSettings();

	if((lResult = OpenEPOS4(&ulErrorCode))!=MMC_SUCCESS)
	{
		LogError("Opening communication with EPOS4", lResult, ulErrorCode);
	}

	if((lResult = PrepareEPOS4(&ulErrorCode))!=MMC_SUCCESS)
	{
		LogError("Preparing EPOS4", lResult, ulErrorCode);
	}
	return lResult;
}

/**
 * @brief		converts the value of the variable 'left_vertical_axe' into actual velocity.
 * 				1. multiply the axe value by the max_speed
 * 				2. if the resultant value is greater than zero but less than the base_speed, assign the base speed value to the variable. 
 * 					(It must move at a minimum velocity of 600m/s forward)
 * 				3. or if the resultant value is less than zero but greater than the negative value of the base_speed, assign the negative value of the base speed to the variable. 
 * 					(It must move at a minimum velocity of 600m/s backward)
 * @param
 * 				- left_vertical_axe		the numerical value for the vertical movement of the left joystick
 * @return
 * 				- rpm					the estimated speed for the thruster to run
 **/
double convertToSpeed(double left_vertical_axe){
	double rpm = max_speed*left_vertical_axe;
	if (rpm > 0 && rpm < base_speed){
		rpm = base_speed;
	} else if (rpm < 0 and rpm > -1*base_speed) {
		rpm = -1*base_speed;
	}
	return rpm;
}

/**
 * @brief		callback function that subsribes to the topic 'joy' and uses the value located in the first index of the variable 'axes' 
 * @param		
 * 				- msg					the message of type sensor_msgs::Joy; it is generated whenever joystick activity is detected  
 **/
void executeThruster(const sensor_msgs::Joy::ConstPtr& msg) {
    double left_axes_vertical = msg->axes[1];
    int rpm;
    int lResult = MMC_FAILED;
    unsigned int ulErrorCode = 0;

    if (left_axes_vertical != 0) {
        rpm = convertToSpeed(left_axes_vertical);
        lResult = Run(&ulErrorCode, rpm);
        ROS_INFO("I heard: [%d]", rpm);
    }
    else {
        lResult = Run(&ulErrorCode, 0);
        ROS_INFO("Rear thruster stops");
    }
}

/*void executeThruster(const sensor_msgs::Joy::ConstPtr& msg){
	double button_L1 = msg -> buttons[10]; 
	// The value for the L1 button of PS3. If not pressed, every operation, including the rear thruster, comes to a halt.
	double left_vertical_axe = msg -> axes[1]; 
	// The value for the vertical axis of the left joystick. The value located in the first index of 'axes' in joystick message is assigned to this variable.
	
	int lResult = MMC_FAILED;
	unsigned int ulErrorCode = 0;
	if (!button_L1){
		ROS_INFO("L1 is not pressed. Please press the button to initiate the sub");
		lResult = Run(&ulErrorCode, 0);
	} else {
		int rpm = convertToSpeed(left_vertical_axe); // The value for the actual velocity
		ROS_INFO("I heard: [%d]", rpm);	
		lResult = Run(&ulErrorCode, rpm);
			
	}
}
*/
int main(int argc, char** argv)
{
	ros::init(argc, argv, "mt40_thruster");
	ros::NodeHandle n;
	int lResult = MMC_FAILED;
    lResult = Initialization(argc, argv);
    ros::Subscriber sub = n.subscribe("joy", 1000, executeThruster);
	ros::spin();
}
