import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/models/list_movies.dart';
import 'package:movie_app/repo/movie_repo.dart';

import '../repo/movie_repo_impl.dart';

part 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit() : super(PopularMoviesInitial());

  final MovieRepo movieRepo = MovieRepoImpl();

  Future<void> fetchPopularMovie() async{
    emit(PopularMoviesLoading());
    try{
      ListMovies popularMovie = await movieRepo.fetchPopularMovie();
      emit(PopularMoviesSuccess(popularMovie));
    }catch(e){
      emit(PopularMoviesFailure(error: e.toString()));
    }
  }
}
