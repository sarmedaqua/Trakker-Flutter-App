// To parse this JSON data, do
//
//     final getAllPtDevicesResponse = getAllPtDevicesResponseFromJson(jsonString);

import 'dart:convert';

GetAllPtDevicesResponse getAllPtDevicesResponseFromJson(String str) => GetAllPtDevicesResponse.fromJson(json.decode(str));

String getAllPtDevicesResponseToJson(GetAllPtDevicesResponse data) => json.encode(data.toJson());

class GetAllPtDevicesResponse {
  List<GetAllPtDevicesResult> getAllPtDevicesResult;

  GetAllPtDevicesResponse({
    required this.getAllPtDevicesResult,
  });

  factory GetAllPtDevicesResponse.fromJson(Map<String, dynamic> json) => GetAllPtDevicesResponse(
    getAllPtDevicesResult: List<GetAllPtDevicesResult>.from(json["GetAllPtDevicesResult"].map((x) => GetAllPtDevicesResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetAllPtDevicesResult": List<dynamic>.from(getAllPtDevicesResult.map((x) => x.toJson())),
  };
}

class GetAllPtDevicesResult {
  List<PTDevice> ptDevices;
  int loginStatus;
  int status;

  GetAllPtDevicesResult({
    required this.ptDevices,
    required this.loginStatus,
    required this.status,
  });

  factory GetAllPtDevicesResult.fromJson(Map<String, dynamic> json) => GetAllPtDevicesResult(
    ptDevices: List<PTDevice>.from(json["data"]?.map((x) => PTDevice.fromJson(x)) ?? []),
    loginStatus: json["loginStatus"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(ptDevices.map((x) => x.toJson())),
    "loginStatus": loginStatus,
    "status": status,
  };
}

class PTDevice {
  String deviceType;
  String isSecUser;
  String lat;
  String lng;
  String address;
  dynamic carmodelId;
  bool mailEnabled;
  String simNumber;
  String trackerImei;
  String trackerId;
  String trackerName;
  int userId;

  PTDevice({
    required this.deviceType,
    required this.isSecUser,
    required this.lat,
    required this.lng,
    required this.address,
    required this.carmodelId,
    required this.mailEnabled,
    required this.simNumber,
    required this.trackerImei,
    required this.trackerId,
    required this.trackerName,
    required this.userId,
  });

  factory PTDevice.fromJson(Map<String, dynamic> json) => PTDevice(
    deviceType: json["DeviceType"],
    isSecUser: json["IsSecUser"],
    lat: json["Lat"],
    lng: json["Lng"],
    address: json["address"],
    carmodelId: json["carmodelId"],
    mailEnabled: json["mailEnabled"],
    simNumber: json["simNumber"],
    trackerImei: json["trackerIMEI"],
    trackerId: json["trackerId"],
    trackerName: json["trackerName"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "DeviceType": deviceType,
    "IsSecUser": isSecUser,
    "Lat": lat,
    "Lng": lng,
    "address": address,
    "carmodelId": carmodelId,
    "mailEnabled": mailEnabled,
    "simNumber": simNumber,
    "trackerIMEI": trackerImei,
    "trackerId": trackerId,
    "trackerName": trackerName,
    "userId": userId,
  };
}

TeletixIntervalResult teletixIntervalResultFromJson(String str) => TeletixIntervalResult.fromJson(json.decode(str));

String teletixIntervalResultToJson(TeletixIntervalResult data) => json.encode(data.toJson());

class TeletixIntervalResult {
  TeletixSetIntervalResult teletixSetIntervalResult;

  TeletixIntervalResult({
    required this.teletixSetIntervalResult,
  });

  factory TeletixIntervalResult.fromJson(Map<String, dynamic> json) => TeletixIntervalResult(
    teletixSetIntervalResult: TeletixSetIntervalResult.fromJson(json["TeletixSetIntervalResult"]),
  );

  Map<String, dynamic> toJson() => {
    "TeletixSetIntervalResult": teletixSetIntervalResult.toJson(),
  };
}

class TeletixSetIntervalResult {
  String message;
  String status;

  TeletixSetIntervalResult({
    required this.message,
    required this.status,
  });

  factory TeletixSetIntervalResult.fromJson(Map<String, dynamic> json) => TeletixSetIntervalResult(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}

