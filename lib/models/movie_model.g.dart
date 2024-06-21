// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: (json['id'] as num).toInt(),
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      runtime: (json['runtime'] as num?)?.toInt(),
      tagline: json['tagline'] as String?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'runtime': instance.runtime,
      'tagline': instance.tagline,
      'vote_average': instance.vote_average,
    };
