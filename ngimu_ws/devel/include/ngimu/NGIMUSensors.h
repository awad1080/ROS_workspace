// Generated by gencpp from file ngimu/NGIMUSensors.msg
// DO NOT EDIT!


#ifndef NGIMU_MESSAGE_NGIMUSENSORS_H
#define NGIMU_MESSAGE_NGIMUSENSORS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ngimu
{
template <class ContainerAllocator>
struct NGIMUSensors_
{
  typedef NGIMUSensors_<ContainerAllocator> Type;

  NGIMUSensors_()
    : header()
    , gyroscopeX(0.0)
    , gyroscopeY(0.0)
    , gyroscopeZ(0.0)
    , accelerometerX(0.0)
    , accelerometerY(0.0)
    , accelerometerZ(0.0)
    , magnetometerX(0.0)
    , magnetometerY(0.0)
    , magnetometerZ(0.0)
    , barometer(0.0)  {
    }
  NGIMUSensors_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , gyroscopeX(0.0)
    , gyroscopeY(0.0)
    , gyroscopeZ(0.0)
    , accelerometerX(0.0)
    , accelerometerY(0.0)
    , accelerometerZ(0.0)
    , magnetometerX(0.0)
    , magnetometerY(0.0)
    , magnetometerZ(0.0)
    , barometer(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _gyroscopeX_type;
  _gyroscopeX_type gyroscopeX;

   typedef float _gyroscopeY_type;
  _gyroscopeY_type gyroscopeY;

   typedef float _gyroscopeZ_type;
  _gyroscopeZ_type gyroscopeZ;

   typedef float _accelerometerX_type;
  _accelerometerX_type accelerometerX;

   typedef float _accelerometerY_type;
  _accelerometerY_type accelerometerY;

   typedef float _accelerometerZ_type;
  _accelerometerZ_type accelerometerZ;

   typedef float _magnetometerX_type;
  _magnetometerX_type magnetometerX;

   typedef float _magnetometerY_type;
  _magnetometerY_type magnetometerY;

   typedef float _magnetometerZ_type;
  _magnetometerZ_type magnetometerZ;

   typedef float _barometer_type;
  _barometer_type barometer;





  typedef boost::shared_ptr< ::ngimu::NGIMUSensors_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ngimu::NGIMUSensors_<ContainerAllocator> const> ConstPtr;

}; // struct NGIMUSensors_

typedef ::ngimu::NGIMUSensors_<std::allocator<void> > NGIMUSensors;

typedef boost::shared_ptr< ::ngimu::NGIMUSensors > NGIMUSensorsPtr;
typedef boost::shared_ptr< ::ngimu::NGIMUSensors const> NGIMUSensorsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ngimu::NGIMUSensors_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ngimu::NGIMUSensors_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ngimu

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'ngimu': ['/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ngimu::NGIMUSensors_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ngimu::NGIMUSensors_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ngimu::NGIMUSensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ngimu::NGIMUSensors_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ngimu::NGIMUSensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ngimu::NGIMUSensors_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ngimu::NGIMUSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "45f09260ad0d83cd715dfa3ebd097b05";
  }

  static const char* value(const ::ngimu::NGIMUSensors_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x45f09260ad0d83cdULL;
  static const uint64_t static_value2 = 0x715dfa3ebd097b05ULL;
};

template<class ContainerAllocator>
struct DataType< ::ngimu::NGIMUSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ngimu/NGIMUSensors";
  }

  static const char* value(const ::ngimu::NGIMUSensors_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ngimu::NGIMUSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 gyroscopeX\n\
float32 gyroscopeY\n\
float32 gyroscopeZ\n\
float32 accelerometerX\n\
float32 accelerometerY\n\
float32 accelerometerZ\n\
float32 magnetometerX\n\
float32 magnetometerY\n\
float32 magnetometerZ\n\
float32 barometer\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::ngimu::NGIMUSensors_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ngimu::NGIMUSensors_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.gyroscopeX);
      stream.next(m.gyroscopeY);
      stream.next(m.gyroscopeZ);
      stream.next(m.accelerometerX);
      stream.next(m.accelerometerY);
      stream.next(m.accelerometerZ);
      stream.next(m.magnetometerX);
      stream.next(m.magnetometerY);
      stream.next(m.magnetometerZ);
      stream.next(m.barometer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NGIMUSensors_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ngimu::NGIMUSensors_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ngimu::NGIMUSensors_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "gyroscopeX: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscopeX);
    s << indent << "gyroscopeY: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscopeY);
    s << indent << "gyroscopeZ: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscopeZ);
    s << indent << "accelerometerX: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometerX);
    s << indent << "accelerometerY: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometerY);
    s << indent << "accelerometerZ: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometerZ);
    s << indent << "magnetometerX: ";
    Printer<float>::stream(s, indent + "  ", v.magnetometerX);
    s << indent << "magnetometerY: ";
    Printer<float>::stream(s, indent + "  ", v.magnetometerY);
    s << indent << "magnetometerZ: ";
    Printer<float>::stream(s, indent + "  ", v.magnetometerZ);
    s << indent << "barometer: ";
    Printer<float>::stream(s, indent + "  ", v.barometer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NGIMU_MESSAGE_NGIMUSENSORS_H
