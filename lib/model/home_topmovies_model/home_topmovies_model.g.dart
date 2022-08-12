// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_topmovies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTopmoviesModel _$HomeTopmoviesModelFromJson(Map<String, dynamic> json) =>
    HomeTopmoviesModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeTopmoviesModelToJson(HomeTopmoviesModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
