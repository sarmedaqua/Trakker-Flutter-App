
import 'dart:convert';

CurrentVersionModel currentVersionModelFromJson(String str) => CurrentVersionModel.fromJson(json.decode(str));

String currentVersionModelToJson(CurrentVersionModel data) => json.encode(data.toJson());

class CurrentVersionModel {
  String androidVersion;
  String iosVersion;
  String isForceUpdate;
  String updatedOn;

  CurrentVersionModel({
    required this.androidVersion,
    required this.iosVersion,
    required this.isForceUpdate,
    required this.updatedOn,
  });

  factory CurrentVersionModel.fromJson(Map<String, dynamic> json) => CurrentVersionModel(
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
