// Generated by gencpp from file rosjava_test_msgs/TestPrimitives.msg
// DO NOT EDIT!


#ifndef ROSJAVA_TEST_MSGS_MESSAGE_TESTPRIMITIVES_H
#define ROSJAVA_TEST_MSGS_MESSAGE_TESTPRIMITIVES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosjava_test_msgs
{
template <class ContainerAllocator>
struct TestPrimitives_
{
  typedef TestPrimitives_<ContainerAllocator> Type;

  TestPrimitives_()
    : caller_id()
    , orig_caller_id()
    , str()
    , b(0)
    , int16(0)
    , int32(0)
    , int64(0)
    , c(0)
    , uint16(0)
    , uint32(0)
    , uint64(0)
    , float32(0.0)
    , float64(0.0)
    , t()
    , d()  {
    }
  TestPrimitives_(const ContainerAllocator& _alloc)
    : caller_id(_alloc)
    , orig_caller_id(_alloc)
    , str(_alloc)
    , b(0)
    , int16(0)
    , int32(0)
    , int64(0)
    , c(0)
    , uint16(0)
    , uint32(0)
    , uint64(0)
    , float32(0.0)
    , float64(0.0)
    , t()
    , d()  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _caller_id_type;
  _caller_id_type caller_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _orig_caller_id_type;
  _orig_caller_id_type orig_caller_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _str_type;
  _str_type str;

   typedef int8_t _b_type;
  _b_type b;

   typedef int16_t _int16_type;
  _int16_type int16;

   typedef int32_t _int32_type;
  _int32_type int32;

   typedef int64_t _int64_type;
  _int64_type int64;

   typedef uint8_t _c_type;
  _c_type c;

   typedef uint16_t _uint16_type;
  _uint16_type uint16;

   typedef uint32_t _uint32_type;
  _uint32_type uint32;

   typedef uint64_t _uint64_type;
  _uint64_type uint64;

   typedef float _float32_type;
  _float32_type float32;

   typedef double _float64_type;
  _float64_type float64;

   typedef ros::Time _t_type;
  _t_type t;

   typedef ros::Duration _d_type;
  _d_type d;





  typedef boost::shared_ptr< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> const> ConstPtr;

}; // struct TestPrimitives_

typedef ::rosjava_test_msgs::TestPrimitives_<std::allocator<void> > TestPrimitives;

typedef boost::shared_ptr< ::rosjava_test_msgs::TestPrimitives > TestPrimitivesPtr;
typedef boost::shared_ptr< ::rosjava_test_msgs::TestPrimitives const> TestPrimitivesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosjava_test_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rosjava_test_msgs': ['/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e70f428a22c0d26ca67f87802c8e00f";
  }

  static const char* value(const ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e70f428a22c0d26ULL;
  static const uint64_t static_value2 = 0xca67f87802c8e00fULL;
};

template<class ContainerAllocator>
struct DataType< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosjava_test_msgs/TestPrimitives";
  }

  static const char* value(const ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Integration test message of all primitive types\n\
\n\
# caller_id of most recent node to send this message\n\
string caller_id\n\
# caller_id of the original node to send this message\n\
string orig_caller_id\n\
\n\
string str\n\
byte b\n\
int16 int16\n\
int32 int32\n\
int64 int64\n\
char c\n\
uint16 uint16\n\
uint32 uint32\n\
uint64 uint64\n\
float32 float32\n\
float64 float64\n\
time t\n\
duration d\n\
\n\
";
  }

  static const char* value(const ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.caller_id);
      stream.next(m.orig_caller_id);
      stream.next(m.str);
      stream.next(m.b);
      stream.next(m.int16);
      stream.next(m.int32);
      stream.next(m.int64);
      stream.next(m.c);
      stream.next(m.uint16);
      stream.next(m.uint32);
      stream.next(m.uint64);
      stream.next(m.float32);
      stream.next(m.float64);
      stream.next(m.t);
      stream.next(m.d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TestPrimitives_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosjava_test_msgs::TestPrimitives_<ContainerAllocator>& v)
  {
    s << indent << "caller_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.caller_id);
    s << indent << "orig_caller_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.orig_caller_id);
    s << indent << "str: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.str);
    s << indent << "b: ";
    Printer<int8_t>::stream(s, indent + "  ", v.b);
    s << indent << "int16: ";
    Printer<int16_t>::stream(s, indent + "  ", v.int16);
    s << indent << "int32: ";
    Printer<int32_t>::stream(s, indent + "  ", v.int32);
    s << indent << "int64: ";
    Printer<int64_t>::stream(s, indent + "  ", v.int64);
    s << indent << "c: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.c);
    s << indent << "uint16: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.uint16);
    s << indent << "uint32: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.uint32);
    s << indent << "uint64: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.uint64);
    s << indent << "float32: ";
    Printer<float>::stream(s, indent + "  ", v.float32);
    s << indent << "float64: ";
    Printer<double>::stream(s, indent + "  ", v.float64);
    s << indent << "t: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t);
    s << indent << "d: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSJAVA_TEST_MSGS_MESSAGE_TESTPRIMITIVES_H
