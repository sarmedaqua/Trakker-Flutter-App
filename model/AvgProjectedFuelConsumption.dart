
import 'dart:convert';

List<AvgProjectedFuelConsumption> avgProjectedFuelConsumptionFromJson(String str) => List<AvgProjectedFuelConsumption>.from(json.decode(str).map((x) => AvgProjectedFuelConsumption.fromJson(x)));

String avgProjectedFuelConsumptionToJson(List<AvgProjectedFuelConsumption> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AvgProjectedFuelConsumption {
  String asset;
  String assetFuelAvg;
  String assetMake;
  String assetModel;
  String assetType;
  String date;
  String fuelAvgBit;
  String fuelCost;
  String projectedFuelConsumption;
  String totalDistanceTravell;

  AvgProjectedFuelConsumption({
    required this.asset,
    required this.assetFuelAvg,
    required this.assetMake,
    required this.assetModel,
    required this.assetType,
    required this.date,
    required this.fuelAvgBit,
    required this.fuelCost,
    required this.projectedFuelConsumption,
    required this.totalDistanceTravell,
  });

  factory AvgProjectedFuelConsumption.fromJson(Map<String, dynamic> json) => AvgProjectedFuelConsumption(
    asset: json["Asset"],
    assetFuelAvg: json["AssetFuelAvg"],
    assetMake: json["AssetMake"],
    assetModel: json["AssetModel"],
    assetType: json["AssetType"],
    date: json["Date"],
    fuelAvgBit: json["FuelAvgBit"],
    fuelCost: json["FuelCost"],
    projectedFuelConsumption: json["ProjectedFuelConsumption"],
    totalDistanceTravell: json["TotalDistanceTravell"],
  );

  Map<String, dynamic> toJson() => {
    "Asset": asset,
    "AssetFuelAvg": assetFuelAvg,
    "AssetMake": assetMake,
    "AssetModel": assetModel,
    "AssetType": assetType,
    "Date": date,
    "FuelAvgBit": fuelAvgBit,
    "FuelCost": fuelCost,
    "ProjectedFuelConsumption": projectedFuelConsumption,
    "TotalDistanceTravell": totalDistanceTravell,
  };
}
