
class MostWatchedMovie{
   String ?name;
   String? tagline ;
   String ?posterPath;
MostWatchedMovie({required this.name,required this.tagline,required this.posterPath});

   factory MostWatchedMovie.fromJson(Map<String, dynamic> json) {
     return MostWatchedMovie(
       name: json['original_title'],
       tagline: json['tagline'],
       posterPath: json['belongs_to_collection']['poster_path'],
     );
   }
}