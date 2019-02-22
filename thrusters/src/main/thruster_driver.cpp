/**
 * @Name        thruster_driver.cpp
 * @Author      Duro UAS
 * @Version     0.1.0
 * @Description a C++ code that subscribes to the topic Joy and actuates side thrusters as a result. On PS3, the side thrusters respond
 *              to the right joystick on PS3 and the R1 button on its right top.   
 **/


/******************************************************** includes ********************************************************/
#include "ros/ros.h"
#include <sensor_msgs/Joy.h>
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
/******************************************************** includes ********************************************************/





/******************************************************** variable/enum declaration ********************************************************/

int file;
char filename[11]; // = "/dev/i2c-1";
__u8 addr = 0x40; //  0b01000000;        // The I2C address of the PWM-Hat

// for backward motion
double pulseMin_backward = 342 ;   
double pulseMax_backward = 255 ; 

// for forward motion
double pulseMin_forward = 342 ;   
double pulseMax_forward = 435 ; 

//int mid_point =1500;


double offsetValue_POS = 90.0;
double offsetValue_NEG = -90.0;


int l =0;

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

/******************************************************** variable/enum declaration ********************************************************/





/******************************************************** functions ********************************************************/
/**
 * @brief   initializes all pwm channels to which the four side thrusters are connected
 * @param   - on    the maximum value of the range
 *          - off   the minimum value of the range
 **/
void setAllPWM(int on, int off){
    int res;
    res = i2c_smbus_write_byte_data(file, __ALL_LED_ON_L, on & 0xFF);
    if(res < 0)
        perror("resultaterror");

    res = i2c_smbus_write_byte_data(file, __ALL_LED_ON_H, on  >> 8);
    if(res < 0)
        perror("err2");

    res = i2c_smbus_write_byte_data(file, __ALL_LED_OFF_L, off & 0xFF);
    if(res < 0)
        perror("err3");

    res = i2c_smbus_write_byte_data(file, __ALL_LED_OFF_H, off >> 8);
    if(res < 0)
        perror("err4");
};

/**
 * @brief   initializes and actuates a particular channel using a specific pulse value
 * @param   channel     the number of the channel 
 *          value       the value of the pulse to be assigned to the particular channel
 **/
void setPWM(int channel, int value){
    int on = 0; // change it if you need to start PWM cycle with phase delay
    int off = value;
    int res;
   // ROS_INFO("Setting servo pulse value to :  %d ", value);

    res = i2c_smbus_write_byte_data(file, __LED0_ON_L+4*channel, on & 0xFF);
    if(res < 0) {
        perror("ierr1");
        ROS_INFO("ierr1");
    }

    res = i2c_smbus_write_byte_data(file, __LED0_ON_H+4*channel, on >> 8);
    if(res < 0){
        perror("ierr2");
        ROS_INFO("ierr2");
    }
    res = i2c_smbus_write_byte_data(file, __LED0_OFF_L+4*channel, off & 0xFF);
    if(res < 0) {
        perror("ierr3");
        ROS_INFO("ierr3");
    }

    res = i2c_smbus_write_byte_data(file, __LED0_OFF_H+4*channel, off >> 8);
    if(res < 0) {
        perror("ierr4");
        ROS_INFO("ierr4");
    }


};

/**
void setDirection(int channel,int on, int off){

    int res;
    //ROS_INFO("Setting servo pulse value to :  %d ", value);

    res = i2c_smbus_write_byte_data(file, __LED0_ON_L+4*channel, on & 0xFF);
    if(res < 0)
        perror("ierr1");

    res = i2c_smbus_write_byte_data(file, __LED0_ON_H+4*channel, on >> 8);
    if(res < 0)
        perror("ierr2");

    res = i2c_smbus_write_byte_data(file, __LED0_OFF_L+4*channel, off & 0xFF);
    if(res < 0)
        perror("ierr3");

    res = i2c_smbus_write_byte_data(file, __LED0_OFF_H+4*channel, off >> 8);
    if(res < 0)
        perror("ierr4");


};
**/

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

/**
 * @brief   initializes the pwm driver.
 *          - it first attempts to open serial port /dev/i2c-*
 *          - set
 **/
void initPWMHat(){
    int res;
    char mode1res;
    
    // ensure that the communication is established by opening the serial port /dev/i2c-*
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

    setAllPWM(0,0);

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
    
    ROS_INFO("initialization done!");

};

double map( double x1 ,double in_min ,double in_max, double pulseMax, double pulseMin) {
    double Return =  (x1 - in_min) * (pulseMax - pulseMin) / (in_max - in_min) + pulseMin ;
    return Return ;
}

