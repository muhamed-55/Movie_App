
class MostWatchedMovie{
   String name;
   String posterPath;
MostWatchedMovie({required this.name,required this.posterPath});

   factory MostWatchedMovie.fromJson(Map<String, dynamic> json) {
     return MostWatchedMovie(
       name: json['belongs_to_collection']['name'],
       posterPath: json['belongs_to_collection']['poster_path'],
     );
   }
}