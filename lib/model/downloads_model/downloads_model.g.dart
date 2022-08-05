// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) =>
    DownloadsModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DownloadsModelToJson(DownloadsModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
