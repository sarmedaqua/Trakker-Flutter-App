
import 'dart:convert';

GetNogoAreaResult getNogoAreaResultFromJson(String str) => GetNogoAreaResult.fromJson(json.decode(str));

String getNogoAreaResultToJson(GetNogoAreaResult data) => json.encode(data.toJson());

class GetNogoAreaResult {
  List<GetNogoAreaResultElement> getNogoAreaResult;

  GetNogoAreaResult({
    required this.getNogoAreaResult,
  });

  factory GetNogoAreaResult.fromJson(Map<String, dynamic> json) => GetNogoAreaResult(
    getNogoAreaResult: List<GetNogoAreaResultElement>.from(json["GetNogoAreaResult"].map((x) => GetNogoAreaResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetNogoAreaResult": List<dynamic>.from(getNogoAreaResult.map((x) => x.toJson())),
  };
}

class GetNogoAreaResultElement {
  String id;
  String name;

  GetNogoAreaResultElement({
    required this.id,
    required this.name,
  });

  factory GetNogoAreaResultElement.fromJson(Map<String, dynamic> json) => GetNogoAreaResultElement(
    id: json["Id"],
    name: json["Name"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
  };
}
