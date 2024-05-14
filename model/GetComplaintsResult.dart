
import 'dart:convert';
import 'dart:ffi';

GetComplaintsResult getComplaintsResultFromJson(String str) => GetComplaintsResult.fromJson(json.decode(str));

String getComplaintsResultToJson(GetComplaintsResult data) => json.encode(data.toJson());

class GetComplaintsResult {
  GetComplaintsResultClass getComplaintsResult;

  GetComplaintsResult({
    required this.getComplaintsResult,
  });

  factory GetComplaintsResult.fromJson(Map<String, dynamic> json) => GetComplaintsResult(
    getComplaintsResult: GetComplaintsResultClass.fromJson(json["GetComplaintsResult"]),
  );

  Map<String, dynamic> toJson() => {
    "GetComplaintsResult": getComplaintsResult.toJson(),
  };
}

class GetComplaintsResultClass {
  List<ComplaintHeader> complaintHeader;
  List<ComplaintList> complaintList;

  GetComplaintsResultClass({
    required this.complaintHeader,
    required this.complaintList,
  });

  factory GetComplaintsResultClass.fromJson(Map<String, dynamic> json) => GetComplaintsResultClass(
    complaintHeader: List<ComplaintHeader>.from(json["ComplaintHeader"].map((x) => ComplaintHeader.fromJson(x))),
    complaintList: List<ComplaintList>.from(json["ComplaintList"].map((x) => ComplaintList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ComplaintHeader": List<dynamic>.from(complaintHeader.map((x) => x.toJson())),
    "ComplaintList": List<dynamic>.from(complaintList.map((x) => x.toJson())),
  };
}

class ComplaintHeader {
  String statusName;
  String statusValue;

  ComplaintHeader({
    required this.statusName,
    required this.statusValue,
  });

  factory ComplaintHeader.fromJson(Map<String, dynamic> json) => ComplaintHeader(
    statusName: json["StatusName"],
    statusValue: json["StatusValue"],
  );

  Map<String, dynamic> toJson() => {
    "StatusName": statusName,
    "StatusValue": statusValue,
  };
}

class ComplaintList {
  String complaintDate;
  String complaintType;
  String description;
  String expectedDate;
  String id;
  String resolutionDate;
  String resolutionDetail;
  String resolutionTime;
  String status;
  String subComplaintType;
  String ticketNo;
  String vehicleNo;
  String complaintRating;
  String complaintFeedback;
  String isReactivated;

  ComplaintList({
    required this.complaintDate,
    required this.complaintType,
    required this.description,
    required this.expectedDate,
    required this.id,
    required this.resolutionDate,
    required this.resolutionDetail,
    required this.resolutionTime,
    required this.status,
    required this.subComplaintType,
    required this.ticketNo,
    required this.vehicleNo,
    required this.complaintRating,
    required this.complaintFeedback,
    required this.isReactivated,
  });

  factory ComplaintList.fromJson(Map<String, dynamic> json) => ComplaintList(
    complaintDate: json["ComplaintDate"],
    complaintType: json["ComplaintType"],
    description: json["Description"],
    expectedDate: json["ExpectedDate"],
    id: json["Id"],
    resolutionDate: json["ResolutionDate"],
    resolutionDetail: json["ResolutionDetail"],
    resolutionTime: json["ResolutionTime"],
    status: json["Status"],
    subComplaintType: json["SubComplaintType"],
    ticketNo: json["TicketNo"],
    vehicleNo: json["VehicleNo"],
    complaintRating: json["ComplaintRating"],
    complaintFeedback: json["ComplaintFeedback"]??"N/A",
    isReactivated: json["IsReactivated"],
  );

  Map<String, dynamic> toJson() => {
    "ComplaintDate": complaintDate,
    "ComplaintType": complaintType,
    "Description": description,
    "ExpectedDate": expectedDate,
    "Id": id,
    "ResolutionDate": resolutionDate,
    "ResolutionDetail": resolutionDetail,
    "ResolutionTime": resolutionTime,
    "Status": status,
    "SubComplaintType": subComplaintType,
    "TicketNo": ticketNo,
    "VehicleNo": vehicleNo,
    "ComplaintRating": complaintRating,
    "ComplaintFeedback": complaintFeedback,
    "IsReactivated": isReactivated,
  };
}
