// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingModel _$UpcomingModelFromJson(Map<String, dynamic> json) =>
    UpcomingModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingModelToJson(UpcomingModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
