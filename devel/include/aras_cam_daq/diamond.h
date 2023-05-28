// Generated by gencpp from file aras_cam_daq/diamond.msg
// DO NOT EDIT!


#ifndef ARAS_CAM_DAQ_MESSAGE_DIAMOND_H
#define ARAS_CAM_DAQ_MESSAGE_DIAMOND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace aras_cam_daq
{
template <class ContainerAllocator>
struct diamond_
{
  typedef diamond_<ContainerAllocator> Type;

  diamond_()
    : header()
    , Turq()
    , Encoders()
    , IMU()
    , TS()  {
    }
  diamond_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Turq(_alloc)
    , Encoders(_alloc)
    , IMU(_alloc)
    , TS(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _Turq_type;
  _Turq_type Turq;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _Encoders_type;
  _Encoders_type Encoders;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _IMU_type;
  _IMU_type IMU;

   typedef std::vector<uint64_t, typename ContainerAllocator::template rebind<uint64_t>::other >  _TS_type;
  _TS_type TS;





  typedef boost::shared_ptr< ::aras_cam_daq::diamond_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aras_cam_daq::diamond_<ContainerAllocator> const> ConstPtr;

}; // struct diamond_

typedef ::aras_cam_daq::diamond_<std::allocator<void> > diamond;

typedef boost::shared_ptr< ::aras_cam_daq::diamond > diamondPtr;
typedef boost::shared_ptr< ::aras_cam_daq::diamond const> diamondConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aras_cam_daq::diamond_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aras_cam_daq::diamond_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::aras_cam_daq::diamond_<ContainerAllocator1> & lhs, const ::aras_cam_daq::diamond_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Turq == rhs.Turq &&
    lhs.Encoders == rhs.Encoders &&
    lhs.IMU == rhs.IMU &&
    lhs.TS == rhs.TS;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::aras_cam_daq::diamond_<ContainerAllocator1> & lhs, const ::aras_cam_daq::diamond_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace aras_cam_daq

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::aras_cam_daq::diamond_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aras_cam_daq::diamond_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aras_cam_daq::diamond_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aras_cam_daq::diamond_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aras_cam_daq::diamond_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aras_cam_daq::diamond_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aras_cam_daq::diamond_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08a19a8bb047aab7f948074955b487b4";
  }

  static const char* value(const ::aras_cam_daq::diamond_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08a19a8bb047aab7ULL;
  static const uint64_t static_value2 = 0xf948074955b487b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::aras_cam_daq::diamond_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aras_cam_daq/diamond";
  }

  static const char* value(const ::aras_cam_daq::diamond_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aras_cam_daq::diamond_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int32[]                  Turq\n"
"int32[]                  Encoders\n"
"int16[]                  IMU\n"
"uint64[]                 TS\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::aras_cam_daq::diamond_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aras_cam_daq::diamond_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Turq);
      stream.next(m.Encoders);
      stream.next(m.IMU);
      stream.next(m.TS);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct diamond_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aras_cam_daq::diamond_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aras_cam_daq::diamond_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Turq[]" << std::endl;
    for (size_t i = 0; i < v.Turq.size(); ++i)
    {
      s << indent << "  Turq[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.Turq[i]);
    }
    s << indent << "Encoders[]" << std::endl;
    for (size_t i = 0; i < v.Encoders.size(); ++i)
    {
      s << indent << "  Encoders[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.Encoders[i]);
    }
    s << indent << "IMU[]" << std::endl;
    for (size_t i = 0; i < v.IMU.size(); ++i)
    {
      s << indent << "  IMU[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.IMU[i]);
    }
    s << indent << "TS[]" << std::endl;
    for (size_t i = 0; i < v.TS.size(); ++i)
    {
      s << indent << "  TS[" << i << "]: ";
      Printer<uint64_t>::stream(s, indent + "  ", v.TS[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARAS_CAM_DAQ_MESSAGE_DIAMOND_H
