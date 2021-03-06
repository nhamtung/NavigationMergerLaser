// Generated by gencpp from file sick_lidar_localization/SickLocSetResultPoseIntervalSrv.msg
// DO NOT EDIT!


#ifndef SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEINTERVALSRV_H
#define SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEINTERVALSRV_H

#include <ros/service_traits.h>


#include <sick_lidar_localization/SickLocSetResultPoseIntervalSrvRequest.h>
#include <sick_lidar_localization/SickLocSetResultPoseIntervalSrvResponse.h>


namespace sick_lidar_localization
{

struct SickLocSetResultPoseIntervalSrv
{

typedef SickLocSetResultPoseIntervalSrvRequest Request;
typedef SickLocSetResultPoseIntervalSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SickLocSetResultPoseIntervalSrv
} // namespace sick_lidar_localization


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv > {
  static const char* value()
  {
    return "dfed1807f9eafde8783e0a05f0ca7dce";
  }

  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv&) { return value(); }
};

template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv > {
  static const char* value()
  {
    return "sick_lidar_localization/SickLocSetResultPoseIntervalSrv";
  }

  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv&) { return value(); }
};


// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest> should match
// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >
template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest> should match
// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >
template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest>
{
  static const char* value()
  {
    return DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse> should match
// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >
template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse> should match
// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >
template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse>
{
  static const char* value()
  {
    return DataType< ::sick_lidar_localization::SickLocSetResultPoseIntervalSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEINTERVALSRV_H
