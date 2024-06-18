part of 'popular_movies_cubit.dart';

@immutable
abstract class PopularMoviesState {}

class PopularMoviesInitial extends PopularMoviesState {}

class PopularMoviesLoading extends PopularMoviesState {}

class PopularMoviesSuccess extends PopularMoviesState {}

class PopularMoviesFailure extends PopularMoviesState {
  String? error ;
  PopularMoviesFailure({this.error});
}

