import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_app/repo/movie_repo.dart';
import 'package:injectable/injectable.dart';
import '../models/movie_model.dart';
part 'most_watched_movie_state.dart';

@Injectable()
class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this.movieRepo) : super(MovieInitial());

  //final MovieRepo movieRepo = MovieRepoImpl();
   MovieRepo movieRepo;

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
