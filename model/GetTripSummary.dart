// To parse this JSON data, do
//
//     final getTripSummary = getTripSummaryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetTripSummary> getTripSummaryFromJson(String str) => List<GetTripSummary>.from(json.decode(str).map((x) => GetTripSummary.fromJson(x)));

String getTripSummaryToJson(List<GetTripSummary> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetTripSummary {
  int accOffCount;
  int accOnCount;
  int avgSpeed;
  int distanceTravelled;
  int id;
  String movingInSecconds;
  String regNo;

  GetTripSummary({
    required this.accOffCount,
    required this.accOnCount,
    required this.avgSpeed,
    required this.distanceTravelled,
    required this.id,
    required this.movingInSecconds,
    required this.regNo,
  });

  factory GetTripSummary.fromJson(Map<String, dynamic> json) => GetTripSummary(
    accOffCount: json["AccOffCount"],
    accOnCount: json["AccOnCount"],
    avgSpeed: json["AvgSpeed"],
    distanceTravelled: json["DistanceTravelled"],
    id: json["ID"],
    movingInSecconds: json["MovingInSecconds"],
    regNo: json["RegNo"],
  );

  Map<String, dynamic> toJson() => {
    "AccOffCount": accOffCount,
    "AccOnCount": accOnCount,
    "AvgSpeed": avgSpeed,
    "DistanceTravelled": distanceTravelled,
    "ID": id,
    "MovingInSecconds": movingInSecconds,
    "RegNo": regNo,
  };
}
