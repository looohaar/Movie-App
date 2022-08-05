import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'home_trending_model.g.dart';

@JsonSerializable()
class HomeTrendingModel {
  List<Result>? results;

  HomeTrendingModel({this.results= const[]});

  factory HomeTrendingModel.fromJson(Map<String, dynamic> json) {
    return _$HomeTrendingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTrendingModelToJson(this);
}
