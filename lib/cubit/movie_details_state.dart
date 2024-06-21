part of 'movie_details_cubit.dart';

@immutable
abstract class MovieDetailsState {}

class MovieDetailsInitial extends MovieDetailsState {}

class MovieDetailsLoading extends MovieDetailsState {}

class MovieDetailsSuccess extends MovieDetailsState {
  final Movie movieDetails;
  MovieDetailsSuccess(this.movieDetails);
}

class MovieDetailsFailure extends MovieDetailsState {
  final String? error;
  MovieDetailsFailure({this.error});
}
