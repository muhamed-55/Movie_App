import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/data/movie_model.dart';
import 'package:movie_app/repo/movie_repo.dart';

import '../repo/movi_repo_impl.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  final MovieRepo movieRepo = MovieRepoImpl();

  Future<void> fetchMostWatched() async {
    emit(MovieLoading());
    try {
      MostWatchedMovie mostWatchedMovie = await movieRepo.fetchMostWatchedMovie();
      emit(MovieSuccess(mostWatchedMovie));
    } catch (e) {
      emit(MovieError(error: e.toString()));
    }
  }
}
