// To parse this JSON data, do
//
//     final trakkerAppImages = trakkerAppImagesFromJson(jsonString);

import 'dart:convert';

TrakkerAppImages trakkerAppImagesFromJson(String str) => TrakkerAppImages.fromJson(json.decode(str));

String trakkerAppImagesToJson(TrakkerAppImages data) => json.encode(data.toJson());

class TrakkerAppImages {
  List<TrakkerAppImageItem> getTrakkerAppImagesResult;

  TrakkerAppImages({
    required this.getTrakkerAppImagesResult,
  });

  factory TrakkerAppImages.fromJson(Map<String, dynamic> json) => TrakkerAppImages(
    getTrakkerAppImagesResult: List<TrakkerAppImageItem>.from(json["GetTrakkerAppImagesResult"].map((x) => TrakkerAppImageItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "GetTrakkerAppImagesResult": List<dynamic>.from(getTrakkerAppImagesResult.map((x) => x.toJson())),
  };
}

class TrakkerAppImageItem {
  String id;
  String imgLink;
  String imgTitle;
  String imgType;
  String imgUrl;
  String isActive;

  TrakkerAppImageItem({
    required this.id,
    required this.imgLink,
    required this.imgTitle,
    required this.imgType,
    required this.imgUrl,
    required this.isActive,
  });

  factory TrakkerAppImageItem.fromJson(Map<String, dynamic> json) => TrakkerAppImageItem(
    id: json["Id"],
    imgLink: json["ImgLink"],
    imgTitle: json["ImgTitle"],
    imgType: json["ImgType"],
    imgUrl: json["ImgUrl"],
    isActive: json["IsActive"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "ImgLink": imgLink,
    "ImgTitle": imgTitle,
    "ImgType": imgType,
    "ImgUrl": imgUrl,
    "IsActive": isActive,
  };
}
