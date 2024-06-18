import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit() : super(PopularMoviesInitial());

  Future<void> fetchPopularMovie() async{
    emit(PopularMoviesLoading());
    try{
      await Future.delayed(const Duration(seconds: 2));
      emit(PopularMoviesSuccess());
    }catch(e){
      emit(PopularMoviesFailure(error: e.toString()));
    }
  }
}
