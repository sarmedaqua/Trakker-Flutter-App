
import 'dart:convert';

GetBatteryTemperTypesResult getBatteryTemperTypesResultFromJson(String str) => GetBatteryTemperTypesResult.fromJson(json.decode(str));

String getBatteryTemperTypesResultToJson(GetBatteryTemperTypesResult data) => json.encode(data.toJson());

class GetBatteryTemperTypesResult {
  List<GetBatteryTemperTypesResultElement> getBatteryTemperTypesResult;

  GetBatteryTemperTypesResult({
    required this.getBatteryTemperTypesResult,
  });

  factory GetBatteryTemperTypesResult.fromJson(Map<String, dynamic> json) => GetBatteryTemperTypesResult(
    getBatteryTemperTypesResult: List<GetBatteryTemperTypesResultElement>.from(json["GetBatteryTemperTypesResult"].map((x) => GetBatteryTemperTypesResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetBatteryTemperTypesResult": List<dynamic>.from(getBatteryTemperTypesResult.map((x) => x.toJson())),
  };
}

class GetBatteryTemperTypesResultElement {
  String id;
  String name;

  GetBatteryTemperTypesResultElement({
    required this.id,
    required this.name,
  });

  factory GetBatteryTemperTypesResultElement.fromJson(Map<String, dynamic> json) => GetBatteryTemperTypesResultElement(
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
  };
}
