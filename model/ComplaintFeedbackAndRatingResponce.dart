// To parse this JSON data, do
//
//     final complaintFeedbackAndRatingResponce = complaintFeedbackAndRatingResponceFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ComplaintFeedbackAndRatingResponce complaintFeedbackAndRatingResponceFromJson(String str) => ComplaintFeedbackAndRatingResponce.fromJson(json.decode(str));

String complaintFeedbackAndRatingResponceToJson(ComplaintFeedbackAndRatingResponce data) => json.encode(data.toJson());

class ComplaintFeedbackAndRatingResponce {
  String msg;
  String status;

  ComplaintFeedbackAndRatingResponce({
    required this.msg,
    required this.status,
  });

  factory ComplaintFeedbackAndRatingResponce.fromJson(Map<String, dynamic> json) => ComplaintFeedbackAndRatingResponce(
    msg: json["Msg"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Msg": msg,
    "Status": status,
  };
}
