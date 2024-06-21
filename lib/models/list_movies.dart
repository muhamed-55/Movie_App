import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/models/movie_model.dart';
part 'list_movies.g.dart';
@JsonSerializable()

class ListMovies{
  final List<Movie> ?results;
   ListMovies({required this.results,});

  factory ListMovies.fromJson(Map<String, dynamic> json) => _$ListMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$ListMoviesToJson(this);
}
