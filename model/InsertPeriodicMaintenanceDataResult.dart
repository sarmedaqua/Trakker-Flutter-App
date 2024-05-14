
import 'dart:convert';

InsertPeriodicMaintenanceDataResult insertPeriodicMaintenanceDataResultFromJson(String str) => InsertPeriodicMaintenanceDataResult.fromJson(json.decode(str));

String insertPeriodicMaintenanceDataResultToJson(InsertPeriodicMaintenanceDataResult data) => json.encode(data.toJson());

class InsertPeriodicMaintenanceDataResult {
  InsertPeriodicMaintenanceDataResultClass insertPeriodicMaintenanceDataResult;

  InsertPeriodicMaintenanceDataResult({
    required this.insertPeriodicMaintenanceDataResult,
  });

  factory InsertPeriodicMaintenanceDataResult.fromJson(Map<String, dynamic> json) => InsertPeriodicMaintenanceDataResult(
    insertPeriodicMaintenanceDataResult: InsertPeriodicMaintenanceDataResultClass.fromJson(json["InsertPeriodicMaintenanceDataResult"]),
  );

  Map<String, dynamic> toJson() => {
    "InsertPeriodicMaintenanceDataResult": insertPeriodicMaintenanceDataResult.toJson(),
  };
}

class InsertPeriodicMaintenanceDataResultClass {
  String message;
  String status;

  InsertPeriodicMaintenanceDataResultClass({
    required this.message,
    required this.status,
  });

  factory InsertPeriodicMaintenanceDataResultClass.fromJson(Map<String, dynamic> json) => InsertPeriodicMaintenanceDataResultClass(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}
