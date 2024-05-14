// To parse this JSON data, do
//
//     final getTripDetailList = getTripDetailListFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetTripDetailList> getTripDetailListFromJson(String str) => List<GetTripDetailList>.from(json.decode(str).map((x) => GetTripDetailList.fromJson(x)));

String getTripDetailListToJson(List<GetTripDetailList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetTripDetailList {
  int avgSpeed;
  dynamic kmDriven;
  String regNo;
  String travelTime;
  String tripDuration;
  String tripEndTime;
  String tripLastLocation;
  String tripStartLocation;
  String tripStartTime;

  GetTripDetailList({
    required this.avgSpeed,
    required this.kmDriven,
    required this.regNo,
    required this.travelTime,
    required this.tripDuration,
    required this.tripEndTime,
    required this.tripLastLocation,
    required this.tripStartLocation,
    required this.tripStartTime,
  });

  factory GetTripDetailList.fromJson(Map<String, dynamic> json) => GetTripDetailList(
    avgSpeed: json["AvgSpeed"]??0.0,
    kmDriven: json["KmDriven"]??0.0,
    regNo: json["RegNo"]??"",
    travelTime: json["TravelTime"]??"",
    tripDuration: json["TripDuration"]??"",
    tripEndTime: json["TripEndTime"]??"0000-11-12 09:45:01",
    tripLastLocation: json["TripLastLocation"]??"",
    tripStartLocation: json["TripStartLocation"]??"",
    tripStartTime: json["TripStartTime"]??"",
  );

  Map<String, dynamic> toJson() => {
    "AvgSpeed": avgSpeed,
    "KmDriven": kmDriven,
    "RegNo": regNo,
    "TravelTime": travelTime,
    "TripDuration": tripDuration,
    "TripEndTime": tripEndTime,
    "TripLastLocation": tripLastLocation,
    "TripStartLocation": tripStartLocation,
    "TripStartTime": tripStartTime,
  };
}





