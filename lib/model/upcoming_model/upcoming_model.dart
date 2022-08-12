import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'upcoming_model.g.dart';

@JsonSerializable()
class UpcomingModel {
  List<Result>? results;

  UpcomingModel({this.results=const []});

  factory UpcomingModel.fromJson(Map<String, dynamic> json) {
    return _$UpcomingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingModelToJson(this);
}
