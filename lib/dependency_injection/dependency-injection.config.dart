// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../cubit/most_watched_movie_cubit.dart' as _i6;
import '../cubit/movie_details_cubit.dart' as _i7;
import '../cubit/popular_movies_cubit.dart' as _i5;
import '../repo/movie_repo.dart' as _i3;
import '../repo/movie_repo_impl.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.MovieRepo>(() => _i4.MovieRepoImpl());
    gh.factory<_i5.PopularMoviesCubit>(
        () => _i5.PopularMoviesCubit(gh<_i3.MovieRepo>()));
    gh.factory<_i6.MovieCubit>(() => _i6.MovieCubit(gh<_i3.MovieRepo>()));
    gh.factory<_i7.MovieDetailsCubit>(
        () => _i7.MovieDetailsCubit(gh<_i3.MovieRepo>()));
    return this;
  }
}
