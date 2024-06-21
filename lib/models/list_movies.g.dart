// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMovies _$ListMoviesFromJson(Map<String, dynamic> json) => ListMovies(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMoviesToJson(ListMovies instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