/**
 * @brief   a callback function for controlling side thrusters as a resposne to the PS3 joystick message 
 * @param   msg(type sensor_msgs::Joy::ConstPtr):   the pointer to the message of type Joy from sensor_msgs
 **/
 
double i = 0.0;

void chatterCallback_joystick(const sensor_msgs::Joy::ConstPtr& msg)
{
    ROS_INFO("Joy Seq: [%d]", msg->header.seq);

    /** declare variables
     *  joystick_button_L1              this variable gets either 1 or 0 when the L1 button on PS3 is pressed or not, respectively
     *                                  if not pressed, it should be a Kill Switch
     *  joystick_button_R1              this variable gets either 1 or 0 when the R1 button on PS3 is pressed or not, respectively
     *                                  if pressed, reverse vertical and/or horizontal thrusters
     *  joystick_axes_vertical          this variable changes from -1 to 1 when the right joystick moves up/down (located in axes[3])
     *                                  and is used to control vertical side thrusters
     *                                  the motor operation works as follows as a response to this variable
     *                                  - if R1 is NOT pressed (e.g button_R1 is 0)
     *                                      - if the value is greater than 0, the sub submerges
     *                                      - if the value is less than 0, the sub surfaces
     *                                  - if R1 is pressed (e.g. button_R/1 is 1)
     *                                      - if the value is greater than 0, the sub pitches down
     *                                      - if the value is less than 0, the sub pitches up
     *  joystick_axes_horizontal        this variable changes from -1 to 1 when the right joystick moves left/right (located in axes[2])
     *                                  and is used to conrol horizontal side thrusters
     *                                  the motor operation works as follows as a response to this variable
     *                                  - if R1 is NOT pressed (e.g button_R1 is 0)
     *                                      - if the value is greater than 0, the sub moves sideway to the left
     *                                      - if the value is less than 0, the sub moves sideway to the right
     *              pulseMin_backward                   - if R1 is pressed (e.g. button_R1 is 1)
     *                                      - if the value is greater than 0, the sub rotates counterclockwise
     *                                      - if the value is less than 0, the sub rotates clockwise
     **/  

    double joystick_button_L1_UP, joystick_button_R1_UP ,joystick_button_L1_DOWN, joystick_button_R1_DOWN;
    double joystick_axes_vertical,joystick_axes_horizontal ,joystick_button_kill;
    
    double motor_axes_vertical_positive, motor_axes_vertical_negative;
    double motor_axes_horizontal_positive, motor_axes_horizontal_negative;
    double speed_vertical_Forward, speed_horizontal_Forward,speed_vertical_Reverse, speed_horizontal_Reverse;
    double motor_speed_vertical_actual_reverse, motor_speed_horizontal_actual_reverse;
    
    // use the subscribed message of type Joy in order to assign values to the declared variables
    joystick_axes_vertical = msg->axes[3];
    joystick_axes_horizontal = msg->axes[2];
    joystick_button_L1_UP = msg->buttons[10];   
    joystick_button_R1_UP = msg->buttons[11];
    joystick_button_L1_DOWN = msg->buttons[8];  // L1 Button on PS3 :: if not pressed Kill Switch
    joystick_button_R1_DOWN = msg->buttons[9];  // R1 Button on PS3 :: if pressed Reverse vertical and/or hortizontal thrusters
    joystick_button_kill = msg->buttons[12];

    

    if (joystick_button_L1_UP) {
            // motors spin in the same direction
            
            if (joystick_axes_vertical > 0){
				speed_vertical_Forward = map(offsetValue_NEG * joystick_axes_vertical,0.0,90.0, pulseMax_forward, pulseMin_forward);
                speed_vertical_Reverse = map(offsetValue_NEG * joystick_axes_vertical,0.0,90.0, pulseMax_backward, pulseMin_backward);
                setPWM(0, speed_vertical_Reverse);
                setPWM(3, speed_vertical_Forward);
                ROS_INFO ("joystick_axes_vertical: %f, motors of channel %i and %i at speed %f and %f",joystick_axes_vertical, 4 , 0, speed_vertical_Reverse , speed_vertical_Forward);
				
                
            } else if (joystick_axes_vertical < 0){
				speed_vertical_Forward = map(offsetValue_POS * joystick_axes_vertical,0.0,90.0, pulseMax_forward, pulseMin_forward);
                speed_vertical_Reverse = map(offsetValue_POS * joystick_axes_vertical,0.0,90.0, pulseMax_backward, pulseMin_backward);
                setPWM(0, speed_vertical_Forward);
                setPWM(3, speed_vertical_Reverse);
                ROS_INFO ("joystick_axes_vertical: %f, motors of channel %i and %i at speed %f and %f",joystick_axes_vertical, 0, 3, speed_vertical_Forward ,speed_vertical_Reverse);
                
            } else if (joystick_button_kill){
                setPWM(0,0);
                setPWM(3,0);
                ROS_INFO("motor speed is 0");
            }   
           
    }
    
     if(joystick_button_L1_DOWN){
			
			if (joystick_axes_vertical > 0){
				speed_vertical_Forward = map(offsetValue_NEG * joystick_axes_vertical,0.0,90.0, pulseMax_forward, pulseMin_forward);
                setPWM(0, speed_vertical_Forward);
                setPWM(3, speed_vertical_Forward);
                ROS_INFO ("joystick_axes_vertical: %f, motors of channel %i and %i at speed %f",joystick_axes_vertical, 4 , 0, speed_vertical_Reverse);
				
               
            } else if (joystick_axes_vertical < 0){
				
				speed_vertical_Reverse = map(offsetValue_POS * joystick_axes_vertical,0.0,90.0, pulseMax_backward, pulseMin_backward);
                setPWM(0, speed_vertical_Reverse);
                setPWM(3, speed_vertical_Reverse);
                ROS_INFO ("joystick_axes_vertical: %f, motors of channel %i and %i at speed %f",joystick_axes_vertical, 0, 3, speed_vertical_Forward);
                
            } else if (joystick_button_kill){
                setPWM(0,0);
                setPWM(3,0);
                ROS_INFO("motor speed is 0");
            }
       }
        
        
    if (joystick_button_R1_UP){ 
      
			  
			 if (joystick_axes_horizontal > 0){
				
				speed_horizontal_Forward = map(offsetValue_NEG * joystick_axes_horizontal,0.0,90.0,pulseMax_backward, pulseMin_backward);
                speed_horizontal_Reverse = map(offsetValue_NEG * joystick_axes_horizontal,0.0,90.0 ,pulseMax_forward, pulseMin_forward);
                setPWM(1, speed_horizontal_Forward);
                setPWM(2, speed_horizontal_Reverse);
                ROS_INFO ("motors of channel  %i and %i at speed %f and %f",1, 2, speed_horizontal_Reverse,speed_horizontal_Forward);
				
                
            } else if (joystick_axes_horizontal < 0) {
				
				speed_horizontal_Forward = map(offsetValue_POS * joystick_axes_horizontal,0.0,90.0,pulseMax_backward, pulseMin_backward);
                speed_horizontal_Reverse = map(offsetValue_POS * joystick_axes_horizontal,0.0,90.0 ,pulseMax_forward, pulseMin_forward);
                setPWM(1, speed_horizontal_Reverse) ;
                setPWM(2, speed_horizontal_Forward);
                ROS_INFO("motors of channel  %i and %i at speed %f and %f",1, 2, speed_horizontal_Forward,speed_horizontal_Reverse);
                
                
                
            } else if (joystick_button_kill){
                setPWM(1,0);
                setPWM(2,0);
                ROS_INFO("motor speed is 0");
            
            
            }
        } 
    
      if(joystick_button_R1_DOWN){
            
            
            if (joystick_axes_horizontal < 0){
                speed_horizontal_Forward = map(offsetValue_POS * joystick_axes_horizontal,0.0,90.0,pulseMax_backward, pulseMin_backward);
                setPWM(1, speed_horizontal_Forward) ;
                setPWM(2, speed_horizontal_Forward) ;
                ROS_INFO("motors of channel  %i and %i at speed %f",1, 2, speed_horizontal_Forward);
            } else if (joystick_axes_horizontal > 0) {
                speed_horizontal_Reverse = map(offsetValue_NEG * joystick_axes_horizontal,0.0,90.0 ,pulseMax_forward, pulseMin_forward);
                setPWM(1, speed_horizontal_Reverse);
                setPWM(2, speed_horizontal_Reverse);
                ROS_INFO ("motors of channel  %i and %i at speed %f",1, 2, speed_horizontal_Reverse);
            } else if (joystick_button_kill){
                setPWM(1,0);
                setPWM(2,0);
                ROS_INFO("motor speed is 0");
            }
     }

}

/*************************************************** functions ********************************************************/

/**
 * @brief       the main function that intialize the pwm board and actuates vertical/horizontal thrusters as the message of type sensor_msgs::Joy is being subscribed
 * @ 
 * 
 **/
int main(int argc, char **argv)
{
    // assign the serial port value to the variable filename; it is used to open the port for the i2c driver
    snprintf(filename, sizeof(filename), "/dev/i2c-%d", 1);

    initPWMHat();

    setPWMFreq(50);  //60 Hz

    ros::init(argc, argv, "motor_pwm_pi_listener_joystick");

    ros::NodeHandle n;
    
    ros::Subscriber sub_joystick = n.subscribe("joy", 1000, chatterCallback_joystick);


    ros::spin();

    close(file);

    return 0;
}

