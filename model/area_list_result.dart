// To parse this JSON data, do
//
//     final areasResult = areasResultFromJson(jsonString);

import 'dart:convert';

AreasResult areasResultFromJson(String str) => AreasResult.fromJson(json.decode(str));

String areasResultToJson(AreasResult data) => json.encode(data.toJson());

class AreasResult {
  List<AreaElement> getAreaListResult;

  AreasResult({
    required this.getAreaListResult,
  });

  factory AreasResult.fromJson(Map<String, dynamic> json) => AreasResult(
    getAreaListResult: List<AreaElement>.from(json["GetAreaListResult"]?.map((x) => AreaElement.fromJson(x))) ?? [],
  );

  Map<String, dynamic> toJson() => {
    "GetAreaListResult": List<dynamic>.from(getAreaListResult.map((x) => x.toJson())),
  };
}

class AreaElement {
  String id;
  String name;

  AreaElement({
    required this.id,
    required this.name,
  });

  factory AreaElement.fromJson(Map<String, dynamic> json) => AreaElement(
    id: json["ID"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Name": name,
  };
}
