// To parse this JSON data, do
//
//     final getDriverScoreCardDetail = getDriverScoreCardDetailFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetDriverScoreCardDetail> getDriverScoreCardDetailFromJson(String str) => List<GetDriverScoreCardDetail>.from(json.decode(str).map((x) => GetDriverScoreCardDetail.fromJson(x)));

String getDriverScoreCardDetailToJson(List<GetDriverScoreCardDetail> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetDriverScoreCardDetail {
  String gpsDateTime;
  String lat;
  String lng;
  String location;
  String reg;
  String speed;
  String statusText;
  String kmDrive;

  GetDriverScoreCardDetail({
    required this.gpsDateTime,
    required this.lat,
    required this.lng,
    required this.location,
    required this.reg,
    required this.speed,
    required this.statusText,
    required this.kmDrive,
  });

  factory GetDriverScoreCardDetail.fromJson(Map<String, dynamic> json) => GetDriverScoreCardDetail(
    gpsDateTime: json["GpsDateTime"],
    lat: json["Lat"],
    lng: json["Lng"],
    location: json["Location"],
    reg: json["Reg"],
    speed: json["Speed"],
    statusText: json["StatusText"],
    kmDrive: json["kmDrive"],
  );

  Map<String, dynamic> toJson() => {
    "GpsDateTime": gpsDateTime,
    "Lat": lat,
    "Lng": lng,
    "Location": location,
    "Reg": reg,
    "Speed": speed,
    "StatusText": statusText,
    "kmDrive": kmDrive,
  };
}

