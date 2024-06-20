import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/data/movie_model.dart';
import 'package:movie_app/repo/movie_repo.dart';

import '../repo/movi_repo_impl.dart';

part 'movie_state.dart';

@Injectable()
class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this._movieRepo) : super(MovieInitial());

  MovieRepo _movieRepo;

  Future<void> fetchMostWatched() async {
    emit(MovieLoading());
    try {
      MostWatchedMovie mostWatchedMovie = await _movieRepo.fetchMostWatchedMovie();
      emit(MovieSuccess(mostWatchedMovie));
    } catch (e) {
      emit(MovieError(error: e.toString()));
    }
  }
}
