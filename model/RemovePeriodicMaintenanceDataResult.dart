// To parse this JSON data, do
//
//     final removePeriodicMaintenanceDataResult = removePeriodicMaintenanceDataResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

RemovePeriodicMaintenanceDataResult removePeriodicMaintenanceDataResultFromJson(String str) => RemovePeriodicMaintenanceDataResult.fromJson(json.decode(str));

String removePeriodicMaintenanceDataResultToJson(RemovePeriodicMaintenanceDataResult data) => json.encode(data.toJson());

class RemovePeriodicMaintenanceDataResult {
  RemovePeriodicMaintenanceDataResultClass removePeriodicMaintenanceDataResult;

  RemovePeriodicMaintenanceDataResult({
    required this.removePeriodicMaintenanceDataResult,
  });

  factory RemovePeriodicMaintenanceDataResult.fromJson(Map<String, dynamic> json) => RemovePeriodicMaintenanceDataResult(
    removePeriodicMaintenanceDataResult: RemovePeriodicMaintenanceDataResultClass.fromJson(json["RemovePeriodicMaintenanceDataResult"]),
  );

  Map<String, dynamic> toJson() => {
    "RemovePeriodicMaintenanceDataResult": removePeriodicMaintenanceDataResult.toJson(),
  };
}

class RemovePeriodicMaintenanceDataResultClass {
  String message;
  String status;

  RemovePeriodicMaintenanceDataResultClass({
    required this.message,
    required this.status,
  });

  factory RemovePeriodicMaintenanceDataResultClass.fromJson(Map<String, dynamic> json) => RemovePeriodicMaintenanceDataResultClass(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}
