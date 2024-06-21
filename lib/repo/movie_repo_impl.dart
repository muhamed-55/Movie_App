import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/list_movies.dart';
import 'package:movie_app/repo/movie_repo.dart';
import '../models/movie_model.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: MovieRepo)
class MovieRepoImpl implements MovieRepo {

  static const String apiKey = 'e46ffa96922438c36f23441d9f26d8e8';
  String url = 'https://api.themoviedb.org/3/movie/719221?api_key=$apiKey';

  @override
  Future<Movie> fetchMostWatchedMovie()async{
    http.Response response = await http.get(Uri.parse(url)) ;
    if(response.statusCode == 200){
      final jsonData = jsonDecode(response.body);
      return Movie.fromJson(jsonData);
    }else{
      throw Exception(response.statusCode);
    }

  }

  @override
  Future<ListMovies> fetchPopularMovie()async {

    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$apiKey'));

    if(response.statusCode == 200){
      final jsonData = jsonDecode(response.body);
      return ListMovies.fromJson(jsonData);
    }else{
      throw Exception(response.statusCode);
    }

  }

  @override
  Future<Movie> fetchDetailsMovie(int id) async {
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/$id?api_key=$apiKey'));
    if(response.statusCode ==200){
      final jsonData = jsonDecode(response.body);
      return Movie.fromJson(jsonData);
    } else {
      throw Exception(response.statusCode);
    }
  }
}
