// To parse this JSON data, do
//
//     final getNotificationSettingResult = getNotificationSettingResultFromJson(jsonString);

import 'dart:convert';

GetNotificationSettingResult getNotificationSettingResultFromJson(String str) => GetNotificationSettingResult.fromJson(json.decode(str));

String getNotificationSettingResultToJson(GetNotificationSettingResult data) => json.encode(data.toJson());

class GetNotificationSettingResult {
  List<NotificationSettings> getNotificationSettingResult;

  GetNotificationSettingResult({
    required this.getNotificationSettingResult,
  });

  factory GetNotificationSettingResult.fromJson(Map<String, dynamic> json) => GetNotificationSettingResult(
    getNotificationSettingResult: List<NotificationSettings>.from(json["GetNotificationSettingResult"]?.map((x) => NotificationSettings.fromJson(x)) ?? []),
  );

  Map<String, dynamic> toJson() => {
    "GetNotificationSettingResult": List<dynamic>.from(getNotificationSettingResult.map((x) => x.toJson())),
  };
}

class NotificationSettings {
  String hasNotification;
  String notificationType;
  String regNo;

  NotificationSettings({
    required this.hasNotification,
    required this.notificationType,
    required this.regNo,
  });

  factory NotificationSettings.fromJson(Map<String, dynamic> json) => NotificationSettings(
    hasNotification: json["HasNotification"],
    notificationType: json["NotificationType"],
    regNo: json["RegNo"],
  );

  Map<String, dynamic> toJson() => {
    "HasNotification": hasNotification,
    "NotificationType": notificationType,
    "RegNo": regNo,
  };
}
