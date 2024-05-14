// To parse this JSON data, do
//
//     final addressTypeListResult = addressTypeListResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AddressTypeListResult addressTypeListResultFromJson(String str) => AddressTypeListResult.fromJson(json.decode(str));

String addressTypeListResultToJson(AddressTypeListResult data) => json.encode(data.toJson());

class AddressTypeListResult {
  List<AddressTypeListResultElement> addressTypeListResult;

  AddressTypeListResult({
    required this.addressTypeListResult,
  });

  factory AddressTypeListResult.fromJson(Map<String, dynamic> json) => AddressTypeListResult(
    addressTypeListResult: List<AddressTypeListResultElement>.from(json["AddressTypeListResult"].map((x) => AddressTypeListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "AddressTypeListResult": List<dynamic>.from(addressTypeListResult.map((x) => x.toJson())),
  };
}

class AddressTypeListResultElement {
  String id;
  String name;

  AddressTypeListResultElement({
    required this.id,
    required this.name,
  });

  factory AddressTypeListResultElement.fromJson(Map<String, dynamic> json) => AddressTypeListResultElement(
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
  };
}
