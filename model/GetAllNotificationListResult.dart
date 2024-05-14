// To parse this JSON data, do
//
//     final getAllNotificationListResult = getAllNotificationListResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllNotificationListResult getAllNotificationListResultFromJson(String str) => GetAllNotificationListResult.fromJson(json.decode(str));

String getAllNotificationListResultToJson(GetAllNotificationListResult data) => json.encode(data.toJson());

class GetAllNotificationListResult {
  List<GetAllNotificationListResultElement> getAllNotificationListResult;

  GetAllNotificationListResult({
    required this.getAllNotificationListResult,
  });

  factory GetAllNotificationListResult.fromJson(Map<String, dynamic> json) => GetAllNotificationListResult(
    getAllNotificationListResult: List<GetAllNotificationListResultElement>.from(json["GetAllNotificationListResult"].map((x) => GetAllNotificationListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetAllNotificationListResult": List<dynamic>.from(getAllNotificationListResult.map((x) => x.toJson())),
  };
}

class GetAllNotificationListResultElement {
  String imageUrl;
  String notifyAddOnDate;
  String notifyText;

  GetAllNotificationListResultElement({
    required this.imageUrl,
    required this.notifyAddOnDate,
    required this.notifyText,
  });

  factory GetAllNotificationListResultElement.fromJson(Map<String, dynamic> json) => GetAllNotificationListResultElement(
    imageUrl: json["ImageUrl"],
    notifyAddOnDate: json["NotifyAddOnDate"],
    notifyText: json["NotifyText"],
  );

  Map<String, dynamic> toJson() => {
    "ImageUrl": imageUrl,
    "NotifyAddOnDate": notifyAddOnDate,
    "NotifyText": notifyText,
  };
}
