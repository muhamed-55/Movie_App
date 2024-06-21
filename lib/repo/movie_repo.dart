import '../models/movie_model.dart';
import 'package:movie_app/models/list_movies.dart';
 abstract class MovieRepo{
  Future<Movie> fetchMostWatchedMovie();

  Future<ListMovies> fetchPopularMovie();

  Future<Movie>  fetchDetailsMovie(int id);
 }
