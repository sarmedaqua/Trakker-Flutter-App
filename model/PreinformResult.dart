// To parse this JSON data, do
//
//     final preinformResult = preinformResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PreinformResult preinformResultFromJson(String str) => PreinformResult.fromJson(json.decode(str));

String preinformResultToJson(PreinformResult data) => json.encode(data.toJson());

class PreinformResult {
  PreinformResultClass preinformResult;

  PreinformResult({
    required this.preinformResult,
  });

  factory PreinformResult.fromJson(Map<String, dynamic> json) => PreinformResult(
    preinformResult: PreinformResultClass.fromJson(json["PreinformResult"]),
  );

  Map<String, dynamic> toJson() => {
    "PreinformResult": preinformResult.toJson(),
  };
}

class PreinformResultClass {
  String message;
  String status;

  PreinformResultClass({
    required this.message,
    required this.status,
  });

  factory PreinformResultClass.fromJson(Map<String, dynamic> json) => PreinformResultClass(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}
