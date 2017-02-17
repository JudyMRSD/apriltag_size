// Generated by gencpp from file mrsd_ros_tutorials/SaveDataRequest.msg
// DO NOT EDIT!


#ifndef MRSD_ROS_TUTORIALS_MESSAGE_SAVEDATAREQUEST_H
#define MRSD_ROS_TUTORIALS_MESSAGE_SAVEDATAREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mrsd_ros_tutorials
{
template <class ContainerAllocator>
struct SaveDataRequest_
{
  typedef SaveDataRequest_<ContainerAllocator> Type;

  SaveDataRequest_()
    : item_number(0)  {
    }
  SaveDataRequest_(const ContainerAllocator& _alloc)
    : item_number(0)  {
  (void)_alloc;
    }



   typedef uint16_t _item_number_type;
  _item_number_type item_number;




  typedef boost::shared_ptr< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveDataRequest_

typedef ::mrsd_ros_tutorials::SaveDataRequest_<std::allocator<void> > SaveDataRequest;

typedef boost::shared_ptr< ::mrsd_ros_tutorials::SaveDataRequest > SaveDataRequestPtr;
typedef boost::shared_ptr< ::mrsd_ros_tutorials::SaveDataRequest const> SaveDataRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mrsd_ros_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67f4c6ba2e30836ae79acc42090d592d";
  }

  static const char* value(const ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67f4c6ba2e30836aULL;
  static const uint64_t static_value2 = 0xe79acc42090d592dULL;
};

template<class ContainerAllocator>
struct DataType< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrsd_ros_tutorials/SaveDataRequest";
  }

  static const char* value(const ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 item_number\n\
";
  }

  static const char* value(const ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.item_number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveDataRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrsd_ros_tutorials::SaveDataRequest_<ContainerAllocator>& v)
  {
    s << indent << "item_number: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.item_number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRSD_ROS_TUTORIALS_MESSAGE_SAVEDATAREQUEST_H
