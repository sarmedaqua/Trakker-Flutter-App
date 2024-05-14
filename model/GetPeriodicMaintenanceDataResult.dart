// To parse this JSON data, do
//
//     final getPeriodicMaintenanceDataResult = getPeriodicMaintenanceDataResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetPeriodicMaintenanceDataResult getPeriodicMaintenanceDataResultFromJson(String str) => GetPeriodicMaintenanceDataResult.fromJson(json.decode(str));

String getPeriodicMaintenanceDataResultToJson(GetPeriodicMaintenanceDataResult data) => json.encode(data.toJson());

class GetPeriodicMaintenanceDataResult {
  List<GetPeriodicMaintenanceDataResultElement> getPeriodicMaintenanceDataResult;

  GetPeriodicMaintenanceDataResult({
    required this.getPeriodicMaintenanceDataResult,
  });

  factory GetPeriodicMaintenanceDataResult.fromJson(Map<String, dynamic> json) => GetPeriodicMaintenanceDataResult(
    getPeriodicMaintenanceDataResult: List<GetPeriodicMaintenanceDataResultElement>.from(json["GetPeriodicMaintenanceDataResult"]?.map((x) => GetPeriodicMaintenanceDataResultElement.fromJson(x))??[]),
  );

  Map<String, dynamic> toJson() => {
    "GetPeriodicMaintenanceDataResult": List<dynamic>.from(getPeriodicMaintenanceDataResult.map((x) => x.toJson())),
  };
}

class GetPeriodicMaintenanceDataResultElement {
  String cellNo;
  String comments;
  String endDate;
  int eventId;
  int id;
  String maintenanceName;
  int maintenanceType;
  String otherMaintenancedesc;
  String regNo;
  int reminderduration;
  String startDate;

  GetPeriodicMaintenanceDataResultElement({
    required this.cellNo,
    required this.comments,
    required this.endDate,
    required this.eventId,
    required this.id,
    required this.maintenanceName,
    required this.maintenanceType,
    required this.otherMaintenancedesc,
    required this.regNo,
    required this.reminderduration,
    required this.startDate,
  });

  factory GetPeriodicMaintenanceDataResultElement.fromJson(Map<String, dynamic> json) => GetPeriodicMaintenanceDataResultElement(
    cellNo: json["CellNo"],
    comments: json["Comments"],
    endDate: json["EndDate"],
    eventId: json["EventID"],
    id: json["ID"],
    maintenanceName: json["MaintenanceName"],
    maintenanceType: json["MaintenanceType"],
    otherMaintenancedesc: json["OtherMaintenancedesc"],
    regNo: json["RegNo"],
    reminderduration: json["Reminderduration"],
    startDate: json["StartDate"],
  );

  Map<String, dynamic> toJson() => {
    "CellNo": cellNo,
    "Comments": comments,
    "EndDate": endDate,
    "EventID": eventId,
    "ID": id,
    "MaintenanceName": maintenanceName,
    "MaintenanceType": maintenanceType,
    "OtherMaintenancedesc": otherMaintenancedesc,
    "RegNo": regNo,
    "Reminderduration": reminderduration,
    "StartDate": startDate,
  };
}
