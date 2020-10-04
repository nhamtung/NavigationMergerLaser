// Generated by gencpp from file sick_lidar_localization/SickLocResultPortTelegramMsg.msg
// DO NOT EDIT!


#ifndef SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCRESULTPORTTELEGRAMMSG_H
#define SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCRESULTPORTTELEGRAMMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sick_lidar_localization/SickLocResultPortHeaderMsg.h>
#include <sick_lidar_localization/SickLocResultPortPayloadMsg.h>
#include <sick_lidar_localization/SickLocResultPortCrcMsg.h>

namespace sick_lidar_localization
{
template <class ContainerAllocator>
struct SickLocResultPortTelegramMsg_
{
  typedef SickLocResultPortTelegramMsg_<ContainerAllocator> Type;

  SickLocResultPortTelegramMsg_()
    : header()
    , telegram_header()
    , telegram_payload()
    , telegram_trailer()
    , vehicle_time_valid(false)
    , vehicle_time_sec(0)
    , vehicle_time_nsec(0)  {
    }
  SickLocResultPortTelegramMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , telegram_header(_alloc)
    , telegram_payload(_alloc)
    , telegram_trailer(_alloc)
    , vehicle_time_valid(false)
    , vehicle_time_sec(0)
    , vehicle_time_nsec(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sick_lidar_localization::SickLocResultPortHeaderMsg_<ContainerAllocator>  _telegram_header_type;
  _telegram_header_type telegram_header;

   typedef  ::sick_lidar_localization::SickLocResultPortPayloadMsg_<ContainerAllocator>  _telegram_payload_type;
  _telegram_payload_type telegram_payload;

   typedef  ::sick_lidar_localization::SickLocResultPortCrcMsg_<ContainerAllocator>  _telegram_trailer_type;
  _telegram_trailer_type telegram_trailer;

   typedef uint8_t _vehicle_time_valid_type;
  _vehicle_time_valid_type vehicle_time_valid;

   typedef uint32_t _vehicle_time_sec_type;
  _vehicle_time_sec_type vehicle_time_sec;

   typedef uint32_t _vehicle_time_nsec_type;
  _vehicle_time_nsec_type vehicle_time_nsec;





  typedef boost::shared_ptr< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> const> ConstPtr;

}; // struct SickLocResultPortTelegramMsg_

typedef ::sick_lidar_localization::SickLocResultPortTelegramMsg_<std::allocator<void> > SickLocResultPortTelegramMsg;

typedef boost::shared_ptr< ::sick_lidar_localization::SickLocResultPortTelegramMsg > SickLocResultPortTelegramMsgPtr;
typedef boost::shared_ptr< ::sick_lidar_localization::SickLocResultPortTelegramMsg const> SickLocResultPortTelegramMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator1> & lhs, const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.telegram_header == rhs.telegram_header &&
    lhs.telegram_payload == rhs.telegram_payload &&
    lhs.telegram_trailer == rhs.telegram_trailer &&
    lhs.vehicle_time_valid == rhs.vehicle_time_valid &&
    lhs.vehicle_time_sec == rhs.vehicle_time_sec &&
    lhs.vehicle_time_nsec == rhs.vehicle_time_nsec;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator1> & lhs, const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sick_lidar_localization

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fe7bc3dfc1065d1a29951c990f7baf8";
  }

  static const char* value(const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fe7bc3dfc1065d1ULL;
  static const uint64_t static_value2 = 0xa29951c990f7baf8ULL;
};

template<class ContainerAllocator>
struct DataType< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sick_lidar_localization/SickLocResultPortTelegramMsg";
  }

  static const char* value(const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Definition of ros message SickLocResultPortTelegramMsg.\n"
"# SickLocResultPortTelegramMsg publishes result port telegrams\n"
"# for sick localization. See chapter 5.9 (\"About result port telegrams\")\n"
"# of the operation manual for further details.\n"
"\n"
"#\n"
"# Header\n"
"#\n"
"\n"
"Header header                                 # ROS Header with sequence id, timestamp and frame id\n"
"\n"
"#\n"
"# Result port telegram\n"
"#\n"
"\n"
"SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram\n"
"SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram\n"
"SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram\n"
"\n"
"#\n"
"# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll\n"
"#\n"
"\n"
"bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase\n"
"uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)\n"
"uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)\n"
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
"\n"
"================================================================================\n"
"MSG: sick_lidar_localization/SickLocResultPortHeaderMsg\n"
"# Definition of ros message SickLocResultPortHeaderMsg.\n"
"# SickLocResultPortHeaderMsg publishes the header of a result port telegram\n"
"# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")\n"
"# of the operation manual for further details.\n"
"\n"
"uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte\n"
"uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte\n"
"uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte\n"
"uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte\n"
"uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte\n"
"uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte\n"
"uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte\n"
"uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte\n"
"uint64  SystemTime       # Not used. Size: NTP = 8 byte\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sick_lidar_localization/SickLocResultPortPayloadMsg\n"
"# Definition of ros message SickLocResultPortPayloadMsg.\n"
"# SickLocResultPortPayloadMsg publishes the payload of a result port telegram\n"
"# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")\n"
"# of the operation manual for further details.\n"
"\n"
"uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte\n"
"uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte\n"
"uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte\n"
"int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte\n"
"int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte\n"
"int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte\n"
"uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte\n"
"int32  Reserved2      # Reserved. Size: Int32 = 4 byte\n"
"uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte\n"
"uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte\n"
"int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte\n"
"int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte\n"
"int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte\n"
"uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sick_lidar_localization/SickLocResultPortCrcMsg\n"
"# Definition of ros message SickLocResultPortCrcMsg.\n"
"# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram\n"
"# for sick localization (2 byte). \n"
"# Checksum details:\n"
"# * Width: 16 bits\n"
"# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)\n"
"# * Initial value = 0xFFFF\n"
"# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.\n"
"\n"
"uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte\n"
"\n"
;
  }

  static const char* value(const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.telegram_header);
      stream.next(m.telegram_payload);
      stream.next(m.telegram_trailer);
      stream.next(m.vehicle_time_valid);
      stream.next(m.vehicle_time_sec);
      stream.next(m.vehicle_time_nsec);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SickLocResultPortTelegramMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sick_lidar_localization::SickLocResultPortTelegramMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "telegram_header: ";
    s << std::endl;
    Printer< ::sick_lidar_localization::SickLocResultPortHeaderMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.telegram_header);
    s << indent << "telegram_payload: ";
    s << std::endl;
    Printer< ::sick_lidar_localization::SickLocResultPortPayloadMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.telegram_payload);
    s << indent << "telegram_trailer: ";
    s << std::endl;
    Printer< ::sick_lidar_localization::SickLocResultPortCrcMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.telegram_trailer);
    s << indent << "vehicle_time_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vehicle_time_valid);
    s << indent << "vehicle_time_sec: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.vehicle_time_sec);
    s << indent << "vehicle_time_nsec: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.vehicle_time_nsec);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCRESULTPORTTELEGRAMMSG_H
