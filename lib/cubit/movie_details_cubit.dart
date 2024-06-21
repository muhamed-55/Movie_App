
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/repo/movie_repo.dart';
import '../models/movie_model.dart';
part 'movie_details_state.dart';

@Injectable()
class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(this.movieRepo) : super(MovieDetailsInitial());

 // final MovieRepo movieRepo = MovieRepoImpl();
 MovieRepo movieRepo ;
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