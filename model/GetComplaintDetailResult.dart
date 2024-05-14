// To parse this JSON data, do
//
//     final getComplaintDetailResult = getComplaintDetailResultFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetComplaintDetailResult getComplaintDetailResultFromJson(String str) => GetComplaintDetailResult.fromJson(json.decode(str));

String getComplaintDetailResultToJson(GetComplaintDetailResult data) => json.encode(data.toJson());

class GetComplaintDetailResult {
  List<GetComplaintDetailResultElement> getComplaintDetailResult;

  GetComplaintDetailResult({
    required this.getComplaintDetailResult,
  });

  factory GetComplaintDetailResult.fromJson(Map<String, dynamic> json) => GetComplaintDetailResult(
    getComplaintDetailResult: List<GetComplaintDetailResultElement>.from(json["GetComplaintDetailResult"].map((x) => GetComplaintDetailResultElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetComplaintDetailResult": List<dynamic>.from(getComplaintDetailResult.map((x) => x.toJson())),
  };
}

class GetComplaintDetailResultElement {
  String acceptedBy;
  String acceptedComment;
  String acceptedDateTime;
  String cancelledBy;
  String cancelledComment;
  String cancelledTime;
  String complaintDate;
  String complaintType;
  String description;
  String expectedDate;
  String id;
  String resolutionDate;
  String resolutionDetail;
  String resolutionTime;
  String resolvedBy;
  String resolvedComment;
  String resolvedTime;
  String status;
  String subComplaintType;
  String ticketNo;
  String vehicleNo;
  String complaintFeedback;
  String complaintRating;

  GetComplaintDetailResultElement({
    required this.acceptedBy,
    required this.acceptedComment,
    required this.acceptedDateTime,
    required this.cancelledBy,
    required this.cancelledComment,
    required this.cancelledTime,
    required this.complaintDate,
    required this.complaintType,
    required this.description,
    required this.expectedDate,
    required this.id,
    required this.resolutionDate,
    required this.resolutionDetail,
    required this.resolutionTime,
    required this.resolvedBy,
    required this.resolvedComment,
    required this.resolvedTime,
    required this.status,
    required this.subComplaintType,
    required this.ticketNo,
    required this.vehicleNo,
    required this.complaintFeedback,
    required this.complaintRating,
  });

  factory GetComplaintDetailResultElement.fromJson(Map<String, dynamic> json) => GetComplaintDetailResultElement(
    acceptedBy: json["AcceptedBy"].toString().isEmpty?"N/A":json["AcceptedBy"],
    acceptedComment: json["AcceptedComment"].toString().isEmpty?"N/A":json["AcceptedComment"],
    acceptedDateTime: json["AcceptedDateTime"].toString().isEmpty?"N/A":json["AcceptedDateTime"],
    cancelledBy: json["CancelledBy"].toString().isEmpty?"N/A":json["CancelledBy"],
    cancelledComment: json["CancelledComment"].toString().isEmpty?"N/A":json["CancelledComment"],
    cancelledTime: json["CancelledTime"].toString().isEmpty?"N/A":json["CancelledTime"],
    complaintDate: json["ComplaintDate"].toString().isEmpty?"N/A":json["ComplaintDate"],
    complaintType: json["ComplaintType"].toString().isEmpty?"N/A":json["ComplaintType"],
    description: json["Description"].toString().isEmpty?"N/A":json["Description"],
    expectedDate: json["ExpectedDate"].toString().isEmpty?"N/A":json["ExpectedDate"],
    id: json["Id"],
    resolutionDate: json["ResolutionDate"].toString().isEmpty?"N/A":json["ResolutionDate"],
    resolutionDetail: json["ResolutionDetail"].toString().isEmpty?"N/A":json["ResolutionDetail"],
    resolutionTime: json["ResolutionTime"].toString().isEmpty?"N/A":json["ResolutionTime"],
    resolvedBy: json["ResolvedBy"].toString().isEmpty?"N/A":json["ResolvedBy"],
    resolvedComment: json["ResolvedComment"].toString().isEmpty?"N/A":json["ResolvedComment"],
    resolvedTime: json["ResolvedTime"].toString().isEmpty?"N/A":json["ResolvedTime"],
    status: json["Status"].toString().isEmpty?"N/A":json["Status"],
    subComplaintType: json["SubComplaintType"].toString().isEmpty?"N/A":json["SubComplaintType"],
    ticketNo: json["TicketNo"].toString().isEmpty?"N/A":json["TicketNo"],
    vehicleNo: json["VehicleNo"].toString().isEmpty?"N/A":json["VehicleNo"],
    complaintFeedback: json["ComplaintFeedback"].toString().isEmpty?"N/A":json["ComplaintFeedback"],
    complaintRating: json["ComplaintRating"].toString().isEmpty?"0.0":json["ComplaintRating"],
  );

  Map<String, dynamic> toJson() => {
    "AcceptedBy": acceptedBy,
    "AcceptedComment": acceptedComment,
    "AcceptedDateTime": acceptedDateTime,
    "CancelledBy": cancelledBy,
    "CancelledComment": cancelledComment,
    "CancelledTime": cancelledTime,
    "ComplaintDate": complaintDate,
    "ComplaintType": complaintType,
    "Description": description,
    "ExpectedDate": expectedDate,
    "Id": id,
    "ResolutionDate": resolutionDate,
    "ResolutionDetail": resolutionDetail,
    "ResolutionTime": resolutionTime,
    "ResolvedBy": resolvedBy,
    "ResolvedComment": resolvedComment,
    "ResolvedTime": resolvedTime,
    "Status": status,
    "SubComplaintType": subComplaintType,
    "TicketNo": ticketNo,
    "VehicleNo": vehicleNo,
  };
}
