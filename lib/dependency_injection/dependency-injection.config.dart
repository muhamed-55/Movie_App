// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../cubit/movie_cubit.dart' as _i3;
import '../repo/movi_repo_impl.dart' as _i4;
import 'modules.dart' as _i5;

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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.MovieCubit>(() => _i3.MovieCubit(gh<InvalidType>()));
    gh.factory<_i4.MovieRepoImpl>(
      () => _i4.MovieRepoImpl(),
      instanceName: 'MovieRepoImpl',
    );
    gh.factory<String>(
      () => registerModule.publisherKey,
      instanceName: 'publisherKey',
    );
    return this;
  }
}

class _$RegisterModule extends _i5.RegisterModule {}
