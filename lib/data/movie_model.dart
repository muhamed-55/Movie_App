import 'package:json_annotation/json_annotation.dart';
part 'movie_model.g.dart';

@JsonSerializable()
class MostWatchedMovie {
  String? name;
  String? posterPath;
  MostWatchedMovie({required this.name, required this.posterPath});

  factory MostWatchedMovie.fromJson(Map<String, dynamic> json) => _$MostWatchedMovieFromJson(json);

  Map<String, dynamic> toJson() => _$MostWatchedMovieToJson(this);
}
