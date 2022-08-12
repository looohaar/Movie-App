import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'home_topmovies_model.g.dart';

@JsonSerializable()
class HomeTopmoviesModel {
  List<Result>? results;

  HomeTopmoviesModel({this.results = const []});

  factory HomeTopmoviesModel.fromJson(Map<String, dynamic> json) {
    return _$HomeTopmoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTopmoviesModelToJson(this);
}
