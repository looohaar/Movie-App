import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'downloads_model.g.dart';

@JsonSerializable()
class DownloadsModel {
  List<Result>? results;

  DownloadsModel({this.results=const []});

  factory DownloadsModel.fromJson(Map<String, dynamic> json) {
    return _$DownloadsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsModelToJson(this);
}
