// To parse this JSON data, do
//
//     final salutationListResult = salutationListResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SalutationListResult salutationListResultFromJson(String str) => SalutationListResult.fromJson(json.decode(str));

String salutationListResultToJson(SalutationListResult data) => json.encode(data.toJson());

class SalutationListResult {
  List<SalutationListResultElement> salutationListResult;

  SalutationListResult({
    required this.salutationListResult,
  });

  factory SalutationListResult.fromJson(Map<String, dynamic> json) => SalutationListResult(
    salutationListResult: List<SalutationListResultElement>.from(json["SalutationListResult"].map((x) => SalutationListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "SalutationListResult": List<dynamic>.from(salutationListResult.map((x) => x.toJson())),
  };
}

class SalutationListResultElement {
  String id;
  String name;

  SalutationListResultElement({
    required this.id,
    required this.name,
  });

  factory SalutationListResultElement.fromJson(Map<String, dynamic> json) => SalutationListResultElement(
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
  };
}
