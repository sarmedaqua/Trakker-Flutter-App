import 'dart:convert';

TeletixEmergencyContactResult teletixEmergencyContactResultFromJson(String str) => TeletixEmergencyContactResult.fromJson(json.decode(str));

String teletixEmergencyContactResultToJson(TeletixEmergencyContactResult data) => json.encode(data.toJson());

class TeletixEmergencyContactResult {
  TeletixSetEmergencyContactResult teletixSetEmergencyContactResult;

  TeletixEmergencyContactResult({
    required this.teletixSetEmergencyContactResult,
  });

  factory TeletixEmergencyContactResult.fromJson(Map<String, dynamic> json) => TeletixEmergencyContactResult(
    teletixSetEmergencyContactResult: TeletixSetEmergencyContactResult.fromJson(json["TeletixSetEmergencyNoResult"]),
  );

  Map<String, dynamic> toJson() => {
    "TeletixSetEmergencyNoResult": teletixSetEmergencyContactResult.toJson(),
  };
}

class TeletixSetEmergencyContactResult {
  String message;
  String status;

  TeletixSetEmergencyContactResult({
    required this.message,
    required this.status,
  });

  factory TeletixSetEmergencyContactResult.fromJson(Map<String, dynamic> json) => TeletixSetEmergencyContactResult(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}