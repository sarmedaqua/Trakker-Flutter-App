// To parse this JSON data, do
//
//     final getSuggestionSubComplaintTypesResult = getSuggestionSubComplaintTypesResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetSuggestionSubComplaintTypesResult getSuggestionSubComplaintTypesResultFromJson(String str) => GetSuggestionSubComplaintTypesResult.fromJson(json.decode(str));

String getSuggestionSubComplaintTypesResultToJson(GetSuggestionSubComplaintTypesResult data) => json.encode(data.toJson());

class GetSuggestionSubComplaintTypesResult {
  List<GetSuggestionSubComplaintTypesResultElement> getSuggestionSubComplaintTypesResult;

  GetSuggestionSubComplaintTypesResult({
    required this.getSuggestionSubComplaintTypesResult,
  });

  factory GetSuggestionSubComplaintTypesResult.fromJson(Map<String, dynamic> json) => GetSuggestionSubComplaintTypesResult(
    getSuggestionSubComplaintTypesResult: List<GetSuggestionSubComplaintTypesResultElement>.from(json["GetSuggestionSubComplaintTypesResult"].map((x) => GetSuggestionSubComplaintTypesResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetSuggestionSubComplaintTypesResult": List<dynamic>.from(getSuggestionSubComplaintTypesResult.map((x) => x.toJson())),
  };
}

class GetSuggestionSubComplaintTypesResultElement {
  String categoryId;
  String id;
  String name;

  GetSuggestionSubComplaintTypesResultElement({
    required this.categoryId,
    required this.id,
    required this.name,
  });

  factory GetSuggestionSubComplaintTypesResultElement.fromJson(Map<String, dynamic> json) => GetSuggestionSubComplaintTypesResultElement(
    categoryId: json["CategoryId"],
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "CategoryId": categoryId,
    "Id": id,
    "Name": name,
  };
}
