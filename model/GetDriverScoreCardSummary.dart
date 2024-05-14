
import 'dart:convert';

List<GetDriverScoreCardSummary> getDriverScoreCardSummaryFromJson(String str) => List<GetDriverScoreCardSummary>.from(json.decode(str).map((x) => GetDriverScoreCardSummary.fromJson(x)));

String getDriverScoreCardSummaryToJson(List<GetDriverScoreCardSummary> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetDriverScoreCardSummary {
  int countHarshAcceleration;
  int countHarshBraking;
  int countHarshCornering;
  int countOverSpeed;
  int id;
  String regNo;
  String kmDriven;

  GetDriverScoreCardSummary({
    required this.countHarshAcceleration,
    required this.countHarshBraking,
    required this.countHarshCornering,
    required this.countOverSpeed,
    required this.id,
    required this.regNo,
    required this.kmDriven,
  });

  factory GetDriverScoreCardSummary.fromJson(Map<String, dynamic> json) => GetDriverScoreCardSummary(
    countHarshAcceleration: json["CountHarshAcceleration"],
    countHarshBraking: json["CountHarshBraking"],
    countHarshCornering: json["CountHarshCornering"],
    countOverSpeed: json["CountOverSpeed"],
    id: json["ID"],
    regNo: json["RegNo"],
    kmDriven: json["kmDriven"],
  );

  Map<String, dynamic> toJson() => {
    "CountHarshAcceleration": countHarshAcceleration,
    "CountHarshBraking": countHarshBraking,
    "CountHarshCornering": countHarshCornering,
    "CountOverSpeed": countOverSpeed,
    "ID": id,
    "RegNo": regNo,
    "kmDriven": kmDriven,
  };
}
