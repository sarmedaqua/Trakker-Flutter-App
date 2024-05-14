
import 'dart:convert';

GetCurrentVersion getCurrentVersionFromJson(String str) => GetCurrentVersion.fromJson(json.decode(str));

String getCurrentVersionToJson(GetCurrentVersion data) => json.encode(data.toJson());

class GetCurrentVersion {
  String androidVersion;
  String iosVersion;
  String isForceUpdate;
  String updatedOn;

  GetCurrentVersion({
    required this.androidVersion,
    required this.iosVersion,
    required this.isForceUpdate,
    required this.updatedOn,
  });

  factory GetCurrentVersion.fromJson(Map<String, dynamic> json) => GetCurrentVersion(
    androidVersion: json["AndroidVersion"],
    iosVersion: json["IOSVersion"],
    isForceUpdate: json["IsForceUpdate"],
    updatedOn: json["UpdatedOn"],
  );

  Map<String, dynamic> toJson() => {
    "AndroidVersion": androidVersion,
    "IOSVersion": iosVersion,
    "IsForceUpdate": isForceUpdate,
    "UpdatedOn": updatedOn,
  };
}
