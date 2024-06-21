import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_app/repo/movie_repo.dart';

import '../models/movie_model.dart';
import '../repo/movie_repo_impl.dart';

part 'most_watched_movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  final MovieRepo movieRepo = MovieRepoImpl();
  // MovieRepo _movieRepo;

  Future<void> fetchMostWatched() async {
    emit(MovieLoading());
    try {
      final Movie mostWatchedMovie = await movieRepo.fetchMostWatchedMovie();
      emit(MovieSuccess(mostWatchedMovie));
    }catch(e){
     emit(MovieError(error: e.toString()));
    }

   }
}
