part of 'most_watched_movie_cubit.dart';

@immutable
abstract class MovieState {}


class MovieInitial extends MovieState {}

class MovieLoading extends MovieState{}

class MovieSuccess extends MovieState{
  final Movie mostWatchedMovie;
  MovieSuccess(this.mostWatchedMovie);
}

class MovieError extends MovieState{
  String? error ;
  MovieError({this.error});
}


