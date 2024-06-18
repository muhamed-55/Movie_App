import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/data/movie_model.dart';

import '../data/api_service.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

   Future<void> fetchMostWatched () async {
    emit(MovieLoading());
    try{
      MostWatchedMovie mostWatchedMovie =await ApiService().fetchMostWatchedMovie();
      emit(MovieSuccess(mostWatchedMovie));
    }catch(e){
     emit(MovieError(error: e.toString()));
    }

   }
}
