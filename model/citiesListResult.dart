// To parse this JSON data, do
//
//     final citiesResult = citiesResultFromJson(jsonString);

import 'dart:convert';

CitiesResult citiesResultFromJson(String str) => CitiesResult.fromJson(json.decode(str));

String citiesResultToJson(CitiesResult data) => json.encode(data.toJson());

class CitiesResult {
  List<CityElement> getCityListResult;

  CitiesResult({
    required this.getCityListResult,
  });

  factory CitiesResult.fromJson(Map<String, dynamic> json) => CitiesResult(
    getCityListResult: List<CityElement>.from(json["GetCityListResult"].map((x) => CityElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetCityListResult": List<dynamic>.from(getCityListResult.map((x) => x.toJson())),
  };
}

class CityElement {
  String id;
  String name;

  CityElement({
    required this.id,
    required this.name,
  });

  factory CityElement.fromJson(Map<String, dynamic> json) => CityElement(
    id: json["ID"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Name": name,
  };
}
