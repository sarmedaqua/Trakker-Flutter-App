import 'dart:convert';

List<GetMaxSpeedHistory> getMaxSpeedHistoryFromJson(String str) => List<GetMaxSpeedHistory>.from(json.decode(str).map((x) => GetMaxSpeedHistory.fromJson(x)));

String getMaxSpeedHistoryToJson(List<GetMaxSpeedHistory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetMaxSpeedHistory {
  String dateTime;
  String maxspeed;

  GetMaxSpeedHistory({
    required this.dateTime,
    required this.maxspeed,
  });

  factory GetMaxSpeedHistory.fromJson(Map<String, dynamic> json) => GetMaxSpeedHistory(
    dateTime: json["DateTime"],
    maxspeed: json["Maxspeed"],
  );

  Map<String, dynamic> toJson() => {
    "DateTime": dateTime,
    "Maxspeed": maxspeed,
  };
}
