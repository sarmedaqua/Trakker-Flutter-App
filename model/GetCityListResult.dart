// To parse this JSON data, do
//
//     final getCityListResult = getCityListResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetCityListResult getCityListResultFromJson(String str) => GetCityListResult.fromJson(json.decode(str));

String getCityListResultToJson(GetCityListResult data) => json.encode(data.toJson());

class GetCityListResult {
  List<GetCityListResultElement> getCityListResult;

  GetCityListResult({
    required this.getCityListResult,
  });

  factory GetCityListResult.fromJson(Map<String, dynamic> json) => GetCityListResult(
    getCityListResult: List<GetCityListResultElement>.from(json["GetCityListResult"].map((x) => GetCityListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetCityListResult": List<dynamic>.from(getCityListResult.map((x) => x.toJson())),
  };
}

class GetCityListResultElement {
  String id;
  String name;

  GetCityListResultElement({
    required this.id,
    required this.name,
  });

  factory GetCityListResultElement.fromJson(Map<String, dynamic> json) => GetCityListResultElement(
    id: json["ID"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Name": name,
  };
}
