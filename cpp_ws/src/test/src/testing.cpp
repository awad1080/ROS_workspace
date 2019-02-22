
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Header.h"

#include <sstream>
#include <stdio.h>
#include <stdlib.h>
//------------------------------------------------------------------------------
// Main function
int main(int argc, char **argv)
{
	ros::init(argc, argv, "test");
	ros::NodeHandle n;

	ros::Rate loop_rate(100);

	for (int i=0; i<=100; i++){
		ROS_INFO(" %d",i);
		if(i==100){
			ROS_INFO("Suck it");
		}
	}

	while (ros::ok())
	{

		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;
}
