
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

GetMovementReportResult getMovementReportResultFromJson(String str) => GetMovementReportResult.fromJson(json.decode(str));

String getMovementReportResultToJson(GetMovementReportResult data) => json.encode(data.toJson());

class GetMovementReportResult {
  List<GetMovementReportResultElement> getMovementReportResult;

  GetMovementReportResult({
    required this.getMovementReportResult,
  });

  factory GetMovementReportResult.fromJson(Map<String, dynamic> json) => GetMovementReportResult(
    getMovementReportResult: List<GetMovementReportResultElement>.from(json["GetMovementReportResult"]?.map((x) => GetMovementReportResultElement.fromJson(x))??[]),
  );

  Map<String, dynamic> toJson() => {
    "GetMovementReportResult": List<dynamic>.from(getMovementReportResult.map((x) => x.toJson())),
  };
}

class GetMovementReportResultElement {
  String dateTime;
  String latitude;
  String location;
  String longitude;
  String speed;
  String status;
  String image;
  String direction;
  Color color;

  GetMovementReportResultElement({
    required this.dateTime,
    required this.latitude,
    required this.location,
    required this.longitude,
    required this.speed,
    required this.status,
    required this.image,
    required this.direction,
    required this.color,
  });

  factory GetMovementReportResultElement.fromJson(Map<String, dynamic> json) => GetMovementReportResultElement(
    dateTime: json["DateTime"],
    latitude: json["Latitude"],
    location: json["Location"],
    longitude: json["Longitude"],
    speed: json["Speed"],
    status: json["Status"],
    image: json["image"]??"",
    direction: json["Direction"]??"0",
    color: json["color"]??Colors.red,
  );

  Map<String, dynamic> toJson() => {
    "DateTime": dateTime,
    "Latitude": latitude,
    "Location": location,
    "Longitude": longitude,
    "Speed": speed,
    "Status": status,
    "color": color,
    "image": image,
    "Direction": direction,
  };
}





