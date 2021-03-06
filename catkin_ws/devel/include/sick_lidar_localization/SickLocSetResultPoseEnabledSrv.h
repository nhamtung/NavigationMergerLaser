// Generated by gencpp from file sick_lidar_localization/SickLocSetResultPoseEnabledSrv.msg
// DO NOT EDIT!


#ifndef SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEENABLEDSRV_H
#define SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEENABLEDSRV_H

#include <ros/service_traits.h>


#include <sick_lidar_localization/SickLocSetResultPoseEnabledSrvRequest.h>
#include <sick_lidar_localization/SickLocSetResultPoseEnabledSrvResponse.h>


namespace sick_lidar_localization
{

struct SickLocSetResultPoseEnabledSrv
{

typedef SickLocSetResultPoseEnabledSrvRequest Request;
typedef SickLocSetResultPoseEnabledSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SickLocSetResultPoseEnabledSrv
} // namespace sick_lidar_localization


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv > {
  static const char* value()
  {
    return "1f66c3fbfa9f51fd9331860303d68bcc";
  }

  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv&) { return value(); }
};

template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv > {
  static const char* value()
  {
    return "sick_lidar_localization/SickLocSetResultPoseEnabledSrv";
  }

  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv&) { return value(); }
};


// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest> should match
// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >
template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest> should match
// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >
template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest>
{
  static const char* value()
  {
    return DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse> should match
// service_traits::MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >
template<>
struct MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse> should match
// service_traits::DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >
template<>
struct DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse>
{
  static const char* value()
  {
    return DataType< ::sick_lidar_localization::SickLocSetResultPoseEnabledSrv >::value();
  }
  static const char* value(const ::sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SICK_LIDAR_LOCALIZATION_MESSAGE_SICKLOCSETRESULTPOSEENABLEDSRV_H
