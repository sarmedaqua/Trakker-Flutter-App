// To parse this JSON data, do
//
//     final saveComplaintResult = saveComplaintResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SaveComplaintResult saveComplaintResultFromJson(String str) => SaveComplaintResult.fromJson(json.decode(str));

String saveComplaintResultToJson(SaveComplaintResult data) => json.encode(data.toJson());

class SaveComplaintResult {
  String complainNo;
  String msg;
  String status;

  SaveComplaintResult({
    required this.complainNo,
    required this.msg,
    required this.status,
  });

  factory SaveComplaintResult.fromJson(Map<String, dynamic> json) => SaveComplaintResult(
    complainNo: json["ComplainNo"],
    msg: json["Msg"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "ComplainNo": complainNo,
    "Msg": msg,
    "Status": status,
  };
}
