#include "ros/ros.h"
//#include "std_msgs/Int16MultiArray.h"
#include <sensor_msgs/Joy.h>
//#include <RTIMULib.h>

#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <math.h>

// include gtest, the testing framework in C++
#include <gtest/gtest.h>

int file;
char filename[11]; // = "/dev/i2c-1";
__u8 addr = 0x40; //  0b01000000;        // The I2C address of the PWM-Hat


int pulseMin1 =375;
int pulseMax1 =290; //val = 370 max - 290


int offsetValue_POS = 90;
int offsetValue_NEG = -90;


//int pulseMin_led =1000;
//int pulseMax_led =2000;

enum pwm_regs {
    // Registers/etc.
    __MODE1              = 0x00,
    __MODE2              = 0x01,
    __SUBADR1            = 0x02,
    __SUBADR2            = 0x03,
    __SUBADR3            = 0x04,
    __PRESCALE           = 0xFE,
    __LED0_ON_L          = 0x06,
    __LED0_ON_H          = 0x07,
    __LED0_OFF_L         = 0x08,
    __LED0_OFF_H         = 0x09,
    __ALL_LED_ON_L       = 0xFA,
    __ALL_LED_ON_H       = 0xFB,
    __ALL_LED_OFF_L      = 0xFC,
    __ALL_LED_OFF_H      = 0xFD,
    __RESTART            = 0x80,
    __SLEEP              = 0x10,
    __ALLCALL            = 0x01,
    __INVRT              = 0x10,
    __OUTDRV             = 0x04
};


bool setAllPWMtest(int on, int off){
    int res;
    res = i2c_smbus_write_byte_data(file, __ALL_LED_ON_L, on & 0xFF);
    if(res < 0)
		return false;

    res = i2c_smbus_write_byte_data(file, __ALL_LED_ON_H, on  >> 8);
    if(res < 0)
		return false;

    res = i2c_smbus_write_byte_data(file, __ALL_LED_OFF_L, off & 0xFF);
    if(res < 0)
		return false;

    res = i2c_smbus_write_byte_data(file, __ALL_LED_OFF_H, off >> 8);
    if(res < 0)
		return false;
      
    return true;
};


int map ( int x1 ,int in_min ,int in_max) {
    int Return =  (x1 - in_min) * (pulseMax1 - pulseMin1) / (in_max - in_min) + pulseMin1 ;
    return Return ;
}


bool setPWMtest(int channel){
	int on = 0; // change it if you need to start PWM cycle with phase delay
    int res;
   // ROS_INFO("Setting servo pulse value to :  %d ", value);
    
   
    for (double i = 0; i < 1; i+=0.01){
		double motor_axis_value = 90*i;
		int value = map(motor_axis_value, 0, 90);
		res = i2c_smbus_write_byte_data(file, __LED0_ON_L+4*channel, on & 0xFF);
		if(res < 0)
			return false;

		res = i2c_smbus_write_byte_data(file, __LED0_ON_H+4*channel, on >> 8);
		if(res < 0)
			return false;

		res = i2c_smbus_write_byte_data(file, __LED0_OFF_L+4*channel, value & 0xFF);
		if(res < 0)
			return false;

		res = i2c_smbus_write_byte_data(file, __LED0_OFF_H+4*channel, value >> 8);
		if(res < 0)
			return false;		
	}

    return true;	
}


void setPWMFreq(int freq){
    int prescale;
    char oldmode, newmode;
    int res;

    float prescaleval = 25000000.0; // 25MHz
    prescaleval /= 4096.0;
    prescaleval /= (float)freq;
    prescaleval -= 1.0;

    ROS_INFO("Setting PWM frequency to %d Hz", freq);
    ROS_INFO("Estimated pre-scale: %f", prescaleval);

    prescale = floor(prescaleval + 0.5);
    ROS_INFO("Final pre-scale: %d", prescale);

    nanosleep((const struct timespec[]){{1, 000000L}}, NULL);

    oldmode = i2c_smbus_read_byte_data(file, __MODE1);
    newmode = (oldmode & 0x7F) | 0x10; // sleep

    res = i2c_smbus_write_byte_data(file, __MODE1, newmode); // go to sleep
    if(res < 0)
        perror("serr0");

    res = i2c_smbus_write_byte_data(file, __PRESCALE, (int)(floor(prescale)));
    if(res < 0)
        perror("serr1");

    res = i2c_smbus_write_byte_data(file, __MODE1, oldmode);
    if(res < 0)
        perror("serr2");

    nanosleep((const struct timespec[]){{0, 5000000L}}, NULL);   //sleep 5microsec,

    res = i2c_smbus_write_byte_data(file, __MODE1, oldmode | 0x80);
    if(res < 0)
        perror("serr3");
};



void initPWMHat(){
    int res;
    char mode1res;

    if ((file = open(filename, O_RDWR)) < 0) {
        /* ERROR HANDLING: you can check errno to see what went wrong */
        perror("Failed to open the i2c bus");
        exit(1);
    }

    if (ioctl(file,I2C_SLAVE,addr) < 0) {
        printf("Failed to acquire bus access and/or talk to slave.\n");
        /* ERROR HANDLING; you can check errno to see what went wrong */
        exit(1);
    }

    res = setAllPWMtest(0,0);

    res = i2c_smbus_write_byte_data(file, __MODE2, __OUTDRV);
    if(res < 0)
        perror("erro1");

    res = i2c_smbus_write_byte_data(file, __MODE1, __ALLCALL);
    if(res < 0)
        perror("erro2");

    nanosleep((const struct timespec[]){{0, 5000000L}}, NULL);   //sleep 5microsec, wait for osci

    mode1res = i2c_smbus_read_byte_data(file, __MODE1);
    mode1res = mode1res & ~__SLEEP; //                 # wake up (reset sleep)

    res = i2c_smbus_write_byte_data(file, __MODE1, mode1res);
    if(res < 0)
        perror("erro3");

    nanosleep((const struct timespec[]){{0, 5000000L}}, NULL);   //sleep 5microsec, wait for osci

};

TEST(ThrusterDriverTest, setAllPWM)
{
	ASSERT_TRUE(setAllPWMtest(0,0));
}


TEST(ThrusterDriverTest, thruster1)
{
	ASSERT_TRUE(setPWMtest(0));
}

TEST(ThrusterDriverTest, thruster2)
{
	ASSERT_TRUE(setPWMtest(1));
}

TEST(ThrusterDriverTest, thruster3)
{
	ASSERT_TRUE(setPWMtest(2));
}

TEST(ThrusterDriverTest, thruster4)
{
	ASSERT_TRUE(setPWMtest(3));
}


int main(int argc, char **argv)
{
    snprintf(filename, sizeof(filename), "/dev/i2c-%d", 1);

    initPWMHat();

    setPWMFreq(60);  //60 Hz
    
    // initialize the testing
    testing::InitGoogleTest(&argc, argv);
    
    //ros::init(argc, argv, "motor_pwm_pi_listener_joystick");
    //ros::NodeHandle n;
    //ros::Subscriber sub_joystick = n.subscribe("joy", 1000, chatterCallback_joystick);
    //ros::spin();

    close(file);

    return RUN_ALL_TESTS();
}
