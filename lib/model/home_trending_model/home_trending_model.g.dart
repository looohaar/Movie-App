// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_trending_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTrendingModel _$HomeTrendingModelFromJson(Map<String, dynamic> json) =>
    HomeTrendingModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeTrendingModelToJson(HomeTrendingModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
