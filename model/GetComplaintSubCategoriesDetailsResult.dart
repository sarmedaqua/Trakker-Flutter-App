// To parse this JSON data, do
//
//     final getComplaintSubCategoriesDetailsResult = getComplaintSubCategoriesDetailsResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetComplaintSubCategoriesDetailsResult getComplaintSubCategoriesDetailsResultFromJson(String str) => GetComplaintSubCategoriesDetailsResult.fromJson(json.decode(str));

String getComplaintSubCategoriesDetailsResultToJson(GetComplaintSubCategoriesDetailsResult data) => json.encode(data.toJson());

class GetComplaintSubCategoriesDetailsResult {
  List<GetComplaintSubCategoriesDetailsResultElement> getComplaintSubCategoriesDetailsResult;

  GetComplaintSubCategoriesDetailsResult({
    required this.getComplaintSubCategoriesDetailsResult,
  });

  factory GetComplaintSubCategoriesDetailsResult.fromJson(Map<String, dynamic> json) => GetComplaintSubCategoriesDetailsResult(
    getComplaintSubCategoriesDetailsResult: List<GetComplaintSubCategoriesDetailsResultElement>.from(json["GetComplaintSubCategoriesDetailsResult"].map((x) => GetComplaintSubCategoriesDetailsResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetComplaintSubCategoriesDetailsResult": List<dynamic>.from(getComplaintSubCategoriesDetailsResult.map((x) => x.toJson())),
  };
}

class GetComplaintSubCategoriesDetailsResultElement {
  String categoryId;
  String id;
  String name;

  GetComplaintSubCategoriesDetailsResultElement({
    required this.categoryId,
    required this.id,
    required this.name,
  });

  factory GetComplaintSubCategoriesDetailsResultElement.fromJson(Map<String, dynamic> json) => GetComplaintSubCategoriesDetailsResultElement(
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
