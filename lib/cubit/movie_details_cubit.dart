import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/repo/movie_repo.dart';
import 'package:movie_app/repo/movie_repo_impl.dart';

import '../models/movie_model.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit() : super(MovieDetailsInitial());

  final MovieRepo movieRepo = MovieRepoImpl();

  Future<void> fetchMovieDetails(int id) async {
    emit(MovieDetailsLoading());
   try{
      Movie movieDetails = await movieRepo.fetchDetailsMovie(id);
     emit(MovieDetailsSuccess(movieDetails));
   }catch(e){
     emit(MovieDetailsFailure(error: e.toString()));
   }


  }
}