import 'dart:convert';

PasscodeModel passcodeModelFromJson(String str) => PasscodeModel.fromJson(json.decode(str));

String passcodeModelToJson(PasscodeModel data) => json.encode(data.toJson());

class PasscodeModel {
  InDeviceTokenResult inDeviceTokenResult;

  PasscodeModel({
    required this.inDeviceTokenResult,
  });

  factory PasscodeModel.fromJson(Map<String, dynamic> json) => PasscodeModel(
    inDeviceTokenResult: InDeviceTokenResult.fromJson(json["InDeviceTokenResult"]),
  );

  Map<String, dynamic> toJson() => {
    "InDeviceTokenResult": inDeviceTokenResult.toJson(),
  };
}

class InDeviceTokenResult {
  dynamic email;
  String firstName;
  String lastName;
  String message;
  dynamic nicNo;
  String primiryContactEmail;
  String primiryContactName;
  String status;

  InDeviceTokenResult({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.message,
    required this.nicNo,
    required this.primiryContactEmail,
    required this.primiryContactName,
    required this.status,
  });

  factory InDeviceTokenResult.fromJson(Map<String, dynamic> json) => InDeviceTokenResult(
    email: json["Email"],
    firstName: json["FirstName"],
    lastName: json["LastName"],
    message: json["Message"],
    nicNo: json["NicNo"],
    primiryContactEmail: json["PrimiryContactEmail"],
    primiryContactName: json["PrimiryContactName"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Email": email,
    "FirstName": firstName,
    "LastName": lastName,
    "Message": message,
    "NicNo": nicNo,
    "PrimiryContactEmail": primiryContactEmail,
    "PrimiryContactName": primiryContactName,
    "Status": status,
  };
}
