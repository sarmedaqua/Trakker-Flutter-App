// To parse this JSON data, do
//
//     final getLastLocationResult = getLastLocationResultFromJson(jsonString);

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

GetLastLocationResult getLastLocationResultFromJson(String str) => GetLastLocationResult.fromJson(json.decode(str));

String getLastLocationResultToJson(GetLastLocationResult data) => json.encode(data.toJson());

class GetLastLocationResult {
  List<GetLastLocationResultElement> getLastLocationResult;

  GetLastLocationResult({
    required this.getLastLocationResult,
  });

  factory GetLastLocationResult.fromJson(Map<String, dynamic> json) => GetLastLocationResult(
    getLastLocationResult: List<GetLastLocationResultElement>.from(json["GetLastLocationResult"]?.map((x) => GetLastLocationResultElement.fromJson(x)) ?? []),
  );

  Map<String, dynamic> toJson() => {
    "GetLastLocationResult": List<dynamic>.from(getLastLocationResult.map((x) => x.toJson())),
  };
}

class GetLastLocationResultElement {
  String baseName;
  String chasis;
  String engine;
  String ignition;
  String isDefaultContactFound;
  String lastReportingDateTime;
  String latitude;
  String location;
  String longitude;
  String make;
  String model;
  String onRemovalPortal;
  String primaryUserName;
  String regYear;
  String registrationNo;
  String reportingStatus;
  String salesOrderId;
  String speed;
  String vehicleCategory;
  String vehicleOfCurrentUser;
  String direction;
  String statustext;
  String image;
  Color color;
  bool selected;

  GetLastLocationResultElement({
    required this.baseName,
    required this.chasis,
    required this.engine,
    required this.ignition,
    required this.isDefaultContactFound,
    required this.lastReportingDateTime,
    required this.latitude,
    required this.location,
    required this.longitude,
    required this.make,
    required this.model,
    required this.onRemovalPortal,
    required this.primaryUserName,
    required this.regYear,
    required this.registrationNo,
    required this.reportingStatus,
    required this.salesOrderId,
    required this.speed,
    required this.vehicleCategory,
    required this.vehicleOfCurrentUser,
    required this.direction,
    required this.statustext,
    required this.image,
    required this.color,
    required this.selected,
  });

  factory GetLastLocationResultElement.fromJson(Map<String, dynamic> json) => GetLastLocationResultElement(
    baseName: json["BaseName"],
    chasis: json["Chasis"],
    engine: json["Engine"],
    ignition: json["Ignition"],
    isDefaultContactFound: json["IsDefaultContactFound"],
    lastReportingDateTime: json["LastReportingDateTime"],
    latitude: json["Latitude"],
    location: json["Location"],
    longitude: json["Longitude"],
    make: json["Make"],
    model: json["Model"],
    onRemovalPortal: json["OnRemovalPortal"],
    primaryUserName: json["PrimaryUserName"],
    regYear: json["RegYear"],
    registrationNo: json["Registration_No"],
    reportingStatus: json["Reporting_Status"],
    salesOrderId: json["SalesOrder_Id"],
    speed: json["Speed"],
    vehicleCategory: json["VehicleCategory"],
    vehicleOfCurrentUser: json["VehicleOfCurrentUser"],
    direction: json["direction"],
    statustext: json["statustext"],
    image: "image/driving.png",
    color: Colors.red,
    selected:false,
  );

  Map<String, dynamic> toJson() => {
    "BaseName": baseName,
    "Chasis": chasis,
    "Engine": engine,
    "Ignition": ignition,
    "IsDefaultContactFound": isDefaultContactFound,
    "LastReportingDateTime": lastReportingDateTime,
    "Latitude": latitude,
    "Location": location,
    "Longitude": longitude,
    "Make": make,
    "Model": model,
    "OnRemovalPortal": onRemovalPortal,
    "PrimaryUserName": primaryUserName,
    "RegYear": regYear,
    "Registration_No": registrationNo,
    "Reporting_Status": reportingStatus,
    "SalesOrder_Id": salesOrderId,
    "Speed": speed,
    "VehicleCategory": vehicleCategory,
    "VehicleOfCurrentUser": vehicleOfCurrentUser,
    "direction": direction,
    "statustext": statustext,
  };
}
