import 'package:json_annotation/json_annotation.dart';
part 'movie_model.g.dart';

@JsonSerializable()
class Movie{
   int id ;
   String ?original_title;
   String? overview ;
   String ?poster_path;
   int ? runtime;
   String? tagline ;
   double ? vote_average;
   Movie({
      required this.id,
      this.original_title,
      this.overview,
      this.poster_path,
      this.runtime,
      this.tagline,
      this.vote_average,
   });
   factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

   Map<String, dynamic> toJson() => _$MovieToJson(this);

}