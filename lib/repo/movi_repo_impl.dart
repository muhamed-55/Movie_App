import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/repo/movie_repo.dart';
import '../data/movie_model.dart';

class MovieRepoImpl implements MovieRepo {
  static const String apiKey = 'e46ffa96922438c36f23441d9f26d8e8';
  String url = 'https://api.themoviedb.org/3/movie/653346?api_key=$apiKey';

  @override
  Future<MostWatchedMovie> fetchMostWatchedMovie() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return MostWatchedMovie.fromJson(jsonData);
    } else {
      throw Exception(response.statusCode);
    }
  }
}
