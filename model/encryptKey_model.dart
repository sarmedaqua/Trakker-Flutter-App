// To parse this JSON data, do
//
//     final encryptKeyModel = encryptKeyModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

EncryptKeyModel encryptKeyModelFromJson(String str) => EncryptKeyModel.fromJson(json.decode(str));

String encryptKeyModelToJson(EncryptKeyModel data) => json.encode(data.toJson());

class EncryptKeyModel {
  String encryptKey;
  String loginStatus;

  EncryptKeyModel({
    required this.encryptKey,
    required this.loginStatus,
  });

  factory EncryptKeyModel.fromJson(Map<String, dynamic> json) => EncryptKeyModel(
    encryptKey: json["EncryptKey"],
    loginStatus: json["LoginStatus"],
  );

  Map<String, dynamic> toJson() => {
    "EncryptKey": encryptKey,
    "LoginStatus": loginStatus,
  };
}
