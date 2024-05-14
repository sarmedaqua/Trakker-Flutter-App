// To parse this JSON data, do
//
//     final getAreaListResult = getAreaListResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAreaListResult getAreaListResultFromJson(String str) => GetAreaListResult.fromJson(json.decode(str));

String getAreaListResultToJson(GetAreaListResult data) => json.encode(data.toJson());

class GetAreaListResult {
  List<GetAreaListResultElement> getAreaListResult;

  GetAreaListResult({
    required this.getAreaListResult,
  });

  factory GetAreaListResult.fromJson(Map<String, dynamic> json) => GetAreaListResult(

    getAreaListResult: List<GetAreaListResultElement>.from(json["GetAreaListResult"].map((x) => GetAreaListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetAreaListResult": List<dynamic>.from(getAreaListResult.map((x) => x.toJson())),
  };
}

class GetAreaListResultElement {
  String id;
  String name;

  GetAreaListResultElement({
    required this.id,
    required this.name,
  });

  factory GetAreaListResultElement.fromJson(Map<String, dynamic> json) => GetAreaListResultElement(
    id: json["ID"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Name": name,
  };
}
