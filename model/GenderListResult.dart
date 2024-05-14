
import 'dart:convert';

GenderListResult genderListResultFromJson(String str) => GenderListResult.fromJson(json.decode(str));

String genderListResultToJson(GenderListResult data) => json.encode(data.toJson());

class GenderListResult {
  List<GenderListResultElement> genderListResult;

  GenderListResult({
    required this.genderListResult,
  });

  factory GenderListResult.fromJson(Map<String, dynamic> json) => GenderListResult(
    genderListResult: List<GenderListResultElement>.from(json["GenderListResult"].map((x) => GenderListResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GenderListResult": List<dynamic>.from(genderListResult.map((x) => x.toJson())),
  };
}

class GenderListResultElement {
  String id;
  String name;

  GenderListResultElement({
    required this.id,
    required this.name,
  });

  factory GenderListResultElement.fromJson(Map<String, dynamic> json) => GenderListResultElement(
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
  };
}
