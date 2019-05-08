// Generated by gencpp from file beginner_tutorials/Xarray.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_XARRAY_H
#define BEGINNER_TUTORIALS_MESSAGE_XARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Xarray_
{
  typedef Xarray_<ContainerAllocator> Type;

  Xarray_()
    : xarray()  {
    }
  Xarray_(const ContainerAllocator& _alloc)
    : xarray(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _xarray_type;
  _xarray_type xarray;




  typedef boost::shared_ptr< ::beginner_tutorials::Xarray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Xarray_<ContainerAllocator> const> ConstPtr;

}; // struct Xarray_

typedef ::beginner_tutorials::Xarray_<std::allocator<void> > Xarray;

typedef boost::shared_ptr< ::beginner_tutorials::Xarray > XarrayPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Xarray const> XarrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Xarray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Xarray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/student/catkin_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Xarray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Xarray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Xarray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Xarray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Xarray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Xarray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Xarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02fc735f4ec9f15170b20e31093b47d0";
  }

  static const char* value(const ::beginner_tutorials::Xarray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02fc735f4ec9f151ULL;
  static const uint64_t static_value2 = 0x70b20e31093b47d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Xarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Xarray";
  }

  static const char* value(const ::beginner_tutorials::Xarray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Xarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string xarray\n\
";
  }

  static const char* value(const ::beginner_tutorials::Xarray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Xarray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xarray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Xarray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Xarray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Xarray_<ContainerAllocator>& v)
  {
    s << indent << "xarray: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.xarray);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_XARRAY_H