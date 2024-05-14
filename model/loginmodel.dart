
import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  SendPasswordResult sendPasswordResult;

  LoginModel({
    required this.sendPasswordResult,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    sendPasswordResult: SendPasswordResult.fromJson(json["SendPasswordResult"]),
  );

  Map<String, dynamic> toJson() => {
    "SendPasswordResult": sendPasswordResult.toJson(),
  };
}

class SendPasswordResult {
  String message;
  String status;

  SendPasswordResult({
    required this.message,
    required this.status,
  });

  factory SendPasswordResult.fromJson(Map<String, dynamic> json) => SendPasswordResult(
    message: json["Message"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Status": status,
  };
}
