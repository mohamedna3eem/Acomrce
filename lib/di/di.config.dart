// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../apiManager/apiManager.dart' as _i547;
import '../data/repository/datasource/datasourceIMPL.dart' as _i224;
import '../data/repository/repository/AuthRepositoryIMPL.dart' as _i255;
import '../domain/repository/dataSource/Registerdatasource.dart' as _i1055;
import '../domain/repository/repository/repository.dart' as _i250;
import '../domain/use_cases/Register_useCase.dart' as _i367;
import '../ui/outh/register/cubit/Register_view_model.dart' as _i1055;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i547.ApiManager>(() => _i547.ApiManager());
    gh.factory<_i1055.RemoteDataSource>(
        () => _i224.RemoteDataSourceImpl(apiManager: gh<_i547.ApiManager>()));
    gh.factory<_i250.AuthRepository>(() => _i255.AuthRepositoryIMPL(
        remoteDataSource: gh<_i1055.RemoteDataSource>()));
    gh.factory<_i367.RegisterUseCase>(() =>
        _i367.RegisterUseCase(authRepository: gh<_i250.AuthRepository>()));
    gh.factory<_i1055.RegisterViewModel>(() =>
        _i1055.RegisterViewModel(registerUseCase: gh<_i367.RegisterUseCase>()));
    return this;
  }
}
