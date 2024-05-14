// To parse this JSON data, do
//
//     final vehicleUserProfile = vehicleUserProfileFromJson(jsonString);

import 'dart:convert';

VehicleUserProfile vehicleUserProfileFromJson(String str) => VehicleUserProfile.fromJson(json.decode(str));

String vehicleUserProfileToJson(VehicleUserProfile data) => json.encode(data.toJson());

class VehicleUserProfile {
  String accountNo;
  String areaId;
  String areaName;
  String cityId;
  String cityName;
  String customerId;
  String salesOrderId;
  String userBillingAddress;
  String userEmail;
  String userResidentialAddress;

  VehicleUserProfile({
    required this.accountNo,
    required this.areaId,
    required this.areaName,
    required this.cityId,
    required this.cityName,
    required this.customerId,
    required this.salesOrderId,
    required this.userBillingAddress,
    required this.userEmail,
    required this.userResidentialAddress,
  });

  factory VehicleUserProfile.fromJson(Map<String, dynamic> json) => VehicleUserProfile(
    accountNo: json["AccountNo"]??"",
    areaId: json["AreaID"]??"",
    areaName: json["AreaName"]??"",
    cityId: json["CityID"]??"",
    cityName: json["CityName"]??"",
    customerId: json["CustomerID"]??"",
    salesOrderId: json["SalesOrderID"]??"",
    userBillingAddress: json["UserBillingAddress"]??"",
    userEmail: json["UserEmail"]??"",
    userResidentialAddress: json["UserResidentialAddress"]??"",
  );

  Map<String, dynamic> toJson() => {
    "AccountNo": accountNo,
    "AreaID": areaId,
    "AreaName": areaName,
    "CityID": cityId,
    "CityName": cityName,
    "CustomerID": customerId,
    "SalesOrderID": salesOrderId,
    "UserBillingAddress": userBillingAddress,
    "UserEmail": userEmail,
    "UserResidentialAddress": userResidentialAddress,
  };
}
