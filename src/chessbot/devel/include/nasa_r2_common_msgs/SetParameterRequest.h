// Generated by gencpp from file nasa_r2_common_msgs/SetParameterRequest.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_SETPARAMETERREQUEST_H
#define NASA_R2_COMMON_MSGS_MESSAGE_SETPARAMETERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <nasa_r2_common_msgs/Parameter.h>

namespace nasa_r2_common_msgs
{
template <class ContainerAllocator>
struct SetParameterRequest_
{
  typedef SetParameterRequest_<ContainerAllocator> Type;

  SetParameterRequest_()
    : header()
    , param()  {
    }
  SetParameterRequest_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , param(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::nasa_r2_common_msgs::Parameter_<ContainerAllocator>  _param_type;
  _param_type param;




  typedef boost::shared_ptr< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetParameterRequest_

typedef ::nasa_r2_common_msgs::SetParameterRequest_<std::allocator<void> > SetParameterRequest;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::SetParameterRequest > SetParameterRequestPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::SetParameterRequest const> SetParameterRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mkhuthir/learnROS/src/chessbot/src/nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/indigo/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4c20cb3132d88e7123922dd820162194";
  }

  static const char* value(const ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4c20cb3132d88e71ULL;
  static const uint64_t static_value2 = 0x23922dd820162194ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/SetParameterRequest";
  }

  static const char* value(const ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Parameter param\n\
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
\n\
================================================================================\n\
MSG: nasa_r2_common_msgs/Parameter\n\
uint8 STRING  = 0\n\
uint8 INT     = 1\n\
uint8 FLOAT   = 2\n\
uint8 BOOL    = 3\n\
uint8 LIST    = 4\n\
uint8 DICT    = 5\n\
\n\
string          key\n\
uint8           type\n\
string          value\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.param);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetParameterRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::SetParameterRequest_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "param: ";
    s << std::endl;
    Printer< ::nasa_r2_common_msgs::Parameter_<ContainerAllocator> >::stream(s, indent + "  ", v.param);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_SETPARAMETERREQUEST_H
