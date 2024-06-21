import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/models/list_movies.dart';
import 'package:movie_app/repo/movie_repo.dart';
import 'package:injectable/injectable.dart';

part 'popular_movies_state.dart';

@Injectable()
class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit(this.movieRepo) : super(PopularMoviesInitial());

  //final MovieRepo movieRepo = MovieRepoImpl();
MovieRepo movieRepo ;
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
