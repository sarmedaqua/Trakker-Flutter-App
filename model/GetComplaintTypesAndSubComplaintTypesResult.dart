

import 'dart:convert';

GetComplaintTypesAndSubComplaintTypesResult getComplaintTypesAndSubComplaintTypesResultFromJson(String str) => GetComplaintTypesAndSubComplaintTypesResult.fromJson(json.decode(str));

String getComplaintTypesAndSubComplaintTypesResultToJson(GetComplaintTypesAndSubComplaintTypesResult data) => json.encode(data.toJson());

class GetComplaintTypesAndSubComplaintTypesResult {
  List<GetComplaintTypesAndSubComplaintTypesResultElement> getComplaintTypesAndSubComplaintTypesResult;

  GetComplaintTypesAndSubComplaintTypesResult({
    required this.getComplaintTypesAndSubComplaintTypesResult,
  });

  factory GetComplaintTypesAndSubComplaintTypesResult.fromJson(Map<String, dynamic> json) => GetComplaintTypesAndSubComplaintTypesResult(
    getComplaintTypesAndSubComplaintTypesResult: List<GetComplaintTypesAndSubComplaintTypesResultElement>.from(json["GetComplaintTypesAndSubComplaintTypesResult"].map((x) => GetComplaintTypesAndSubComplaintTypesResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetComplaintTypesAndSubComplaintTypesResult": List<dynamic>.from(getComplaintTypesAndSubComplaintTypesResult.map((x) => x.toJson())),
  };
}

class GetComplaintTypesAndSubComplaintTypesResultElement {
  String complaintType;
  String complaintTypeLevel;
  String complaintTypeId;
  List<LstSubComplaintType> lstSubComplaintTypes;

  GetComplaintTypesAndSubComplaintTypesResultElement({
    required this.complaintType,
    required this.complaintTypeLevel,
    required this.complaintTypeId,
    required this.lstSubComplaintTypes,
  });

  factory GetComplaintTypesAndSubComplaintTypesResultElement.fromJson(Map<String, dynamic> json) => GetComplaintTypesAndSubComplaintTypesResultElement(
    complaintType: json["ComplaintType"],
    complaintTypeLevel: json["ComplaintTypeLevel"],
    complaintTypeId: json["ComplaintType_Id"],
    lstSubComplaintTypes: List<LstSubComplaintType>.from(json["LstSubComplaintTypes"].map((x) => LstSubComplaintType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ComplaintType": complaintType,
    "ComplaintTypeLevel": complaintTypeLevel,
    "ComplaintType_Id": complaintTypeId,
    "LstSubComplaintTypes": List<dynamic>.from(lstSubComplaintTypes.map((x) => x.toJson())),
  };
}

class LstSubComplaintType {
  String subComplaintType;
  String subComplaintTypeId;

  LstSubComplaintType({
    required this.subComplaintType,
    required this.subComplaintTypeId,
  });

  factory LstSubComplaintType.fromJson(Map<String, dynamic> json) => LstSubComplaintType(
    subComplaintType: json["SubComplaintType"],
    subComplaintTypeId: json["SubComplaintType_Id"],
  );

  Map<String, dynamic> toJson() => {
    "SubComplaintType": subComplaintType,
    "SubComplaintType_Id": subComplaintTypeId,
  };
}
